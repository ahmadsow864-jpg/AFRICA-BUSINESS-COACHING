-- Fichier généré par tools/generate-seed.mjs — ne pas modifier à la main.
-- Cours (partie 18/21). À exécuter après seed.sql.

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

-- Cours : Logistique et transport Master 2 : reussir ses examens
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'mas-log-m2', (select id from public.levels where name = 'Master 2'), null, 'Logistique et transport', 'Logistique et transport Master 2 : reussir ses examens', 'Preparation aux examens de Master 2 en Logistique et transport : logistique 4.0 et digitalisation de la chaine d''approvisionnement (tracabilite, systemes d''information logistiques), achats strategiques et relations fournisseurs avancees, methodologie du memoire professionnel et soutenance. Cas d''entreprises senegalaises et africaines fictifs, calculs verifies, sujet type et atelier methodologique final. Public : etudiants de Master 2 en logistique, transport ou supply chain, en fin de cycle.', true, 792
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Reussir ses examens de Master 2 en logistique et transport', 'Le Master 2 en Logistique et Transport est l''annee de la specialisation la plus poussee et de la bascule vers la vie professionnelle. Les matieres abordent desormais la logistique 4.0 (digitalisation, tracabilite, systemes d''information logistiques), les achats strategiques avances, et surtout la methodologie du memoire professionnel ou de recherche, qui conclut generalement le cycle par une soutenance devant un jury. Le niveau d''exigence attendu correspond a celui d''un futur cadre ou consultant senior : capacite a batir un business case complet, a argumenter un choix technologique face a une direction generale, et a produire un travail de recherche applique rigoureux sur un sujet logistique reel.

Cette annee repose sur trois piliers : la logistique 4.0 et la digitalisation de la chaine d''approvisionnement, qui vous apprend a evaluer la rentabilite d''un investissement technologique (WMS, TMS, IoT, tracabilite) et a comprendre les enjeux de la donnee logistique ; les achats strategiques et les relations fournisseurs avancees, qui mobilisent des outils de segmentation (matrice de Kraljic) et de calcul du cout total de possession (TCO) pour optimiser une politique d''achat ; et la methodologie du memoire professionnel, qui vous accompagne dans la construction, la redaction et la soutenance d''un travail de fin d''etudes.

## Les specificites du Master 2 : vers la vie professionnelle

Le Master 2 se distingue du Master 1 par une orientation plus nettement professionnalisante. Les cas d''etude integrent systematiquement une dimension d''investissement (faut-il acheter ce logiciel, ce systeme de tracabilite) et une dimension de negociation (comment arbitrer entre plusieurs fournisseurs sur des criteres multiples, pas seulement le prix). Le memoire professionnel, enfin, vous demande de mobiliser l''ensemble des competences acquises depuis la Licence pour produire un travail original, documente, et defendable devant un jury exigeant.

Trois exigences methodologiques structurent cette annee. Premierement, la maitrise des outils de decision d''investissement (payback, VAN, TRI) appliques a des projets logistiques concrets, avec une discussion systematique des hypotheses retenues. Deuxiemement, la capacite a arbitrer entre des criteres multiples et parfois contradictoires, par exemple le prix le plus bas face au cout total de possession le plus avantageux, qui ne designent pas toujours le meme fournisseur. Troisiemement, la rigueur methodologique de la recherche appliquee : formuler une problematique precise, construire une methodologie adaptee (etude de cas, entretiens, analyse documentaire), et presenter des resultats discutes avec esprit critique.

## Les matieres de l''annee et leur articulation

- Logistique 4.0 et digitalisation de la chaine d''approvisionnement : vous apprenez a evaluer la rentabilite d''un investissement technologique (systeme de gestion d''entrepot, tracabilite, systemes d''information logistiques) et a comprendre les enjeux de la donnee partagee entre partenaires.
- Achats strategiques et relations fournisseurs avancees : vous mobilisez la matrice de Kraljic pour segmenter un portefeuille d''achats, et le calcul du cout total de possession (TCO) pour comparer des fournisseurs au-dela du seul prix affiche.
- Methodologie du memoire professionnel et soutenance : vous construisez pas a pas votre travail de fin d''etudes, de la problematique a la soutenance, en appliquant les memes exigences de rigueur que dans les deux autres matieres.

Ces trois matieres convergent vers une meme competence : la capacite a construire un dossier de decision argumente, chiffre et documente, que ce soit pour justifier un investissement technologique, choisir un fournisseur, ou defendre un memoire devant un jury. La quatrieme sequence video de ce module est d''ailleurs entierement consacree a un atelier methodologique pratique sur le memoire et la soutenance, car cette competence conditionne directement votre reussite finale du diplome.

## Methode de travail avancee : business case, negociation argumentee, recherche appliquee

Le business case d''investissement technologique vous demande de comparer un cout d''investissement (licence logicielle, integration, formation) a des benefices attendus (gains de productivite, reduction d''erreurs, reduction de stock), a l''aide d''indicateurs comme le payback, la valeur actuelle nette (VAN) et le taux de rentabilite interne (TRI). Explicitez toujours le taux d''actualisation retenu et l''horizon d''analyse, car ces hypotheses determinent fortement le resultat final presente a la direction.

La negociation argumentee avec les fournisseurs repose sur une comparaison multicriteres : le prix affiche n''est qu''un element parmi d''autres (qualite, delai, cout total de possession, capacite d''innovation, responsabilite sociale et environnementale). Une bonne copie de Master 2 sait construire un tableau de score pondere et discuter les resultats, plutot que de se limiter a comparer deux prix unitaires.

La recherche appliquee, enfin, structure votre memoire professionnel : une problematique precise, une revue de la litterature qui mobilise les concepts du cours sans se limiter a les reciter, une methodologie adaptee a votre terrain (etude de cas en entreprise, entretiens, analyse de donnees), et une discussion honnete des limites de votre travail. C''est cette rigueur qui sera evaluee lors de la soutenance, bien plus que le simple volume de pages produites.

## Plan de revision sur six semaines

- Semaines 1-2 : logistique 4.0 et digitalisation (lecon 2) : business case d''investissement technologique, calculs de payback, VAN, TRI refaits a la main sur des donnees differentes de celles du cours.
- Semaines 3-4 : achats strategiques et relations fournisseurs avancees (lecon 3) : matrice de Kraljic, calcul du TCO, construction d''un tableau de score pondere, entrainement sur des cas varies.
- Semaine 5 : methodologie du memoire et soutenance (lecon 4) : structure du memoire, plan type, preparation de la soutenance ; relecture transversale des liens entre les trois matieres de l''annee.
- Semaine 6 : sujet type (lecon 5) en conditions d''examen chronometrees, puis revision des quatre cours video, dont l''atelier methodologique final, quiz et evaluations refaits sans regarder le corrige avant d''avoir termine.

## Points cles a retenir

- Le Master 2 est l''annee de la professionnalisation finale : chaque decision logistique doit etre presentee comme un dossier d''investissement ou de negociation argumente et chiffre.
- La digitalisation et les achats strategiques partagent une meme logique : depasser le seul critere apparent (le cout d''un logiciel, le prix d''un fournisseur) pour integrer l''ensemble des couts et benefices reels.
- Le memoire professionnel mobilise l''ensemble des competences acquises depuis la Licence ; sa methodologie doit etre aussi rigoureuse que celle d''un exercice chiffre.
- Le plan de revision doit integrer, dès les premieres semaines, un temps specifique consacre a l''avancement du memoire, qui ne peut pas attendre la derniere semaine.

## Exercices pratiques

1. Quelle difference majeure distingue l''approche d''un investissement technologique en Master 2 de celle d''un simple calcul de rentabilite isole ?
2. Citez les trois matieres du Master 2 logistique et transport et le fil conducteur qui les relie.
3. Pourquoi un tableau de score pondere est-il plus pertinent qu''une simple comparaison de prix pour choisir un fournisseur strategique ?
4. Quelles sont les quatre grandes etapes d''un memoire professionnel en logistique, de la problematique a la soutenance ?
5. Proposez un planning resserre pour un etudiant disposant de six heures par semaine, en integrant l''avancement du memoire.

## Corrige

1. Un calcul de rentabilite isole se limite au chiffre (payback, VAN) ; une approche de Master 2 integre en plus la justification des hypotheses retenues (taux d''actualisation, horizon, gains estimes) et une recommandation de gestion argumentee pour une direction qui doit decider dans l''incertitude.
2. Logistique 4.0 et digitalisation, achats strategiques et relations fournisseurs, methodologie du memoire professionnel. Le fil conducteur est la capacite a construire un dossier de decision chiffre et documente, que ce soit pour un investissement technologique, un choix de fournisseur, ou un travail de recherche applique.
3. Le prix seul ignore des couts caches (transport, douane, non-qualite, risque de rupture) et des criteres qualitatifs (innovation, responsabilite sociale) qui conditionnent la performance reelle a long terme d''une relation fournisseur strategique ; un score pondere integre ces dimensions dans une decision argumentee.
4. Definition d''une problematique precise, revue de litterature mobilisant les concepts du cours, methodologie de recherche adaptee au terrain etudie, et soutenance defendant les resultats et leurs limites devant un jury.
5. Deux heures par semaine pour chaque matiere (digitalisation, achats, methodologie) les quatre premieres semaines, puis bascule progressive vers l''avancement effectif du memoire a partir de la semaine 3, en parallele des revisions, pour eviter de tout concentrer sur les dernieres semaines avant la soutenance.', 'texte', 45, true, 10
from public.courses c where c.slug = 'mas-log-m2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Reussir ses examens de Master 2 en logistique et transport');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Logistique 4.0 et digitalisation de la chaine d''approvisionnement : l''essentiel pour l''examen', 'Objectifs de la lecon : comprendre les briques technologiques de la logistique 4.0 (WMS, TMS, IoT, tracabilite, blockchain), savoir construire et evaluer un business case d''investissement technologique (payback, VAN, TRI), et mesurer l''impact economique de la tracabilite sur la gestion d''une crise (rappel de produit).

## Notions : qu''est-ce que la logistique 4.0 ?

La logistique 4.0 designe l''application des technologies numeriques avancees (objets connectes ou IoT, intelligence artificielle, blockchain, systemes d''information integres) a la gestion de la chaine logistique. Trois briques sont particulierement structurantes. Le WMS (Warehouse Management System) est un systeme d''information qui pilote finement les operations d''entrepot : reception, rangement, preparation de commandes, expedition, en optimisant les emplacements et les deplacements des operateurs. Le TMS (Transport Management System) optimise la planification des transports, le choix des transporteurs et le suivi des livraisons. La tracabilite numerique, enfin, permet de suivre un produit tout au long de sa chaine, de la matiere premiere au client final, grace a des identifiants uniques (codes-barres, puces RFID, voire blockchain pour garantir l''inalterabilite des donnees enregistrees).

## Cas d''entreprise : Sine Agro-Industries SA

Sine Agro-Industries SA, entreprise fictive de transformation de produits agro-alimentaires au Senegal, envisage d''investir dans un WMS pour son entrepot central, afin de reduire les erreurs de preparation de commandes et d''ameliorer sa productivite. La direction demande une evaluation complete de la rentabilite de ce projet avant de l''autoriser.

## Methode : construire un business case d''investissement technologique

L''investissement envisage s''eleve a 60 000 000 FCFA (licence, integration, formation). Trois gains annuels sont identifies : reduction des erreurs de picking, 9 000 000 FCFA ; gain de productivite en manutention, 14 000 000 FCFA ; reduction du surstock grace a une meilleure visibilite des stocks, 11 000 000 FCFA. Le gain annuel total est de 34 000 000 FCFA.

Le premier indicateur a calculer est le payback simple, qui mesure le nombre d''annees necessaires pour que les gains cumules remboursent l''investissement initial, sans tenir compte de la valeur temporelle de l''argent. Payback egale investissement divise par gain annuel, soit 60 000 000 divise par 34 000 000, soit environ 1,76 annee. C''est un resultat tres favorable : en moins de deux ans, l''investissement sera rembourse par les gains operationnels generes.

Le deuxieme indicateur, plus rigoureux, est la valeur actuelle nette (VAN), qui actualise les gains futurs pour tenir compte du fait qu''un FCFA recu dans cinq ans vaut moins qu''un FCFA recu aujourd''hui. Avec un taux d''actualisation fictif de 10 pourcent par an, retenu pour cet exemple, et un horizon d''analyse de cinq ans, la VAN se calcule en sommant les gains annuels actualises et en soustrayant l''investissement initial. Le calcul, realise avec cette formule, donne une VAN d''environ 68 886 750 FCFA sur cinq ans, un resultat largement positif qui confirme la rentabilite du projet meme en tenant compte de l''actualisation.

Le troisieme indicateur est le taux de rentabilite interne (TRI), c''est-a-dire le taux d''actualisation pour lequel la VAN serait exactement nulle. Pour ce projet, le TRI calcule sur cinq ans est d''environ 48,9 pourcent, un niveau tres eleve qui signifie que le projet resterait rentable meme si le cout du capital de l''entreprise etait beaucoup plus eleve que les 10 pourcent retenus dans l''hypothese de base. Un TRI nettement superieur au taux d''actualisation habituel de l''entreprise constitue un argument tres solide pour convaincre une direction generale reticente a un investissement technologique.

## La tracabilite numerique et la gestion de crise

Au-dela du seul gain de productivite, la tracabilite numerique joue un role determinant en situation de crise, par exemple lors d''un rappel de produit suite a une non-conformite sanitaire detectee a posteriori. Sans systeme de tracabilite precis, une entreprise doit souvent rappeler l''integralite d''un lot de production, par precaution, faute de pouvoir isoler precisement les unites concernees. Avec une tracabilite numerique fine (numero de lot associe a chaque unite, horodatage des etapes de transformation), le rappel peut etre cible sur les seules unites reellement concernees.

Illustrons avec un exemple chiffre fictif : un produit se vend a 2 500 FCFA le kilogramme. Sans tracabilite precise, un incident conduirait a rappeler l''integralite du lot de production, soit 50 000 kilogrammes, pour un cout de 50 000 fois 2 500, soit 125 000 000 FCFA. Avec une tracabilite numerique precise, le rappel peut etre limite aux 3 200 kilogrammes reellement concernes, pour un cout de 3 200 fois 2 500, soit 8 000 000 FCFA. L''economie realisee grace a la tracabilite est de 125 000 000 moins 8 000 000, soit 117 000 000 FCFA, c''est-a-dire 93,6 pourcent de reduction du cout du rappel. Ce type de calcul, bien que fictif, illustre pourquoi la tracabilite numerique n''est plus un simple gadget technologique mais un outil de gestion du risque a part entiere.

## Points cles a retenir

- Un business case technologique combine trois indicateurs complementaires : le payback (simplicite, pas d''actualisation), la VAN (rentabilite nette actualisee) et le TRI (seuil de rentabilite en taux).
- Le choix du taux d''actualisation et de l''horizon d''analyse doit toujours etre explicite, car il influence directement le resultat presente a la direction.
- La tracabilite numerique transforme la gestion de crise en permettant un rappel cible plutot qu''un rappel massif, avec un impact economique souvent considerable.
- Le WMS, le TMS et la tracabilite numerique sont des briques complementaires de la logistique 4.0, chacune repondant a un besoin specifique (entrepot, transport, suivi produit).

## Exercices pratiques

1. Un investissement de 40 000 000 FCFA genere un gain annuel de 16 000 000 FCFA. Calculez le payback simple.
2. Expliquez la difference entre le payback simple et la VAN, et pourquoi la VAN est consideree comme un indicateur plus rigoureux.
3. Pourquoi un TRI nettement superieur au taux d''actualisation habituel de l''entreprise constitue-t-il un argument fort pour un projet d''investissement ?
4. Expliquez, avec vos propres mots, pourquoi la tracabilite numerique reduit le cout d''un rappel de produit.
5. Cas pratique complet : Thies Cereales SA (fictive) investit 45 000 000 FCFA dans un systeme de tracabilite. Les gains annuels attendus sont : reduction des rappels generalises, 12 000 000 FCFA ; amelioration de la confiance client et des ventes, 8 000 000 FCFA ; reduction du surstock, 6 000 000 FCFA. Calculez le gain annuel total et le payback simple.
6. Pourquoi une direction generale senegalaise pourrait-elle etre reticente a un investissement technologique meme avec un payback favorable, et quels arguments complementaires un responsable logistique devrait-il preparer ?

## Corrige

1. Payback = 40 000 000 / 16 000 000 = 2,5 ans.
2. Le payback simple ne tient pas compte de la valeur temporelle de l''argent : il traite un gain recu dans cinq ans comme equivalent a un gain recu aujourd''hui. La VAN actualise chaque gain futur avec un taux qui reflete le cout du capital ou le risque, ce qui donne une mesure plus rigoureuse de la creation de valeur reelle du projet, surtout sur des horizons longs.
3. Un TRI tres superieur au taux d''actualisation habituel signifie que le projet reste rentable meme si les conditions de financement de l''entreprise se degradaient (hausse des taux d''interet, exigence de rendement plus elevee des actionnaires), ce qui rassure une direction generale sur la robustesse du projet face a l''incertitude economique.
4. Sans tracabilite precise, l''entreprise ne peut pas distinguer les unites reellement affectees par un incident des autres unites du meme lot, et doit donc rappeler l''ensemble du lot par precaution. Avec une tracabilite numerique associant un identifiant unique a chaque unite ou sous-lot, l''entreprise peut isoler precisement les unites concernees et limiter le rappel a ce perimetre reduit, ce qui reduit mecaniquement le cout du rappel.
5. Gain annuel total = 12 000 000 + 8 000 000 + 6 000 000 = 26 000 000 FCFA. Payback = 45 000 000 / 26 000 000 = 1,73 an, un resultat tres favorable.
6. Une direction generale peut etre reticente en raison du cout d''opportunite du capital immobilise, du risque d''echec d''implementation (resistance au changement des equipes, complexite d''integration avec les systemes existants), ou de la disponibilite de competences techniques pour exploiter pleinement le nouvel outil. Un responsable logistique devrait preparer, en complement du calcul financier, un plan de conduite du changement, une estimation du risque d''implementation, et des references de projets similaires reussis dans des entreprises comparables.', 'texte', 60, false, 20
from public.courses c where c.slug = 'mas-log-m2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Logistique 4.0 et digitalisation de la chaine d''approvisionnement : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Achats strategiques et relations fournisseurs avancees : l''essentiel pour l''examen', 'Objectifs de la lecon : savoir segmenter un portefeuille d''achats avec la matrice de Kraljic, calculer le cout total de possession (TCO) pour comparer des fournisseurs au-dela du seul prix, et construire un tableau de score pondere multicriteres pour arbitrer une decision d''achat strategique.

## Notions : la matrice de Kraljic

La matrice de Kraljic segmente les achats d''une entreprise selon deux axes : l''impact sur le resultat (le poids financier ou strategique de l''achat) et la complexite ou le risque du marche fournisseur (nombre de fournisseurs disponibles, difficulte de substitution). Quatre categories en resultent. Les achats « leviers » (impact fort, risque faible) beneficient d''une mise en concurrence active entre plusieurs fournisseurs disponibles. Les achats « strategiques » (impact fort, risque fort) necessitent un partenariat approfondi avec un nombre limite de fournisseurs. Les achats « simples » ou de routine (impact faible, risque faible) doivent etre geres avec un minimum d''effort administratif, par exemple via des catalogues ou des commandes automatisees. Les achats « goulots d''etranglement » (impact faible, risque fort) exigent une securisation de l''approvisionnement malgre leur faible poids financier, car leur indisponibilite pourrait bloquer la production.

## Cas d''entreprise : Thies Emballages SA

Thies Emballages SA, entreprise fictive de conditionnement de produits alimentaires, doit choisir entre deux fournisseurs d''emballages pour un volume annuel de 500 000 unites : le Fournisseur X, implante a Dakar, et le Fournisseur Y, implante a Abidjan, qui propose un prix unitaire plus bas.

## Methode : calculer le cout total de possession (TCO)

Le prix d''achat affiche ne reflete jamais l''ensemble des couts reels supportes par l''entreprise. Le cout total de possession (TCO) integre, en plus du prix d''achat, les couts de transport, les droits de douane, le cout de la non-qualite (produits defectueux a remplacer ou a retraiter), et les couts induits comme un stock de securite supplementaire pour couvrir les delais d''approvisionnement plus longs.

Pour le Fournisseur X (Dakar) : prix unitaire 850 FCFA, cout d''achat 850x500 000 = 425 000 000 FCFA. Transport 6 000 000 FCFA, douane nulle (fournisseur local), non-qualite 2 pourcent soit 0,02x500 000x850 = 8 500 000 FCFA, stock de securite supplementaire 3 000 000 FCFA. TCO total = 425 000 000+6 000 000+0+8 500 000+3 000 000 = 442 500 000 FCFA, soit un TCO unitaire de 885,0 FCFA.

Pour le Fournisseur Y (Abidjan, import) : prix unitaire 720 FCFA, cout d''achat 360 000 000 FCFA. Transport 22 000 000 FCFA (inter-etats), douane 14 500 000 FCFA, non-qualite plus elevee a 4,5 pourcent soit 16 200 000 FCFA, stock de securite supplementaire 9 000 000 FCFA (delais plus longs et variables). TCO total = 360 000 000+22 000 000+14 500 000+16 200 000+9 000 000 = 421 700 000 FCFA, soit un TCO unitaire de 843,4 FCFA.

Le resultat est instructif : meme en integrant tous les couts caches, le Fournisseur Y reste moins cher en TCO (843,4 FCFA) que le Fournisseur X (885,0 FCFA), bien que l''ecart se soit fortement reduit par rapport aux seuls prix affiches (720 contre 850 FCFA). Lecon essentielle : ne jamais choisir un fournisseur sur le seul prix, ni presumer que le fournisseur local est toujours le moins cher en cout total, mais toujours construire le calcul complet.

## Au-dela du TCO : le tableau de score pondere multicriteres

Pour un achat strategique, le prix et le TCO ne suffisent pas toujours : des criteres qualitatifs comme la capacite d''innovation du fournisseur ou sa responsabilite sociale et environnementale peuvent aussi peser dans la decision finale, notamment pour une relation fournisseur de long terme. Un tableau de score pondere attribue un poids a chaque critere (par exemple : prix 30 pourcent, qualite 25 pourcent, delai 20 pourcent, capacite d''innovation 15 pourcent, responsabilite sociale 10 pourcent), puis une note sur dix pour chaque fournisseur sur chaque critere, et calcule un score global pondere.

Dans un exercice d''application, le Fournisseur X obtient un score pondere de 7,75 sur dix, et le Fournisseur Y un score de 7,6 sur dix, un ecart tres faible qui inverse presque le classement obtenu avec le seul TCO. Ce resultat montre que la decision finale depend fortement des criteres retenus et de leur ponderation : un acheteur qui privilegie la stabilite de la relation et la responsabilite sociale pourrait preferer le Fournisseur X malgre un TCO legerement superieur, tandis qu''un acheteur focalise sur le cout pur choisirait le Fournisseur Y. Une bonne copie de Master doit toujours expliciter ce type d''arbitrage, plutot que de presenter un seul chiffre comme une verite absolue.

## Points cles a retenir

- La matrice de Kraljic segmente les achats en quatre categories (leviers, strategiques, simples, goulots d''etranglement) selon l''impact financier et le risque fournisseur.
- Le TCO integre le prix d''achat, le transport, la douane, la non-qualite et les couts induits ; il peut inverser ou confirmer le classement obtenu par le seul prix affiche.
- Un tableau de score pondere multicriteres permet d''integrer des dimensions qualitatives (innovation, responsabilite sociale) dans une decision d''achat strategique, au-dela du seul cout.
- Toute decision d''achat strategique doit expliciter les criteres retenus et leur ponderation, car le resultat final en depend directement.

## Exercices pratiques

1. Classez ces trois achats dans la matrice de Kraljic : fournitures de bureau courantes ; composant electronique unique disponible chez un seul fabricant mondial ; matiere premiere principale representant 40 pourcent du cout de production avec plusieurs fournisseurs disponibles.
2. Un fournisseur affiche un prix unitaire de 500 FCFA pour 100 000 unites. Le transport coute 2 000 000 FCFA, la non-qualite est de 3 pourcent. Calculez le TCO total et le TCO unitaire.
3. Pourquoi le TCO d''un fournisseur importe peut-il rester inferieur a celui d''un fournisseur local malgre des couts de transport et de douane plus eleves ?
4. Expliquez pourquoi un tableau de score pondere peut donner un classement different de celui obtenu par le seul TCO.
5. Cas pratique complet : Kaolack Plastiques SA (fictive) compare deux fournisseurs pour 300 000 unites. Fournisseur A : prix 600 FCFA, transport 3 000 000 FCFA, douane 0, non-qualite 2,5 pourcent. Fournisseur B : prix 540 FCFA, transport 9 000 000 FCFA, douane 5 000 000 FCFA, non-qualite 4 pourcent. Calculez le TCO total et unitaire de chaque fournisseur et concluez.
6. Pourquoi les achats « goulots d''etranglement » de la matrice de Kraljic meritent-ils une attention particuliere malgre leur faible poids financier ?

## Corrige

1. Fournitures de bureau : achat simple (impact faible, risque faible). Composant unique chez un seul fabricant : goulot d''etranglement (impact faible a modere, risque tres fort car aucune alternative). Matiere premiere a 40 pourcent du cout avec plusieurs fournisseurs : achat levier (impact fort, risque faible grace a la concurrence disponible).
2. Cout d''achat = 500 x 100 000 = 50 000 000 FCFA. Cout de non-qualite = 0,03 x 100 000 x 500 = 1 500 000 FCFA. TCO total = 50 000 000 + 2 000 000 + 1 500 000 = 53 500 000 FCFA. TCO unitaire = 53 500 000 / 100 000 = 535 FCFA.
3. Si l''ecart de prix d''achat est suffisamment important, il peut compenser largement les surcouts de transport, de douane et de non-qualite lies a l''import, comme le montre le cas du Fournisseur Y qui reste moins cher en TCO malgre des couts logistiques et douaniers superieurs a ceux du Fournisseur X.
4. Le TCO ne mesure que les couts monetaires directs et indirects ; le score pondere integre en plus des criteres qualitatifs (innovation, responsabilite sociale, relation de confiance) qui ne se traduisent pas immediatement en FCFA mais influencent la performance et la durabilite de la relation a long terme, ce qui peut favoriser un fournisseur moins avantageux en TCO pur.
5. Fournisseur A : TCO total = 180 000 000+3 000 000+0+4 500 000 = 187 500 000 FCFA, TCO unitaire = 625 FCFA. Fournisseur B : TCO total = 162 000 000+9 000 000+5 000 000+6 480 000 = 182 480 000 FCFA, TCO unitaire = 608,3 FCFA. Le Fournisseur B reste moins cher en TCO malgre des couts logistiques et douaniers plus eleves.
6. Leur indisponibilite, meme ponctuelle, peut bloquer entierement une ligne de production malgre leur faible poids financier ; ils exigent donc une securisation specifique (stock de securite dedie, identification de solutions alternatives) disproportionnee par rapport a leur valeur d''achat.', 'texte', 60, false, 30
from public.courses c where c.slug = 'mas-log-m2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Achats strategiques et relations fournisseurs avancees : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Methodologie du memoire professionnel et soutenance : l''essentiel pour l''examen', 'Objectifs de la lecon : connaitre la structure type d''un memoire professionnel en logistique et transport, savoir formuler une problematique precise et une methodologie adaptee, construire un planning de redaction realiste, et preparer une soutenance convaincante devant un jury.

## Notions : memoire professionnel et memoire de recherche

Le memoire de fin d''etudes en Master 2 peut prendre deux formes principales, selon les exigences de l''etablissement : le memoire professionnel, ancre dans une mission concrete realisee en entreprise (souvent lors d''un stage), qui analyse une problematique operationnelle reelle et propose des recommandations argumentees ; et le memoire de recherche, plus academique, qui mobilise une revue de litterature approfondie et une methodologie de recherche rigoureuse (etude de cas, enquete, analyse de donnees) pour repondre a une question scientifique. Dans les deux cas, les exigences de rigueur, de structure et d''esprit critique sont similaires, seule la nature du terrain et l''accent mis sur la theorie varient.

## La structure type d''un memoire en logistique et transport

Un memoire comprend generalement sept parties. L''introduction presente le contexte, la problematique precise (une question a laquelle le memoire va repondre, pas un theme general), et l''annonce du plan. La revue de litterature mobilise les concepts et modeles pertinents (SCOR, Kraljic, modeles de localisation, gestion des risques logistiques) en les discutant, pas en les recitant, et en les reliant explicitement a la problematique retenue. La presentation du terrain d''etude decrit l''entreprise ou le secteur etudie (en respectant la confidentialite si necessaire, via une entreprise anonymisee ou fictive si le stage l''exige), avec suffisamment de details pour que le lecteur comprenne le contexte des analyses suivantes.

La methodologie explique precisement comment les donnees ont ete collectees et analysees (entretiens, observation participante, analyse de donnees chiffrees, etude de cas comparative), en justifiant ces choix par rapport a la problematique. Les resultats presentent les analyses realisees, idealement avec des donnees chiffrees et des graphiques clairs, sans melanger resultats et interpretation a ce stade. La discussion interprete ces resultats a la lumiere de la revue de litterature, propose des recommandations concretes et chiffrees quand c''est possible, et assume honnetement les limites de l''etude (echantillon restreint, donnees partielles, periode d''observation courte). La conclusion synthetise la reponse apportee a la problematique et ouvre, si pertinent, sur des perspectives futures.

## Cas d''exemple : un sujet de memoire professionnel en logistique

Prenons un exemple concret pour illustrer cette structure. Un etudiant effectue son stage de fin d''etudes chez une entreprise fictive de distribution agroalimentaire au Senegal et observe un taux de service client insuffisant. Une problematique mal formulee serait : « la logistique de l''entreprise ». Une problematique bien formulee serait : « dans quelle mesure la reorganisation du reseau de distribution de l''entreprise peut-elle ameliorer son taux de service OTIF, compte tenu des contraintes d''infrastructure routiere observees sur le terrain ? ». Cette deuxieme formulation est precise, delimitee, et appelle une methodologie claire : analyse des donnees de livraison existantes, entretiens avec les equipes logistiques, et eventuellement application d''un modele de localisation ou de tournees etudie en cours pour tester une hypothese de reorganisation.

## Construire un planning de redaction realiste

Un memoire se redige rarement en une seule phase intensive de derniere minute ; un planning realiste s''etale sur plusieurs mois, en parallele du stage ou de l''activite professionnelle. Une repartition indicative pourrait etre : un mois pour cadrer la problematique et realiser la revue de litterature initiale, deux a trois mois pour la collecte de donnees et les analyses sur le terrain (en parallele des missions du stage), un mois pour la redaction complete du corps du memoire, et deux a trois semaines pour la relecture, la mise en forme finale, et la preparation de la soutenance. Il est essentiel de commencer la redaction progressivement, section par section, au fur et a mesure de l''avancement des analyses, plutot que d''attendre d''avoir termine toute la collecte de donnees avant d''ecrire la premiere ligne.

## Preparer la soutenance devant le jury

La soutenance comprend generalement une presentation orale de dix a vingt minutes, suivie d''un echange avec le jury. La presentation doit rappeler la problematique, resumer la methodologie, presenter les resultats les plus significatifs (sans tout redire du memoire ecrit), et conclure sur les recommandations et les limites du travail. Il est fortement conseille de preparer des diapositives sobres, avec des graphiques lisibles plutot que des pages de texte dense, et de s''entrainer a l''oral plusieurs fois pour respecter le temps imparti, un depassement etant souvent mal percu par un jury.

Lors des questions du jury, trois attitudes sont attendues : l''honnetete intellectuelle, la capacite a approfondir un point sans se perdre dans un hors-sujet, et la clarte dans la reformulation d''une question mal comprise. Une bonne preparation anticipe les questions les plus probables : pourquoi ce choix methodologique, quelles limites pour les recommandations, et comment les resultats se generaliseraient a d''autres contextes.

## Points cles a retenir

- Un memoire comprend sept parties articulees : introduction, revue de litterature, terrain d''etude, methodologie, resultats, discussion, conclusion.
- Une problematique precise et delimitee est la condition de reussite d''un memoire ; un theme general ne constitue jamais une problematique exploitable.
- Le planning de redaction doit demarrer des les premieres semaines du stage, en parallele de la collecte de donnees, et non apres coup.
- La soutenance evalue a la fois le contenu du travail et la capacite a le defendre avec honnetete intellectuelle et clarte face aux questions du jury.

## Exercices pratiques

1. Transformez ce theme general en une problematique precise et delimitee : « les stocks dans une entreprise de distribution ».
2. Citez les sept parties d''un memoire et, pour chacune, une phrase resumant son role.
3. Pourquoi est-il deconseille d''attendre la fin de la collecte de donnees avant de commencer a rediger un memoire ?
4. Un etudiant presente, en soutenance, une recommandation sans en discuter aucune limite. Pourquoi cette approche peut-elle etre penalisee par le jury ?
5. Cas pratique complet : un etudiant realise son stage dans une entreprise fictive de transport routier et observe un taux d''accidents de la route en hausse. Proposez une problematique precise, deux hypotheses de methodologie pour l''etudier, et une recommandation type (sans donnees, a titre d''exemple de structure).
6. Pourquoi la premiere formulation de problematique de l''exercice 1 ne constitue-t-elle pas une problematique exploitable pour un memoire de Master ?

## Corrige

1. Exemple de problematique exploitable : « dans quelle mesure une politique de stock differenciee par categorie de produits pourrait-elle reduire le taux de rupture tout en maitrisant le cout d''immobilisation financiere, dans le contexte de l''entreprise etudiee ? ». Cette formulation precise le levier etudie (politique differenciee), les deux objectifs en tension (rupture, cout) et le contexte (l''entreprise concernee).
2. Introduction (contexte et problematique), revue de litterature (concepts mobilises et discutes), terrain d''etude (presentation de l''entreprise ou du secteur), methodologie (comment les donnees ont ete collectees), resultats (presentation des analyses), discussion (interpretation et recommandations), conclusion (synthese et perspectives).
3. Rediger progressivement permet de clarifier sa pensee au fur et a mesure, d''identifier plus tot les lacunes de donnees ou de methodologie qui necessiteraient un complement de collecte, et d''eviter une surcharge de travail ingerable dans les dernieres semaines avant la remise, periode ou le risque d''erreurs et de stress est maximal.
4. Une recommandation sans limite discutee peut paraitre naive ou insuffisamment reflechie aux yeux d''un jury exigeant, qui attend une posture de futur cadre capable d''evaluer la portee et les conditions de validite de ses propres propositions, pas seulement de les enoncer.
5. Problematique possible : « dans quelle mesure l''optimisation des tournees et la formation des conducteurs peuvent-elles reduire le taux d''accidents observe chez l''entreprise etudiee ? ». Hypotheses de methodologie : analyse statistique des rapports d''incidents existants sur plusieurs mois, et entretiens avec les conducteurs et le responsable securite pour identifier les causes recurrentes. Recommandation type : mettre en place un programme de formation cible sur les causes les plus frequentes identifiees, associe a un suivi d''indicateurs mensuel.
6. « Les stocks dans une entreprise de distribution » est un theme, pas une question : il ne precise ni le levier d''action etudie, ni l''objectif poursuivi, ni le contexte precis, ce qui rend impossible de construire une methodologie ciblee ou de savoir a quel moment la question aura ete « repondue » par le memoire.', 'texte', 60, false, 40
from public.courses c where c.slug = 'mas-log-m2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Methodologie du memoire professionnel et soutenance : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Sujet type d''examen de Master 2 logistique et transport (entrainement, corrige detaille)', 'Ce sujet type (non officiel, bareme indicatif) couvre les trois matieres du Master 2 : logistique 4.0 et digitalisation, achats strategiques, methodologie du memoire. Duree indicative : 2 heures. Entreprise fictive etudiee : Niayes Fresh Export SA, qui transforme et exporte des legumes frais depuis la zone des Niayes vers l''Europe, et envisage a la fois un investissement technologique et une revision de sa politique d''achat d''emballages.

## Partie 1 : logistique 4.0 et digitalisation (bareme indicatif : 7 points)

Donnees : Niayes Fresh Export SA envisage d''investir 50 000 000 FCFA dans un systeme combinant un TMS et un module de tracabilite. Les gains annuels attendus sont : reduction des couts de transport grace a une meilleure planification, 8 000 000 FCFA ; reduction des litiges clients grace a la tracabilite, 12 000 000 FCFA ; reduction du surstock, 9 000 000 FCFA.

Question 1.1 (2 points) : calculez le gain annuel total et le payback simple du projet.
Question 1.2 (3 points) : calculez la VAN du projet sur un horizon de cinq ans, avec un taux d''actualisation fictif de 10 pourcent par an, et commentez le resultat.
Question 1.3 (2 points) : expliquez, avec vos propres mots, pourquoi un investissement en tracabilite peut reduire les litiges clients pour une entreprise exportatrice de produits frais.

## Partie 2 : achats strategiques (bareme indicatif : 7 points)

Donnees : Niayes Fresh Export SA compare deux fournisseurs d''emballages pour un volume annuel de 400 000 unites. Fournisseur P (local) : prix unitaire 900 FCFA, transport 4 000 000 FCFA, douane nulle, taux de non-qualite 2 pourcent. Fournisseur Q (import) : prix unitaire 760 FCFA, transport 16 000 000 FCFA, douane 9 000 000 FCFA, taux de non-qualite 3,5 pourcent.

Question 2.1 (4 points) : calculez le TCO total et le TCO unitaire de chaque fournisseur, et concluez sur le choix a recommander.
Question 2.2 (2 points) : dans quelle categorie de la matrice de Kraljic situeriez-vous cet achat d''emballages si l''entreprise disposait de nombreux fournisseurs alternatifs disponibles sur le marche ? Justifiez.
Question 2.3 (1 point) : citez un critere qualitatif, autre que le TCO, qui pourrait justifier de choisir le fournisseur le plus cher en TCO.

## Partie 3 : methodologie du memoire (bareme indicatif : 6 points)

Un etudiant en stage chez Niayes Fresh Export SA souhaite consacrer son memoire professionnel a la question suivante, telle qu''il l''a d''abord formulee : « la digitalisation dans les entreprises agro-exportatrices ».

Question 3.1 (2 points) : expliquez pourquoi cette formulation ne constitue pas une problematique exploitable, et reformulez-la en une problematique precise et delimitee en lien avec le cas de l''entreprise.
Question 3.2 (2 points) : proposez une methodologie adaptee (deux elements minimum) pour repondre a cette problematique reformulee.
Question 3.3 (2 points) : citez les sept parties attendues dans la structure du memoire et precisez dans laquelle se trouverait la discussion des limites du travail.

## Corrige detaille

1.1 Gain annuel total = 8 000 000+12 000 000+9 000 000 = 29 000 000 FCFA. Payback = 50 000 000/29 000 000 = 1,72 an, un resultat favorable.
1.2 Avec un taux d''actualisation de 10 pourcent sur cinq ans, la VAN se calcule en actualisant chaque gain annuel de 29 000 000 FCFA et en soustrayant l''investissement initial de 50 000 000 FCFA ; le resultat obtenu est d''environ 59 932 816 FCFA, largement positif, ce qui confirme la rentabilite du projet meme en tenant compte de la valeur temporelle de l''argent.
1.3 La tracabilite permet d''identifier precisement l''origine et le parcours d''un lot de produits frais ; en cas de non-conformite detectee par un client, l''entreprise peut demontrer la conformite du reste de sa production et isoler uniquement le lot concerne, ce qui evite des litiges generalises portant sur l''ensemble d''une livraison ou d''une periode de production.

2.1 Fournisseur P : cout d''achat = 900x400 000 = 360 000 000 FCFA, non-qualite = 0,02x400 000x900 = 7 200 000 FCFA, TCO total = 360 000 000+4 000 000+0+7 200 000 = 371 200 000 FCFA, TCO unitaire = 928,0 FCFA. Fournisseur Q : cout d''achat = 304 000 000 FCFA, non-qualite = 0,035x400 000x760 = 10 640 000 FCFA, TCO total = 304 000 000+16 000 000+9 000 000+10 640 000 = 339 640 000 FCFA, TCO unitaire = 849,1 FCFA. Le Fournisseur Q, malgre des couts logistiques et douaniers plus eleves, reste moins cher en TCO ; il est donc recommande sur ce seul critere.
2.2 Avec de nombreux fournisseurs alternatifs disponibles, cet achat se classe dans la categorie « leviers » de la matrice de Kraljic : impact financier significatif (achat recurrent en volume), mais risque fournisseur faible grace a la possibilite de mise en concurrence active entre plusieurs fournisseurs.
2.3 La responsabilite sociale et environnementale du fournisseur (conditions de travail, empreinte carbone du transport, gestion des dechets d''emballage) pourrait justifier de preferer le Fournisseur P malgre un TCO superieur, si l''entreprise valorise cette dimension dans sa politique d''achat.

3.1 « La digitalisation dans les entreprises agro-exportatrices » est un theme general, sans levier d''action precis, sans objectif mesurable, et sans contexte delimite : il est impossible de savoir a quel moment la question aurait ete « repondue ». Reformulation possible : « dans quelle mesure l''investissement dans un systeme de tracabilite numerique peut-il reduire les litiges clients de Niayes Fresh Export SA, compte tenu des contraintes operationnelles observees lors du stage ? ».
3.2 Methodologie possible : analyse quantitative des litiges clients enregistres sur les deux dernieres annees (frequence, cause, cout associe), et entretiens avec le service qualite et le service commercial pour identifier les causes recurrentes et les attentes des clients en matiere de tracabilite.
3.3 Introduction, revue de litterature, terrain d''etude, methodologie, resultats, discussion, conclusion. La discussion des limites se trouve dans la partie discussion, ou les resultats sont interpretes et les recommandations nuancees par les limites methodologiques du travail (echantillon, periode d''observation, acces aux donnees).

## Exercices pratiques

1. Pourquoi le payback (1.72 an) et la VAN (positive sur cinq ans) convergent-ils tous deux vers une recommandation favorable au projet de la partie 1, malgre leurs methodes de calcul differentes ?
2. Si le taux de non-qualite du Fournisseur Q (partie 2) passait de 3,5 pourcent a 6 pourcent, sans changer les autres donnees, le classement entre P et Q serait-il remis en cause ? Justifiez par un calcul.
3. Pourquoi une problematique de memoire doit-elle toujours etre ancree dans le contexte specifique de l''entreprise du stage, plutot que de rester generale ?

## Corrige

1. Le payback mesure un delai de remboursement sans actualisation, tandis que la VAN mesure une creation de valeur nette actualisee ; ils convergent ici parce que le gain annuel (29 000 000 FCFA) est tres superieur au seuil minimal necessaire pour rentabiliser l''investissement, meme en tenant compte de l''actualisation, ce qui rend le projet robuste a la methode de calcul choisie.
2. Nouveau cout de non-qualite du Fournisseur Q = 0,06x400 000x760 = 18 240 000 FCFA. Nouveau TCO total = 304 000 000+16 000 000+9 000 000+18 240 000 = 347 240 000 FCFA, soit un TCO unitaire de 868,1 FCFA, toujours inferieur a celui du Fournisseur P (928,0 FCFA) : le classement n''est pas remis en cause, meme si l''ecart se reduit sensiblement.
3. Une problematique ancree dans le contexte reel du stage permet de mobiliser des donnees effectivement accessibles a l''etudiant, garantit la pertinence professionnelle du travail pour l''entreprise d''accueil, et donne au jury une base concrete pour evaluer la rigueur de la methodologie, contrairement a une problematique generale qui resterait trop abstraite pour etre traitee serieusement en quelques mois.', 'texte', 60, false, 50
from public.courses c where c.slug = 'mas-log-m2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Sujet type d''examen de Master 2 logistique et transport (entrainement, corrige detaille)');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours video (1h30) : Logistique 4.0 et digitalisation de la chaine d''approvisionnement', '## Fiche du cours video

Duree : 1h30. Objectifs : savoir construire un business case complet d''investissement technologique (payback, VAN, TRI), comprendre les briques de la logistique 4.0 (WMS, TMS, tracabilite), et mesurer l''impact economique de la tracabilite en situation de crise. Materiel : tableau ou diaporama avec les donnees de Sine Agro-Industries SA, calculatrice. Prerequis : notions de base des indicateurs de rentabilite (payback, VAN, TRI) vues en lecon 2.

## Deroule minute

## 00:00 – 05:00 · Introduction

Bonjour et bienvenue dans ce cours consacre a la logistique 4.0 et a la digitalisation de la chaine d''approvisionnement. Nous allons etudier le cas de Sine Agro-Industries SA, une entreprise fictive de transformation agroalimentaire senegalaise qui envisage d''investir dans un systeme de gestion d''entrepot, un WMS, pour ameliorer sa productivite et reduire ses erreurs de preparation de commandes. Notre mission est de construire, etape par etape, le business case complet qui permettra a la direction de decider en connaissance de cause.

## 05:00 – 20:00 · Les briques technologiques de la logistique 4.0

Avant de plonger dans les calculs, prenons le temps de bien distinguer les grandes briques technologiques de la logistique 4.0. Le WMS, pour Warehouse Management System, pilote finement les operations a l''interieur d''un entrepot : reception des marchandises, rangement optimise selon des regles d''emplacement, preparation des commandes en guidant les operateurs sur le chemin le plus court, et expedition. Le TMS, pour Transport Management System, se concentre sur l''exterieur de l''entrepot : planification des tournees, choix des transporteurs, suivi en temps reel des livraisons. Ces deux systemes sont complementaires et communiquent generalement entre eux pour assurer une continuite de l''information du stock jusqu''a la livraison finale chez le client.

La troisieme brique, la tracabilite numerique, permet de suivre un produit tout au long de sa chaine, depuis la matiere premiere jusqu''au client final. Elle s''appuie sur des identifiants uniques, qui peuvent etre de simples codes-barres, des puces RFID plus sophistiquees, ou, dans les systemes les plus avances, des registres de type blockchain, qui garantissent que les informations enregistrees ne peuvent pas etre modifiees retroactivement, un atout important pour la confiance des clients internationaux dans les filieres agroalimentaires exportatrices.

## 20:00 – 35:00 · Construire le business case : gains annuels et payback

Entrons maintenant dans le cas concret de Sine Agro-Industries SA. L''investissement envisage pour le WMS s''eleve a 60 millions de FCFA, comprenant la licence du logiciel, l''integration avec les systemes existants, et la formation des equipes. L''equipe projet identifie trois sources de gains annuels. Premiere source : une reduction des erreurs de picking, c''est-a-dire des erreurs de preparation de commandes, qui genere moins de retours et de litiges clients, estimee a 9 millions de FCFA par an. Deuxieme source : un gain de productivite en manutention, grace a l''optimisation des parcours des operateurs dans l''entrepot, qui reduit les heures supplementaires necessaires, estime a 14 millions de FCFA par an. Troisieme source : une reduction du surstock, grace a une meilleure visibilite des niveaux de stock reels en temps reel, estimee a 11 millions de FCFA par an.

Le gain annuel total est donc de 9 plus 14 plus 11 millions, soit 34 millions de FCFA par an. Le premier indicateur a calculer est le payback simple : il suffit de diviser l''investissement par le gain annuel, soit 60 millions divise par 34 millions, ce qui donne environ 1,76 annee. C''est un resultat tres favorable : en moins de deux ans, les gains operationnels auront entierement remboursé l''investissement initial, sans meme tenir compte de l''actualisation.

## 35:00 – 45:00 · La VAN et le TRI : au-dela du payback simple

Le payback simple a une limite importante : il ne tient pas compte du fait qu''un FCFA recu dans cinq ans vaut moins qu''un FCFA recu aujourd''hui, en raison du cout du capital et de l''inflation. Pour integrer cette dimension, nous calculons la valeur actuelle nette, la VAN, qui actualise chaque gain annuel futur avant de le sommer, puis soustrait l''investissement initial. Avec un taux d''actualisation fictif de 10 pourcent par an, retenu comme hypothese de travail pour cet exemple, et un horizon d''analyse de cinq ans, le calcul de la VAN donne environ 68 887 000 FCFA, un resultat largement positif qui confirme la creation de valeur reelle du projet, meme apres avoir tenu compte du cout du temps.

Le troisieme indicateur, le taux de rentabilite interne ou TRI, correspond au taux d''actualisation pour lequel la VAN serait exactement nulle. Pour ce projet, le TRI calcule sur cinq ans est d''environ 48,9 pourcent. C''est un niveau tres eleve, qui signifie que le projet resterait rentable meme si le cout du capital de l''entreprise etait beaucoup plus eleve que les 10 pourcent retenus en hypothese de base. Un TRI nettement superieur au cout du capital habituel de l''entreprise constitue un argument tres solide face a une direction generale hesitante devant un investissement technologique dont les benefices, bien que reels, restent moins tangibles qu''un investissement en machines de production.

## PAUSE INTERACTIVE - QUIZ (45:00 – 50:00)

Verifions votre comprehension. Question 1 : pourquoi le payback simple surestime-t-il legerement la rentabilite d''un projet par rapport a la VAN ? Reponse : parce qu''il ne tient pas compte de l''actualisation des gains futurs, qui, dans la realite, valent moins qu''un gain immediat. Question 2 : si le taux d''actualisation retenu augmentait, la VAN d''un meme projet augmenterait-elle ou diminuerait-elle ? Reponse : elle diminuerait, car des gains futurs plus fortement actualises pesent moins dans le calcul. Question 3 : qu''est-ce que le TRI represente concretement ? Reponse : le taux d''actualisation exact pour lequel la VAN du projet serait nulle, c''est-a-dire le seuil de rentabilite du projet exprime en taux.

## 50:00 – 65:00 · La tracabilite numerique en situation de crise

Abordons maintenant un aspect souvent sous-estime de la digitalisation : son role en situation de crise. Imaginons qu''un incident de qualite soit detecte sur un produit de Sine Agro-Industries SA, apres sa mise sur le marche. Sans systeme de tracabilite precis, l''entreprise ne peut generalement pas distinguer les unites reellement affectees des autres unites issues du meme lot de production ; elle doit donc, par precaution, rappeler l''integralite du lot, ce qui peut representer des volumes considerables.

Prenons un exemple chiffre fictif. Le produit se vend a 2 500 FCFA le kilogramme. Sans tracabilite precise, un rappel generalise concernerait 50 000 kilogrammes, pour un cout de 50 000 fois 2 500, soit 125 millions de FCFA. Avec une tracabilite numerique fine, associant un identifiant unique a chaque sous-lot et un horodatage precis des etapes de transformation, le rappel peut etre cible sur les seules unites reellement concernees, soit 3 200 kilogrammes dans notre exemple, pour un cout de 3 200 fois 2 500, soit 8 millions de FCFA. L''economie realisee est de 125 millions moins 8 millions, soit 117 millions de FCFA, c''est-a-dire 93,6 pourcent de reduction du cout du rappel. Ce chiffre, bien que fictif, illustre pourquoi la tracabilite numerique doit etre presentee a une direction generale non pas comme un simple outil de productivite, mais comme un outil de gestion du risque a part entiere, dont la valeur se revele pleinement au moment ou une crise survient.

## 65:00 – 80:00 · Synthese et recommandations pour Sine Agro-Industries SA

Reprenons l''ensemble de notre analyse pour construire une recommandation complete a destination de la direction de Sine Agro-Industries SA. Sur le plan de la rentabilite pure, les trois indicateurs calcules convergent vers une recommandation tres favorable : un payback de moins de deux ans, une VAN positive de pres de 69 millions de FCFA sur cinq ans, et un TRI de 48,9 pourcent, nettement superieur a tout cout du capital raisonnable pour une entreprise senegalaise. Sur le plan du risque, l''investissement dans un module de tracabilite associe au WMS offrirait une protection supplementaire, difficile a chiffrer precisement a l''avance mais potentiellement tres significative, comme le montre notre exemple de rappel de produit.

Notre recommandation finale integre ces deux dimensions : approuver l''investissement dans le WMS, en veillant a inclure, des la phase de cahier des charges, un module de tracabilite suffisamment robuste, plutot que de le considerer comme une option separee a ajouter plus tard a un cout supplementaire. Cette approche integree permet de mutualiser une partie des couts d''integration et de formation, et d''eviter une double mobilisation des equipes internes pour deux projets distincts qui auraient pu etre menes conjointement.

## 80:00 – 85:00 · Discussion critique des limites

Comme pour tout exercice de business case, il est essentiel de discuter les limites de notre analyse. Les gains annuels retenus (9, 14 et 11 millions de FCFA) sont des estimations de l''equipe projet, qui devraient idealement etre validees par un pilote sur un echantillon restreint de l''entrepot avant un deploiement complet. Le taux d''actualisation de 10 pourcent est une hypothese fictive pour cet exercice ; en entreprise reelle, il devrait correspondre au cout moyen pondere du capital de l''entreprise, une donnee financiere precise a obtenir auprès de la direction financiere. Enfin, notre calcul ne tient pas compte du risque d''echec d''implementation, qui pourrait retarder ou reduire les gains attendus si la conduite du changement n''est pas correctement menee auprès des equipes d''entrepot.

## 85:00 – 90:00 · Evaluation finale

Cinq questions pour conclure. Question 1 : quelle est la formule du payback simple ? Reponse : investissement divise par gain annuel. Question 2 : quel est le role respectif du WMS et du TMS ? Reponse : le WMS pilote les operations a l''interieur de l''entrepot, le TMS pilote le transport et les tournees a l''exterieur. Question 3 : pourquoi la VAN est-elle consideree comme plus rigoureuse que le payback simple ? Reponse : parce qu''elle actualise les gains futurs pour tenir compte de la valeur temporelle de l''argent. Question 4 : dans l''exemple chiffre de rappel de produit, quelle est l''economie realisee grace a la tracabilite numerique ? Reponse : 117 millions de FCFA, soit 93,6 pourcent de reduction du cout du rappel. Question 5 : pourquoi recommande-t-on d''integrer la tracabilite au projet WMS plutot que de la traiter comme un projet separe ulterieur ? Reponse : parce que cela mutualise les couts d''integration et de formation et evite une double mobilisation des equipes pour deux projets qui auraient pu etre menes conjointement. Merci pour votre attention, et a bientot pour le cours consacre aux achats strategiques.', 'video', 90, false, 60
from public.courses c where c.slug = 'mas-log-m2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours video (1h30) : Logistique 4.0 et digitalisation de la chaine d''approvisionnement');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours video (1h30) : Achats strategiques et relations fournisseurs avancees', '## Fiche du cours video

Duree : 1h30. Objectifs : savoir segmenter un portefeuille d''achats avec la matrice de Kraljic, calculer et comparer le cout total de possession (TCO) de plusieurs fournisseurs, et construire un tableau de score pondere multicriteres pour arbitrer une decision d''achat strategique. Materiel : tableau ou diaporama avec les donnees de Thies Emballages SA, calculatrice. Prerequis : notions de base de calcul de cout et de pourcentage.

## Deroule minute

## 00:00 – 05:00 · Introduction

Bonjour et bienvenue dans ce cours consacre aux achats strategiques et aux relations fournisseurs avancees. Nous allons etudier le cas de Thies Emballages SA, une entreprise fictive de conditionnement de produits alimentaires, qui doit choisir entre deux fournisseurs d''emballages pour un volume annuel important. L''enjeu de cette seance est de depasser la seule comparaison des prix affiches pour construire une decision d''achat veritablement argumentee.

## 05:00 – 20:00 · La matrice de Kraljic : segmenter le portefeuille d''achats

Avant de comparer des fournisseurs precis, il faut savoir situer le type d''achat concerne dans sa strategie globale. La matrice de Kraljic segmente les achats d''une entreprise selon deux axes : l''impact sur le resultat, c''est-a-dire le poids financier ou strategique de l''achat, et la complexite ou le risque du marche fournisseur, c''est-a-dire la difficulte a trouver des alternatives en cas de probleme. Quatre categories en resultent, et chacune appelle une strategie d''achat differente.

Les achats dits « leviers » combinent un impact fort et un risque faible : plusieurs fournisseurs sont disponibles, ce qui permet une mise en concurrence active pour obtenir les meilleures conditions. Les achats dits « strategiques » combinent impact fort et risque fort : peu de fournisseurs alternatifs existent pour un achat qui pese lourdement sur l''activite, ce qui impose de construire un partenariat approfondi plutot qu''une simple relation transactionnelle. Les achats « simples » ou de routine presentent un impact et un risque tous deux faibles : fournitures de bureau, petit materiel courant, geres avec un minimum d''effort administratif via des catalogues ou des commandes automatisees. Les achats « goulots d''etranglement », enfin, ont un impact financier faible mais un risque fort : leur indisponibilite, meme ponctuelle, peut bloquer entierement une production, ce qui justifie une securisation disproportionnee par rapport a leur valeur d''achat.

## 20:00 – 40:00 · Calculer le cout total de possession (TCO)

Entrons maintenant dans le calcul central de cette seance : le cout total de possession, ou TCO. Le principe est simple a enoncer mais souvent neglige en pratique : le prix d''achat affiche ne reflete jamais l''ensemble des couts reels supportes par l''entreprise. Il faut y ajouter le transport, les droits de douane eventuels, le cout de la non-qualite, c''est-a-dire les produits defectueux a remplacer ou a retraiter, et les couts induits comme un stock de securite supplementaire necessaire pour couvrir des delais d''approvisionnement plus longs ou plus incertains.

Thies Emballages SA compare, pour un volume annuel de 500 000 unites, le Fournisseur X implante a Dakar, et le Fournisseur Y implante a Abidjan, qui propose un prix unitaire plus bas. Calculons d''abord le TCO du Fournisseur X. Le prix unitaire est de 850 FCFA, soit un cout d''achat de 850 fois 500 000, soit 425 millions de FCFA. Le transport coute 6 millions de FCFA, la douane est nulle car le fournisseur est local, le taux de non-qualite est de 2 pourcent, soit un cout de non-qualite de 0,02 fois 500 000 fois 850, soit 8,5 millions de FCFA, et le stock de securite supplementaire necessaire est de 3 millions de FCFA. Le TCO total du Fournisseur X est donc de 425 plus 6 plus 0 plus 8,5 plus 3 millions, soit 442,5 millions de FCFA, soit un TCO unitaire de 885,0 FCFA.

Calculons maintenant le TCO du Fournisseur Y. Le prix unitaire est de 720 FCFA, soit un cout d''achat de 360 millions de FCFA. Le transport coute 22 millions de FCFA, car il s''agit d''un transport inter-etats plus couteux. Les droits de douane s''elevent a 14,5 millions de FCFA. Le taux de non-qualite est plus eleve, 4,5 pourcent, soit un cout de 0,045 fois 500 000 fois 720, soit 16,2 millions de FCFA. Enfin, le stock de securite supplementaire, necessaire pour couvrir des delais d''approvisionnement plus longs et plus variables, est estime a 9 millions de FCFA. Le TCO total du Fournisseur Y est de 360 plus 22 plus 14,5 plus 16,2 plus 9 millions, soit 421,7 millions de FCFA, soit un TCO unitaire de 843,4 FCFA.

Le resultat est riche d''enseignement : meme en integrant tous les couts caches, le Fournisseur Y reste moins cher en TCO que le Fournisseur X, mais l''ecart s''est fortement reduit par rapport a la seule comparaison des prix affiches. Cela confirme une regle fondamentale des achats strategiques : il ne faut jamais presumer, sans calcul complet, qu''un fournisseur local est toujours plus couteux, ni qu''un fournisseur importe au prix affiche le plus bas sera necessairement le plus economique une fois tous les couts integres.

## PAUSE INTERACTIVE - QUIZ (45:00 – 50:00)

Verifions votre comprehension. Question 1 : dans quelle categorie de la matrice de Kraljic classeriez-vous un composant unique disponible chez un seul fournisseur mondial, meme si son cout unitaire est faible ? Reponse : goulot d''etranglement, car le risque d''indisponibilite est tres fort malgre un impact financier limite. Question 2 : le TCO integre-t-il uniquement des couts monetaires directs ? Reponse : non, il integre aussi des couts indirects comme le stock de securite supplementaire necessaire pour couvrir des delais plus longs ou plus incertains. Question 3 : pourquoi ne faut-il jamais choisir un fournisseur sur le seul prix d''achat affiche pour un achat strategique ? Reponse : parce que des couts caches significatifs (transport, douane, non-qualite, stock de securite) peuvent inverser le classement obtenu avec le seul prix.

## 50:00 – 70:00 · Le tableau de score pondere multicriteres

Pour un achat veritablement strategique, meme le TCO ne suffit pas toujours, car des criteres qualitatifs peuvent peser dans la decision finale : la capacite d''innovation du fournisseur, sa responsabilite sociale et environnementale, la qualite de la relation de confiance etablie au fil du temps. Le tableau de score pondere permet d''integrer ces dimensions dans une decision argumentee et transparente.

La methode consiste a attribuer un poids a chaque critere, dont la somme doit faire 100 pourcent : par exemple, prix 30 pourcent, qualite 25 pourcent, delai 20 pourcent, capacite d''innovation 15 pourcent, responsabilite sociale 10 pourcent. On attribue ensuite une note sur dix a chaque fournisseur pour chaque critere, et on calcule un score global pondere en multipliant chaque note par son poids, puis en additionnant. Dans notre exercice d''application, le Fournisseur X obtient un score pondere de 7,75 sur dix, et le Fournisseur Y un score de 7,6 sur dix. L''ecart est tres faible, et le classement s''inverse presque par rapport au seul TCO, ou le Fournisseur Y etait legerement avantage.

Que faut-il conclure de cette apparente contradiction entre les deux outils ? Rien de contradictoire en realite : le TCO mesure une dimension purement economique, tandis que le score pondere integre des dimensions qualitatives supplementaires qui comptent dans une relation fournisseur de long terme. Un acheteur qui privilegie la stabilite et la responsabilite sociale pourrait legitimement preferer le Fournisseur X malgre un TCO legerement superieur, tandis qu''un acheteur focalise sur la minimisation du cout pur choisirait le Fournisseur Y. Le role de l''acheteur strategique est precisement de rendre cet arbitrage explicite devant sa direction, plutot que de le masquer derriere un seul chiffre presente comme une verite absolue.

## 70:00 – 85:00 · Recommandation finale et discussion critique

Pour Thies Emballages SA, notre recommandation finale depend de la priorite strategique de l''entreprise. Si l''objectif prioritaire est la minimisation du cout total sur l''horizon de l''annee en cours, le Fournisseur Y doit etre retenu, avec une vigilance particuliere sur le suivi de son taux de non-qualite, plus eleve, qui pourrait se degrader si les volumes commandes augmentent. Si l''objectif prioritaire est la construction d''une relation de long terme avec un partenaire proche, capable d''innover conjointement sur les emballages et engage sur des criteres de responsabilite sociale, le Fournisseur X merite d''etre retenu malgre un cout legerement superieur.

Sur le plan critique, rappelons que la fiabilite d''un tableau de score pondere depend entierement de la qualite des notes attribuees a chaque fournisseur sur chaque critere, qui restent en partie subjectives malgre les efforts de formalisation. Il est recommande de faire noter chaque fournisseur par plusieurs personnes de l''entreprise, issues de services differents (achats, qualite, production), pour limiter les biais individuels et obtenir une evaluation plus robuste.

## 85:00 – 90:00 · Evaluation finale

Cinq questions pour conclure. Question 1 : citez les quatre categories de la matrice de Kraljic. Reponse : leviers, strategiques, simples, goulots d''etranglement. Question 2 : quels sont les cinq elements qui composent le TCO dans notre exemple ? Reponse : le prix d''achat, le transport, la douane, le cout de non-qualite, et le stock de securite supplementaire. Question 3 : quel fournisseur, X ou Y, a le TCO unitaire le plus bas dans le cas de Thies Emballages SA ? Reponse : le Fournisseur Y, avec 843,4 FCFA contre 885,0 FCFA pour le Fournisseur X. Question 4 : pourquoi le classement peut-il s''inverser entre le TCO et un tableau de score pondere multicriteres ? Reponse : parce que le score pondere integre des criteres qualitatifs supplementaires (innovation, responsabilite sociale) non capturés par le TCO, qui ne mesure que des couts economiques. Question 5 : comment limiter le biais de subjectivite dans un tableau de score pondere ? Reponse : en faisant noter chaque fournisseur par plusieurs personnes issues de services differents de l''entreprise. Merci pour votre attention, et a bientot pour le cours consacre a la methodologie du memoire professionnel.', 'video', 90, false, 70
from public.courses c where c.slug = 'mas-log-m2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours video (1h30) : Achats strategiques et relations fournisseurs avancees');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours video (1h30) : Methodologie du memoire professionnel et soutenance', '## Fiche du cours video

Duree : 1h30. Objectifs : connaitre la structure complete d''un memoire professionnel en logistique et transport, savoir transformer un theme general en problematique precise et delimitee, construire un planning de redaction realiste, et preparer une soutenance convaincante devant un jury. Materiel : tableau ou diaporama avec l''exemple fil rouge d''un etudiant en stage, support de plan type. Prerequis : avoir lu la lecon 4 sur la methodologie du memoire.

## Deroule minute

## 00:00 – 05:00 · Introduction

Bonjour et bienvenue dans ce cours consacre a la methodologie du memoire professionnel et a la soutenance. C''est un cours particulier dans ce module : il ne porte pas sur un calcul logistique, mais sur l''exercice qui conditionne directement votre obtention du diplome de Master 2. Nous allons suivre, tout au long de cette seance, l''exemple fil rouge d''un etudiant en stage chez une entreprise fictive de distribution agroalimentaire, qui observe un probleme de taux de service et souhaite en faire le sujet de son memoire.

## 05:00 – 20:00 · De l''observation de terrain a la problematique precise

Tout memoire part d''une observation de terrain, mais le piege le plus frequent consiste a rester au niveau d''un theme general plutot que de construire une veritable problematique. Notre etudiant observe que le taux de service de l''entreprise, mesure par l''OTIF, est insuffisant. Une premiere formulation, maladroite, serait : « la logistique de l''entreprise » ou meme « le probleme de livraison ». Ces formulations ne constituent pas des problematiques exploitables, car elles ne precisent ni le levier d''action etudie, ni l''objectif poursuivi, ni le contexte delimite dans lequel l''etude se deroule.

Une problematique bien construite repond a trois exigences. Elle doit etre une question, pas un theme : elle commence souvent par « dans quelle mesure », « comment », ou « pourquoi ». Elle doit etre delimitee : elle precise l''entreprise ou le terrain etudie, la periode consideree, et le perimetre exact du probleme. Elle doit etre operationnalisable : il doit etre possible de collecter des donnees reelles pour y repondre dans le temps imparti du stage. Pour notre etudiant, une problematique bien construite serait : « dans quelle mesure la reorganisation du reseau de distribution de l''entreprise peut-elle ameliorer son taux de service OTIF, compte tenu des contraintes d''infrastructure routiere observees sur le terrain ? ». Cette formulation precise le levier (la reorganisation du reseau), l''objectif mesurable (l''OTIF), et le contexte (les contraintes observees sur ce terrain specifique).

## 20:00 – 35:00 · Construire la methodologie adaptee

Une fois la problematique fixee, il faut construire une methodologie coherente, c''est-a-dire expliquer precisement comment on va collecter et analyser les donnees necessaires pour y repondre. Pour notre etudiant, deux types de donnees sont pertinents : des donnees quantitatives, par exemple l''historique des livraisons avec leurs delais et leur completude, pour calculer l''OTIF sur differentes periodes et differentes zones de livraison ; et des donnees qualitatives, obtenues par des entretiens avec les equipes logistiques et les chauffeurs, pour comprendre les causes operationnelles des retards que les chiffres seuls ne peuvent pas reveler.

Il est egalement pertinent, dans ce cas, de mobiliser un modele vu en cours, par exemple le modele du centre de gravite ou l''algorithme des gains, pour tester une hypothese concrete de reorganisation et en estimer l''impact potentiel sur les kilometres parcourus et, indirectement, sur la fiabilite des delais. Cette combinaison entre donnees de terrain et modeles academiques constitue precisement ce qui distingue un memoire professionnel de qualite d''un simple rapport de stage descriptif : le memoire mobilise les outils conceptuels du Master pour analyser une situation reelle, et ne se contente pas de la decrire.

## PAUSE INTERACTIVE - QUIZ (45:00 – 50:00)

Verifions votre comprehension. Question 1 : pourquoi « le probleme de livraison » ne constitue-t-il pas une problematique exploitable ? Reponse : parce que cette formulation ne precise ni le levier d''action, ni l''objectif mesurable, ni le contexte delimite. Question 2 : quelles sont les trois exigences d''une problematique bien construite ? Reponse : etre une question, etre delimitee, etre operationnalisable avec les donnees accessibles pendant le stage. Question 3 : pourquoi est-il recommande de combiner donnees quantitatives et donnees qualitatives dans la methodologie d''un memoire ? Reponse : parce que les donnees quantitatives montrent l''ampleur d''un phenomene, mais rarement ses causes profondes, que des entretiens qualitatifs permettent souvent de mieux comprendre.

## 50:00 – 65:00 · Planifier la redaction et eviter les pieges courants

Passons maintenant a la planification concrete de la redaction. Un planning realiste s''etale sur plusieurs mois en parallele du stage : environ un mois pour cadrer la problematique et realiser la revue de litterature initiale, deux a trois mois pour la collecte de donnees et les analyses de terrain, un mois pour la redaction complete du corps du memoire, et deux a trois semaines pour la relecture et la preparation de la soutenance. Le piege le plus frequent, et le plus couteux en stress et en qualite finale, consiste a attendre la fin complete de la collecte de donnees avant de commencer a ecrire la premiere ligne du memoire.

La bonne pratique consiste a rediger progressivement, section par section, au fur et a mesure de l''avancement : rediger l''introduction et la revue de litterature des les premieres semaines, meme si elles seront retouchees plus tard ; rediger la section methodologie dès qu''elle est stabilisee ; et commencer a rediger les resultats au fur et a mesure que chaque analyse est terminee, plutot que d''attendre d''avoir toutes les donnees. Cette approche progressive permet aussi d''identifier plus tot les lacunes de donnees qui necessiteraient une collecte complementaire, alors qu''il est encore temps d''agir, plutot que de le decouvrir dans les derniers jours avant la remise.

## 65:00 – 80:00 · Preparer et reussir la soutenance

La soutenance comprend generalement une presentation orale de dix a vingt minutes, suivie d''un echange avec le jury. La presentation doit rappeler brievement la problematique et le contexte, resumer la methodologie sans entrer dans tous les details deja presents dans le memoire ecrit, presenter les resultats les plus significatifs avec des graphiques lisibles plutot que des pages de texte dense, et conclure sur les recommandations et les limites assumees du travail. Un entrainement a l''oral, chronometre, est indispensable pour respecter le temps imparti, un depassement etant generalement mal percu par un jury qui gere plusieurs soutenances dans la journee.

Lors des questions du jury, trois reflexes sont a privilegier. D''abord, l''honnetete intellectuelle : reconnaitre une limite ou une faiblesse du travail plutot que de se justifier maladroitement en cherchant a minimiser le probleme souleve. Ensuite, la clarte dans la reformulation d''une question mal comprise, plutot que de repondre a cote par peur de demander une precision. Enfin, la capacite a relier chaque reponse aux concepts du cours mobilises dans le memoire, ce qui demontre au jury une maitrise durable des enseignements du Master, et pas seulement une restitution ponctuelle pour l''occasion de l''ecrit.

## 80:00 – 85:00 · Synthese

Pour conclure cette seance, rappelons l''enchainement logique complet : une observation de terrain devient une problematique precise et delimitee, qui appelle une methodologie adaptee combinant donnees quantitatives et qualitatives, redigee progressivement selon un planning realiste, et defendue en soutenance avec honnetete intellectuelle et clarte. Chacune de ces etapes echoue si la precedente a ete bacleee : une problematique floue rend impossible une methodologie ciblee, une methodologie mal pensee produit des resultats difficiles a interpreter, et des resultats fragiles rendent la soutenance perilleuse face a un jury attentif. Gardez aussi a l''esprit que ce memoire n''est pas seulement un exercice academique isole : pour beaucoup d''entre vous, il constituera la premiere piece concrete d''un dossier professionnel a presenter a de futurs employeurs, qui pourront y verifier votre capacite a structurer une analyse, a argumenter une recommandation chiffree, et a assumer les limites d''un travail reel face a des contraintes de temps et de donnees, exactement les competences attendues d''un jeune cadre logistique.

## 85:00 – 90:00 · Evaluation finale

Cinq questions pour conclure. Question 1 : quelles sont les trois exigences d''une problematique bien construite ? Reponse : etre une question, etre delimitee, etre operationnalisable. Question 2 : pourquoi faut-il eviter d''attendre la fin de la collecte de donnees pour commencer a rediger ? Reponse : parce que cela cree une surcharge de travail ingerable en fin de parcours et retarde la detection de lacunes de donnees qu''il serait encore temps de combler plus tot. Question 3 : citez deux types de donnees complementaires a combiner dans une methodologie de memoire. Reponse : des donnees quantitatives (chiffrees, statistiques) et des donnees qualitatives (entretiens, observation). Question 4 : quelle attitude privilegier face a une question du jury qui souligne une limite du travail ? Reponse : l''honnetete intellectuelle, en reconnaissant la limite plutot que de se justifier maladroitement. Question 5 : pourquoi relier ses reponses de soutenance aux concepts du cours est-il valorise par un jury ? Reponse : parce que cela demontre une maitrise durable des enseignements du Master, au-dela de la seule restitution du travail ecrit. Merci pour votre attention, et a bientot pour l''atelier methodologique final consacre a la preparation complete de votre soutenance.', 'video', 90, false, 80
from public.courses c where c.slug = 'mas-log-m2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours video (1h30) : Methodologie du memoire professionnel et soutenance');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours video (1h30) : Atelier methodologie - construire et defendre son memoire professionnel', '## Fiche du cours video

Duree : 1h30. Objectifs : s''entrainer concretement, en atelier guide, a construire chaque piece d''un dossier de memoire (problematique, plan detaille, grille de methodologie, diaporama de soutenance), a partir d''un nouveau cas fil rouge complet, puis simuler une sequence de questions-reponses de soutenance. Materiel : tableau ou diaporama, feuilles de travail pour chaque etudiant. Prerequis : avoir suivi la lecon 4 et le cours video precedent sur la methodologie du memoire.

## Deroule minute

## 00:00 – 05:00 · Introduction a l''atelier

Bonjour et bienvenue dans cet atelier methodologique, le dernier cours video de ce module de Master 2. A la difference des cours precedents, cette seance est construite comme un atelier pratique : nous allons produire ensemble, etape par etape, les pieces concretes d''un dossier de memoire, a partir d''un nouveau cas fil rouge, Rufisque Transit SA, une entreprise fictive de transit et de commissionnement en douane. Preparez une feuille, car vous allez devoir completer vous-meme certaines etapes avant que je ne vous donne une proposition de correction.

## 05:00 – 15:00 · Etape 1 : du theme a la problematique

Notre etudiant fil rouge effectue son stage chez Rufisque Transit SA et observe que les delais de dedouanement varient fortement d''un dossier a l''autre, sans explication evidente pour les equipes operationnelles. Premier exercice de l''atelier : prenez trente secondes pour formuler, par vous-meme, une premiere version de problematique a partir de cette observation. Nous allons maintenant comparer votre proposition a une demarche structuree. Une version maladroite serait : « les delais de douane chez Rufisque Transit SA ». Une version travaillee pourrait etre : « quels facteurs operationnels expliquent la variabilite des delais de dedouanement observee chez Rufisque Transit SA, et quelles actions pourraient la reduire ? ». Cette version est une question, elle est delimitee a l''entreprise etudiee, et elle est operationnalisable car l''etudiant a acces aux dossiers de dedouanement traites pendant son stage.

## 15:00 – 30:00 · Etape 2 : construire le plan detaille

Deuxieme exercice : a partir de cette problematique, esquissez en deux minutes un plan detaille en sept parties. Voici une proposition de correction. Introduction : contexte du transit et commissionnement en douane au Senegal, presentation du probleme observe, annonce de la problematique et du plan. Revue de litterature : mobiliser les concepts de delai logistique, de processus douanier, et eventuellement un modele de gestion des risques si des dossiers bloques sont assimiles a un risque operationnel. Terrain d''etude : presentation de Rufisque Transit SA (anonymisee si necessaire), ses clients, ses volumes de dossiers traites. Methodologie : analyse statistique d''un echantillon de dossiers traites sur plusieurs mois, avec leurs delais et leurs caracteristiques (type de marchandise, port d''entree, documentation fournie), completee par des entretiens avec les declarants en douane et les clients. Resultats : presentation des facteurs statistiquement associes aux delais les plus longs (par exemple, documentation incomplete a la soumission, periode de forte affluence portuaire). Discussion : interpretation de ces resultats a la lumiere de la revue de litterature, recommandations concretes (checklist de documentation renforcee, lissage des soumissions sur la semaine), et limites honnetement assumees (echantillon limite a la periode du stage, donnees declaratives). Conclusion : synthese de la reponse a la problematique et perspectives pour l''entreprise.

## 30:00 – 45:00 · Etape 3 : la grille de methodologie detaillee

Troisieme exercice, plus technique : construisons une grille de methodologie precise, c''est-a-dire un tableau qui indique, pour chaque donnee necessaire, sa source, la periode couverte, et la methode d''analyse envisagee. Pour notre cas, la grille pourrait comporter trois lignes. Premiere ligne : donnee « delai de traitement par dossier », source « systeme informatique de suivi des dossiers de l''entreprise », periode « six derniers mois », methode « statistiques descriptives et comparaison entre categories de dossiers ». Deuxieme ligne : donnee « type et qualite de la documentation fournie par le client », source « dossiers physiques et echanges avec les declarants », periode « meme six mois », methode « codage qualitatif en categories (complete, incomplete, tardive) puis croisement avec les delais observes ». Troisieme ligne : donnee « perception des causes de retard par les declarants », source « entretiens semi-directifs avec cinq a huit declarants », periode « realisee en fin de stage », methode « analyse thematique des entretiens pour identifier les causes recurrentes evoquees ».

Cette grille, une fois construite, devient un outil de pilotage pour l''etudiant lui-meme : elle permet de verifier, semaine apres semaine, que la collecte de donnees avance bien selon le plan prevu, et d''anticiper suffisamment tot une difficulte d''acces a une donnee plutot que de la decouvrir dans les dernieres semaines avant la redaction finale.

## PAUSE INTERACTIVE - QUIZ (45:00 – 50:00)

Verifions votre comprehension de l''atelier jusqu''ici. Question 1 : pourquoi une grille de methodologie detaillee est-elle utile au-dela de la seule redaction du memoire ? Reponse : elle sert aussi d''outil de pilotage pour l''etudiant, permettant de verifier l''avancement reel de la collecte de donnees et d''anticiper les difficultes d''acces. Question 2 : dans notre plan detaille, ou situeriez-vous la discussion des limites de l''etude ? Reponse : dans la partie discussion, apres l''interpretation des resultats et les recommandations. Question 3 : pourquoi combiner donnees statistiques et entretiens qualitatifs dans ce cas de Rufisque Transit SA ? Reponse : les statistiques identifient les facteurs associes aux delais, mais les entretiens permettent de comprendre le vecu operationnel et les causes que les donnees chiffrees seules ne captent pas toujours.

## 50:00 – 70:00 · Etape 4 : construire le diaporama de soutenance

Quatrieme exercice : construisons ensemble la trame d''un diaporama de soutenance de quinze minutes. Diapositive 1 : titre, nom, entreprise d''accueil, date. Diapositive 2 : contexte et problematique, formulee clairement en une phrase. Diapositive 3 : plan de la presentation (pas forcement identique au plan du memoire ecrit, qui peut etre plus synthetique a l''oral). Diapositives 4 et 5 : presentation breve de l''entreprise et de la methodologie, avec un visuel (schema de la grille de methodologie par exemple) plutot qu''un texte dense. Diapositives 6 a 9 : resultats principaux, avec des graphiques lisibles (un graphique par diapositive, legende claire, pas de tableau surcharge de chiffres). Diapositive 10 : recommandations, formulees de maniere actionnable et si possible chiffrees. Diapositive 11 : limites de l''etude, assumees sans excès de modestie ni exces de confiance. Diapositive 12 : conclusion et perspectives, en une phrase de synthese forte qui donnera envie au jury d''approfondir par ses questions.

Un conseil pratique essentiel : ne jamais mettre plus de dix a quinze lignes de texte sur une diapositive, et toujours s''entrainer a l''oral avec un chronometre, en enregistrant eventuellement sa propre presentation pour en reecouter le debit, le rythme, et les tics de langage qui peuvent distraire le jury d''une presentation par ailleurs solide sur le fond.

## 70:00 – 85:00 · Etape 5 : simulation de questions-reponses du jury

Dernier exercice de l''atelier, le plus proche des conditions reelles : simulons trois questions typiques d''un jury, avec une proposition de bonne reponse pour chacune. Premiere question : « votre echantillon de dossiers analyses ne couvre que six mois, dans quelle mesure vos resultats sont-ils generalisables a une periode plus longue ? ». Bonne reponse : reconnaitre honnetement la limite, preciser que la periode couverte inclut neanmoins a la fois une periode de forte et de faible affluence portuaire, ce qui attenue partiellement le biais, et proposer, en perspective, un suivi sur une annee complete pour confirmer la robustesse des resultats.

Deuxieme question : « pourquoi n''avez-vous pas interroge davantage de declarants en douane ? ». Bonne reponse : expliquer la contrainte reelle de disponibilite pendant la duree du stage, preciser que les cinq a huit entretiens realises ont ete menes jusqu''a saturation des themes evoques (les memes causes revenant d''un entretien a l''autre), et non interrompus arbitrairement. Troisieme question : « vos recommandations sont-elles deja mises en oeuvre par l''entreprise ? ». Bonne reponse : repondre precisement sur l''etat reel d''avancement, sans exagerer un succes non confirme ni minimiser une recommandation simplement proposee mais pas encore testee, l''honnetete sur l''etat d''avancement etant toujours mieux percue qu''une affirmation excessive.

## 85:00 – 90:00 · Evaluation finale

Cinq questions pour conclure ce module de Master 2 dans son ensemble. Question 1 : quelles sont les trois exigences d''une problematique bien construite ? Reponse : etre une question, etre delimitee, etre operationnalisable. Question 2 : a quoi sert une grille de methodologie detaillee, au-dela de la redaction du memoire ? Reponse : elle sert d''outil de pilotage pour verifier l''avancement de la collecte de donnees. Question 3 : combien de lignes de texte maximum est-il recommande de mettre sur une diapositive de soutenance ? Reponse : dix a quinze lignes au maximum, en privilegiant les visuels. Question 4 : face a une question du jury qui souligne une limite reelle de l''etude, quelle attitude adopter ? Reponse : reconnaitre honnetement la limite, en expliquant les raisons contextuelles et en proposant, si possible, une perspective pour la depasser dans un travail ultérieur. Question 5 : pourquoi s''entrainer a l''oral avec un chronometre avant la soutenance est-il essentiel ? Reponse : pour respecter le temps imparti et ameliorer son debit et son rythme, deux elements qui influencent fortement la perception du jury independamment du contenu du travail. Merci a toutes et a tous pour votre participation a ce module de Master 2 ; bon courage pour votre memoire, votre soutenance, et le debut de votre vie professionnelle.', 'video', 90, false, 90
from public.courses c where c.slug = 'mas-log-m2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours video (1h30) : Atelier methodologie - construire et defendre son memoire professionnel');

-- Cours : Doctorat Ressources humaines : préparer l'examen de qualification doctorale
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'doc-rh', (select id from public.levels where name = 'Doctorat'), null, 'Ressources humaines', 'Doctorat Ressources humaines : préparer l''examen de qualification doctorale', 'Cours de Doctorat destiné aux doctorants en Ressources humaines qui préparent l''examen de qualification doctorale (comprehensive exam). Il couvre deux grands débats théoriques du champ (école des relations humaines contre gestion stratégique des ressources humaines ; approche universaliste contre approche contingente et configurationnelle), les méthodes de recherche propres à la discipline, et s''entraîne sur une épreuve type ainsi qu''une simulation complète de soutenance devant un jury.', true, 801
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Réussir son examen de qualification doctorale en Ressources humaines', '## Objectifs de la leçon

- Comprendre la nature exacte de l''examen de qualification doctorale (comprehensive exam) en Ressources humaines.
- Identifier ce qu''un jury doctoral attend réellement d''un candidat à ce stade.
- Se doter d''une méthode de travail (fiches de lecture, cartographie des courants, note de synthèse).
- Construire un plan de travail réaliste sur 8 semaines.

## 1. Ce qu''est l''examen de qualification doctorale

L''examen de qualification, appelé aussi examen de synthèse ou comprehensive exam selon les programmes, est l''étape qui sépare la formation doctorale initiale (séminaires, cours avancés) de la phase de thèse proprement dite. Il ne porte pas sur un sujet de recherche étroit : il porte sur le champ scientifique tout entier dans lequel le doctorant va inscrire sa thèse, ici les Ressources humaines (RH) comme discipline de gestion.

Concrètement, l''épreuve combine en général deux volets. D''abord une synthèse écrite ou une note de lecture critique qui démontre la maîtrise des grands courants théoriques du champ, de leurs auteurs fondateurs et de leurs débats non résolus. Ensuite une soutenance orale devant un jury de plusieurs professeurs, au cours de laquelle le candidat présente son positionnement et répond à des questions qui testent la profondeur de sa culture disciplinaire, sa capacité à argumenter et sa cohérence intellectuelle plus que sa mémoire.

Ce n''est donc pas un examen de connaissances encyclopédiques : c''est un examen de maturité scientifique. Le jury veut vérifier qu''un futur chercheur en RH sait situer n''importe quel article récent par rapport aux grands débats du champ (relations humaines contre gestion stratégique, universalisme contre contingence, capital humain contre compétences, etc.), qu''il connaît les méthodes de recherche propres à la discipline, et qu''il est capable de défendre un projet de thèse face à la critique.

## 2. Ce qu''attend un jury doctoral

Un jury de qualification sanctionne rarement l''ignorance d''un détail précis. Il sanctionne en revanche quatre faiblesses récurrentes, qu''il faut avoir en tête dès le début de la préparation.

- L''absence de recul critique : réciter un courant théorique sans en connaître les limites, c''est montrer qu''on l''a lu mais pas compris.
- L''incapacité à comparer : un bon candidat doit pouvoir dire en quoi deux courants théoriques s''opposent, se complètent ou se succèdent historiquement, pas seulement les définir côte à côte.
- La confusion entre théorie et méthode : connaître un courant (ce que l''on pense du monde) ne dit rien sur la façon de l''étudier empiriquement (comment on observe le monde). Le jury teste souvent les deux séparément.
- Le flou du projet de thèse : à ce stade, le candidat doit pouvoir dire, en quelques phrases, quelle question il pose, pourquoi elle est nouvelle, et avec quelle méthode il compte y répondre, même si tout n''est pas encore figé.

## 3. Une méthode de travail en trois outils

La préparation efficace à cet examen repose sur trois outils complémentaires, à construire progressivement pendant les semaines de révision.

Le premier outil est la fiche de lecture structurée. Pour chaque texte fondateur ou chaque article de synthèse (review), une fiche doit répondre à cinq questions fixes : quelle est la question posée par l''auteur, quel cadre théorique mobilise-t-il, quelle méthode utilise-t-il, quel est le résultat principal, et quelle critique peut-on lui adresser. Une fiche de lecture qui ne répond pas à la cinquième question reste inutile le jour de l''oral.

Le deuxième outil est la cartographie des courants, une sorte de carte mentale qui place les grands courants théoriques du champ sur un même schéma : qui s''oppose à qui, qui a précédé qui, quels auteurs appartiennent à quelle école. Cette carte, mise à jour tout au long de la préparation, devient le squelette de la note de synthèse finale et le meilleur outil de révision rapide avant l''oral.

Le troisième outil est la note de synthèse thématique, un document d''une à trois pages par grand thème (motivation, performance, stratégie RH, méthodes), rédigé en prose, qui force à formuler des phrases complètes plutôt que des listes de mots-clés. C''est cette compétence de synthèse rédigée, et non la liste de lectures, que le jury vient évaluer à l''oral.

## 4. Un plan de travail sur 8 semaines

Un plan de travail raisonnable pour préparer cet examen peut s''organiser ainsi, en l''adaptant au calendrier réel fixé par le programme doctoral.

- Semaines 1 et 2 : lecture des textes fondateurs du premier grand courant théorique du champ et rédaction des premières fiches de lecture.
- Semaines 3 et 4 : lecture des textes fondateurs du second grand courant, en construisant en parallèle la cartographie comparative des deux courants.
- Semaine 5 : approfondissement des méthodes de recherche du champ (études de cas, enquêtes par questionnaire, méthodes mixtes, recherche-action) et lecture d''articles méthodologiques de référence.
- Semaine 6 : rédaction des notes de synthèse thématiques et premier jet du positionnement du projet de thèse par rapport aux courants étudiés.
- Semaine 7 : simulation d''oral avec un pair ou un directeur de thèse, sur la base de questions type ; correction des points faibles identifiés.
- Semaine 8 : révision finale, relecture de la cartographie, consolidation des réponses aux questions les plus probables, repos la veille de l''épreuve.

## Points clés

- L''examen de qualification teste la maturité scientifique, pas la mémoire encyclopédique.
- Le jury cherche du recul critique, de la comparaison entre courants, une distinction claire théorie/méthode, et un projet de thèse qui se positionne.
- Trois outils structurent la préparation : fiche de lecture, cartographie des courants, note de synthèse rédigée.
- Un plan sur 8 semaines permet de couvrir théorie, méthode et simulation d''oral sans se disperser.

## Exercices pratiques

1. Rédigez en dix lignes la différence entre « connaître un courant théorique » et « savoir le mobiliser de façon critique » dans une soutenance.
2. Construisez le squelette (titres et sous-titres uniquement) d''une cartographie comparative de deux courants théoriques en RH.
3. Listez les cinq questions fixes d''une fiche de lecture et appliquez-les à un article de votre choix sur la gestion des ressources humaines.
4. Formulez en deux phrases la question de recherche provisoire de votre projet de thèse en RH.
5. Identifiez, dans votre plan de travail personnel, la semaine la plus à risque de retard et proposez une mesure corrective.
6. Expliquez pourquoi un jury doctoral préfère souvent un candidat qui critique une théorie à un candidat qui la récite parfaitement.

## Corrigé

1. Connaître un courant, c''est pouvoir le définir, citer ses auteurs et résumer ses idées. Le mobiliser de façon critique, c''est en plus être capable de dire dans quel contexte il s''applique, quelles sont ses limites empiriques ou conceptuelles, et comment un autre courant permettrait de combler ces limites. C''est cette seconde capacité que le jury évalue.

2. Un squelette possible : (1) Définition et postulats de chaque courant ; (2) Auteurs fondateurs et contexte d''émergence ; (3) Apports respectifs ; (4) Points de tension ou d''opposition ; (5) Tentatives de synthèse ou de dépassement dans la littérature récente ; (6) Implications pour un projet de thèse personnel.

3. Les cinq questions : quelle question pose l''auteur, quel cadre théorique mobilise-t-il, quelle méthode utilise-t-il, quel est le résultat principal, quelle critique peut-on lui adresser. Appliquées à un article réel, elles doivent tenir en une demi-page maximum pour rester exploitables en révision.

4. Exemple de formulation : « Cette thèse examine comment les pratiques de gestion des ressources humaines des petites entreprises sénégalaises articulent logiques informelles et logiques formalisées de gestion du personnel, et avec quels effets sur la fidélisation des salariés. »

5. Les semaines 3-4 et 7 sont souvent les plus à risque : la semaine 3-4 parce qu''elle demande d''assimiler un second corpus théorique alors que le premier n''est pas encore stabilisé, la semaine 7 parce que la simulation d''oral révèle souvent des lacunes qui demandent un retour en arrière. Une mesure corrective simple consiste à réserver dès le départ une semaine tampon non affectée, placée juste avant la semaine 8.

6. Parce qu''une thèse de doctorat est une contribution originale à la connaissance : elle suppose de savoir repérer les limites de ce qui existe déjà. Un candidat qui ne voit aucune limite à une théorie montre qu''il n''a pas encore le regard d''un chercheur autonome, même s''il connaît parfaitement le contenu de cette théorie.', 'texte', 55, true, 10
from public.courses c where c.slug = 'doc-rh'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Réussir son examen de qualification doctorale en Ressources humaines');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'L''école des relations humaines face à la gestion stratégique des ressources humaines', '## Objectifs de la leçon

- Définir l''école des relations humaines et la gestion stratégique des ressources humaines (Strategic Human Resource Management, SHRM).
- Situer ces deux courants dans leur contexte historique d''émergence.
- Identifier les auteurs fondateurs de chaque courant et leur apport.
- Comparer de façon critique leurs postulats, leurs limites et leurs points de passage.

## 1. L''école des relations humaines : définition et postulats

L''école des relations humaines naît dans l''entre-deux-guerres, en réaction à l''organisation scientifique du travail qui réduisait l''ouvrier à un exécutant interchangeable, motivé uniquement par le salaire. Son postulat central est que la performance au travail dépend d''abord de facteurs psychologiques et sociaux : le sentiment d''appartenance à un groupe, la reconnaissance, la qualité des relations avec la hiérarchie, l''intérêt porté au travail lui-même.

Les expériences menées à l''usine Hawthorne de la Western Electric, dans les années 1920 et 1930, sont le point de départ le plus souvent cité de ce courant. En faisant varier l''éclairage et les conditions matérielles d''un atelier, les chercheurs s''attendaient à mesurer un lien mécanique entre conditions physiques et productivité. Ils ont observé un résultat inattendu : la productivité augmentait quelles que soient les conditions, du simple fait que les ouvrières se sentaient observées, écoutées et valorisées. Ce résultat, connu comme « l''effet Hawthorne », a déplacé l''attention de la gestion du travail vers la dimension humaine et relationnelle de l''organisation.

À partir de ce socle empirique, plusieurs auteurs ont construit des théories plus générales de la motivation et du management qui prolongent cette intuition. On retient généralement l''apport d''Abraham Maslow sur la hiérarchie des besoins humains, qui situe les besoins sociaux et de reconnaissance au-dessus des besoins matériels de base ; l''apport de Frederick Herzberg, qui distingue les facteurs d''hygiène (conditions de travail, salaire) des facteurs de motivation proprement dits (reconnaissance, contenu du travail, responsabilité) ; et l''apport de Douglas McGregor, qui oppose une vision pessimiste de l''employé (théorie X, supposé paresseux et devant être contrôlé) à une vision plus optimiste (théorie Y, supposé capable d''autonomie si l''organisation lui fait confiance).

## 2. La gestion stratégique des ressources humaines (SHRM)

La gestion stratégique des ressources humaines émerge plus tardivement, à partir des années 1980, dans un contexte de concurrence internationale accrue et de recherche d''avantage compétitif durable. Son postulat central diffère nettement de celui des relations humaines : il ne s''agit plus seulement de comprendre ce qui motive un individu, mais de concevoir les pratiques de gestion du personnel comme un levier de performance organisationnelle au même titre que la stratégie financière ou commerciale.

Le SHRM repose sur l''idée que les ressources humaines, lorsqu''elles sont gérées de façon cohérente avec la stratégie globale de l''entreprise, peuvent constituer un avantage concurrentiel difficile à imiter par les concurrents, contrairement à une technologie ou à un produit. Cette idée doit beaucoup à la théorie de la firme fondée sur les ressources (resource-based view), qui soutient qu''un avantage durable vient des ressources rares, précieuses et difficiles à copier, dont le capital humain et les pratiques organisationnelles font partie.

Parmi les auteurs associés à la structuration de ce champ, on cite généralement les travaux de Patrick Wright et Gary McMahan sur les fondements théoriques du SHRM, les travaux de Peter Boxall et John Purcell sur l''articulation entre stratégie d''entreprise et stratégie RH, ainsi que les travaux de Dave Ulrich sur les rôles multiples de la fonction RH dans l''organisation (partenaire stratégique, expert administratif, champion des employés, agent de changement). Le SHRM insiste sur l''alignement : les pratiques de recrutement, de formation, de rémunération et d''évaluation doivent former un ensemble cohérent entre elles et cohérent avec les objectifs stratégiques de l''entreprise, et non une collection de pratiques isolées.

## 3. Deux logiques en tension

La comparaison des deux courants révèle une tension de fond sur la finalité même de la gestion du personnel. L''école des relations humaines part du bien-être et de l''épanouissement de l''individu au travail, et suppose qu''une meilleure performance en découlera presque naturellement. Le SHRM part au contraire de la performance et de la stratégie de l''organisation, et considère la gestion des personnes comme un moyen au service de cette performance, le bien-être individuel n''étant recherché que dans la mesure où il y contribue.

Cette différence de point de départ a des conséquences pratiques importantes. Une politique RH inspirée des relations humaines valorisera prioritairement l''écoute, la participation, le climat social et la reconnaissance individuelle. Une politique RH inspirée du SHRM valorisera prioritairement l''alignement des pratiques sur les priorités stratégiques, la mesure de la contribution des RH à la performance de l''entreprise, et la différenciation des pratiques selon les catégories de personnel jugées stratégiques.

## 4. Limites et critiques de chaque courant

L''école des relations humaines a été critiquée pour son relatif optimisme sur la convergence spontanée entre bien-être individuel et intérêts de l''organisation, qui occulte les rapports de pouvoir et les conflits d''intérêts réels entre employeurs et salariés. Certains auteurs ont également souligné que l''effet Hawthorne lui-même a fait l''objet de réinterprétations méthodologiques, qui invitent à la prudence sur la portée exacte des résultats expérimentaux d''origine.

Le SHRM, de son côté, a été critiqué pour sa difficulté à démontrer empiriquement, de façon incontestable, un lien de causalité clair entre pratiques RH et performance financière de l''entreprise, les deux pouvant s''influencer dans les deux sens ou être le produit d''une troisième variable commune. Il a aussi été critiqué pour sa tendance à instrumentaliser l''humain, en réduisant parfois les salariés à une simple « ressource » parmi d''autres, ce qui rejoint en creux l''avertissement initial de l''école des relations humaines.

## 5. Un dialogue plutôt qu''une rupture complète

Dans la littérature contemporaine, ces deux courants ne s''excluent pas nécessairement : de nombreux travaux du SHRM intègrent désormais des variables issues des relations humaines, comme la perception de soutien organisationnel ou le sentiment de justice, pour expliquer pourquoi certaines pratiques stratégiques produisent ou non les effets attendus. Connaître cette évolution historique est un socle indispensable pour situer tout travail doctoral en gestion des ressources humaines.

## Points clés

- L''école des relations humaines place le bien-être et la dimension psychosociale de l''individu au centre de la performance au travail.
- Le SHRM place la performance stratégique de l''organisation au centre, et traite les RH comme un levier d''avantage concurrentiel.
- Les deux courants s''opposent sur leur point de départ (l''individu contre l''organisation) mais se rejoignent de plus en plus dans la recherche contemporaine.
- Chaque courant a ses limites propres : optimisme sur la convergence des intérêts pour l''un, difficulté de preuve causale et risque d''instrumentalisation pour l''autre.

## Exercices pratiques

1. Expliquez en quoi l''effet Hawthorne a modifié la conception de la performance au travail par rapport à l''organisation scientifique du travail.
2. Comparez, en un tableau de deux colonnes, les postulats de l''école des relations humaines et ceux du SHRM.
3. Discutez la critique selon laquelle le SHRM « instrumentalise » les ressources humaines : est-elle selon vous justifiée, nuancée ou excessive ?
4. Donnez un exemple fictif de pratique RH dans une entreprise sénégalaise qui illustrerait la logique des relations humaines, puis reformulez-la selon la logique du SHRM.
5. Pourquoi la théorie des ressources (resource-based view) a-t-elle été un soutien théorique important pour l''émergence du SHRM ?
6. Identifiez une limite méthodologique du SHRM qu''un jury pourrait vous demander de discuter à l''oral, et préparez une réponse en cinq phrases.

## Corrigé

1. L''organisation scientifique du travail supposait que la productivité découlait uniquement de l''organisation technique des tâches et de l''incitation salariale. L''effet Hawthorne a montré qu''un facteur purement relationnel, le sentiment d''être observé et valorisé, pouvait faire varier la productivité indépendamment des conditions matérielles, ouvrant la voie à une conception psychosociale de la performance.

2. Relations humaines : point de départ = l''individu et ses besoins ; finalité = le bien-être, supposé générer la performance ; outils = écoute, reconnaissance, climat social. SHRM : point de départ = la stratégie et la performance de l''organisation ; finalité = l''avantage concurrentiel ; outils = alignement des pratiques RH, différenciation selon les catégories stratégiques de personnel.

3. Une réponse nuancée reconnaît que le risque existe dès que les personnes sont pensées uniquement comme un facteur de performance, mais note que les auteurs du SHRM eux-mêmes (par exemple Ulrich) insistent aussi sur le rôle de « champion des employés » de la fonction RH, ce qui limite partiellement cette critique si les pratiques sont correctement mises en œuvre.

4. Logique relations humaines : une entreprise textile de Thiès organise des réunions d''équipe hebdomadaires où chaque salarié peut exprimer ses difficultés, dans le but d''améliorer le climat social. Reformulation SHRM : la même entreprise documenterait l''effet de ces réunions sur un indicateur de performance (taux de rebut, ponctualité) pour justifier leur maintien dans le cadre de sa stratégie de compétitivité.

5. Parce que la resource-based view fournit un cadre théorique pour expliquer pourquoi des ressources internes, et non seulement la position sur le marché, peuvent fonder un avantage durable : elle légitime scientifiquement l''idée que des pratiques RH bien conçues, rares et difficiles à imiter, contribuent à la compétitivité de l''entreprise.

6. Limite possible : la difficulté à isoler le sens de la causalité entre pratiques RH et performance (de bonnes pratiques RH améliorent-elles la performance, ou les entreprises déjà performantes investissent-elles davantage dans leurs RH ?). Réponse possible : cette critique est fondée ; la plupart des études sur ce lien sont transversales, ce qui limite les conclusions causales ; des études longitudinales répondent partiellement à ce problème mais restent coûteuses sur le terrain ; un projet de thèse peut en tenir compte en privilégiant, si possible, plusieurs vagues de collecte.', 'texte', 55, false, 20
from public.courses c where c.slug = 'doc-rh'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'L''école des relations humaines face à la gestion stratégique des ressources humaines');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Universalisme et contingence en GRH : le débat des « best practices » contre le « best fit »', '## Objectifs de la leçon

- Définir l''approche universaliste et l''approche contingente/configurationnelle en gestion des ressources humaines.
- Relier ce débat à celui, très proche, des « best practices » contre le « best fit ».
- Identifier les auteurs et travaux qui structurent chaque position.
- Évaluer la portée et les limites de chaque approche pour un projet de recherche doctoral.

## 1. L''approche universaliste et les « best practices »

L''approche universaliste part d''un postulat fort : il existerait un ensemble de pratiques de gestion des ressources humaines qui améliorent la performance organisationnelle quel que soit le contexte, le secteur d''activité ou la stratégie de l''entreprise qui les adopte. Ces pratiques, souvent appelées « meilleures pratiques » (best practices), formeraient une sorte de recette universelle de la bonne gestion des personnes.

Les travaux les plus cités dans cette veine sont ceux de Jeffrey Pfeffer, qui a dressé une liste de pratiques jugées universellement bénéfiques : sécurité de l''emploi, recrutement sélectif, rémunération incitative liée à la performance, partage de l''information, formation et développement des compétences, réduction des différences de statut entre catégories de personnel. Les travaux empiriques de Mark Huselid, sur de larges échantillons d''entreprises américaines, ont par ailleurs montré une association statistique entre l''adoption de systèmes de pratiques RH dites « à haute performance » et des indicateurs de performance organisationnelle, ce qui a renforcé l''attrait de cette thèse universaliste dans la recherche et chez les praticiens.

L''intérêt de cette approche est sa simplicité normative : elle propose aux dirigeants et aux responsables RH une liste d''actions à privilégier, indépendamment des particularités de leur organisation. C''est aussi sa principale fragilité théorique, que la deuxième approche va directement contester.

## 2. L''approche contingente et configurationnelle, et le « best fit »

L''approche contingente part d''un postulat inverse : l''efficacité d''une pratique RH dépend du contexte dans lequel elle est mise en œuvre, en particulier de la stratégie concurrentielle de l''entreprise, de son secteur, de sa taille, de sa culture nationale ou de la nature de ses emplois. Il n''existerait donc pas de « meilleure pratique » en soi, mais seulement des pratiques plus ou moins adaptées (best fit) à une situation donnée.

Les travaux de Randall Schuler et Susan Jackson illustrent bien cette logique : ils montrent que des stratégies concurrentielles différentes (innovation, qualité, réduction des coûts) appellent des comportements attendus des salariés très différents, et donc des pratiques RH de recrutement, d''évaluation et de rémunération elles-mêmes différentes. Une entreprise qui concurrence par l''innovation a intérêt à encourager la prise de risque et la créativité individuelle ; une entreprise qui concurrence par les coûts a plutôt intérêt à standardiser les tâches et à contrôler strictement les coûts salariaux.

L''approche configurationnelle, portée notamment par les travaux de James Delery et D. Harold Doty, ajoute une nuance importante à cette logique contingente simple : ce n''est pas seulement l''ajustement d''une pratique isolée au contexte qui compte, mais la cohérence interne entre plusieurs pratiques RH combinées en « configurations » ou « bouquets » cohérents (bundles). Deux configurations différentes de pratiques peuvent être également performantes, à condition que chacune soit interne cohérente et adaptée à son propre contexte stratégique, ce qui introduit une logique de cohérence qui dépasse la simple addition de bonnes pratiques isolées.

## 3. Un débat profond sur la nature même de la connaissance en gestion des RH

Au-delà de leur contenu respectif, ces deux approches posent une question épistémologique de fond : la gestion des ressources humaines peut-elle produire des lois générales valables partout, comme le suggère l''approche universaliste, ou doit-elle au contraire renoncer à toute généralisation et se limiter à des explications propres à chaque contexte, comme le suggère l''approche contingente la plus radicale ?

L''approche configurationnelle propose une voie intermédiaire : elle accepte l''idée qu''il existe plusieurs modèles cohérents possibles (ce qui limite le nombre de configurations possibles, contrairement à un contingentisme pur qui admettrait une infinité de cas particuliers), tout en refusant l''idée d''une seule recette universelle. C''est cette position intermédiaire qui domine largement la recherche contemporaine en SHRM.

## 4. Limites et critiques de chaque position

L''approche universaliste a été critiquée pour la fragilité méthodologique de nombreuses études qui l''ont étayée : les listes de « meilleures pratiques » varient sensiblement d''un auteur à l''autre, ce qui interroge leur caractère réellement universel, et les corrélations statistiques observées entre pratiques RH et performance restent difficiles à interpréter de façon causale, comme signalé dans la leçon précédente. Elle a aussi été critiquée pour son relatif silence sur le contexte culturel : des pratiques jugées universellement efficaces dans des études majoritairement nord-américaines ne produisent pas nécessairement les mêmes effets dans d''autres environnements institutionnels et culturels.

L''approche contingente et configurationnelle, de son côté, a été critiquée pour sa plus grande difficulté opérationnelle : elle offre moins de recommandations pratiques directement actionnables, puisque chaque organisation doit en principe identifier elle-même la configuration adaptée à sa situation, ce qui demande une capacité d''analyse stratégique et RH que toutes les organisations ne possèdent pas au même degré, en particulier les petites et moyennes entreprises.

## 5. Portée pour un contexte africain et sénégalais

Ce débat prend un relief particulier dans des contextes comme celui du Sénégal, où coexistent de grandes entreprises formalisées, souvent influencées par des standards internationaux proches des « best practices », et un tissu dense de petites et moyennes entreprises informelles ou semi-formelles, dont les pratiques de gestion du personnel s''écartent fortement des recommandations universalistes sans que leur performance en soit nécessairement affectée. Un projet de thèse qui s''intéresse à ce terrain gagne à mobiliser explicitement l''approche contingente ou configurationnelle, plus à même de rendre compte de cette diversité de contextes organisationnels que l''approche universaliste.

## Points clés

- L''approche universaliste (best practices) postule l''existence de pratiques RH bénéfiques dans tous les contextes.
- L''approche contingente (best fit) postule que l''efficacité d''une pratique dépend du contexte stratégique et organisationnel.
- L''approche configurationnelle ajoute une exigence de cohérence interne entre plusieurs pratiques combinées en configurations.
- Le débat porte en réalité sur la possibilité même de généraliser en gestion des ressources humaines, question particulièrement pertinente pour des contextes organisationnels diversifiés comme celui du Sénégal.

## Exercices pratiques

1. Résumez en cinq lignes la différence entre « best practices » et « best fit ».
2. Expliquez pourquoi l''approche configurationnelle n''est ni purement universaliste ni purement contingente.
3. Discutez la critique culturelle adressée à l''approche universaliste : en quoi un contexte institutionnel différent peut-il changer l''effet d''une pratique RH ?
4. Donnez un exemple fictif de deux entreprises sénégalaises de secteurs différents qui adopteraient des configurations RH différentes mais également cohérentes.
5. Un jury vous demande : « Ces deux approches sont-elles vraiment incompatibles ? » Préparez une réponse argumentée en cinq phrases.
6. En quoi ce débat éclaire-t-il la façon de formuler une question de recherche doctorale sur les pratiques RH en Afrique de l''Ouest ?

## Corrigé

1. « Best practices » suppose qu''un ensemble fixe de pratiques RH améliore la performance quel que soit le contexte. « Best fit » suppose au contraire que l''efficacité d''une pratique dépend de son adéquation avec la stratégie et le contexte propres de chaque organisation ; il n''existe donc pas de recette universelle, seulement des choix mieux ou moins bien ajustés.

2. Parce qu''elle admet, comme l''universalisme, qu''il existe un nombre limité de modèles cohérents repérables (et non une infinité de cas particuliers uniques), mais elle refuse, comme le contingentisme, l''idée d''un seul modèle valable partout : plusieurs configurations différentes peuvent être également performantes si chacune est adaptée à son propre contexte.

3. Une pratique comme l''individualisation forte de la rémunération à la performance peut être perçue comme motivante dans un contexte institutionnel qui valorise la compétition individuelle, et au contraire démobilisante ou génératrice de tensions dans un contexte où les normes sociales valorisent davantage la solidarité collective et l''équité perçue entre collègues.

4. Exemple fictif : une entreprise minière formalisée de la région de Kédougou, en concurrence par la technicité et la sécurité, adopte une configuration fondée sur une sélection rigoureuse, une formation technique intensive et une rémunération liée à des indicateurs de sécurité. Une entreprise familiale de transformation agroalimentaire à Fatick, en concurrence par la flexibilité et les coûts, adopte une configuration fondée sur la polyvalence des postes, l''apprentissage sur le tas et une rémunération en partie liée aux résultats saisonniers de l''activité. Les deux configurations sont internement cohérentes bien que très différentes.

5. Réponse possible : « Ces deux approches ne sont pas totalement incompatibles. L''universalisme met en évidence des régularités statistiques utiles comme point de départ. Le contingentisme rappelle que ces régularités ne se vérifient pas identiquement partout. L''approche configurationnelle peut être vue comme une tentative de synthèse, qui admet des régularités mais à l''intérieur de modèles contextualisés. Dans mon projet de thèse, je mobiliserai donc plutôt une grille configurationnelle que l''une ou l''autre position prise isolément. »

6. Ce débat invite à ne pas chercher à démontrer qu''une pratique RH serait « bonne » ou « mauvaise » en soi dans le contexte ouest-africain, mais plutôt à identifier quelles configurations de pratiques sont cohérentes avec quels types de stratégies et de contextes organisationnels locaux, ce qui conduit à des questions de recherche plus fines et mieux ancrées empiriquement que des questions normatives générales.', 'texte', 55, false, 30
from public.courses c where c.slug = 'doc-rh'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Universalisme et contingence en GRH : le débat des « best practices » contre le « best fit »');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Les méthodes de recherche en gestion des ressources humaines', '## Objectifs de la leçon

- Connaître les grandes méthodes de recherche mobilisées en gestion des ressources humaines.
- Distinguer études de cas, enquêtes quantitatives par questionnaire validé, méthodes mixtes et recherche-action.
- Comprendre les critères de qualité propres à chaque méthode (validité, fiabilité, saturation théorique).
- Construire un exemple de protocole de recherche appliqué à un contexte sénégalais fictif.

## 1. L''étude de cas en gestion des ressources humaines

L''étude de cas consiste à analyser en profondeur un ou plusieurs contextes organisationnels précis (une entreprise, un service, un dispositif RH) afin de comprendre comment un phénomène se déploie réellement, avec ses mécanismes et ses interactions. En gestion des ressources humaines, cette méthode est particulièrement adaptée lorsque le phénomène étudié est complexe, peu documenté, ou qu''il s''agit de comprendre le « comment » et le « pourquoi » plutôt que de mesurer un lien statistique entre variables.

Les travaux de Robert Yin sur la méthodologie des études de cas en sciences sociales en ont précisé les exigences de rigueur : définir clairement l''unité d''analyse (un individu, une équipe, une organisation), trianguler plusieurs sources de données (entretiens, documents internes, observation), et, lorsque plusieurs cas sont étudiés, choisir une logique de réplication (cas similaires pour confirmer un résultat, ou cas contrastés pour en explorer les limites) plutôt qu''une logique d''échantillonnage statistique, qui n''a pas de sens pour un petit nombre de cas étudiés en profondeur.

La principale force de l''étude de cas est sa capacité à restituer la complexité et le contexte d''un phénomène RH, par exemple la mise en œuvre réelle d''une réforme de l''évaluation du personnel dans une organisation donnée. Sa principale limite est la généralisation : les résultats obtenus sur un ou quelques cas ne peuvent pas être étendus statistiquement à une population plus large, même s''ils peuvent être généralisés de façon théorique, en enrichissant ou en nuançant un cadre conceptuel existant.

## 2. L''enquête quantitative par questionnaire validé

L''enquête quantitative par questionnaire reste la méthode la plus fréquente en recherche RH pour tester des hypothèses sur de grands échantillons, par exemple le lien entre perception de justice organisationnelle et intention de quitter l''entreprise. Elle repose sur l''utilisation d''échelles de mesure déjà validées dans la littérature (par exemple des échelles de type Likert à 5 ou 7 points, mesurant l''accord avec une série d''énoncés), plutôt que sur des questions improvisées, afin de garantir la comparabilité avec d''autres études et la qualité psychométrique des mesures.

Deux critères de qualité sont centraux dans cette méthode. La fiabilité (reliability) mesure la cohérence interne d''une échelle, c''est-à-dire si les différents items censés mesurer un même concept varient effectivement ensemble ; elle s''évalue souvent par un indicateur statistique tel que l''alpha de Cronbach. La validité (validity) mesure si l''échelle mesure effectivement ce qu''elle prétend mesurer, et non un autre concept proche ; elle se décline en validité de contenu (les items couvrent-ils bien toutes les dimensions du concept), validité convergente (l''échelle est-elle corrélée à d''autres mesures du même concept) et validité discriminante (l''échelle se distingue-t-elle bien de mesures de concepts différents).

L''enquête quantitative permet de tester des hypothèses de façon généralisable statistiquement, à condition que l''échantillon soit suffisamment grand et représentatif de la population étudiée. Sa limite principale est qu''elle capture mal les mécanismes fins et les logiques d''acteurs qu''une étude de cas peut révéler : elle dit souvent « que » deux variables sont liées, sans toujours expliquer en profondeur « pourquoi » et « comment ».

## 3. Les méthodes mixtes

Les méthodes mixtes combinent, au sein d''un même projet de recherche, des données qualitatives et quantitatives, dans le but de compenser les limites propres à chaque approche. Plusieurs designs sont possibles : un design séquentiel exploratoire, où une phase qualitative initiale (entretiens exploratoires) permet de construire ou d''adapter un questionnaire ensuite administré à grande échelle ; un design séquentiel explicatif, où une enquête quantitative initiale est suivie d''entretiens qualitatifs pour expliquer en profondeur des résultats statistiques surprenants ou ambigus ; ou un design convergent, où les deux types de données sont collectés en parallèle puis comparés.

En gestion des ressources humaines, les méthodes mixtes sont de plus en plus valorisées parce qu''elles permettent à la fois de tester des hypothèses de façon rigoureuse et de comprendre les mécanismes sous-jacents, ce qui répond directement aux limites respectives des études de cas et des enquêtes quantitatives présentées plus haut. Leur principale exigence est méthodologique : il faut justifier explicitement le design mixte choisi et la façon dont les deux types de résultats seront intégrés, et non simplement juxtaposés sans articulation claire.

## 4. La recherche-action en entreprise

La recherche-action se distingue des méthodes précédentes par la posture du chercheur : celui-ci n''observe pas seulement un phénomène RH de l''extérieur, il intervient activement, en collaboration avec les acteurs de l''organisation, pour résoudre un problème concret tout en produisant simultanément une connaissance scientifique généralisable sur ce problème. Le chercheur devient en partie acteur du changement qu''il étudie.

Ce type de recherche convient particulièrement bien à des problématiques RH appliquées, comme la conception et l''accompagnement d''un nouveau dispositif de gestion des compétences, ou la mise en place d''un processus de dialogue social dans une organisation. Sa rigueur repose sur un cycle itératif explicite, généralement décrit en plusieurs étapes : diagnostic partagé de la situation, planification conjointe d''une action, mise en œuvre, observation systématique des effets, puis réflexion critique qui nourrit un nouveau cycle. La principale difficulté de cette méthode est de préserver une distance critique suffisante malgré l''implication du chercheur, ce qui exige une explicitation rigoureuse de sa posture et de ses choix méthodologiques.

## 5. Exemple de protocole de recherche appliqué à un contexte sénégalais fictif

Prenons un exemple fictif de protocole de recherche doctorale, construit pour illustrer l''articulation de ces méthodes. Question de recherche fictive : « Comment les pratiques de gestion des compétences évoluent-elles dans les petites et moyennes entreprises agroalimentaires de la région de Thiès, et avec quels effets perçus sur la fidélisation du personnel qualifié ? »

Un protocole en méthodes mixtes séquentielles pourrait se construire en trois phases. Phase 1, qualitative exploratoire : une dizaine d''études de cas d''entreprises contrastées par taille et ancienneté, fondées sur des entretiens semi-directifs avec dirigeants et responsables du personnel, pour identifier les principales dimensions locales de la gestion des compétences (recrutement, transmission des savoir-faire, reconnaissance informelle). Phase 2, quantitative confirmatoire : un questionnaire construit à partir de ces dimensions, utilisant si possible des échelles déjà validées dans la littérature internationale et adaptées au vocabulaire local, administré à un échantillon plus large, pour tester statistiquement le lien entre maturité des pratiques de gestion des compétences et intention de rester des salariés qualifiés. Phase 3, recherche-action complémentaire : un accompagnement de deux ou trois entreprises volontaires dans la formalisation progressive d''un dispositif simple de gestion des compétences, avec un suivi des effets sur plusieurs mois.

Ce protocole fictif illustre comment une même question de recherche peut mobiliser successivement une étude de cas exploratoire, une enquête quantitative par questionnaire validé et adapté, puis une recherche-action, chaque méthode répondant à une limite de la précédente.

## Points clés

- L''étude de cas éclaire le « comment » et le « pourquoi » d''un phénomène RH en profondeur, au prix d''une généralisation statistique limitée.
- L''enquête quantitative par questionnaire validé permet de tester des hypothèses sur de grands échantillons, à condition de garantir la fiabilité et la validité des échelles utilisées.
- Les méthodes mixtes combinent qualitatif et quantitatif pour compenser les limites respectives de chaque approche, selon un design explicite (séquentiel exploratoire, séquentiel explicatif ou convergent).
- La recherche-action implique le chercheur dans la résolution d''un problème RH concret, selon un cycle itératif de diagnostic, action, observation et réflexion.

## Exercices pratiques

1. Expliquez pourquoi l''échantillonnage statistique classique n''a pas de sens dans une étude de cas à trois organisations.
2. Définissez, en vos propres mots, la différence entre fiabilité et validité d''une échelle de mesure.
3. Proposez un design mixte (séquentiel exploratoire, séquentiel explicatif ou convergent) adapté à une question de recherche sur la perception de l''évaluation annuelle du personnel, et justifiez votre choix.
4. Décrivez les quatre étapes d''un cycle de recherche-action et donnez un exemple fictif pour chacune, appliqué à un dispositif RH.
5. Dans le protocole fictif présenté en section 5, identifiez quelle phase répond à quelle limite de la phase précédente.
6. Un jury vous demande pourquoi vous n''avez pas choisi une enquête quantitative unique pour votre projet de thèse. Préparez une réponse argumentée en cinq phrases.

## Corrigé

1. L''échantillonnage statistique vise à représenter une population plus large à partir d''un échantillon suffisamment nombreux et aléatoire. Avec trois cas choisis pour leur intérêt théorique (contraste, richesse d''information), la logique n''est pas représentative mais analytique : chaque cas est choisi pour ce qu''il peut révéler théoriquement, pas pour sa fréquence statistique dans la population.

2. La fiabilité porte sur la cohérence interne d''une mesure : si l''on pose plusieurs fois, sous des formes légèrement différentes, une question sur un même concept, les réponses doivent varier ensemble de façon cohérente. La validité porte sur l''exactitude de la mesure : l''échelle mesure-t-elle réellement le concept visé, et pas un concept voisin différent.

3. Un design séquentiel explicatif semble adapté : une enquête quantitative initiale mesurerait le niveau moyen de satisfaction envers l''évaluation annuelle et ses corrélats, puis des entretiens qualitatifs permettraient de comprendre en profondeur les raisons des scores les plus faibles ou les plus surprenants, qu''une enquête seule ne peut pas expliquer.

4. Diagnostic partagé : le chercheur et les responsables RH d''une entreprise identifient ensemble que la transmission des compétences entre anciens et nouveaux salariés est mal organisée. Planification conjointe : ils conçoivent ensemble un dispositif simple de tutorat interne. Mise en œuvre : le dispositif est testé pendant plusieurs mois dans un service pilote. Observation : le chercheur documente systématiquement les effets perçus par les tuteurs et les nouveaux salariés. Réflexion : les résultats nourrissent un ajustement du dispositif avant un éventuel déploiement plus large.

5. La phase 2 (quantitative) répond à la limite de généralisation de la phase 1 (étude de cas qualitative), en testant sur un échantillon plus large les dimensions identifiées localement. La phase 3 (recherche-action) répond à la limite explicative de la phase 2 (l''enquête quantitative mesure un lien statistique mais n''intervient pas sur le terrain) en accompagnant concrètement la mise en œuvre d''un dispositif et en observant ses effets réels.

6. Réponse possible : « Une enquête quantitative unique aurait permis de tester un lien statistique, mais le phénomène étudié est encore peu documenté dans ce contexte précis, ce qui rend risqué de construire d''emblée un questionnaire fermé sans exploration préalable. Une phase qualitative initiale permet d''ancrer les dimensions mesurées dans la réalité du terrain. La méthode mixte permet ensuite de généraliser statistiquement ces dimensions tout en gardant la possibilité d''approfondir certains résultats par une démarche plus impliquée. Ce choix méthodologique est donc justifié par l''état encore exploratoire des connaissances sur ce terrain précis. »', 'texte', 60, false, 40
from public.courses c where c.slug = 'doc-rh'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Les méthodes de recherche en gestion des ressources humaines');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Épreuve type d''examen de qualification en Ressources humaines', '## Objectifs de la leçon

- S''entraîner sur une question de synthèse typique d''un examen de qualification doctorale en Ressources humaines.
- Mobiliser conjointement les deux courants théoriques étudiés et une méthode de recherche appropriée.
- Construire un plan de réponse structuré, argumenté et critique, tel qu''attendu par un jury.
- Identifier les critères d''évaluation qu''un correcteur appliquerait à une telle réponse.

## 1. La question de synthèse (non officielle, à titre d''entraînement)

« Dans quelle mesure les débats théoriques qui opposent l''école des relations humaines à la gestion stratégique des ressources humaines, d''une part, et l''approche universaliste à l''approche contingente/configurationnelle, d''autre part, permettent-ils d''éclairer la diversité des pratiques de gestion du personnel observée dans les petites et moyennes entreprises africaines ? Vous proposerez également une méthode de recherche adaptée pour étudier empiriquement cette question. »

Une question de ce type est volontairement large : elle demande au candidat de mobiliser deux corpus théoriques distincts, de les articuler entre eux plutôt que de les traiter séparément, et de montrer une capacité à les opérationnaliser méthodologiquement. C''est exactement le type de question qu''un jury de qualification pose pour vérifier la maturité scientifique d''un candidat, plus que sa mémoire.

## 2. Analyse de la question avant de répondre

Avant de rédiger, un candidat doit décomposer la question en ses éléments constitutifs. Ici, trois exigences sont imbriquées : d''abord, resituer chaque débat théorique séparément de façon rigoureuse (définitions, auteurs, évolution) ; ensuite, les articuler entre eux, ce qui suppose de comprendre qu''ils ne portent pas exactement sur la même chose (l''un sur la finalité de la gestion du personnel, l''autre sur la possibilité de généraliser les pratiques) mais qu''ils se combinent utilement pour analyser un même terrain empirique ; enfin, proposer une méthode cohérente avec le type de terrain évoqué (PME africaines, contextes très divers).

Un candidat qui se contente de résumer les deux débats l''un après l''autre, sans les relier explicitement à la question posée sur la diversité des pratiques dans les PME africaines, perdrait l''essentiel des points, même avec un résumé théorique par ailleurs correct.

## 3. Plan de réponse détaillé

## Introduction (du plan de réponse)
Poser le problème : la diversité observée des pratiques RH dans les PME africaines (certaines proches de modèles internationaux dits « modernes », d''autres très informelles) pose la question de savoir si cette diversité doit être lue comme un écart par rapport à une norme universelle (optique relations humaines/universalisme) ou comme une adaptation légitime à des contextes stratégiques et institutionnels divers (optique SHRM/contingence). Annoncer le plan.

## I. Deux lectures théoriques possibles de la diversité observée
Présenter d''abord la lecture « relations humaines » : les pratiques informelles de nombreuses PME africaines (relations personnalisées, reconnaissance informelle, gestion orale plutôt qu''écrite) peuvent être lues comme proches, dans leur esprit, des intuitions fondatrices de ce courant sur l''importance du lien social et de la reconnaissance, sans pour autant relever d''une démarche RH structurée. Présenter ensuite la lecture SHRM/universaliste : certaines grandes PME, en croissance ou connectées à des marchés internationaux, tendent à adopter des pratiques plus proches des « meilleures pratiques » recensées par la littérature, en particulier lorsqu''elles cherchent un avantage concurrentiel sur des marchés exigeants.

## II. L''apport décisif de l''approche contingente et configurationnelle
Montrer que l''opposition entre ces deux lectures reste insuffisante : elle les range sur un même continuum (du moins formalisé au plus formalisé) sans expliquer pourquoi certaines configurations informelles sont elles-mêmes performantes dans leur contexte. Mobiliser ici l''approche contingente et configurationnelle pour soutenir que les PME africaines peuvent développer des configurations de pratiques RH cohérentes avec leur propre stratégie concurrentielle (flexibilité, proximité, coûts maîtrisés), sans que ces configurations doivent être jugées à l''aune d''une norme universaliste construite dans d''autres contextes économiques et institutionnels.

## III. Une proposition méthodologique cohérente avec cette lecture théorique
Proposer un design en méthodes mixtes séquentielles : une phase qualitative exploratoire par études de cas contrastées (PME de secteurs et de tailles différents), pour identifier empiriquement les configurations de pratiques réellement à l''œuvre, suivie d''une enquête quantitative par questionnaire, construite à partir de cette phase exploratoire et appuyée sur des échelles validées lorsque c''est possible, pour tester si ces configurations sont associées à des indicateurs de performance ou de fidélisation du personnel. Justifier ce choix par la nécessité de ne pas présupposer, avant l''enquête quantitative, quelles dimensions de pratiques RH sont pertinentes dans ce contexte précis, d''où l''utilité d''une phase qualitative initiale.

## Conclusion (du plan de réponse)
Rappeler que les deux débats théoriques étudiés ne s''opposent pas terme à terme mais éclairent des dimensions différentes et complémentaires de la même diversité empirique, et que l''approche configurationnelle, couplée à un design méthodologique mixte, offre un cadre plus fin que l''opposition binaire pour l''étudier. Ouvrir, en une phrase, sur une limite assumée : la difficulté à généraliser au-delà des contextes étudiés, qui invite à la prudence sur la portée des conclusions.

## 4. Critères d''évaluation d''une telle réponse

Un correcteur évaluerait vraisemblablement cinq critères. La justesse et la richesse du rappel théorique de chaque courant, sans erreur ni confusion entre les auteurs. La capacité à articuler explicitement les deux débats entre eux plutôt que les traiter côte à côte. La pertinence et la cohérence interne de la méthode proposée par rapport au terrain évoqué. La présence d''une posture critique assumée, notamment sur les limites de l''approche choisie. Enfin, la clarté et la progressivité du plan, qui doit se lire comme une démonstration construite et non comme une accumulation de connaissances.

## Exercices pratiques

1. Identifiez, dans le plan de réponse ci-dessus, la phrase exacte qui articule explicitement les deux débats théoriques entre eux.
2. Rédigez, en cinq lignes, l''introduction d''une réponse à une question de synthèse qui porterait uniquement sur le débat universaliste/contingent, appliqué cette fois à la rémunération.
3. Un jury vous reproche d''avoir traité les deux courants « côte à côte » sans les articuler. Reformulez en trois phrases une transition qui corrige ce défaut.
4. Proposez une limite supplémentaire, non mentionnée dans la conclusion ci-dessus, à la méthode mixte proposée en partie III.
5. Construisez une question de synthèse alternative, qui mobiliserait cette fois l''école des relations humaines et la méthode de la recherche-action.
6. Expliquez en quoi la partie II du plan constitue le véritable cœur argumentatif de la réponse, plus que les parties I et III.

## Corrigé

1. La phrase : « Mobiliser ici l''approche contingente et configurationnelle pour soutenir que les PME africaines peuvent développer des configurations de pratiques RH cohérentes avec leur propre stratégie concurrentielle […], sans que ces configurations doivent être jugées à l''aune d''une norme universaliste construite dans d''autres contextes. » Cette phrase relie explicitement le second débat théorique à la discussion du premier et à la question posée.

2. Exemple d''introduction : « La diversité des politiques de rémunération observée entre entreprises d''un même secteur peut être interprétée de deux façons opposées : soit comme un écart plus ou moins grand par rapport à des pratiques de rémunération jugées universellement incitatives, soit comme une adaptation légitime à des stratégies concurrentielles différentes. Cette tension structure l''ensemble du débat entre approche universaliste et approche contingente, que nous proposons d''examiner ici à partir du cas de la rémunération. »

3. Transition corrigée : « Ces deux lectures théoriques, prises séparément, ne permettent cependant pas d''expliquer pourquoi des pratiques très informelles peuvent être, dans leur propre contexte, tout aussi performantes que des pratiques formalisées proches des standards internationaux. C''est précisément cette question que l''approche configurationnelle permet d''éclairer, en proposant de juger chaque configuration de pratiques RH à l''aune de sa cohérence interne plutôt que d''une norme externe unique. Nous mobilisons donc cette approche pour dépasser l''opposition binaire posée en première partie. »

4. Limite supplémentaire possible : la phase qualitative exploratoire, menée sur un petit nombre de cas, peut elle-même être biaisée par le choix des entreprises acceptant de participer à l''étude, qui ne sont pas nécessairement représentatives de l''ensemble du tissu de PME, y compris les plus informelles ou les plus réticentes à l''enquête.

5. Exemple de question alternative : « En quoi la recherche-action permet-elle de tester, sur le terrain, les intuitions de l''école des relations humaines sur le lien entre reconnaissance au travail et engagement des salariés, dans une petite entreprise qui souhaite améliorer son climat social ? »

6. Parce que c''est cette partie qui dépasse la simple opposition entre les deux lectures théoriques présentées en partie I, en proposant un cadre d''analyse qui explique la diversité empirique plutôt que de la constater : c''est elle qui transforme un exposé de connaissances en une véritable démonstration, ce qui correspond exactement à ce qu''un jury doctoral évalue en priorité.', 'texte', 60, false, 50
from public.courses c where c.slug = 'doc-rh'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Épreuve type d''examen de qualification en Ressources humaines');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : école des relations humaines et gestion stratégique des ressources humaines', '## Fiche du cours vidéo

Durée : 1h30. Public : doctorants en spécialité Ressources humaines préparant l''examen de qualification doctorale. Objectifs : maîtriser l''opposition et le dialogue entre l''école des relations humaines et la gestion stratégique des ressources humaines (SHRM), connaître les auteurs fondateurs de chaque courant, être capable de défendre une position critique argumentée à l''oral. Matériel : diaporama avec la cartographie des deux courants, tableau pour construire en direct un tableau comparatif, extraits résumés (non cités textuellement) des travaux de Mayo, Maslow, Herzberg, McGregor, Wright et McMahan, Boxall et Purcell, Ulrich. Prérequis : avoir lu la leçon texte correspondante et préparé une fiche de lecture par auteur cité.

## Déroulé minuté

## 00:00 – 05:00 · Ouverture et enjeux de la séance

Bonjour à toutes et à tous. Dans cette séance, nous allons travailler un couple théorique absolument central pour votre examen de qualification en Ressources humaines : l''école des relations humaines, d''un côté, et la gestion stratégique des ressources humaines, de l''autre. Ce n''est pas un couple que l''on choisit par hasard : c''est probablement le débat le plus structurant de toute l''histoire de notre discipline, parce qu''il pose une question simple et redoutable, à laquelle vous devrez savoir répondre devant un jury : à quoi sert, au fond, la gestion des personnes dans une organisation ? Sert-elle d''abord l''individu, ou sert-elle d''abord la stratégie de l''entreprise ? Gardez cette question en tête pendant toute la séance, elle reviendra à plusieurs reprises.

Je vous propose de procéder en trois temps. D''abord, nous reconstruirons ensemble l''école des relations humaines, ses origines expérimentales et ses auteurs. Ensuite, nous ferons la même chose pour la gestion stratégique des ressources humaines. Enfin, nous mettrons les deux en tension, nous discuterons leurs limites respectives, et nous verrons comment la recherche contemporaine tente de les faire dialoguer.

## 05:00 – 20:00 · L''école des relations humaines : de l''expérience de Hawthorne aux théories de la motivation

Revenons d''abord au contexte d''émergence de ce courant. Dans les premières décennies du vingtième siècle, l''organisation scientifique du travail dominait la pensée managériale : on découpait les tâches, on chronométrait les gestes, on supposait que l''ouvrier était motivé uniquement par son salaire. C''est dans ce contexte que des chercheurs vont mener, à l''usine Hawthorne de la Western Electric, une série d''expériences qui vont bouleverser cette vision.

L''idée de départ était simple : on voulait mesurer l''effet de l''éclairage sur la productivité d''un atelier. Mais les chercheurs ont observé un résultat étrange : la productivité augmentait, que l''éclairage soit renforcé ou diminué. Pourquoi ? Parce que les ouvrières de l''atelier se sentaient observées, écoutées, et donc valorisées. On a appelé ce phénomène « l''effet Hawthorne », et il a ouvert une brèche immense : la performance au travail ne dépend pas seulement de l''organisation technique des tâches, elle dépend aussi, et peut-être surtout, de facteurs psychologiques et relationnels.

À partir de cette intuition expérimentale, plusieurs auteurs vont construire des théories plus générales. Abraham Maslow propose une hiérarchie des besoins humains : les besoins physiologiques et de sécurité à la base, puis les besoins sociaux d''appartenance, puis les besoins d''estime et de reconnaissance, puis, au sommet, le besoin d''accomplissement de soi. Son apport pour notre discipline, c''est l''idée que l''on ne peut pas motiver durablement un salarié uniquement par le salaire : une fois les besoins de base satisfaits, ce sont les besoins sociaux et de reconnaissance qui deviennent déterminants.

Frederick Herzberg va plus loin en distinguant deux catégories de facteurs : les facteurs d''hygiène, comme le salaire ou les conditions de travail, dont l''absence provoque de l''insatisfaction mais dont la présence ne suffit pas à motiver ; et les facteurs de motivation proprement dits, comme la reconnaissance, le contenu du travail ou la responsabilité, qui sont les seuls capables de produire un engagement réel. C''est une distinction que vous devez absolument maîtriser, parce qu''elle est souvent mal comprise : beaucoup de gens pensent qu''augmenter le salaire motive, alors que pour Herzberg, cela retire seulement une source d''insatisfaction.

Enfin, Douglas McGregor propose une opposition devenue classique entre la théorie X, qui suppose que l''employé est naturellement paresseux et doit être contrôlé de près, et la théorie Y, qui suppose au contraire que l''employé peut être autonome, créatif, et engagé si l''organisation lui fait confiance. Cette opposition, vous le verrez, préfigure déjà certains débats du management contemporain sur l''autonomie au travail.

## 20:00 – 35:00 · La gestion stratégique des ressources humaines : de la fonction administrative au levier stratégique

Changeons maintenant complètement de registre. Nous sommes dans les années 1980, le contexte économique a changé : la concurrence internationale s''intensifie, les entreprises cherchent des avantages compétitifs durables, et la fonction ressources humaines, jusque-là perçue comme une fonction administrative de gestion du personnel, commence à être repensée comme un levier stratégique.

L''idée centrale du SHRM, c''est que les ressources humaines, si elles sont gérées de façon cohérente avec la stratégie de l''entreprise, peuvent constituer un avantage concurrentiel difficile à copier. Pourquoi difficile à copier ? Parce qu''un concurrent peut acheter la même machine que vous, mais il ne peut pas acheter facilement votre culture d''entreprise, vos compétences collectives, votre façon propre de recruter et de faire grandir les gens. C''est l''apport de la théorie de la firme fondée sur les ressources, qui soutient qu''un avantage durable vient de ressources rares, précieuses et difficiles à imiter.

Patrick Wright et Gary McMahan ont posé les fondements théoriques de ce champ, en formalisant les conditions sous lesquelles les ressources humaines peuvent effectivement constituer un tel avantage. Peter Boxall et John Purcell ont, eux, travaillé sur l''articulation concrète entre la stratégie d''entreprise et la stratégie RH : comment traduire, en pratiques de recrutement, de formation et de rémunération, les priorités stratégiques de l''organisation.

Et puis il y a Dave Ulrich, dont le modèle des rôles de la fonction RH est probablement l''un des plus cités dans le monde professionnel autant qu''académique. Il identifie quatre rôles que la fonction RH doit jouer simultanément : partenaire stratégique, qui aligne les RH sur la stratégie de l''entreprise ; expert administratif, qui gère efficacement les processus RH du quotidien ; champion des employés, qui défend les intérêts et l''engagement des salariés ; et agent de changement, qui accompagne les transformations organisationnelles. Remarquez que le rôle de « champion des employés » rapproche, d''une certaine façon, le SHRM des préoccupations de l''école des relations humaines, ce qui annonce la suite de notre discussion.

## 35:00 – 45:00 · Mettre les deux courants en tension

Nous avons maintenant les deux blocs théoriques. Construisons ensemble, au tableau, la tension qui les oppose. L''école des relations humaines part de l''individu : son bien-être, ses besoins psychosociaux, et suppose que la performance organisationnelle en découlera. Le SHRM part de l''organisation : sa stratégie, sa compétitivité, et traite les personnes comme une ressource au service de cette compétitivité.

Cette différence n''est pas seulement académique, elle a des conséquences très concrètes sur le terrain. Une politique RH inspirée des relations humaines va privilégier l''écoute individuelle, la qualité du climat social, la reconnaissance informelle. Une politique RH inspirée du SHRM va privilégier l''alignement des pratiques sur les priorités stratégiques, et acceptera, si nécessaire, de différencier fortement les pratiques selon que telle catégorie de personnel est jugée stratégique ou non.

## 45:00 – 50:00 · Pause quiz interactif

Prenons une pause de cinq minutes pour un quiz rapide, à faire individuellement avant de regarder la correction. Question 1 : l''effet Hawthorne a-t-il d''abord démontré l''importance des conditions matérielles de travail, ou l''importance du sentiment d''être observé et valorisé ? Question 2 : selon Herzberg, une augmentation de salaire motive-t-elle durablement un salarié, oui ou non ? Question 3 : citez les quatre rôles du modèle d''Ulrich. Question 4 : le SHRM considère-t-il les ressources humaines comme une fonction administrative ou comme un levier stratégique ? Réponses : 1, le sentiment d''être observé et valorisé, pas les conditions matérielles elles-mêmes. 2, non, selon Herzberg le salaire est un facteur d''hygiène, pas un facteur de motivation durable. 3, partenaire stratégique, expert administratif, champion des employés, agent de changement. 4, un levier stratégique.

## 50:00 – 65:00 · Limites et critiques croisées

Reprenons maintenant notre analyse critique, qui est la partie la plus importante pour votre oral. L''école des relations humaines a été critiquée pour son optimisme : elle suppose une convergence presque naturelle entre le bien-être de l''individu et les intérêts de l''organisation, ce qui occulte les rapports de pouvoir réels et les conflits d''intérêts qui peuvent exister entre employeurs et salariés. Certains commentateurs ont aussi réexaminé, avec le recul, les conditions expérimentales exactes de l''étude Hawthorne, invitant à une certaine prudence sur la portée de ses conclusions d''origine.

Le SHRM, de son côté, souffre d''une difficulté empirique majeure : de nombreuses études peinent à démontrer de façon incontestable un lien de causalité clair entre pratiques RH et performance financière. Est-ce que de bonnes pratiques RH créent la performance, ou est-ce que les entreprises déjà performantes ont simplement plus de moyens à investir dans leurs RH ? Cette question reste largement ouverte dans la littérature. Et puis il y a cette critique plus philosophique : en traitant les personnes comme une « ressource » parmi d''autres, le SHRM risque, si l''on n''y prend pas garde, de les instrumentaliser.

## 65:00 – 75:00 · Vers un dialogue entre les deux courants

La bonne nouvelle, pour votre thèse, c''est que la recherche contemporaine ne voit plus ces deux courants comme irréconciliables. De nombreux travaux récents en SHRM intègrent désormais des variables issues directement de la tradition des relations humaines : la perception de soutien organisationnel par le salarié, son sentiment de justice, sa perception d''être reconnu. Ces variables permettent justement d''expliquer pourquoi certaines pratiques « stratégiquement alignées » produisent, ou non, les effets attendus sur le terrain : une pratique peut être parfaitement alignée sur la stratégie et pourtant mal vécue par les salariés, ce qui en annule les effets positifs attendus.

## 75:00 – 85:00 · Application à un cas fictif et discussion

Prenons un cas fictif pour fixer ces idées. Imaginez une entreprise sénégalaise de services qui décide d''individualiser fortement la rémunération de ses commerciaux pour les aligner sur sa stratégie de croissance commerciale, une décision typiquement SHRM. Si cette individualisation est perçue comme injuste par les équipes, parce qu''elle casse une solidarité de groupe jusque-là valorisée, l''école des relations humaines prédirait une baisse de l''engagement malgré l''alignement stratégique apparent de la mesure. Un bon candidat à l''oral doit être capable de construire ce genre de scénario, et de montrer comment les deux cadres théoriques, combinés, expliquent mieux la réalité que chacun pris isolément.

## 85:00 – 90:00 · Synthèse et évaluation finale

Pour conclure, retenez ceci : l''école des relations humaines et le SHRM ne répondent pas à la même question. La première demande ce qui rend un individu engagé et satisfait au travail. La seconde demande comment transformer la gestion des personnes en avantage concurrentiel pour l''organisation. Les opposer frontalement serait une erreur à l''oral ; les articuler, en montrant leurs complémentarités et leurs tensions, est exactement ce qu''un jury attend de vous.

Évaluation finale, cinq questions. Un, quel événement expérimental est à l''origine de l''école des relations humaines ? Deux, quelle distinction propose Herzberg entre facteurs d''hygiène et facteurs de motivation ? Trois, sur quelle théorie économique le SHRM s''appuie-t-il pour justifier qu''un avantage concurrentiel durable puisse venir des ressources humaines ? Quatre, quels sont les quatre rôles du modèle d''Ulrich ? Cinq, citez une critique majeure adressée à chacun des deux courants.

Réponses. Un, l''expérience menée à l''usine Hawthorne de la Western Electric, qui a révélé « l''effet Hawthorne ». Deux, les facteurs d''hygiène (salaire, conditions de travail) évitent l''insatisfaction mais ne motivent pas durablement ; seuls les facteurs de motivation (reconnaissance, contenu du travail, responsabilité) produisent un engagement réel. Trois, la théorie de la firme fondée sur les ressources (resource-based view), qui explique qu''un avantage durable vient de ressources rares et difficiles à imiter. Quatre, partenaire stratégique, expert administratif, champion des employés, agent de changement. Cinq, pour les relations humaines, l''optimisme sur la convergence spontanée des intérêts individuels et organisationnels ; pour le SHRM, la difficulté à prouver empiriquement un lien causal clair entre pratiques RH et performance, et le risque d''instrumentalisation des personnes.', 'video', 90, false, 60
from public.courses c where c.slug = 'doc-rh'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : école des relations humaines et gestion stratégique des ressources humaines');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : universalisme contre contingence en GRH', '## Fiche du cours vidéo

Durée : 1h30. Public : doctorants en spécialité Ressources humaines préparant l''examen de qualification doctorale. Objectifs : maîtriser le débat entre approche universaliste et approche contingente/configurationnelle en GRH, savoir le relier au débat « best practices » contre « best fit », et savoir le mobiliser pour analyser un terrain organisationnel concret. Matériel : diaporama, tableau comparatif à construire en direct, résumés non cités textuellement des travaux de Pfeffer, Huselid, Schuler et Jackson, Delery et Doty. Prérequis : lecture de la leçon texte correspondante.

## Déroulé minuté

## 00:00 – 05:00 · Ouverture et enjeux de la séance

Bienvenue dans cette séance consacrée à l''un des débats les plus structurants de la recherche en gestion des ressources humaines : celui qui oppose, ou plutôt qui met en tension, l''approche universaliste et l''approche contingente ou configurationnelle. Ce débat se formule souvent de façon plus imagée dans la littérature : existe-t-il de « meilleures pratiques » RH, valables partout, ou seulement des pratiques « les mieux adaptées » à un contexte donné ? Vous devez être capable, à l''oral, de passer sans hésitation d''une formulation à l''autre, parce que les jurys utilisent indifféremment les deux vocabulaires.

Nous allons procéder ainsi : d''abord l''approche universaliste et les travaux qui la soutiennent, ensuite l''approche contingente, puis l''apport spécifique de l''approche configurationnelle, et enfin une discussion critique appliquée à un contexte africain.

## 05:00 – 20:00 · L''approche universaliste : une recette de la bonne gestion des personnes ?

L''approche universaliste repose sur un postulat fort, et je veux que vous puissiez le reformuler sans notes : il existerait un ensemble de pratiques de gestion des ressources humaines qui améliorent la performance organisationnelle, quels que soient le secteur, la taille ou la stratégie de l''entreprise qui les adopte.

Jeffrey Pfeffer est l''auteur le plus associé à cette position. Il a dressé une liste de pratiques jugées universellement bénéfiques : la sécurité de l''emploi, un recrutement sélectif et rigoureux, une rémunération incitative liée à la performance, le partage large de l''information dans l''organisation, un effort soutenu de formation, et la réduction des différences de statut entre catégories de personnel. Mark Huselid a, lui, cherché à tester empiriquement cette idée, sur de larges échantillons d''entreprises, en montrant une association statistique entre l''adoption de systèmes dits « à haute performance » et des indicateurs de performance organisationnelle.

L''intérêt pratique de cette approche est évident : elle donne aux dirigeants une checklist actionnable, indépendamment des spécificités de leur organisation. Mais c''est précisément cette simplicité qui va être contestée par le courant suivant.

## 20:00 – 35:00 · L''approche contingente et configurationnelle : il n''existe pas de recette unique

L''approche contingente renverse le postulat de départ : l''efficacité d''une pratique RH dépendrait du contexte dans lequel elle est appliquée, en particulier de la stratégie concurrentielle de l''entreprise. Randall Schuler et Susan Jackson ont montré que des stratégies concurrentielles différentes appellent des comportements attendus très différents chez les salariés, et donc des pratiques RH différentes : une entreprise qui concurrence par l''innovation veut encourager la prise de risque et la créativité ; une entreprise qui concurrence par les coûts veut au contraire standardiser les tâches et maîtriser la masse salariale. Il n''y a donc pas, dans cette logique, de « bonne » pratique en soi, seulement des pratiques plus ou moins « ajustées » (best fit) à une stratégie donnée.

L''approche configurationnelle, portée par James Delery et D. Harold Doty, ajoute une nuance décisive que vous devez absolument maîtriser pour l''oral : ce n''est pas l''ajustement d''une pratique isolée qui compte, mais la cohérence interne entre plusieurs pratiques combinées en « configurations » ou « bouquets » (bundles). Deux configurations différentes peuvent être également performantes, à condition que chacune soit cohérente en elle-même et adaptée à son propre contexte. C''est une idée plus subtile que le simple contingentisme : elle n''affirme pas qu''il existe une infinité de cas uniques, mais qu''il existe un nombre limité de modèles cohérents repérables.

## 35:00 – 45:00 · La question épistémologique de fond

Prenons un peu de hauteur. Ce débat, au-delà de son contenu, pose une question bien plus large sur la nature de la connaissance en gestion : peut-on produire des lois générales valables partout, comme le suggère l''universalisme, ou doit-on renoncer à toute généralisation, comme le suggérerait un contingentisme radical ? L''approche configurationnelle, en acceptant l''idée d''un nombre limité de modèles cohérents sans aller jusqu''à une loi unique universelle, propose une voie intermédiaire qui domine aujourd''hui une grande partie de la recherche en SHRM. Retenez bien cette position intermédiaire : c''est souvent elle que les jurys attendent comme réponse la plus mature.

## 45:00 – 50:00 · Pause quiz interactif

Petit quiz de cinq minutes. Question 1 : selon Pfeffer, la sécurité de l''emploi fait-elle partie des pratiques jugées universellement bénéfiques ? Question 2 : l''approche contingente affirme-t-elle qu''il existe une seule bonne pratique RH, ou que l''efficacité d''une pratique dépend du contexte ? Question 3 : qu''ajoute l''approche configurationnelle par rapport à une approche contingente simple ? Question 4 : l''approche configurationnelle admet-elle un nombre illimité de configurations possibles ? Réponses : 1, oui. 2, que l''efficacité dépend du contexte, en particulier de la stratégie concurrentielle. 3, l''exigence de cohérence interne entre plusieurs pratiques combinées en configurations, et non la simple adéquation d''une pratique isolée. 4, non, elle suppose un nombre limité de configurations cohérentes repérables, pas une infinité de cas uniques.

## 50:00 – 65:00 · Limites et critiques de chaque position

Reprenons l''analyse critique, indispensable pour votre oral. L''approche universaliste souffre d''une fragilité méthodologique réelle : les listes de « meilleures pratiques » varient sensiblement d''un auteur à l''autre, ce qui interroge leur caractère réellement universel. Les corrélations statistiques entre pratiques RH et performance, par ailleurs, restent difficiles à interpréter de façon causale, un problème déjà rencontré dans notre séance précédente sur le SHRM. Enfin, ces listes ont été construites majoritairement à partir d''études nord-américaines, ce qui interroge leur validité dans des environnements institutionnels et culturels très différents.

L''approche contingente et configurationnelle, de son côté, est critiquée pour sa plus faible opérationnalité : elle n''offre pas de recommandations toutes faites, puisque chaque organisation doit en principe identifier elle-même la configuration adaptée à sa situation, ce qui demande une capacité d''analyse stratégique que toutes les organisations, en particulier les plus petites, ne possèdent pas forcément.

## 65:00 – 75:00 · Portée pour un contexte africain

Ce débat prend un relief particulier dans un contexte comme celui du Sénégal, où coexistent de grandes entreprises formalisées, parfois proches de standards internationaux assimilables aux « best practices », et un tissu dense de petites et moyennes entreprises informelles ou semi-formelles, dont les pratiques s''écartent fortement de ces recommandations sans que leur performance en soit nécessairement affectée. Un candidat qui étudierait ce terrain a tout intérêt à mobiliser l''approche configurationnelle plutôt que l''universalisme : elle permet de reconnaître la cohérence propre de pratiques très diverses, sans les juger à l''aune d''une norme unique construite ailleurs.

## 75:00 – 85:00 · Application orale : répondre à une objection de jury

Imaginons qu''un membre du jury vous objecte : « Mais alors, ces deux approches sont-elles vraiment incompatibles ? » Une bonne réponse orale pourrait se construire ainsi : reconnaître d''abord que l''universalisme met en évidence des régularités statistiques utiles comme point de départ de la réflexion ; rappeler ensuite que le contingentisme montre que ces régularités ne se vérifient pas identiquement partout ; conclure que l''approche configurationnelle peut être vue comme une tentative de synthèse, qui admet des régularités mais à l''intérieur de modèles contextualisés, et que c''est cette dernière position que vous mobiliseriez dans votre propre travail de thèse.

## 85:00 – 90:00 · Synthèse et évaluation finale

Pour résumer : l''universalisme cherche des pratiques bonnes partout, le contingentisme cherche des pratiques adaptées à chaque contexte, et le configurationnisme cherche des combinaisons de pratiques cohérentes entre elles, en nombre limité. Ce débat n''est pas un simple exercice académique : il conditionne directement la façon dont vous formulerez votre propre question de recherche doctorale sur les pratiques RH.

Évaluation finale, cinq questions. Un, citez trois pratiques de la liste de Pfeffer. Deux, quel facteur, selon Schuler et Jackson, explique que des entreprises adoptent des pratiques RH différentes ? Trois, qu''apporte l''approche configurationnelle que n''apporte pas une approche contingente simple ? Quatre, quelle critique méthodologique commune touche à la fois l''universalisme et le SHRM étudié dans la séance précédente ? Cinq, pourquoi l''approche configurationnelle est-elle particulièrement adaptée à l''analyse d''un tissu économique diversifié comme celui du Sénégal ?

Réponses. Un, par exemple la sécurité de l''emploi, le recrutement sélectif, la rémunération incitative liée à la performance (d''autres réponses parmi la liste présentée sont acceptées). Deux, la stratégie concurrentielle de l''entreprise, qui appelle des comportements attendus différents chez les salariés. Trois, l''exigence de cohérence interne entre plusieurs pratiques combinées, plutôt que la simple adéquation d''une pratique isolée au contexte. Quatre, la difficulté à établir un lien de causalité clair, et non seulement une corrélation, entre pratiques RH et performance organisationnelle. Cinq, parce qu''elle permet de reconnaître la cohérence propre de configurations de pratiques très différentes (grandes entreprises formalisées, PME informelles) sans les juger à l''aune d''une seule norme universelle qui ne correspondrait qu''à une partie de ce tissu économique.', 'video', 90, false, 70
from public.courses c where c.slug = 'doc-rh'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : universalisme contre contingence en GRH');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : les méthodes de recherche en Ressources humaines', '## Fiche du cours vidéo

Durée : 1h30. Public : doctorants en spécialité Ressources humaines préparant l''examen de qualification doctorale. Objectifs : maîtriser les quatre grandes méthodes de recherche du champ RH (étude de cas, enquête quantitative par questionnaire validé, méthodes mixtes, recherche-action), connaître leurs critères de qualité respectifs, être capable de défendre le choix méthodologique d''un projet de thèse. Matériel : diaporama, grille comparative des méthodes, exemple de protocole fictif appliqué à un contexte sénégalais. Prérequis : lecture de la leçon texte correspondante.

## Déroulé minuté

## 00:00 – 05:00 · Ouverture et enjeux de la séance

Bienvenue dans cette séance consacrée aux méthodes de recherche propres à la gestion des ressources humaines. C''est un point sur lequel les jurys sont souvent redoutables, parce qu''un candidat peut parfaitement connaître les théories du champ sans jamais avoir réfléchi sérieusement à la façon de les étudier empiriquement. Or une thèse n''est pas qu''une discussion théorique : c''est, le plus souvent, une démonstration empirique construite avec une méthode rigoureuse et justifiée. Nous allons donc passer en revue quatre grandes méthodes, leurs forces, leurs limites, et terminer par un exemple de protocole complet appliqué à un contexte sénégalais fictif.

## 05:00 – 20:00 · L''étude de cas : comprendre en profondeur

L''étude de cas consiste à analyser en profondeur un ou plusieurs contextes organisationnels précis, pour comprendre comment un phénomène se déploie réellement. Elle est particulièrement adaptée quand le phénomène étudié est complexe ou peu documenté, ou qu''il s''agit de comprendre un « comment » et un « pourquoi » plutôt que de mesurer un simple lien statistique.

Robert Yin a précisé les exigences de rigueur de cette méthode : définir clairement l''unité d''analyse étudiée, trianguler plusieurs sources de données, comme des entretiens, des documents internes et de l''observation, et, lorsque plusieurs cas sont étudiés, choisir une logique de réplication plutôt qu''une logique d''échantillonnage statistique, qui n''a pas de sens pour un petit nombre de cas. Retenez bien cette distinction, c''est un piège classique à l''oral : on ne choisit pas des cas d''étude « au hasard » pour qu''ils soient représentatifs, on les choisit pour leur intérêt théorique, parce qu''ils sont similaires (pour confirmer un résultat) ou contrastés (pour en tester les limites).

La force de cette méthode, c''est la richesse et la profondeur du phénomène restitué. Sa limite, c''est l''impossibilité de généraliser statistiquement les résultats à une population plus large, même si une généralisation théorique reste possible, en enrichissant un cadre conceptuel existant.

## 20:00 – 35:00 · L''enquête quantitative par questionnaire validé

L''enquête quantitative reste la méthode la plus fréquente pour tester des hypothèses sur de grands échantillons. Elle repose sur l''utilisation d''échelles de mesure déjà validées dans la littérature, par exemple des échelles de type Likert, plutôt que sur des questions improvisées, pour garantir la comparabilité avec d''autres études et la qualité psychométrique des mesures.

Deux critères sont ici absolument centraux, et vous devez pouvoir les définir sans hésitation à l''oral. La fiabilité mesure la cohérence interne d''une échelle : les différents items censés mesurer un même concept varient-ils effectivement ensemble ? On l''évalue souvent par l''alpha de Cronbach. La validité mesure si l''échelle mesure réellement ce qu''elle prétend mesurer. Elle se décline en validité de contenu, qui vérifie que les items couvrent bien toutes les dimensions du concept ; en validité convergente, qui vérifie que l''échelle est corrélée à d''autres mesures du même concept ; et en validité discriminante, qui vérifie qu''elle se distingue bien de mesures de concepts différents.

La force de cette méthode est la généralisation statistique, si l''échantillon est suffisamment grand et représentatif. Sa limite est qu''elle explique mal les mécanismes fins : elle montre souvent « que » deux variables sont liées, sans toujours dire « pourquoi » et « comment ».

## 35:00 – 45:00 · Les méthodes mixtes : combiner pour compenser les limites

Les méthodes mixtes combinent, dans un même projet, des données qualitatives et quantitatives. Trois designs principaux existent. Le design séquentiel exploratoire part d''une phase qualitative, par exemple des entretiens exploratoires, qui permet de construire ou d''adapter un questionnaire ensuite administré à grande échelle. Le design séquentiel explicatif part au contraire d''une enquête quantitative, suivie d''entretiens qualitatifs pour expliquer en profondeur des résultats statistiques surprenants. Le design convergent collecte les deux types de données en parallèle, puis les compare.

L''exigence méthodologique centrale, ici, est de justifier explicitement le design choisi et la façon dont les deux types de résultats seront intégrés, et non simplement juxtaposés sans articulation claire. C''est précisément ce point que les jurys interrogent le plus souvent quand un candidat propose une méthode mixte pour son projet de thèse.

## 45:00 – 50:00 · Pause quiz interactif

Petit quiz de cinq minutes. Question 1 : dans une étude de cas à trois organisations, cherche-t-on la représentativité statistique ou l''intérêt théorique des cas choisis ? Question 2 : que mesure la fiabilité d''une échelle, par opposition à sa validité ? Question 3 : dans un design séquentiel exploratoire, quelle phase vient en premier, la qualitative ou la quantitative ? Réponses : 1, l''intérêt théorique des cas, pas leur représentativité statistique. 2, la fiabilité mesure la cohérence interne de la mesure, la validité mesure si elle capte réellement le concept visé. 3, la phase qualitative vient en premier, elle sert à construire ou adapter l''outil quantitatif utilisé ensuite.

## 50:00 – 65:00 · La recherche-action en entreprise

La recherche-action se distingue par la posture du chercheur, qui n''observe pas seulement de l''extérieur, mais intervient activement, en collaboration avec les acteurs de l''organisation, pour résoudre un problème concret tout en produisant une connaissance scientifique généralisable. Cette méthode convient bien à des problématiques appliquées, comme la conception d''un nouveau dispositif de gestion des compétences.

Sa rigueur repose sur un cycle itératif en quatre étapes : diagnostic partagé de la situation, planification conjointe d''une action, mise en œuvre, observation systématique des effets, puis réflexion critique qui nourrit un nouveau cycle. La principale difficulté est de préserver une distance critique suffisante malgré l''implication directe du chercheur, ce qui exige d''expliciter très clairement sa posture et ses choix méthodologiques dans le manuscrit de thèse.

## 65:00 – 75:00 · Construire un protocole complet sur un terrain sénégalais fictif

Prenons un exemple fictif pour fixer ces idées. Question de recherche : comment les pratiques de gestion des compétences évoluent-elles dans les petites et moyennes entreprises agroalimentaires de la région de Thiès, et avec quels effets perçus sur la fidélisation du personnel qualifié ? Un protocole en méthodes mixtes séquentielles pourrait se construire en trois phases : une phase qualitative exploratoire par études de cas contrastées, pour identifier les dimensions locales de la gestion des compétences ; une phase quantitative confirmatoire, par questionnaire construit à partir de ces dimensions et si possible adossé à des échelles déjà validées, pour tester statistiquement le lien avec la fidélisation ; et une phase de recherche-action complémentaire, en accompagnant deux ou trois entreprises volontaires dans la formalisation progressive d''un dispositif de gestion des compétences, avec un suivi des effets sur plusieurs mois.

## 75:00 – 85:00 · Défendre son choix méthodologique à l''oral

Imaginons qu''un membre du jury vous demande : pourquoi ne pas avoir choisi une simple enquête quantitative, plus rapide à mettre en œuvre ? Une bonne réponse orale rappelle que le phénomène étudié est encore peu documenté dans ce contexte précis, ce qui rend risqué de construire d''emblée un questionnaire fermé sans exploration préalable du terrain ; qu''une phase qualitative initiale permet d''ancrer les dimensions mesurées dans la réalité locale plutôt que d''importer des dimensions construites ailleurs ; et que la méthode mixte permet ensuite de généraliser statistiquement ces dimensions tout en gardant la possibilité d''approfondir certains résultats par une démarche plus impliquée sur le terrain.

## 85:00 – 90:00 · Synthèse et évaluation finale

Pour résumer : l''étude de cas éclaire en profondeur un phénomène complexe, l''enquête quantitative teste des hypothèses sur de grands échantillons à condition de garantir fiabilité et validité, les méthodes mixtes combinent les deux pour compenser leurs limites respectives, et la recherche-action implique directement le chercheur dans la résolution d''un problème concret selon un cycle itératif rigoureux.

Évaluation finale, cinq questions. Un, quelle est la différence entre une logique d''échantillonnage statistique et une logique de réplication théorique dans une étude de cas ? Deux, définissez la fiabilité et la validité d''une échelle de mesure. Trois, citez les trois designs principaux de méthodes mixtes. Quatre, quelles sont les quatre étapes du cycle de recherche-action ? Cinq, dans le protocole fictif présenté, pourquoi la phase qualitative précède-t-elle la phase quantitative ?

Réponses. Un, l''échantillonnage statistique vise la représentativité d''une population ; la réplication théorique choisit des cas pour leur intérêt analytique, qu''ils soient similaires ou contrastés, sans viser une représentativité statistique. Deux, la fiabilité mesure la cohérence interne d''une mesure ; la validité mesure si elle capte réellement le concept qu''elle prétend mesurer. Trois, le design séquentiel exploratoire, le design séquentiel explicatif, et le design convergent. Quatre, diagnostic partagé, planification conjointe, mise en œuvre et observation, puis réflexion critique qui nourrit un nouveau cycle. Cinq, parce que le phénomène étudié est peu documenté localement : la phase qualitative permet d''identifier les dimensions pertinentes du terrain avant de construire un outil quantitatif fiable et adapté à ce contexte précis.', 'video', 90, false, 80
from public.courses c where c.slug = 'doc-rh'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : les méthodes de recherche en Ressources humaines');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : entraînement à une épreuve type de qualification doctorale', '## Fiche du cours vidéo

Durée : 1h30. Public : doctorants en spécialité Ressources humaines préparant l''examen de qualification doctorale. Objectifs : s''entraîner en conditions réelles sur une question de synthèse typique, construire à l''oral un plan de réponse structuré mobilisant deux courants théoriques et une méthode de recherche, anticiper les objections d''un jury. Matériel : diaporama avec la question de synthèse projetée, tableau pour construire le plan en direct. Prérequis : lecture de la leçon texte correspondante et des quatre leçons précédentes.

## Déroulé minuté

## 00:00 – 05:00 · Ouverture et enjeux de la séance

Bienvenue dans cette séance d''entraînement, la plus proche de ce que vous vivrez réellement le jour de votre examen de qualification. Nous allons travailler une question de synthèse type, non officielle, qui mobilise simultanément les deux débats théoriques étudiés dans nos séances précédentes et une méthode de recherche appropriée. L''objectif n''est pas de mémoriser ce plan précis, qui ne sera jamais la question exacte posée le jour de votre épreuve, mais de vous entraîner au raisonnement qui permet de construire ce type de plan face à n''importe quelle question de synthèse comparable.

## 05:00 – 15:00 · Présentation de la question et premières réactions

Voici la question que nous allons traiter : dans quelle mesure les débats théoriques qui opposent l''école des relations humaines à la gestion stratégique des ressources humaines, d''une part, et l''approche universaliste à l''approche contingente et configurationnelle, d''autre part, permettent-ils d''éclairer la diversité des pratiques de gestion du personnel observée dans les petites et moyennes entreprises africaines ? Vous proposerez également une méthode de recherche adaptée pour étudier empiriquement cette question.

Remarquez d''abord la structure de la question : elle convoque explicitement deux débats théoriques distincts, elle les applique à un terrain empirique précis, et elle demande en plus une proposition méthodologique. C''est exactement la structure que vous devez apprendre à repérer immédiatement, en quelques secondes, avant même de commencer à répondre.

## 15:00 – 25:00 · Décomposer la question avant de répondre

Avant de rédiger quoi que ce soit, décomposons la question en ses éléments constitutifs. Trois exigences sont imbriquées. D''abord, resituer chaque débat théorique séparément, de façon rigoureuse, avec définitions et auteurs. Ensuite, et c''est le point le plus souvent manqué par les candidats, les articuler entre eux : comprendre qu''ils ne portent pas sur la même chose, l''un sur la finalité de la gestion du personnel, l''autre sur la possibilité de généraliser les pratiques, mais qu''ils se combinent utilement pour analyser un même terrain. Enfin, proposer une méthode cohérente avec le type de terrain évoqué, ici des PME africaines très diverses.

## 25:00 – 40:00 · Construire le plan en direct, partie I et II

Construisons l''introduction d''abord : nous posons le problème en soulignant que la diversité observée des pratiques RH dans les PME africaines pose la question de savoir si cette diversité doit être lue comme un écart par rapport à une norme universelle, ou comme une adaptation légitime à des contextes divers.

Première partie : nous présentons deux lectures théoriques possibles de cette diversité. La lecture « relations humaines » peut voir dans les pratiques informelles de nombreuses PME, relations personnalisées, reconnaissance informelle, gestion orale plutôt qu''écrite, un écho des intuitions fondatrices de ce courant sur l''importance du lien social. La lecture SHRM ou universaliste peut voir, à l''inverse, dans les grandes PME en croissance ou connectées à des marchés internationaux, une adoption progressive de pratiques proches des « meilleures pratiques » recensées par la littérature.

Deuxième partie, qui est le cœur de la démonstration : nous montrons que cette opposition reste insuffisante, parce qu''elle range les deux types d''entreprises sur un même continuum, du moins formalisé au plus formalisé, sans expliquer pourquoi certaines configurations informelles sont elles-mêmes performantes dans leur propre contexte. C''est ici que nous mobilisons l''approche contingente et configurationnelle, pour soutenir que les PME africaines peuvent développer des configurations de pratiques RH cohérentes avec leur propre stratégie, sans que ces configurations doivent être jugées à l''aune d''une norme universaliste construite ailleurs.

## 40:00 – 50:00 · Construire le plan en direct, partie III et conclusion

Troisième partie : nous proposons un design en méthodes mixtes séquentielles, avec une phase qualitative exploratoire par études de cas contrastées, pour identifier empiriquement les configurations réellement à l''œuvre, suivie d''une enquête quantitative par questionnaire construit à partir de cette phase exploratoire, pour tester si ces configurations sont associées à des indicateurs de performance ou de fidélisation. Nous justifions ce choix par la nécessité de ne pas présupposer, avant l''enquête, quelles dimensions sont pertinentes dans ce contexte précis.

Conclusion : nous rappelons que les deux débats théoriques ne s''opposent pas terme à terme mais éclairent des dimensions complémentaires de la même diversité empirique, et que l''approche configurationnelle, couplée à un design méthodologique mixte, offre un cadre plus fin que l''opposition binaire pour l''étudier. Nous ouvrons, en une phrase, sur une limite assumée concernant la généralisation des conclusions.

## 50:00 – 55:00 · Pause quiz interactif

Petit quiz de cinq minutes. Question 1 : la question de synthèse mobilise-t-elle un seul débat théorique ou deux ? Question 2 : quelle partie du plan constitue, selon nous, le cœur argumentatif de la démonstration ? Question 3 : quel type de design méthodologique a été proposé dans la troisième partie ? Réponses : 1, deux débats théoriques, qu''il faut explicitement articuler entre eux. 2, la deuxième partie, qui dépasse l''opposition binaire initiale grâce à l''approche configurationnelle. 3, un design en méthodes mixtes séquentielles, qualitatif exploratoire puis quantitatif confirmatoire.

## 55:00 – 70:00 · Les critères d''évaluation d''un correcteur

Reprenons maintenant, comme si nous étions le jury, les critères d''évaluation d''une telle réponse. Premier critère : la justesse et la richesse du rappel théorique de chaque courant, sans erreur ni confusion entre les auteurs. Deuxième critère : la capacité à articuler explicitement les deux débats entre eux plutôt que de les traiter côte à côte, ce qui est, je le répète, le piège le plus fréquent chez les candidats. Troisième critère : la pertinence et la cohérence interne de la méthode proposée par rapport au terrain évoqué. Quatrième critère : la présence d''une posture critique assumée, notamment sur les limites de l''approche choisie. Cinquième critère : la clarté et la progressivité du plan, qui doit se lire comme une démonstration construite, et non comme une accumulation de connaissances juxtaposées.

## 70:00 – 80:00 · Simulation d''objections de jury

Simulons maintenant quelques objections typiques. Un jury pourrait demander : « Pourquoi ne pas avoir choisi l''approche universaliste, plus simple à mobiliser ? » Réponse : l''approche universaliste, en jugeant les pratiques informelles comme un simple écart par rapport à une norme, ne permet pas d''expliquer leur performance propre dans leur contexte, ce que l''approche configurationnelle permet au contraire de faire. Un jury pourrait aussi demander : « Votre méthode n''est-elle pas trop lourde pour une seule thèse ? » Réponse : chaque phase peut être calibrée en fonction du temps disponible, et la phase de recherche-action, en particulier, peut être limitée à un nombre restreint d''entreprises volontaires sans remettre en cause la cohérence globale du design.

## 80:00 – 90:00 · Synthèse et évaluation finale

Pour conclure cette séance : une bonne réponse à une question de synthèse ne consiste jamais à exposer deux blocs théoriques l''un après l''autre, mais à les faire dialoguer explicitement autour d''un terrain empirique précis, puis à proposer une méthode cohérente avec cette articulation théorique. C''est cette compétence de construction argumentative, plus que la mémorisation des contenus, qui sera jugée le jour de votre examen.

Évaluation finale, cinq questions. Un, quelles sont les trois exigences imbriquées dans la question de synthèse traitée aujourd''hui ? Deux, pourquoi l''opposition entre les deux lectures théoriques présentées en partie I est-elle jugée insuffisante ? Trois, quel design méthodologique a été proposé, et pourquoi commence-t-il par une phase qualitative ? Quatre, citez deux des cinq critères d''évaluation d''un correcteur. Cinq, comment répondriez-vous à l''objection « votre méthode est trop lourde » ?

Réponses. Un, resituer chaque débat théorique séparément, les articuler entre eux, et proposer une méthode cohérente avec le terrain évoqué. Deux, parce qu''elle range les pratiques sur un même continuum du moins au plus formalisé sans expliquer la performance propre de configurations informelles dans leur contexte. Trois, un design mixte séquentiel exploratoire puis confirmatoire ; il commence par le qualitatif pour identifier les dimensions pertinentes d''un terrain encore peu documenté avant de les tester quantitativement. Quatre, par exemple la justesse du rappel théorique et la capacité à articuler explicitement les deux débats entre eux. Cinq, en expliquant que chaque phase peut être calibrée selon le temps disponible et que la phase la plus lourde, la recherche-action, peut être limitée à un nombre restreint de cas volontaires sans remettre en cause la cohérence du design global.', 'video', 90, false, 90
from public.courses c where c.slug = 'doc-rh'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : entraînement à une épreuve type de qualification doctorale');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : simulation complète d''une soutenance de qualification doctorale', '## Fiche du cours vidéo

Durée : 1h30. Public : doctorants en spécialité Ressources humaines, en fin de préparation à l''examen de qualification doctorale. Objectifs : vivre une simulation complète de soutenance de qualification, de la présentation initiale du champ et d''un projet de thèse fictif jusqu''aux questions de jury, puis s''auto-évaluer avec une grille structurée. Matériel : diaporama de présentation (15 minutes), liste de questions de jury type, grille d''auto-évaluation finale. Prérequis : avoir suivi les quatre vidéos précédentes de ce cours.

## Déroulé minuté

## 00:00 – 05:00 · Ouverture et mode d''emploi de la simulation

Bienvenue dans cette dernière séance, qui est la plus importante de tout ce cours : une simulation complète de soutenance de qualification doctorale en Ressources humaines. Nous allons procéder exactement comme le jour de l''examen réel. D''abord, une présentation de quinze minutes, où un candidat fictif présente son champ disciplinaire et un projet de thèse fictif. Ensuite, une série de huit à dix questions de jury type, avec chaque fois la structure d''une bonne réponse. Enfin, une grille d''auto-évaluation que vous utiliserez pour juger votre propre prestation lorsque vous vous entraînerez à votre tour.

Gardez un carnet à portée de main : notez, pendant toute la simulation, les formulations qui vous semblent particulièrement efficaces, celles que vous pourrez réemployer, adaptées à votre propre spécialité et à votre propre projet.

## 05:00 – 20:00 · Présentation du candidat fictif (15 minutes, texte intégral)

Voici la présentation que livrerait un candidat fictif, préparant une thèse sur la gestion des compétences dans les PME agroalimentaires sénégalaises. « Mesdames et Messieurs les membres du jury, je vous remercie de votre attention. Mon champ disciplinaire est la gestion des ressources humaines, et plus précisément l''étude des pratiques de gestion des personnes dans les organisations. Ce champ s''est structuré autour de plusieurs grands débats théoriques dont je souhaite vous présenter les deux qui structurent mon propre projet.

Le premier débat oppose l''école des relations humaines, née des expériences de l''usine Hawthorne dans les années 1920 et 1930 et prolongée par les théories de la motivation de Maslow, Herzberg et McGregor, à la gestion stratégique des ressources humaines, apparue dans les années 1980 avec les travaux de Wright, McMahan, Boxall, Purcell et Ulrich. Le premier courant place le bien-être psychosocial de l''individu au centre de la performance ; le second place la stratégie et la compétitivité de l''organisation au centre, et traite les ressources humaines comme un levier d''avantage concurrentiel.

Le second débat oppose l''approche universaliste, incarnée par les travaux de Pfeffer et Huselid sur les « meilleures pratiques », à l''approche contingente et configurationnelle, incarnée par les travaux de Schuler, Jackson, Delery et Doty, qui soutiennent que l''efficacité d''une pratique dépend du contexte stratégique, et que ce sont des configurations cohérentes de pratiques, plutôt que des pratiques isolées, qui déterminent la performance.

Mon projet de thèse se situe précisément à l''intersection de ces deux débats. Je m''intéresse à la façon dont les petites et moyennes entreprises agroalimentaires de la région de Thiès gèrent les compétences de leur personnel, et aux effets perçus de ces pratiques sur la fidélisation des salariés qualifiés. Ma question de recherche est la suivante : comment les configurations de pratiques de gestion des compétences, dans ces PME, articulent-elles logiques informelles et logiques plus formalisées, et avec quels effets sur la fidélisation du personnel qualifié ?

Je mobilise l''approche configurationnelle plutôt que l''approche universaliste, parce qu''elle me permet de reconnaître la cohérence propre de pratiques très diverses, sans les juger à l''aune d''une norme unique construite dans des contextes économiques différents du contexte sénégalais. Je mobilise également les apports de l''école des relations humaines pour comprendre comment ces configurations sont vécues et perçues par les salariés eux-mêmes, au-delà de leur seule cohérence stratégique apparente.

Sur le plan méthodologique, je propose un design en méthodes mixtes séquentielles : une première phase qualitative exploratoire, par études de cas contrastées, pour identifier empiriquement les configurations de pratiques réellement à l''œuvre sur ce terrain encore peu documenté ; une seconde phase quantitative confirmatoire, par questionnaire construit à partir des dimensions identifiées en phase 1 et adossé, dans la mesure du possible, à des échelles déjà validées dans la littérature internationale, pour tester statistiquement le lien entre ces configurations et la fidélisation perçue du personnel qualifié.

Je suis consciente des limites de ce projet : la généralisation de mes résultats au-delà des entreprises étudiées devra rester prudente, et je devrai être attentive, lors de la phase qualitative, à la diversité des entreprises acceptant de participer à l''étude. Je vous remercie de votre attention et reste à votre disposition pour vos questions. »

## 20:00 – 25:00 · Transition et consignes pour la suite

Observez bien la structure de cette présentation : elle part du champ disciplinaire général, passe par les deux débats théoriques choisis, arrive au projet de thèse précis, justifie le choix théorique et méthodologique, et se termine par des limites assumées. C''est exactement cette progression que vous devez reproduire dans votre propre présentation de quinze minutes, quel que soit votre sujet précis.

## 25:00 – 65:00 · Questions de jury type et structure des bonnes réponses

Passons maintenant aux questions de jury. Pour chacune, je vous donne la structure attendue d''une bonne réponse, sans la rédiger intégralement, afin que vous vous entraîniez vous-même à la formuler.

Question 1. « Pourquoi avez-vous choisi l''approche configurationnelle plutôt que l''approche universaliste, qui est pourtant plus simple à opérationnaliser ? » Structure attendue : rappeler la limite principale de l''universalisme dans ce contexte précis, rappeler l''apport spécifique de la configuration, conclure sur l''adéquation avec le terrain étudié.

Question 2. « En quoi votre travail dialogue-t-il avec l''école des relations humaines, alors que votre cadre principal est plutôt stratégique et configurationnel ? » Structure attendue : rappeler que les configurations de pratiques ne produisent leurs effets que si elles sont perçues positivement par les salariés, ce qui justifie d''intégrer des variables issues des relations humaines, comme la perception de justice ou de reconnaissance.

Question 3. « Comment allez-vous choisir vos cas pour la phase qualitative ? » Structure attendue : expliquer la logique de réplication théorique, cas similaires ou contrastés, plutôt qu''une logique d''échantillonnage statistique, et préciser les critères de contraste retenus, par exemple la taille et l''ancienneté des entreprises.

Question 4. « Vos échelles quantitatives seront-elles entièrement nouvelles ou reprendront-elles des échelles existantes ? » Structure attendue : privilégier la réutilisation d''échelles déjà validées dans la littérature internationale, en les adaptant prudemment au vocabulaire et au contexte local, et justifier tout ajout d''item nouveau par les résultats de la phase qualitative.

Question 5. « Comment comptez-vous garantir la fiabilité et la validité de votre questionnaire ? » Structure attendue : mentionner le calcul de la cohérence interne des échelles, un pré-test du questionnaire avant son administration à grande échelle, et la vérification de la validité convergente et discriminante si plusieurs concepts proches sont mesurés.

Question 6. « Votre projet ne risque-t-il pas d''instrumentaliser les personnes en traitant la fidélisation uniquement comme un objectif stratégique de l''entreprise ? » Structure attendue : reconnaître la pertinence de la critique adressée au SHRM, préciser que l''étude s''intéresse aussi aux effets perçus par les salariés eux-mêmes, et non seulement aux indicateurs de l''entreprise, ce qui nuance le risque signalé.

Question 7. « Quelle est la principale limite de votre méthodologie ? » Structure attendue : assumer clairement une limite réelle, par exemple la difficulté à généraliser au-delà des entreprises volontaires, sans minimiser cette limite ni paraître déstabilisé par la question.

Question 8. « En quoi votre thèse apporte-t-elle une contribution originale, et pas seulement une application locale de théories déjà connues ? » Structure attendue : préciser que la contribution porte sur la mise en évidence de configurations spécifiques à ce contexte économique et institutionnel, qui n''ont pas encore été documentées dans la littérature existante, ce qui constitue un apport empirique et potentiellement conceptuel nouveau.

Question 9. « Comment articulerez-vous vos résultats qualitatifs et quantitatifs dans la rédaction finale de votre thèse ? » Structure attendue : préciser le design mixte retenu (ici séquentiel exploratoire) et expliquer que les résultats quantitatifs seront présentés comme un test des configurations identifiées qualitativement, avec un retour explicite sur les cas qualitatifs pour interpréter les résultats statistiques.

Question 10. « Si vos résultats quantitatifs contredisaient vos observations qualitatives initiales, que feriez-vous ? » Structure attendue : indiquer que cette situation serait traitée comme un résultat à part entière, nécessitant un retour qualitatif complémentaire pour comprendre l''écart, plutôt que comme un échec du projet.

## 65:00 – 70:00 · Pause quiz interactif

Petit quiz de cinq minutes sur ce que nous venons de voir. Question 1 : la présentation du candidat fictif a-t-elle commencé par le projet de thèse précis ou par le champ disciplinaire général ? Question 2 : à quelle question de jury correspond la structure « reconnaître la critique, nuancer par les effets perçus par les salariés » ? Réponses : 1, par le champ disciplinaire général, avant de descendre progressivement vers le projet précis. 2, la question 6, sur le risque d''instrumentalisation des personnes.

## 70:00 – 85:00 · Débriefing de la simulation

Revenons sur l''ensemble de cette simulation. Ce qui caractérise une bonne prestation, ce n''est pas l''absence de limites dans le projet présenté, mais la capacité à les assumer sans se déstabiliser. Ce n''est pas non plus la récitation exhaustive de toute la littérature du champ, mais la capacité à mobiliser, au bon moment, exactement les éléments théoriques et méthodologiques pertinents pour répondre précisément à la question posée. Enfin, remarquez que plusieurs questions du jury reviennent, sous des angles différents, sur l''articulation entre les deux débats théoriques présentés en introduction : c''est le signe que cette articulation est le véritable enjeu scientifique de la soutenance, bien plus que chaque courant pris isolément.

## 85:00 – 90:00 · Grille d''auto-évaluation de la soutenance simulée

Pour conclure ce cours, voici la grille d''auto-évaluation que vous utiliserez après chacun de vos propres entraînements oraux, en vous notant honnêtement de 1 (insuffisant) à 4 (excellent) sur chacun des points suivants.

- Clarté de la présentation du champ disciplinaire en quinze minutes, sans digression ni surcharge de détails.
- Précision et exactitude du rappel des courants théoriques mobilisés, auteurs et apports correctement attribués.
- Capacité à articuler explicitement les courants théoriques entre eux plutôt que les juxtaposer.
- Cohérence entre le projet de thèse présenté et les cadres théoriques choisis pour le soutenir.
- Justification claire et argumentée du choix méthodologique retenu.
- Capacité à assumer et formuler clairement les limites du projet sans se déstabiliser.
- Qualité des réponses aux questions imprévues, en particulier la capacité à reformuler la structure d''une réponse avant de la développer.
- Maîtrise du temps de parole, ni trop bref ni trop long, pour chaque question posée.

Un score global inférieur à 20 sur 32 signale un besoin de reprendre en priorité les leçons théoriques correspondantes. Un score entre 20 et 26 signale une préparation satisfaisante mais encore à consolider, notamment sur l''articulation entre courants théoriques. Un score supérieur à 26 signale une préparation proche du niveau attendu pour l''examen réel. Je vous souhaite une excellente réussite pour votre examen de qualification doctorale.', 'video', 90, false, 100
from public.courses c where c.slug = 'doc-rh'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : simulation complète d''une soutenance de qualification doctorale');
