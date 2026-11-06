-- Fichier généré par tools/generate-seed.mjs — ne pas modifier à la main.
-- Cours (partie 18/19). À exécuter après seed.sql.

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

-- Cours : Doctorat Finance : préparer l'examen de qualification doctorale
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'doc-fin', (select id from public.levels where name = 'Doctorat'), null, 'Finance', 'Doctorat Finance : préparer l''examen de qualification doctorale', 'Préparation à l''examen de qualification doctorale en Finance : hypothèse d''efficience des marchés face à la finance comportementale, théorème de Modigliani-Miller et ses extensions sur la structure de financement, méthodes de recherche du champ (études d''événements, économétrie financière, enquêtes de dirigeants) et application critique aux marchés financiers en développement d''Afrique de l''Ouest. Public : doctorants en finance préparant leur soutenance de qualification. Prérequis : Master en finance ou en gestion financière.', true, 806
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Réussir son examen de qualification doctorale en Finance', 'La thèse de doctorat en finance se prépare par étapes, et l''une des premières, souvent la plus redoutée, est l''examen de qualification doctorale (comprehensive exam). Cette leçon pose le cadre de cette épreuve et donne une méthode de travail pour s''y préparer sur plusieurs semaines, avant d''entrer dans le détail des courants théoriques et des méthodes propres au champ de la finance.

## Nature de l''épreuve

L''examen de qualification n''est pas un examen de cours comme en Master : il vérifie que le doctorant maîtrise l''état de l''art de la discipline financière, qu''il est capable de situer n''importe quelle question dans les grands débats théoriques (efficience des marchés, structure de financement, gouvernance, risque), et qu''il peut déjà esquisser une problématique de thèse cohérente avec cette littérature. Trois formats se combinent, selon les établissements : une épreuve écrite de synthèse (répondre à une ou plusieurs questions larges du champ, en mobilisant plusieurs courants et auteurs), une soutenance orale devant un jury de 3 à 5 enseignants-chercheurs, et la défense d''un pré-projet de thèse (problématique, revue de littérature initiale, méthode envisagée). Le jury n''attend pas une récitation de cours : il juge la capacité à comparer des cadres théoriques concurrents (par exemple l''hypothèse d''efficience des marchés face à la finance comportementale), à discuter leurs limites empiriques, et à argumenter pourquoi telle méthode de recherche convient à telle question.

## Attentes d''un jury doctoral en finance

Un jury de qualification en finance évalue généralement cinq points : la maîtrise des grands courants théoriques et de leur généalogie (qui a proposé quoi, et pourquoi, sans réciter des citations exactes non vérifiées) ; la capacité à articuler théorie et méthode (quelle méthode d''investigation permet de tester telle hypothèse théorique) ; l''esprit critique (savoir citer les limites d''un courant, les anomalies empiriques qui le contestent, les extensions qui l''ont enrichi) ; la capacité à transposer une théorie construite sur des marchés financiers profonds (Bourses de New York, Paris, Londres) à un contexte de marché financier peu profond, comme celui de l''Afrique de l''Ouest (BRVM) ; et enfin la clarté de l''expression, à l''écrit comme à l''oral, qui est elle-même jugée comme une compétence de chercheur.

## Méthode de travail recommandée

Trois outils structurent une préparation efficace. D''abord, la fiche de lecture : pour chaque article ou ouvrage fondateur, noter en une page la question posée, l''hypothèse testée, la méthode employée, le résultat principal et sa limite ; cette fiche doit pouvoir se relire en moins de deux minutes la veille de l''oral. Ensuite, la cartographie des courants : un schéma (sur une feuille ou un tableau) qui place chaque courant théorique en vis-à-vis de ceux qui le prolongent ou le contestent, avec les dates approximatives et les grandes idées, pas les équations complètes. Enfin, la note de synthèse : un document de quelques pages qui résume, pour chaque grand débat du programme (ici : efficience des marchés contre finance comportementale ; structure de financement et théorème de Modigliani-Miller), les positions en présence, les preuves empiriques de part et d''autre, et une appréciation personnelle argumentée — c''est cette capacité à prendre position avec nuance qui distingue un candidat brillant d''un candidat qui récite.

## Plan de travail sur 8 semaines

Une préparation réaliste s''étale sur huit semaines, avec un rythme hebdomadaire tenable pour un doctorant qui avance aussi sur sa thèse.

- Semaines 1-2 : relecture des bases de la théorie financière (valeur, risque, rendement, marchés) et premières fiches de lecture sur l''hypothèse d''efficience des marchés.
- Semaines 3-4 : approfondissement de la finance comportementale et des anomalies de marché ; début de la cartographie comparant les deux courants.
- Semaines 5-6 : théorème de Modigliani-Miller et ses extensions (fiscalité, coûts de faillite, asymétrie d''information) ; lecture sur les marchés financiers en développement (cas de la BRVM en Afrique de l''Ouest).
- Semaine 7 : méthodes de recherche en finance (études d''événements, modélisation économétrique de séries financières, enquêtes auprès de dirigeants financiers) ; rédaction des notes de synthèse.
- Semaine 8 : simulation d''oral avec un collègue ou un encadrant, révision des fiches, relecture du pré-projet de thèse.

## Points clés à retenir

- L''examen de qualification teste la maîtrise du champ, pas la restitution d''un cours : il faut comparer, critiquer, articuler théorie et méthode.
- Trois outils de travail : fiche de lecture, cartographie des courants, note de synthèse.
- La préparation se répartit sur 8 semaines, avec une place centrale pour la confrontation efficience/finance comportementale et pour le débat sur la structure de financement.
- Toujours savoir transposer un cadre théorique construit sur des marchés développés à un contexte de marché financier en développement, comme celui de l''Afrique de l''Ouest.

## Exercices pratiques

1. Rédigez en une page la fiche de lecture type que vous utiliseriez pour un article fondateur de l''hypothèse d''efficience des marchés (sans citer le contenu exact de l''article, en décrivant la structure attendue de votre fiche).
2. Construisez le squelette d''une cartographie des courants opposant l''hypothèse d''efficience des marchés et la finance comportementale : quelles entrées (auteurs, dates, idées, critiques) feriez-vous figurer ?
3. Proposez un plan de travail hebdomadaire alternatif sur 8 semaines si vous disposiez de deux fois moins de temps (4 semaines) : que garderiez-vous, que sacrifieriez-vous ?
4. Un jury vous demande : « Pourquoi la finance comportementale ne remplace-t-elle pas simplement l''hypothèse d''efficience des marchés ? » Esquissez en 10 lignes les grandes lignes d''une réponse nuancée.
5. Expliquez en quoi la défense d''un pré-projet de thèse diffère d''une restitution de cours de Master en finance d''entreprise.

## Corrigé

1. Une fiche de lecture de qualification doit comporter : la question de recherche posée par l''article, l''hypothèse testée, le contexte de marché étudié (pays, période, type d''actifs), la méthode empirique utilisée, le résultat principal reformulé avec ses propres mots, et une limite ou une critique identifiée dans la littérature postérieure. Elle ne doit jamais comporter de citation textuelle exacte non vérifiée, mais une reformulation fidèle de l''apport.

2. Une cartographie utile distingue au moins quatre colonnes : la période approximative d''émergence de l''idée, les grandes hypothèses du courant (marchés efficients : prix reflètent toute l''information disponible ; finance comportementale : biais cognitifs des investisseurs, anomalies de marché), les preuves empiriques mobilisées de part et d''autre, et les prolongements ou critiques qui relient les deux courants (par exemple les modèles qui intègrent des agents partiellement rationnels).

3. Avec 4 semaines, il faut fusionner les étapes : semaine 1 pour les deux courants théoriques en parallèle (efficience et finance comportementale), semaine 2 pour Modigliani-Miller et ses extensions avec le contexte des marchés en développement, semaine 3 pour les méthodes de recherche condensées, semaine 4 pour la simulation d''oral et la révision. On sacrifie la profondeur de lecture (moins d''articles par courant) mais on conserve la structure comparative, qui est ce que le jury évalue réellement.

4. Une réponse nuancée rappellerait que l''hypothèse d''efficience des marchés reste un point de référence utile (elle explique pourquoi il est difficile de « battre le marché » de façon régulière), que la finance comportementale documente des anomalies récurrentes (sous-réaction ou surréaction à l''information, biais de confiance excessive) sans pour autant proposer un cadre prédictif unifié aussi simple, et que la recherche actuelle tend à combiner les deux approches plutôt qu''à les opposer frontalement : les marchés seraient efficients « en moyenne » avec des écarts transitoires exploitables sous certaines conditions.

5. En Master, l''étudiant résout un cas d''entreprise avec les outils déjà établis du champ (il applique une méthode connue à une situation donnée). En doctorat, le pré-projet de thèse doit identifier un vide ou une tension dans la littérature existante (par exemple : la théorie de Modigliani-Miller a-t-elle été testée sur un marché financier peu profond comme celui de l''Afrique de l''Ouest ?), formuler une question de recherche originale, et proposer une méthode pour y répondre — l''enjeu n''est plus d''appliquer un savoir mais d''en produire.', 'texte', 45, true, 10
from public.courses c where c.slug = 'doc-fin'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Réussir son examen de qualification doctorale en Finance');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Courant théorique 1 : l''hypothèse d''efficience des marchés face à la finance comportementale', 'Le premier grand débat du programme oppose deux visions de la formation des prix sur les marchés financiers : l''hypothèse d''efficience des marchés, qui postule une intégration rapide et complète de l''information dans les cours, et la finance comportementale, qui documente des biais systématiques des investisseurs et des anomalies persistantes. Comprendre ce débat, ses auteurs fondateurs et ses limites est un passage obligé de tout examen de qualification en finance.

## L''hypothèse d''efficience des marchés

L''hypothèse d''efficience des marchés (Efficient Market Hypothesis, EMH) soutient que les prix des actifs financiers reflètent, à chaque instant, toute l''information disponible sur leur valeur fondamentale. Le cadre le plus connu a été formalisé par Eugene Fama, qui distingue trois formes d''efficience : la forme faible (les prix intègrent toute l''information contenue dans les cours passés, ce qui rend l''analyse technique vaine pour générer un profit régulier) ; la forme semi-forte (les prix intègrent aussi toute l''information publique disponible, ce qui rend l''analyse fondamentale classique peu utile pour « battre le marché ») ; et la forme forte (les prix intègrent même l''information privée, y compris celle des initiés, ce qui est la version la plus contestée empiriquement). L''implication centrale de l''EMH est qu''il devient très difficile, sur la durée, d''obtenir un rendement ajusté au risque systématiquement supérieur à celui du marché, sauf à détenir une information non encore intégrée aux prix.

## Les fondements théoriques de l''efficience

L''EMH repose sur l''idée que les investisseurs sont globalement rationnels et que, même si certains se trompent, leurs erreurs s''annulent en moyenne et sont corrigées par l''arbitrage : si un titre est mal évalué, des investisseurs informés profitent de l''écart jusqu''à ce que le prix revienne à sa valeur fondamentale. Cette hypothèse s''articule avec la marche aléatoire des cours (random walk), observée empiriquement sur de nombreux marchés développés : les variations de prix d''un jour sur l''autre ne sont pas prévisibles à partir des variations passées. L''EMH a longtemps structuré la gestion de portefeuille (avec le développement de la gestion indicielle, qui part du principe qu''il est difficile de surperformer le marché de façon régulière) et la réglementation financière (qui mise sur la diffusion rapide de l''information pour protéger les investisseurs).

## La finance comportementale : biais cognitifs des investisseurs

À partir des années 1980-1990, un courant dit de finance comportementale, nourri par les travaux de psychologie cognitive de Daniel Kahneman et Amos Tversky puis développé en finance notamment par Richard Thaler et Robert Shiller, a mis en cause le postulat de rationalité pleine des investisseurs. Ce courant documente des biais cognitifs récurrents : l''excès de confiance (les investisseurs surestiment la précision de leurs propres informations), l''aversion à la perte (une perte est ressentie plus douloureusement qu''un gain équivalent n''est ressenti comme agréable, ce qui pousse à conserver trop longtemps des titres perdants), le biais d''ancrage (les décisions restent influencées par une information initiale, même non pertinente), et le comportement moutonnier (suivre la tendance du groupe plutôt que sa propre analyse). Ces biais ne sont pas de simples erreurs individuelles qui s''annuleraient en moyenne : la finance comportementale montre qu''ils peuvent se renforcer collectivement et affecter durablement les prix de marché.

## Les anomalies de marché documentées

Plusieurs anomalies empiriques sont régulièrement citées comme difficiles à expliquer par la seule hypothèse d''efficience : l''effet taille (les petites capitalisations auraient historiquement généré un rendement ajusté au risque supérieur aux grandes capitalisations, sur certaines périodes et certains marchés) ; l''effet momentum (les titres ayant bien performé récemment continueraient à bien performer sur un horizon de quelques mois, ce qui contredit une marche parfaitement aléatoire) ; les bulles spéculatives et leur éclatement (des hausses de prix prolongées et déconnectées des fondamentaux, suivies de corrections brutales) ; et la volatilité excessive des cours par rapport à celle des fondamentaux économiques sous-jacents, mise en évidence par Robert Shiller. Ces anomalies ne signifient pas que les marchés sont totalement inefficients, mais qu''ils comportent des écarts persistants que l''EMH stricte a du mal à expliquer.

## Un débat en évolution plutôt qu''un affrontement tranché

La recherche contemporaine tend à dépasser l''opposition frontale entre les deux courants. Les modèles dits d''« efficience adaptative » (prolongeant notamment les travaux d''Andrew Lo) proposent que les marchés évoluent entre des phases plus ou moins efficientes selon les conditions, à l''image d''un écosystème où biais comportementaux et arbitrage rationnel coexistent et se limitent mutuellement. La finance comportementale ne nie d''ailleurs pas l''utilité du concept d''efficience comme point de référence : elle cherche plutôt à expliquer pourquoi et quand des écarts aux prix fondamentaux apparaissent et durent, notamment lorsque l''arbitrage est coûteux ou risqué (limites à l''arbitrage). La bonne posture doctorale consiste donc à présenter les deux courants non comme des blocs opposés, mais comme deux grilles de lecture complémentaires, pertinentes selon le contexte de marché, le type d''actif et l''horizon considéré.

## Application à un marché financier en développement

La question de l''efficience se pose avec une acuité particulière sur les marchés financiers peu profonds, comme la Bourse Régionale des Valeurs Mobilières (BRVM) qui couvre l''Afrique de l''Ouest. Un nombre réduit de titres cotés, des volumes d''échange faibles, une information financière parfois moins standardisée et une base d''investisseurs institutionnels plus restreinte créent des conditions moins favorables à une efficience de forme semi-forte : l''information y circule plus lentement et l''arbitrage y est souvent plus coûteux, ce qui laisse davantage de place à des écarts de prix durables. Cela ne signifie pas que la BRVM est « inefficiente » par nature, mais que les deux grilles de lecture doivent y être mobilisées avec prudence, sans extrapoler des résultats obtenus sur des places boursières très liquides comme New York ou Londres.

## Points clés à retenir

- L''hypothèse d''efficience des marchés distingue trois formes (faible, semi-forte, forte) et repose sur la rationalité moyenne des investisseurs et l''arbitrage.
- La finance comportementale documente des biais cognitifs individuels (excès de confiance, aversion à la perte, ancrage, mimétisme) et des anomalies de marché (effet taille, momentum, bulles, volatilité excessive).
- La recherche récente tend à articuler les deux courants plutôt qu''à les opposer (efficience adaptative, limites à l''arbitrage).
- Sur un marché peu profond comme la BRVM, les conclusions obtenues sur des marchés développés doivent être transposées avec prudence.

## Exercices pratiques

1. Distinguez les trois formes d''efficience des marchés et donnez, pour chacune, un exemple de stratégie d''investissement qu''elle rendrait, en théorie, sans intérêt.
2. Expliquez en quoi l''aversion à la perte et le comportement moutonnier peuvent se combiner pour amplifier une baisse de marché.
3. Un doctorant affirme : « L''effet momentum prouve que les marchés sont inefficients. » Discutez cette affirmation de façon nuancée.
4. En quoi la notion de « limites à l''arbitrage » permet-elle de concilier l''existence d''anomalies de marché avec l''idée d''efficience ?
5. Pourquoi la profondeur et la liquidité d''un marché financier doivent-elles être prises en compte avant de transposer une conclusion sur l''efficience obtenue sur une grande Bourse internationale à un marché comme la BRVM ?
6. Proposez un plan de réponse (titres de parties uniquement) pour une question d''examen : « Efficience des marchés et finance comportementale : deux théories inconciliables ? »

## Corrigé

1. Forme faible : une stratégie fondée uniquement sur l''historique des cours (analyse technique) ne devrait pas permettre de surperformer durablement. Forme semi-forte : une stratégie fondée sur l''analyse des informations publiques (résultats publiés, annonces) ne devrait pas non plus permettre de surperformer durablement, puisque l''information est déjà intégrée aux prix. Forme forte : même une stratégie fondée sur une information privée (délit d''initié) ne devrait, en théorie, pas permettre de surperformer, ce qui est la forme la plus contestée empiriquement.

2. Lorsque les prix commencent à baisser, l''aversion à la perte peut pousser certains investisseurs à vendre précipitamment pour éviter une perte ressentie comme très douloureuse ; d''autres investisseurs, observant ce mouvement de vente, peuvent l''imiter par comportement moutonnier sans analyse individuelle approfondie, ce qui amplifie la baisse au-delà de ce que justifieraient les seuls fondamentaux économiques, créant une spirale baissière auto-entretenue.

3. L''affirmation est trop catégorique. L''effet momentum est une anomalie statistique documentée sur certaines périodes et certains marchés, mais il ne prouve pas que les marchés sont inefficients au sens strict : il peut s''expliquer par une sous-réaction initiale à l''information (les prix s''ajustent progressivement plutôt qu''instantanément) ou par des facteurs de risque non encore identifiés dans les modèles d''évaluation utilisés pour mesurer la performance ajustée au risque. Une réponse nuancée distingue ces explications concurrentes plutôt que de conclure directement à l''inefficience.

4. Les limites à l''arbitrage expliquent pourquoi un écart de prix par rapport à la valeur fondamentale peut persister même si des investisseurs rationnels l''identifient : l''arbitrage peut être coûteux (frais de transaction, difficulté à vendre à découvert), risqué (l''écart peut s''accentuer avant de se corriger, ce qui met en péril la position de l''arbitragiste) ou limité par des contraintes de capital. Cela permet de concilier l''existence d''anomalies avec l''idée que les marchés tendent, à terme, vers l''efficience.

5. Un marché peu liquide et peu profond concentre l''information sur un nombre réduit d''acteurs, ralentit la diffusion et le traitement de l''information, et rend l''arbitrage plus coûteux ou plus risqué faute de contreparties suffisantes. Les résultats empiriques obtenus sur des marchés très liquides (comme New York) supposent des conditions (nombreux arbitragistes, information standardisée, coûts de transaction faibles) qui ne sont pas automatiquement réunies sur un marché comme la BRVM, d''où la nécessité de tester spécifiquement l''efficience sur ce contexte plutôt que de l''assumer par analogie.

6. Plan possible : I. L''hypothèse d''efficience des marchés : fondements et formes. II. La finance comportementale : biais cognitifs et anomalies documentées. III. Des théories concurrentes en apparence : les points de friction empirique. IV. Vers une articulation plutôt qu''une opposition : efficience adaptative et limites à l''arbitrage. V. Application prudente au cas des marchés financiers en développement (exemple de la BRVM).', 'texte', 45, false, 20
from public.courses c where c.slug = 'doc-fin'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Courant théorique 1 : l''hypothèse d''efficience des marchés face à la finance comportementale');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Courant théorique 2 : la structure de financement, de Modigliani-Miller à ses extensions', 'Le deuxième grand débat du programme porte sur la structure de financement de l''entreprise : la combinaison entre dette et capitaux propres a-t-elle, ou non, un effet sur la valeur de l''entreprise ? C''est l''une des questions fondatrices de la finance d''entreprise moderne, ouverte par le théorème de Modigliani-Miller, puis prolongée par de nombreuses extensions qui réintroduisent les frictions du monde réel.

## Le théorème de Modigliani-Miller en marchés parfaits

En 1958, Franco Modigliani et Merton Miller démontrent un résultat qui a durablement structuré la finance d''entreprise : sous des hypothèses de marchés parfaits (absence d''impôt, absence de coûts de transaction et de faillite, information parfaitement partagée entre tous les acteurs, possibilité pour les investisseurs d''emprunter et de prêter au même taux que l''entreprise), la valeur totale d''une entreprise ne dépend pas de la façon dont elle est financée, c''est-à-dire de la répartition entre dette et capitaux propres. C''est la proposition I de Modigliani-Miller (MM1) : deux entreprises ayant les mêmes actifs et les mêmes flux de trésorerie futurs ont la même valeur totale, quelle que soit leur structure de financement, car un investisseur peut toujours reproduire par lui-même, en empruntant ou en prêtant à titre personnel, l''effet d''un levier financier que l''entreprise n''aurait pas choisi (c''est l''argument dit de l''arbitrage, ou « home-made leverage »). La proposition II (MM2) complète ce résultat : le coût des capitaux propres augmente avec le niveau d''endettement, car les actionnaires supportent un risque financier croissant, mais cette hausse compense exactement l''avantage apparent d''une dette moins chère, si bien que le coût moyen pondéré du capital reste constant.

## Pourquoi ce résultat est un point de départ, pas une conclusion

Le théorème de Modigliani-Miller n''a jamais eu pour objectif de décrire la réalité des entreprises : il visait à identifier, par la négative, les frictions réelles qui font que la structure de financement compte en pratique. C''est précisément parce que les hypothèses de MM1 sont irréalistes qu''elles sont utiles : chaque hypothèse relâchée a donné naissance à une extension théorique qui explique une partie des choix de financement observés dans la réalité des entreprises.

## Extension 1 : la fiscalité et l''avantage de la dette

Lorsque l''on réintroduit l''impôt sur les sociétés, la dette devient fiscalement avantageuse : les intérêts versés aux créanciers sont généralement déductibles du résultat imposable, ce qui crée une économie d''impôt (parfois appelée « bouclier fiscal ») qui accroît la valeur de l''entreprise endettée par rapport à une entreprise non endettée, toutes choses égales par ailleurs. Cette extension prédit que les entreprises devraient, en théorie, chercher à s''endetter fortement pour maximiser cet avantage fiscal — ce qui ne correspond pourtant pas aux niveaux d''endettement modérés observés dans la réalité, d''où la nécessité d''autres extensions pour comprendre ce qui limite le recours à la dette.

## Extension 2 : les coûts de faillite et de détresse financière

Un endettement croissant augmente la probabilité qu''une entreprise ne puisse plus honorer ses engagements, et donc la probabilité d''une faillite ou d''une restructuration coûteuse. Ces coûts de faillite ne sont pas seulement les frais juridiques et administratifs directs d''une procédure : ils incluent aussi des coûts indirects, souvent plus importants, comme la perte de confiance des clients et fournisseurs, le départ de salariés clés, ou les décisions d''investissement sous-optimales prises par une entreprise financièrement fragile (parfois appelées coûts de détresse financière). La théorie du compromis (trade-off theory) combine cette extension avec l''avantage fiscal de la dette : l''entreprise choisirait un niveau d''endettement qui maximise l''avantage fiscal net des coûts attendus de détresse financière, ce qui explique l''existence d''un niveau d''endettement optimal, ni nul ni maximal.

## Extension 3 : l''asymétrie d''information

Une troisième extension, portée notamment par les travaux de Stewart Myers sur la théorie du financement hiérarchique (pecking order theory), part du constat que les dirigeants disposent généralement de plus d''informations sur la valeur réelle de l''entreprise que les investisseurs externes. Cette asymétrie d''information a une consequence directe sur le choix des sources de financement : émettre de nouvelles actions peut être interprété par le marché comme un signal négatif (si les dirigeants pensent que l''action est surévaluée, ils ont intérêt à émettre maintenant, ce que le marché anticipe et sanctionne par une baisse du cours à l''annonce). Les entreprises préfèrent donc, selon cette théorie, financer leurs projets dans un ordre hiérarchique : d''abord l''autofinancement (bénéfices non distribués), puis la dette, et seulement en dernier recours l''émission de nouvelles actions. Cette théorie n''explique pas un niveau d''endettement optimal précis, mais plutôt une séquence de préférences qui s''écarte de la recherche d''un optimum fixe.

## Synthèse des extensions et débat actuel

Les trois grandes extensions (fiscalité, coûts de faillite, asymétrie d''information) ne s''excluent pas : elles éclairent des aspects complémentaires du choix de financement, et la recherche contemporaine cherche à les combiner avec d''autres dimensions, comme les problèmes d''agence entre dirigeants et actionnaires (l''endettement peut aussi discipliner les dirigeants en réduisant les ressources qu''ils contrôlent librement) ou les conditions macroéconomiques et le cycle de marché (une entreprise émet plus facilement des actions lorsque les valorisations de marché sont élevées). Un bon candidat à l''examen de qualification doit pouvoir mobiliser ces extensions ensemble, en situant chacune par rapport au résultat de référence de Modigliani-Miller.

## Application à un marché financier en développement (Afrique de l''Ouest)

Les hypothèses de marchés parfaits de Modigliani-Miller sont déjà fortement contestées sur les marchés financiers développés ; elles le sont davantage encore sur un marché financier peu profond comme la zone UEMOA et la BRVM. Trois spécificités doivent être prises en compte lorsqu''on y applique ces cadres théoriques. D''abord, l''accès au financement obligataire ou boursier y est limité à un nombre restreint de grandes entreprises, ce qui pousse la majorité des entreprises, notamment les petites et moyennes entreprises, à dépendre fortement du crédit bancaire, rendant la théorie du financement hiérarchique particulièrement pertinente dans ce contexte. Ensuite, l''asymétrie d''information y est potentiellement plus marquée, du fait d''états financiers parfois moins standardisés ou moins audités selon les entreprises, ce qui renforce les prédictions de la pecking order theory sur la préférence pour l''autofinancement et la dette bancaire. Enfin, les coûts de faillite et de détresse financière peuvent y être amplifiés par un cadre judiciaire de traitement des difficultés d''entreprise encore en consolidation selon les pays, ce qui peut rendre les créanciers plus prudents et renchérir le coût de la dette au-delà de ce que prédirait un modèle calibré sur un marché développé. Un travail doctoral sérieux doit donc tester empiriquement ces extensions sur des données locales plutôt que de transposer sans vérification des résultats obtenus ailleurs.

## Points clés à retenir

- MM1 : en marchés parfaits, la valeur de l''entreprise est indépendante de sa structure de financement ; MM2 : le coût des capitaux propres croît avec l''endettement pour compenser le risque financier accru.
- Trois extensions majeures réintroduisent les frictions réelles : l''avantage fiscal de la dette, les coûts de faillite et de détresse financière (théorie du compromis), et l''asymétrie d''information (théorie du financement hiérarchique).
- Ces extensions se combinent plutôt qu''elles ne s''excluent, et se complètent avec les théories d''agence et les effets de cycle de marché.
- Sur un marché financier en développement comme la zone UEMOA, l''accès restreint aux marchés de capitaux, une asymétrie d''information potentiellement plus marquée et un cadre de traitement des défaillances en consolidation justifient une vérification empirique locale plutôt qu''une transposition directe.

## Exercices pratiques

1. Énoncez la proposition I de Modigliani-Miller et expliquez le rôle de l''argument d''arbitrage (« home-made leverage ») dans sa démonstration.
2. Pourquoi l''avantage fiscal de la dette, pris isolément, prédirait-il un endettement maximal, et quelle extension vient corriger cette prédiction ?
3. Expliquez le mécanisme par lequel une émission d''actions peut être perçue négativement par le marché selon la théorie du financement hiérarchique.
4. Un dirigeant sénégalais affirme : « Puisque la dette est fiscalement avantageuse, mon entreprise doit s''endetter au maximum. » Discutez cette affirmation à la lumière des extensions de Modigliani-Miller.
5. En quoi la faible profondeur du marché obligataire et boursier en zone UEMOA renforce-t-elle la pertinence de la théorie du financement hiérarchique pour les PME de la région ?
6. Proposez un plan de réponse (titres de parties uniquement) pour la question : « La structure de financement est-elle neutre sur la valeur de l''entreprise ? »

## Corrigé

1. MM1 énonce que la valeur totale d''une entreprise est indépendante de sa structure de financement en marchés parfaits. L''argument d''arbitrage montre qu''un investisseur peut reproduire à titre personnel, en empruntant ou en prêtant lui-même, l''effet de levier qu''une entreprise choisirait ; si deux entreprises identiques par ailleurs avaient des valeurs différentes du seul fait de leur endettement, un investisseur pourrait acheter l''entreprise sous-évaluée et vendre à découvert la surévaluée pour un profit sans risque, ce qui ramènerait les prix à l''égalité.

2. Un endettement croissant maximiserait l''économie d''impôt si cette seule force agissait ; mais la théorie des coûts de faillite et de détresse financière montre qu''au-delà d''un certain seuil, la probabilité et le coût attendu des difficultés financières croissent plus vite que l''avantage fiscal marginal, ce qui crée un niveau d''endettement optimal intermédiaire plutôt qu''un maximum.

3. Si les dirigeants, mieux informés que le marché, savent que l''action est surévaluée, ils ont intérêt à émettre de nouvelles actions pour profiter de ce prix avantageux ; les investisseurs, anticipant ce comportement rationnel des dirigeants, interprètent toute annonce d''émission comme un signal probable de surévaluation et révisent le cours à la baisse, ce qui rend l''émission d''actions coûteuse en termes de signal et explique la préférence pour d''autres sources de financement.

4. L''affirmation néglige les extensions du théorème : au-delà d''un certain seuil d''endettement, les coûts de détresse financière (risque de rupture de covenants bancaires, perte de confiance des partenaires commerciaux, renchérissement du coût de la dette) peuvent dépasser l''économie d''impôt additionnelle. La théorie du compromis invite plutôt à rechercher un niveau d''endettement optimal qui équilibre ces deux forces, et non un maximum.

5. Lorsque l''accès au marché boursier ou obligataire est limité à un petit nombre de grandes entreprises, les PME de la zone UEMOA n''ont, de fait, qu''un accès restreint aux fonds propres externes ; elles dépendent donc largement de l''autofinancement puis du crédit bancaire, ce qui correspond exactement à la séquence de préférences prédite par la théorie du financement hiérarchique, renforcée par une asymétrie d''information potentiellement plus marquée vis-à-vis des créanciers.

6. Plan possible : I. Le théorème de Modigliani-Miller en marchés parfaits (MM1 et MM2). II. Pourquoi ce résultat est un point de départ théorique plutôt qu''une description du réel. III. L''extension fiscale : l''avantage de la dette. IV. L''extension par les coûts de faillite : la théorie du compromis. V. L''extension par l''asymétrie d''information : la théorie du financement hiérarchique. VI. Application et limites sur un marché financier en développement (zone UEMOA).', 'texte', 45, false, 30
from public.courses c where c.slug = 'doc-fin'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Courant théorique 2 : la structure de financement, de Modigliani-Miller à ses extensions');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Les méthodes de recherche en finance : études d''événements, économétrie financière et enquêtes de terrain', 'La recherche en finance mobilise un ensemble de méthodes bien identifiées, que tout doctorant doit savoir choisir et justifier selon la question posée. Cette leçon présente trois familles de méthodes particulièrement centrales dans le champ — les études d''événements, la modélisation économétrique de séries financières, et les enquêtes auprès de dirigeants financiers — et propose un exemple de protocole de recherche appliqué à un contexte sénégalais fictif.

## L''étude d''événement (event study)

L''étude d''événement mesure l''effet d''un événement précis (annonce de résultats, fusion-acquisition, changement de dirigeant, décision de politique monétaire) sur le cours d''un titre financier. La méthode consiste à estimer, pour une fenêtre de temps entourant l''événement, la rentabilité « anormale » (abnormal return, AR), c''est-à-dire l''écart entre la rentabilité réellement observée du titre et celle qui aurait été attendue en l''absence de l''événement. Cette rentabilité attendue est généralement estimée par un modèle de marché simple : R attendu = alpha + bêta × R marché, où alpha et bêta sont estimés sur une période antérieure à l''événement, hors de la fenêtre d''étude. La rentabilité anormale cumulée sur plusieurs jours (cumulative abnormal return, CAR) permet ensuite de juger si le marché a réagi significativement à l''annonce, et dans quel sens. Cette méthode est centrale pour tester empiriquement l''hypothèse d''efficience des marchés : si les prix réagissent très vite et sans dérive persistante après l''annonce, cela soutient la forme semi-forte de l''efficience ; si une dérive post-annonce est observée (le titre continue à monter ou baisser dans les jours suivants), cela constitue une anomalie à expliquer, par exemple par la finance comportementale.

## Illustration numérique de l''étude d''événement

Prenons un exemple pédagogique simplifié : un titre annonce un résultat le jour « 0 ». Sur la fenêtre -2 à +2 jours, on observe des rentabilités quotidiennes du titre et de l''indice de marché, et on calcule l''AR et le CAR selon la formule ci-dessus (calcul vérifié en Python : paramètres alpha = 0,02 % et bêta = 1,1 estimés sur une période antérieure hors fenêtre). Le résultat obtenu donne un CAR cumulé d''environ +1,45 % sur les cinq jours, avec la plus grande partie de cette rentabilité anormale concentrée le jour même de l''annonce (+1,37 %) : cela suggère une réaction rapide du marché, cohérente avec une forme au moins semi-forte d''efficience, mais la légère dérive observée les jours suivants (+0,28 % puis -0,24 %) illustre le type d''écart résiduel que la recherche empirique chercherait à expliquer sur un échantillon de plusieurs dizaines ou centaines d''événements, et non sur un cas unique.

## La modélisation économétrique de séries financières

Les séries de rendements financiers (quotidiens, hebdomadaires) ont des propriétés statistiques particulières qu''un chercheur doit connaître avant toute modélisation : elles présentent souvent une distribution à queues plus épaisses qu''une loi normale (des variations extrêmes plus fréquentes qu''attendu), une volatilité qui varie dans le temps et qui tend à se regrouper en périodes calmes et en périodes agitées (hétéroscédasticité conditionnelle), et une autocorrélation généralement faible des rendements eux-mêmes mais souvent significative de leur volatilité. Les modèles de la famille ARCH/GARCH (autoregressive conditional heteroskedasticity), introduits par Robert Engle puis étendus par Tim Bollerslev, sont conçus précisément pour modéliser cette volatilité variable dans le temps, ce qui est essentiel pour l''évaluation du risque, la gestion de portefeuille ou le calcul d''une prime de risque. En complément, les modèles d''évaluation d''actifs (comme le modèle à trois facteurs ou des extensions multifactorielles) servent à expliquer la rentabilité moyenne des titres par des facteurs de risque communs (taille, valorisation, momentum), en s''appuyant sur des régressions en séries temporelles et en coupe transversale (panel). Dans l''exemple pédagogique vérifié en Python de cette leçon, une série simulée de 250 rendements quotidiens avec une volatilité quotidienne d''environ 1,9 % donne, une fois annualisée (en multipliant par la racine carrée de 252 jours de bourse), une volatilité annuelle d''environ 30 %, un ordre de grandeur courant pour une action individuelle, qui illustre pourquoi l''horizon de mesure de la volatilité doit toujours être précisé dans un travail de recherche.

## L''enquête auprès de dirigeants financiers

Une troisième famille de méthodes, de nature plus qualitative ou mixte, consiste à interroger directement les dirigeants financiers (directeurs financiers, trésoriers) sur leurs pratiques et leurs perceptions, par questionnaire structuré ou par entretien semi-directif. Cette méthode a notamment été popularisée en finance d''entreprise par les enquêtes sur les pratiques de structure de financement et de budgétisation des investissements, qui ont permis de confronter les théories (comme celles vues en leçon 3) aux motivations réellement déclarées par les praticiens — révélant par exemple que des considérations de flexibilité financière ou de maintien d''une notation de crédit pèsent souvent autant que l''optimisation fiscale théorique dans les décisions d''endettement observées. L''enquête permet d''explorer le « pourquoi » derrière des choix observés dans les données financières, mais elle comporte des limites méthodologiques propres : biais de déclaration (les dirigeants peuvent présenter leurs pratiques de façon favorable), taux de réponse souvent faible, et difficulté à généraliser à partir d''un échantillon de dirigeants volontaires. Elle est donc le plus souvent utilisée en complément d''une analyse quantitative des données financières observées, plutôt qu''en substitut.

## Exemple de protocole de recherche (contexte sénégalais fictif)

Prenons un exemple de protocole, fictif et à visée pédagogique, pour un doctorant qui souhaiterait tester la théorie du financement hiérarchique auprès de PME sénégalaises du secteur agroalimentaire. Le protocole combinerait deux volets. D''abord un volet quantitatif : collecte des états financiers de l''entreprise sur plusieurs exercices auprès d''un échantillon de PME (avec l''accord des entreprises et le respect de la confidentialité des données), construction d''indicateurs de structure de financement (part de la dette bancaire, de l''autofinancement, des apports en capital) et test statistique de leur évolution en fonction des besoins de financement et de la profitabilité, conformément aux prédictions de la théorie du financement hiérarchique. Ensuite un volet qualitatif : entretiens semi-directifs avec les dirigeants ou directeurs financiers de quelques entreprises de l''échantillon, pour comprendre les raisons déclarées de leurs choix de financement (accès au crédit bancaire, relation avec les banques locales, réticence à ouvrir le capital) et vérifier si elles correspondent aux prédictions théoriques ou révèlent des spécificités locales non prévues par la théorie d''origine, construite sur des données d''entreprises de marchés développés. Ce protocole mixte illustre comment articuler une méthode quantitative (données financières) et une méthode qualitative (enquête auprès de dirigeants) pour tester une théorie financière dans un contexte de marché en développement.

## Points clés à retenir

- L''étude d''événement mesure la rentabilité anormale (AR) et cumulée (CAR) autour d''un événement, et sert notamment à tester empiriquement l''hypothèse d''efficience des marchés.
- La modélisation économétrique des séries financières (notamment les modèles de la famille ARCH/GARCH) traite les propriétés particulières des rendements : queues épaisses, volatilité variable dans le temps.
- L''enquête auprès de dirigeants financiers complète l''analyse quantitative en explorant les motivations déclarées des décisions financières, avec ses propres limites méthodologiques.
- Un protocole mixte (données financières + entretiens) est souvent le plus adapté pour tester une théorie financière dans un contexte de marché en développement, où les spécificités locales doivent être documentées et non supposées.

## Exercices pratiques

1. Expliquez les étapes d''une étude d''événement, de l''estimation du modèle de marché jusqu''au calcul du CAR.
2. Pourquoi une dérive persistante des rentabilités anormales après l''annonce (post-event drift) pose-t-elle problème à l''hypothèse d''efficience des marchés sous sa forme semi-forte ?
3. Expliquez pourquoi un modèle de type GARCH est plus adapté qu''une simple moyenne constante pour modéliser la volatilité d''une série de rendements financiers.
4. Quelles sont les principales limites méthodologiques d''une enquête par questionnaire auprès de dirigeants financiers, et comment peut-on les atténuer ?
5. Concevez, en quelques lignes, un protocole mixte (quantitatif et qualitatif) pour tester si les PME sénégalaises du secteur du commerce suivent la théorie du financement hiérarchique.
6. Pourquoi est-il préférable, dans un travail doctoral, de combiner plusieurs méthodes plutôt que de se limiter à une seule pour tester une théorie financière ?

## Corrigé

1. Les étapes sont : définir l''événement et sa date précise ; choisir une fenêtre d''estimation antérieure (hors événement) pour estimer alpha et bêta du modèle de marché ; calculer la rentabilité attendue sur la fenêtre d''événement à partir de ces paramètres et de la rentabilité du marché observée ; calculer l''AR quotidien comme écart entre rentabilité observée et rentabilité attendue ; cumuler les AR sur la fenêtre pour obtenir le CAR ; tester si ce CAR est statistiquement différent de zéro sur un échantillon de plusieurs événements similaires.

2. Si l''hypothèse d''efficience semi-forte est vérifiée, toute information publique (comme l''annonce étudiée) devrait être intégrée rapidement et le CAR devrait se stabiliser dès les jours suivant l''annonce. Une dérive persistante (le titre continue de monter ou de baisser significativement plusieurs jours ou semaines après) suggère que le marché n''a pas intégré l''information instantanément, ce qui constitue une anomalie empirique à expliquer, par exemple par une sous-réaction initiale documentée en finance comportementale.

3. Les rendements financiers présentent des périodes de forte volatilité suivies de périodes plus calmes (regroupement de la volatilité) : une moyenne ou un écart-type constant sur toute la période masquerait cette dynamique et sous-estimerait le risque pendant les phases agitées. Un modèle GARCH modélise explicitement la volatilité comme dépendante des chocs passés, ce qui permet de mieux anticiper les périodes de risque élevé.

4. Limites principales : biais de déclaration (réponses valorisantes), taux de réponse faible, échantillon non représentatif (volontariat). Atténuations possibles : garantir l''anonymat des réponses, croiser les déclarations avec des données financières objectives, élargir et diversifier l''échantillon, et compléter par des entretiens qui permettent de nuancer les réponses au questionnaire.

5. Protocole possible : collecte des bilans et comptes de résultat d''un échantillon de PME commerciales sur 3 à 5 exercices ; calcul de la part de l''autofinancement, de la dette bancaire et des apports en capital dans le financement des nouveaux besoins ; test statistique de la séquence prédite par la théorie du financement hiérarchique (autofinancement d''abord, puis dette, puis capital) ; entretiens avec un sous-échantillon de dirigeants pour comprendre les raisons déclarées de leurs choix et identifier d''éventuelles spécificités locales (accès au crédit, relation bancaire).

6. Combiner plusieurs méthodes (triangulation méthodologique) permet de compenser les limites propres à chacune : une méthode quantitative documente ce qui se passe réellement dans les données mais pas toujours pourquoi, tandis qu''une méthode qualitative explore les motivations mais sur un échantillon restreint et sujet à des biais déclaratifs. La combinaison renforce la validité des conclusions et permet de détecter des résultats contradictoires qui méritent une explication plus approfondie.', 'texte', 45, false, 40
from public.courses c where c.slug = 'doc-fin'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Les méthodes de recherche en finance : études d''événements, économétrie financière et enquêtes de terrain');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Épreuve type d''examen de qualification en Finance : question de synthèse et plan de réponse corrigé', 'Cette leçon propose une épreuve type d''examen de qualification doctorale en finance (question non officielle, construite à titre pédagogique), avec un plan de réponse détaillé qui mobilise les deux courants théoriques vus en leçons 2 et 3, ainsi qu''une méthode de recherche vue en leçon 4. L''objectif est de montrer, sur un exemple complet, comment structurer une réponse de niveau doctoral.

## La question d''examen

« Dans quelle mesure les débats théoriques sur l''efficience des marchés et sur la structure de financement des entreprises doivent-ils être reconsidérés lorsqu''on les applique à un marché financier en développement comme celui de l''Afrique de l''Ouest ? Vous illustrerez votre propos par une proposition de protocole empirique. »

## Analyse de la question avant de répondre

Une question de ce type appelle d''abord un travail d''analyse avant toute rédaction : elle comporte trois exigences croisées qu''il faut traiter ensemble et non séparément. La première est théorique : il faut mobiliser à la fois le débat efficience/finance comportementale et le débat sur la structure de financement (Modigliani-Miller et ses extensions), sans se limiter à l''un des deux. La seconde est contextuelle : la question demande explicitement une discussion critique de la transposition de ces théories à un contexte de marché en développement, ce qui exclut une réponse purement descriptive des théories occidentales. La troisième est méthodologique : la question exige une proposition concrète de protocole empirique, qui doit s''appuyer sur une méthode vue en leçon 4 et être adaptée au contexte évoqué.

## Plan de réponse détaillé

Une réponse de niveau qualification doctorale pourrait suivre le plan suivant.

- Introduction : rappeler que les deux débats (efficience des marchés, structure de financement) ont été construits et testés essentiellement sur des marchés financiers profonds et liquides, et poser la problématique de leur transposition à un contexte de marché en développement comme celui de l''Afrique de l''Ouest (BRVM, zone UEMOA).
- I. Le débat efficience/finance comportementale reconsidéré en contexte de marché peu profond : rappeler les formes de l''efficience et les apports de la finance comportementale (voir leçon 2), puis montrer que la faible liquidité, le nombre réduit de titres cotés et les coûts d''arbitrage plus élevés sur un marché comme la BRVM peuvent limiter l''efficience de forme semi-forte et laisser davantage de place à des anomalies durables, sans pour autant que cela traduise une irrationalité plus marquée des investisseurs locaux : il s''agit d''une différence de structure de marché, pas nécessairement de comportement.
- II. Le débat sur la structure de financement reconsidéré en contexte de marché peu profond : rappeler le théorème de Modigliani-Miller et ses trois extensions (fiscalité, coûts de faillite, asymétrie d''information, voir leçon 3), puis montrer que l''accès restreint aux marchés de capitaux externes, l''asymétrie d''information potentiellement plus marquée et un cadre de traitement des défaillances encore en consolidation renforcent particulièrement la pertinence de la théorie du financement hiérarchique pour les entreprises de la région, davantage que dans un contexte de marché développé où l''accès aux fonds propres externes est plus large.
- III. Mise en tension des deux débats : montrer que les deux débats se rejoignent sur un même constat méthodologique : les théories financières de référence, construites sur des hypothèses de marchés profonds et d''information largement diffusée, doivent être testées empiriquement sur le contexte local avant d''être supposées valides, plutôt que transposées par analogie.
- IV. Proposition de protocole empirique : une étude d''événement (voir leçon 4) appliquée à un échantillon d''annonces de résultats ou de décisions de financement d''entreprises cotées à la BRVM, pour mesurer l''ampleur et la durée des rentabilités anormales (test de l''efficience en contexte local), complétée par une enquête auprès de directeurs financiers d''entreprises de la région sur leurs pratiques déclarées de financement (test de la théorie du financement hiérarchique en contexte local).
- Conclusion : rappeler que la valeur d''un travail doctoral dans ce contexte tient précisément à cette vérification empirique locale, qui peut à la fois confirmer, nuancer ou enrichir les théories de référence plutôt que les rejeter ou les accepter en bloc.

## Rédaction d''un extrait de réponse (partie I, à titre d''illustration)

« L''hypothèse d''efficience des marchés distingue classiquement trois formes, et la forme semi-forte — selon laquelle les prix intègrent rapidement toute information publique disponible — constitue le cadre de référence le plus testé empiriquement. Sur un marché développé et liquide, la présence de nombreux arbitragistes et la faiblesse des coûts de transaction favorisent une intégration rapide de l''information nouvelle dans les prix. Sur un marché comme la BRVM, caractérisé par un nombre de titres cotés plus restreint et des volumes d''échange plus faibles, les mécanismes d''arbitrage peuvent être moins actifs, ce qui n''invalide pas le cadre théorique de l''efficience mais invite à en vérifier empiriquement le degré effectif plutôt que de le supposer identique à celui observé sur des places boursières plus profondes. La finance comportementale apporte ici un éclairage complémentaire : si des biais comme le comportement moutonnier sont documentés sur de nombreux marchés, leur effet sur les prix peut être amplifié sur un marché où le nombre d''investisseurs actifs et la diversité des stratégies d''arbitrage sont plus limités. » Cet extrait illustre la posture attendue : mobiliser la théorie avec précision, la nuancer par le contexte, sans jamais affirmer un résultat empirique précis qui n''aurait pas été vérifié par une étude dédiée.

## Ce qui distingue une excellente réponse d''une réponse moyenne

Une réponse moyenne se contente de résumer séparément les deux débats théoriques sans jamais les articuler à la question du contexte de marché en développement, et propose éventuellement une méthode de recherche sans la relier précisément aux théories discutées. Une excellente réponse, à l''inverse, maintient en permanence le fil directeur de la question (la nécessité de reconsidérer, pas de rejeter, les théories de référence), articule systématiquement chaque argument théorique à sa traduction possible dans le contexte de l''Afrique de l''Ouest, et propose un protocole empirique qui découle logiquement de l''analyse théorique qui précède plutôt que d''être ajouté de façon artificielle en fin de réponse.

## Points clés à retenir

- Une question de synthèse d''examen de qualification doit toujours être décomposée en ses exigences théoriques, contextuelles et méthodologiques avant la rédaction.
- Le plan de réponse doit traiter chaque courant théorique, les mettre en tension avec le contexte imposé (ici : marché financier en développement), puis proposer une méthode cohérente avec l''analyse qui précède.
- La nuance est préférable à l''affirmation catégorique : les théories financières de référence ne sont pas invalidées par un contexte de marché différent, elles doivent y être testées.
- Le protocole empirique proposé doit découler de l''analyse théorique, pas lui être ajouté artificiellement.

## Exercices pratiques

1. Identifiez, dans la question d''examen proposée, les trois exigences croisées (théorique, contextuelle, méthodologique) et reformulez chacune en une phrase.
2. Pourquoi une réponse qui se limiterait à résumer séparément l''efficience des marchés et la structure de financement, sans les relier au contexte de marché en développement, serait-elle jugée insuffisante par un jury ?
3. Proposez une introduction alternative (5 à 8 lignes) pour la question d''examen, différente de celle du plan proposé.
4. En vous appuyant sur la partie IV du plan, expliquez pourquoi une étude d''événement et une enquête auprès de dirigeants financiers sont complémentaires pour répondre à la question posée.
5. Rédigez, sur le modèle de l''extrait fourni, un paragraphe équivalent pour la partie II du plan (structure de financement en contexte de marché en développement).

## Corrigé

1. Exigence théorique : mobiliser à la fois le débat efficience/finance comportementale et le débat sur la structure de financement, sans en privilégier un seul. Exigence contextuelle : discuter explicitement la validité de ces théories lorsqu''elles sont appliquées à un marché financier en développement plutôt que les présenter comme universellement valides. Exigence méthodologique : proposer un protocole empirique concret, cohérent avec l''analyse théorique et contextuelle qui précède.

2. Un jury doctoral évalue la capacité à articuler théorie et contexte, pas seulement la connaissance des théories elles-mêmes : une réponse qui les résume séparément sans les relier à la question du marché en développement ne répond pas réellement à la question posée et laisse penser que le candidat n''a pas intégré les connaissances de façon critique, mais seulement de façon descriptive.

3. Exemple d''introduction alternative : « Les grandes théories financières de référence — l''hypothèse d''efficience des marchés et le théorème de Modigliani-Miller sur la structure de financement — ont été élaborées et testées empiriquement, pour l''essentiel, sur des marchés financiers profonds et liquides des économies avancées. Leur application à des marchés émergents ou en développement, comme celui de la zone UEMOA, soulève une question de fond : ces théories doivent-elles être rejetées, adaptées, ou simplement testées empiriquement dans ce nouveau contexte avant toute conclusion ? Ce travail soutient la troisième option. »

4. L''étude d''événement renseigne sur la vitesse et l''ampleur de la réaction des prix à une information nouvelle (test de l''efficience), mais elle ne dit rien des motivations des dirigeants dans leurs décisions de financement ; l''enquête auprès des directeurs financiers renseigne sur ces motivations déclarées (test de la théorie du financement hiérarchique) mais ne mesure pas directement la réaction des prix de marché. Les deux méthodes répondent ainsi à des aspects différents et complémentaires de la question posée, qui porte à la fois sur l''efficience et sur la structure de financement.

5. Exemple de paragraphe : « Le théorème de Modigliani-Miller établit, en marchés parfaits, la neutralité de la structure de financement sur la valeur de l''entreprise ; ses extensions montrent que la fiscalité, les coûts de faillite et l''asymétrie d''information expliquent les choix de financement observés en pratique. Sur un marché comme la zone UEMOA, où l''accès aux marchés de capitaux externes reste concentré sur un nombre restreint de grandes entreprises, la théorie du financement hiérarchique semble particulièrement pertinente pour expliquer la forte dépendance des PME à l''autofinancement puis au crédit bancaire ; cette hypothèse, cohérente avec les contraintes structurelles du marché local, doit néanmoins être vérifiée empiriquement plutôt que simplement déduite par analogie avec des résultats obtenus sur des marchés développés. »', 'texte', 45, false, 50
from public.courses c where c.slug = 'doc-fin'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Épreuve type d''examen de qualification en Finance : question de synthèse et plan de réponse corrigé');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : l''hypothèse d''efficience des marchés face à la finance comportementale', '## Fiche du cours vidéo

Durée : 1h30. Public : doctorants en finance préparant leur examen de qualification. Objectifs : maîtriser les formes de l''hypothèse d''efficience des marchés, les apports de la finance comportementale, et savoir discuter leur articulation, y compris sur un marché financier en développement. Matériel : diaporama, tableau pour les schémas de cartographie des courants. Prérequis : avoir lu la leçon texte correspondante (leçon 2).

## Déroulé minuté

## 00:00 – 05:00 · Introduction et enjeux

Bonjour à toutes et à tous. Dans cette séance, nous allons reprendre en profondeur le débat entre l''hypothèse d''efficience des marchés et la finance comportementale, qui constitue l''un des piliers de tout programme doctoral en finance. L''enjeu n''est pas de choisir un camp, mais de comprendre pourquoi ce débat structure encore aujourd''hui la recherche en finance de marché, et comment vous devrez le mobiliser devant un jury de qualification. Je vous propose d''afficher à l''écran le plan de la séance : d''abord l''hypothèse d''efficience et ses trois formes, puis la finance comportementale et ses biais, ensuite les anomalies de marché documentées, puis l''articulation contemporaine des deux courants, et enfin l''application prudente à un marché financier en développement comme la BRVM. Une pause quiz interviendra au milieu de la séance, et nous terminerons par une évaluation de cinq questions.

## 05:00 – 20:00 · L''hypothèse d''efficience des marchés

Commençons par le cœur de l''hypothèse d''efficience des marchés, formalisée notamment par Eugene Fama. Je vous demande de noter au tableau, avec moi, les trois formes de l''efficience : forme faible, forme semi-forte, forme forte. La forme faible soutient que les prix intègrent déjà toute l''information contenue dans l''historique des cours : si c''est vrai, l''analyse technique, qui cherche des motifs dans les graphiques de prix passés, ne devrait pas permettre de gagner de l''argent de façon systématique. La forme semi-forte va plus loin : elle affirme que les prix intègrent aussi toute l''information publique disponible, comme les résultats financiers publiés ou les annonces économiques — ce qui réduit fortement l''intérêt de l''analyse fondamentale classique pour « battre le marché » une fois l''information rendue publique. La forme forte, enfin, est la plus extrême et la plus contestée : elle prétend que même l''information privée, détenue par des initiés, serait déjà intégrée aux prix, ce qui est largement démenti empiriquement par les gains significatifs parfois réalisés par des investisseurs disposant d''informations privilégiées. Je vous invite à visualiser sur le diaporama le schéma classique de la marche aléatoire des cours : une trajectoire de prix qui ne montre aucun motif prévisible d''un jour sur l''autre, ce qui est la signature empirique la plus citée de l''efficience de forme faible. Posons-nous une première question de réflexion : si les marchés étaient parfaitement efficients à la forme forte, quel serait l''intérêt économique de produire de la recherche financière ou de rémunérer des analystes ? Cette question, qui peut sembler provocante, est en réalité une excellente porte d''entrée pour comprendre les limites pratiques de la forme forte de l''EMH.

## 20:00 – 35:00 · La finance comportementale et ses biais cognitifs

Passons maintenant au second courant. La finance comportementale part d''un constat emprunté à la psychologie cognitive, notamment aux travaux de Daniel Kahneman et Amos Tversky, puis développé en finance par des chercheurs comme Richard Thaler et Robert Shiller : les investisseurs ne sont pas parfaitement rationnels, et leurs erreurs systématiques peuvent affecter durablement les prix de marché, contrairement à ce que suppose l''hypothèse d''efficience. Je vous propose de détailler quatre biais cognitifs centraux, que vous devez pouvoir définir et illustrer sans hésitation à l''oral. Premier biais : l''excès de confiance, qui pousse un investisseur à surestimer la fiabilité de ses propres analyses, et donc à sous-estimer le risque de ses positions. Deuxième biais : l''aversion à la perte, documentée par la théorie des perspectives, selon laquelle la douleur ressentie face à une perte est plus intense que le plaisir ressenti face à un gain équivalent — ce qui explique pourquoi de nombreux investisseurs conservent trop longtemps des titres en perte, espérant un retour à l''équilibre. Troisième biais : l''ancrage, qui fait qu''une information initiale, même arbitraire, continue d''influencer les décisions ultérieures, par exemple un prix d''achat passé qui sert de référence psychologique pour décider de vendre ou non. Quatrième biais : le comportement moutonnier, qui pousse les investisseurs à suivre la tendance du groupe plutôt que leur propre jugement, ce qui peut amplifier des mouvements de marché au-delà de ce que justifient les fondamentaux économiques. Prenez le temps de noter un exemple personnel pour chacun de ces biais : c''est un excellent exercice pour vous préparer à l''illustrer spontanément à l''oral devant un jury.

## 35:00 – 45:00 · Les anomalies de marché documentées

Voyons à présent les anomalies empiriques les plus souvent citées en complément des biais individuels. L''effet taille suggère qu''historiquement, sur certaines périodes et certains marchés, les petites capitalisations auraient généré un rendement ajusté au risque supérieur aux grandes capitalisations. L''effet momentum documente la tendance des titres récemment performants à continuer de bien performer sur quelques mois, ce qui contredit directement l''idée d''une marche parfaitement aléatoire des cours. Les bulles spéculatives, enfin, illustrent des phases où les prix s''éloignent durablement des fondamentaux avant une correction parfois brutale — un phénomène que Robert Shiller a notamment étudié à travers la notion de volatilité excessive des cours boursiers par rapport à celle des dividendes ou des bénéfices sous-jacents. Il est essentiel de rappeler que documenter une anomalie statistique ne suffit pas à prouver que les marchés sont globalement inefficients : il faut encore écarter d''autres explications possibles, comme l''existence de facteurs de risque non mesurés par le modèle d''évaluation utilisé.

## 45:00 – 50:00 · Pause et quiz interactif

Nous marquons une pause de cinq minutes. Avant de reprendre, je vous propose un quiz rapide à trois questions, à répondre mentalement ou à l''écrit si vous le souhaitez. Première question : citez les trois formes de l''hypothèse d''efficience des marchés dans l''ordre croissant d''exigence. Deuxième question : quel biais cognitif explique qu''un investisseur conserve trop longtemps un titre en perte ? Troisième question : citez une anomalie de marché qui contredit directement l''idée d''une marche aléatoire des cours. Je vous laisse quelques instants pour y réfléchir avant de donner les réponses : forme faible, forme semi-forte, forme forte pour la première ; l''aversion à la perte pour la deuxième ; l''effet momentum pour la troisième.

## 50:00 – 65:00 · Articulation des deux courants : vers l''efficience adaptative

Reprenons maintenant avec la partie la plus importante pour votre préparation à l''oral : comment articuler ces deux courants plutôt que les opposer frontalement. Les modèles dits d''efficience adaptative, qui prolongent notamment les travaux d''Andrew Lo, proposent une image dynamique : les marchés évolueraient entre des phases plus ou moins efficientes selon les conditions économiques et le comportement collectif des investisseurs, un peu comme un écosystème où différentes stratégies (rationnelles et comportementales) coexistent et se limitent mutuellement par la concurrence. Un concept clé à maîtriser ici est celui des limites à l''arbitrage : même si un investisseur rationnel identifie un écart de prix par rapport à la valeur fondamentale, l''exploiter peut être coûteux, risqué, ou limité par des contraintes de capital, ce qui explique pourquoi certaines anomalies persistent dans le temps sans être immédiatement corrigées par le marché. Je vous invite à retenir une formule de synthèse pour votre oral : l''efficience des marchés n''est pas un absolu binaire (efficient ou non), mais un continuum, influencé par la liquidité, le nombre d''arbitragistes actifs, le coût de l''information et la nature des investisseurs présents sur le marché considéré.

## 65:00 – 80:00 · Application à un marché financier en développement (BRVM)

Terminons la partie théorique par l''application au contexte de marché en développement, qui est l''un des axes les plus attendus dans un travail doctoral ancré en Afrique de l''Ouest. La Bourse Régionale des Valeurs Mobilières (BRVM), qui couvre plusieurs pays de la zone UEMOA, se caractérise par un nombre de titres cotés plus restreint que sur les grandes places boursières internationales, des volumes d''échange plus faibles et une base d''investisseurs institutionnels moins large. Ces caractéristiques structurelles ont une conséquence directe sur le degré d''efficience observable : moins d''arbitragistes actifs, des coûts de transaction relativement plus élevés rapportés à la taille des transactions, et une diffusion de l''information parfois plus lente, notamment pour les entreprises moins suivies par les analystes. Cela ne signifie en aucun cas que les investisseurs de la région sont moins rationnels : il s''agit d''une différence de structure de marché et non de comportement individuel. Pour un sujet de thèse, cela suggère une piste de recherche intéressante : tester empiriquement, par une étude d''événement par exemple, le degré effectif d''efficience de forme semi-forte sur la BRVM, sans présupposer qu''il serait identique à celui mesuré sur des marchés développés, ni qu''il en serait radicalement différent — c''est précisément ce que la recherche doit vérifier plutôt que supposer.

## 80:00 – 85:00 · Synthèse de la séance

Récapitulons les points essentiels de cette séance. L''hypothèse d''efficience des marchés distingue trois formes et repose sur la rationalité moyenne des investisseurs et l''arbitrage. La finance comportementale documente des biais individuels et des anomalies collectives qui questionnent cette rationalité. La recherche contemporaine articule les deux courants par la notion d''efficience adaptative et de limites à l''arbitrage. Enfin, l''application à un marché comme la BRVM doit se faire avec prudence méthodologique, en testant empiriquement plutôt qu''en supposant le degré d''efficience local.

## 85:00 – 1:30:00 · Évaluation finale (5 questions avec réponses)

Nous terminons par une évaluation de cinq questions, avec leurs réponses, pour consolider vos acquis avant l''examen.

- Question 1 : Quelle forme de l''hypothèse d''efficience est la plus contestée empiriquement, et pourquoi ? Réponse : la forme forte, car des gains significatifs liés à une information privée (délit d''initié) ont été documentés, ce qui contredit l''idée que même l''information privée serait déjà intégrée aux prix.
- Question 2 : Donnez un exemple de biais cognitif qui peut amplifier une baisse de marché. Réponse : le comportement moutonnier, qui pousse des investisseurs à vendre en imitant les autres plutôt qu''en analysant individuellement la situation, amplifiant ainsi le mouvement de baisse.
- Question 3 : Qu''est-ce que l''effet momentum, et en quoi contredit-il la marche aléatoire des cours ? Réponse : c''est la tendance des titres récemment performants à continuer de bien performer sur quelques mois ; cela contredit la marche aléatoire, qui suppose que les variations de prix ne sont pas prévisibles à partir de l''historique des cours.
- Question 4 : Expliquez la notion de « limites à l''arbitrage » et son rôle dans le débat efficience/finance comportementale. Réponse : elle désigne les coûts, risques et contraintes qui empêchent un arbitragiste rationnel de corriger immédiatement un écart de prix par rapport à la valeur fondamentale, ce qui permet d''expliquer la persistance de certaines anomalies sans rejeter totalement l''idée d''efficience à terme.
- Question 5 : Pourquoi faut-il tester empiriquement, plutôt que supposer, le degré d''efficience de la BRVM ? Réponse : parce que les caractéristiques structurelles de ce marché (liquidité, nombre d''arbitragistes, diffusion de l''information) diffèrent de celles des marchés développés sur lesquels l''essentiel de la littérature a été produit, et qu''une transposition sans vérification empirique risquerait de produire des conclusions non fondées sur ce contexte précis.', 'video', 90, false, 60
from public.courses c where c.slug = 'doc-fin'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : l''hypothèse d''efficience des marchés face à la finance comportementale');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : la structure de financement, de Modigliani-Miller à ses extensions', '## Fiche du cours vidéo

Durée : 1h30. Public : doctorants en finance préparant leur examen de qualification. Objectifs : maîtriser le théorème de Modigliani-Miller (MM1 et MM2), ses trois grandes extensions, et savoir les appliquer de façon critique à un marché financier en développement. Matériel : diaporama avec les formules de calcul du CMPC, tableau pour les schémas. Prérequis : avoir lu la leçon texte correspondante (leçon 3) et disposer d''une calculatrice.

## Déroulé minuté

## 00:00 – 05:00 · Introduction

Bienvenue dans cette séance consacrée au deuxième grand débat du programme : la structure de financement de l''entreprise. Nous allons partir du théorème de Modigliani-Miller, qui constitue le point de référence incontournable de toute discussion sur le choix entre dette et capitaux propres, puis nous verrons ses trois grandes extensions, avant de les appliquer à un contexte de marché financier en développement. Une pause quiz interviendra au milieu, et nous terminerons par une évaluation de cinq questions.

## 05:00 – 20:00 · Le théorème de Modigliani-Miller en marchés parfaits

Commençons par la proposition I de Modigliani-Miller, dite MM1. Sous des hypothèses de marchés parfaits — absence d''impôt, absence de coûts de transaction et de faillite, information parfaitement partagée, et possibilité pour tout investisseur d''emprunter ou de prêter au même taux que l''entreprise — la valeur totale d''une entreprise ne dépend pas de sa structure de financement. L''argument clé, que vous devez pouvoir restituer précisément à l''oral, est celui de l''arbitrage, parfois appelé « home-made leverage » : si deux entreprises identiques par ailleurs avaient des valeurs différentes du seul fait de leur endettement, un investisseur pourrait reproduire à titre personnel l''effet de levier manquant, en empruntant ou en prêtant lui-même, et réaliser un profit sans risque en achetant l''entreprise sous-évaluée et en vendant à découvert la surévaluée — ce mécanisme d''arbitrage ramène les deux valeurs à l''égalité. La proposition II, MM2, complète ce résultat : le coût des capitaux propres croît avec le niveau d''endettement, car les actionnaires supportent un risque financier croissant, mais cette hausse compense exactement l''avantage apparent d''une dette moins chère, de sorte que le coût moyen pondéré du capital (CMPC, ou WACC en anglais) reste constant quelle que soit la structure de financement choisie.

## 20:00 – 30:00 · Calcul illustratif du coût moyen pondéré du capital

Prenons un exemple numérique pour illustrer concrètement le calcul du CMPC, vérifié en Python. Une entreprise a des capitaux propres de 600 millions de FCFA et une dette de 400 millions de FCFA, soit une valeur totale de 1 milliard de FCFA. Le coût des capitaux propres est de 14 %, le coût de la dette avant impôt de 9 %, et le taux d''impôt sur les sociétés, fictif pour l''exemple, de 30 %. La formule du CMPC est : CMPC = (E/V) × coût des capitaux propres + (D/V) × coût de la dette × (1 moins le taux d''impôt). En appliquant cette formule à nos chiffres, on obtient : (600/1000) × 14 % + (400/1000) × 9 % × (1 - 30 %), soit 8,4 % plus 2,52 %, ce qui donne un CMPC d''environ 10,92 %. Ce résultat illustre un point essentiel de MM2 : le coût de la dette, apparemment moins élevé que celui des capitaux propres, ne doit jamais être interprété isolément, car l''entreprise devient plus risquée à mesure qu''elle s''endette, ce qui fait augmenter en parallèle le coût exigé par les actionnaires.

## 30:00 – 40:00 · Extension 1 : la fiscalité et l''avantage de la dette

Passons à la première grande extension du théorème. Lorsque l''on réintroduit l''impôt sur les sociétés, les intérêts de la dette deviennent généralement déductibles du résultat imposable, ce qui crée une économie d''impôt qui augmente la valeur de l''entreprise endettée. Reprenons notre exemple : avec une dette de 400 millions de FCFA et un taux d''impôt fictif de 30 %, le gain fiscal théorique, selon la formule simplifiée VL = VU + taux d''impôt × dette, serait de 30 % × 400 millions, soit 120 millions de FCFA, ce qui porterait la valeur de l''entreprise endettée à 1,12 milliard de FCFA au lieu de 1 milliard pour l''entreprise non endettée. Cette extension prédit, si elle agissait seule, un endettement maximal pour maximiser cet avantage fiscal — ce qui ne correspond pas aux niveaux d''endettement modérés observés en pratique, d''où la nécessité de la deuxième extension.

## 40:00 – 50:00 · Extension 2 : les coûts de faillite et la théorie du compromis

La deuxième extension réintroduit les coûts de faillite et de détresse financière. Un endettement croissant augmente la probabilité qu''une entreprise ne puisse plus honorer ses engagements. Ces coûts incluent des coûts directs (frais juridiques et administratifs d''une procédure collective) mais surtout des coûts indirects souvent plus importants : perte de confiance des clients et fournisseurs, départ de salariés clés, décisions d''investissement sous-optimales prises par une direction sous contrainte financière. La théorie du compromis, ou trade-off theory, combine cette extension avec l''avantage fiscal : l''entreprise chercherait un niveau d''endettement optimal qui maximise l''avantage fiscal net des coûts attendus de détresse financière. Je vous invite à visualiser mentalement une courbe en cloche inversée : la valeur de l''entreprise augmente avec l''endettement grâce à l''avantage fiscal, atteint un maximum, puis diminue lorsque les coûts de détresse financière deviennent dominants — ce sommet représente le niveau d''endettement optimal théorique.

## 50:00 – 55:00 · Pause et quiz interactif

Prenons cinq minutes de pause avec un quiz rapide. Première question : quelle est la différence entre MM1 et MM2 ? Deuxième question : pourquoi l''avantage fiscal de la dette, pris isolément, prédirait un endettement maximal ? Troisième question : quel type de coût la théorie du compromis ajoute-t-elle pour corriger cette prédiction ? Réponses : MM1 porte sur la valeur totale de l''entreprise, invariante à la structure de financement ; MM2 porte sur le coût des capitaux propres, qui croît avec l''endettement. L''avantage fiscal croît proportionnellement à la dette sans limite apparente si on l''isole. La théorie du compromis ajoute les coûts de faillite et de détresse financière, qui croissent plus vite que l''avantage fiscal au-delà d''un certain seuil.

## 55:00 – 70:00 · Extension 3 : l''asymétrie d''information et le financement hiérarchique

Reprenons avec la troisième extension, portée notamment par les travaux de Stewart Myers sur la théorie du financement hiérarchique, ou pecking order theory. Cette théorie part du constat que les dirigeants disposent généralement de plus d''informations sur la valeur réelle de l''entreprise que les investisseurs externes. Une émission de nouvelles actions peut alors être interprétée comme un signal négatif par le marché : si les dirigeants pensent que l''action est surévaluée, ils ont intérêt à émettre maintenant, ce que le marché anticipe rationnellement et sanctionne par une baisse du cours à l''annonce de l''émission. Les entreprises préfèrent donc, selon cette théorie, une séquence de financement hiérarchisée : d''abord l''autofinancement, puis la dette, et en dernier recours seulement l''émission de nouvelles actions. Il est important de noter que cette théorie ne prédit pas un niveau d''endettement optimal précis comme la théorie du compromis, mais plutôt un ordre de préférence entre les sources de financement, ce qui en fait une théorie complémentaire plutôt que concurrente de la précédente.

## 70:00 – 80:00 · Application à un marché financier en développement

Terminons la partie théorique par l''application au contexte de marché en développement, central pour votre travail doctoral. Sur un marché comme la zone UEMOA et sa Bourse Régionale des Valeurs Mobilières, l''accès au financement obligataire ou boursier reste concentré sur un nombre restreint de grandes entreprises, ce qui pousse la majorité des entreprises, en particulier les petites et moyennes entreprises, à dépendre fortement du crédit bancaire — une situation qui rend la théorie du financement hiérarchique particulièrement pertinente dans ce contexte. L''asymétrie d''information y est potentiellement plus marquée, du fait d''états financiers parfois moins standardisés selon les entreprises, ce qui renforce encore la prédiction de préférence pour l''autofinancement et la dette bancaire. Enfin, un cadre judiciaire de traitement des difficultés d''entreprise encore en consolidation selon les pays peut amplifier les coûts de faillite perçus par les créanciers, renchérissant le coût de la dette au-delà de ce que prédirait un modèle calibré uniquement sur un marché développé. Pour un sujet de thèse, cela ouvre une piste intéressante : tester empiriquement, sur des données d''entreprises locales, laquelle des théories — compromis ou financement hiérarchique — explique le mieux les choix de financement observés dans ce contexte spécifique.

## 80:00 – 85:00 · Synthèse de la séance

Récapitulons. MM1 établit la neutralité de la structure de financement sur la valeur de l''entreprise en marchés parfaits ; MM2 montre que le coût des capitaux propres croît avec l''endettement. Les trois extensions — fiscalité, coûts de faillite, asymétrie d''information — réintroduisent les frictions réelles et expliquent les choix de financement observés en pratique. Sur un marché financier en développement, la théorie du financement hiérarchique semble particulièrement pertinente, mais doit être vérifiée empiriquement plutôt que supposée.

## 85:00 – 1:30:00 · Évaluation finale (5 questions avec réponses)

Terminons par une évaluation de cinq questions.

- Question 1 : Énoncez MM1 et l''argument qui la démontre. Réponse : en marchés parfaits, la valeur de l''entreprise est indépendante de sa structure de financement, ce que démontre l''argument d''arbitrage (home-made leverage) : tout écart de valeur serait annulé par des investisseurs reproduisant eux-mêmes l''effet de levier manquant.
- Question 2 : Calculez le CMPC d''une entreprise avec E=700 millions de FCFA, D=300 millions de FCFA, coût des capitaux propres 15 %, coût de la dette avant impôt 8 %, taux d''impôt fictif 25 %. Réponse : CMPC = (700/1000)×15% + (300/1000)×8%×(1-25%) = 10,5% + 1,8% = 12,3%.
- Question 3 : Quelle extension explique pourquoi les entreprises ne s''endettent pas au maximum malgré l''avantage fiscal de la dette ? Réponse : la théorie du compromis, par les coûts de faillite et de détresse financière qui croissent plus vite que l''avantage fiscal au-delà d''un certain seuil d''endettement.
- Question 4 : Pourquoi une émission d''actions peut-elle être perçue négativement par le marché selon la théorie du financement hiérarchique ? Réponse : parce que les dirigeants, mieux informés, ont intérêt à émettre lorsque l''action est surévaluée, ce que le marché anticipe et sanctionne par une baisse du cours à l''annonce.
- Question 5 : Pourquoi la théorie du financement hiérarchique est-elle jugée particulièrement pertinente pour les PME de la zone UEMOA ? Réponse : parce que leur accès restreint aux marchés de capitaux externes, combiné à une asymétrie d''information potentiellement plus marquée, les pousse structurellement à privilégier l''autofinancement puis la dette bancaire, conformément à la séquence prédite par cette théorie.', 'video', 90, false, 70
from public.courses c where c.slug = 'doc-fin'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : la structure de financement, de Modigliani-Miller à ses extensions');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : les méthodes de recherche en finance', '## Fiche du cours vidéo

Durée : 1h30. Public : doctorants en finance préparant leur examen de qualification. Objectifs : maîtriser les étapes d''une étude d''événement, les principes de la modélisation économétrique des séries financières, et les apports et limites de l''enquête auprès de dirigeants financiers. Matériel : diaporama avec exemples chiffrés, tableau pour les schémas. Prérequis : avoir lu la leçon texte correspondante (leçon 4).

## Déroulé minuté

## 00:00 – 05:00 · Introduction

Bienvenue dans cette séance consacrée aux méthodes de recherche en finance. Nous allons détailler trois familles de méthodes que vous devrez savoir choisir et justifier devant un jury : l''étude d''événement, la modélisation économétrique des séries financières, et l''enquête auprès de dirigeants financiers. Une pause quiz interviendra au milieu, et nous terminerons par une évaluation finale.

## 05:00 – 20:00 · L''étude d''événement : principes et formules

L''étude d''événement est sans doute la méthode la plus emblématique de la recherche empirique en finance de marché. Elle mesure l''effet d''un événement précis — annonce de résultats, fusion-acquisition, décision de politique monétaire — sur le cours d''un titre. La première étape consiste à estimer un modèle de marché sur une période antérieure à l''événement, hors de la fenêtre d''étude : rentabilité attendue égale alpha plus bêta multiplié par la rentabilité du marché. La deuxième étape consiste à calculer, pour chaque jour de la fenêtre d''événement, la rentabilité anormale, ou AR, qui est l''écart entre la rentabilité réellement observée et la rentabilité attendue selon le modèle estimé. La troisième étape cumule ces rentabilités anormales sur la fenêtre pour obtenir le CAR, la rentabilité anormale cumulée, qui permet de juger l''ampleur et la persistance de la réaction du marché à l''événement.

## 20:00 – 35:00 · Illustration numérique vérifiée de l''étude d''événement

Prenons l''exemple vérifié en Python de cette séquence. Sur une fenêtre de cinq jours autour d''une annonce (jours -2, -1, 0, +1, +2), avec un modèle de marché estimé à alpha = 0,02 % et bêta = 1,1, on obtient les résultats suivants : jour -2, AR d''environ -0,01 % et CAR cumulé de -0,01 % ; jour -1, AR de +0,05 % et CAR de +0,04 % ; jour 0, le jour de l''annonce, AR de +1,37 % et CAR de +1,41 % ; jour +1, AR de +0,28 % et CAR de +1,69 % ; jour +2, AR de -0,24 % et CAR de +1,45 %. Observez avec moi ce qui se passe : la très grande majorité de la rentabilité anormale est concentrée le jour même de l''annonce, ce qui est cohérent avec une réaction rapide du marché, compatible avec une forme au moins semi-forte d''efficience. La légère variation des jours suivants est le type de résidu que la recherche cherche à expliquer, mais sur un échantillon de plusieurs dizaines ou centaines d''événements, jamais sur un cas unique comme celui-ci, qui n''a qu''une valeur pédagogique.

## 35:00 – 50:00 · La modélisation économétrique des séries financières

Passons à la deuxième grande méthode. Les séries de rendements financiers ont des propriétés statistiques particulières : des distributions à queues plus épaisses qu''une loi normale, c''est-à-dire des variations extrêmes plus fréquentes qu''attendu sous une hypothèse de normalité ; et une volatilité qui varie dans le temps et se regroupe en périodes calmes et en périodes agitées, un phénomène appelé hétéroscédasticité conditionnelle. Les modèles de la famille ARCH, introduits par Robert Engle, puis GARCH, étendus par Tim Bollerslev, sont conçus pour modéliser cette volatilité variable, ce qui est essentiel pour l''évaluation du risque et la gestion de portefeuille. Illustrons avec un exemple vérifié en Python : une série simulée de 250 rendements quotidiens, avec une volatilité quotidienne d''environ 1,9 %, donne, une fois annualisée en multipliant par la racine carrée de 252 jours de bourse, une volatilité annuelle d''environ 30 %. Retenez bien ce principe d''annualisation : il revient très souvent dans les questions de jury sur la mesure du risque. Au-delà de la seule volatilité, ces modèles économétriques servent aussi de brique de base aux modèles d''évaluation d''actifs multifactoriels, qui expliquent la rentabilité moyenne des titres par des facteurs de risque communs comme la taille des entreprises, leur niveau de valorisation ou leur momentum récent, estimés par des régressions en séries temporelles ou en panel sur de larges échantillons de titres. Un point de méthode à toujours mentionner devant un jury : avant d''appliquer un modèle ARCH/GARCH ou un modèle multifactoriel, il faut vérifier la stationnarité de la série étudiée, c''est-à-dire que ses propriétés statistiques (moyenne, variance) ne dérivent pas systématiquement dans le temps, sous peine d''obtenir des résultats économétriques trompeurs.

## 50:00 – 55:00 · Pause et quiz interactif

Prenons cinq minutes de pause avec un quiz. Première question : quelles sont les trois étapes d''une étude d''événement ? Deuxième question : que mesure un modèle GARCH que ne mesure pas un simple écart-type constant ? Troisième question : comment annualise-t-on une volatilité quotidienne ? Réponses : estimation du modèle de marché hors fenêtre, calcul de l''AR, calcul du CAR cumulé. Un modèle GARCH capture la variation de la volatilité dans le temps et son regroupement en périodes calmes et agitées. On annualise en multipliant la volatilité quotidienne par la racine carrée du nombre de jours de bourse dans l''année, généralement 252.

## 55:00 – 70:00 · L''enquête auprès de dirigeants financiers

Reprenons avec la troisième méthode, de nature plus qualitative. L''enquête auprès de dirigeants financiers, par questionnaire structuré ou entretien semi-directif, permet d''explorer les motivations déclarées derrière des choix de financement ou d''investissement observés dans les données. Cette méthode a notamment permis de révéler que des considérations comme la flexibilité financière ou le maintien d''une notation de crédit pèsent souvent autant, dans la pratique, que l''optimisation fiscale théorique dans les décisions d''endettement. Cette méthode comporte cependant des limites qu''il faut toujours mentionner à l''oral : le biais de déclaration, qui pousse les dirigeants à présenter leurs pratiques de façon favorable ; le taux de réponse souvent faible ; et la difficulté à généraliser à partir d''un échantillon de volontaires. C''est pourquoi cette méthode est le plus souvent utilisée en complément d''une analyse quantitative, et non en substitut.

## 70:00 – 80:00 · Protocole mixte appliqué à un contexte sénégalais

Voyons maintenant comment combiner ces méthodes dans un protocole de recherche concret, à titre pédagogique et fictif. Imaginons un doctorant souhaitant tester la théorie du financement hiérarchique auprès de PME sénégalaises du secteur agroalimentaire. Le volet quantitatif collecterait les états financiers de l''entreprise sur plusieurs exercices, avec l''accord des entreprises et le respect de la confidentialité des données, pour construire des indicateurs de structure de financement et tester statistiquement leur évolution en fonction des besoins et de la profitabilité. Le volet qualitatif mènerait des entretiens semi-directifs avec les dirigeants ou directeurs financiers pour comprendre les raisons déclarées de leurs choix, et vérifier si elles correspondent aux prédictions théoriques ou révèlent des spécificités locales non prévues par la théorie d''origine. Cette articulation entre données financières et entretiens illustre la triangulation méthodologique attendue dans un travail doctoral rigoureux.

## 80:00 – 85:00 · Synthèse de la séance

Récapitulons les trois méthodes vues aujourd''hui. L''étude d''événement mesure la réaction des prix à une information nouvelle via l''AR et le CAR. La modélisation économétrique, notamment via les modèles ARCH/GARCH, traite la volatilité variable des séries financières. L''enquête auprès de dirigeants financiers explore les motivations déclarées, en complément indispensable de l''analyse quantitative. Le choix et la combinaison de ces méthodes doivent toujours être justifiés par la question de recherche posée.

## 85:00 – 1:30:00 · Évaluation finale (5 questions avec réponses)

Terminons par une évaluation de cinq questions.

- Question 1 : Qu''est-ce qu''une rentabilité anormale cumulée (CAR), et à quoi sert-elle ? Réponse : c''est la somme des rentabilités anormales (écarts entre rentabilité observée et rentabilité attendue par le modèle de marché) sur une fenêtre de jours autour d''un événement ; elle permet de juger l''ampleur et la persistance de la réaction du marché à cet événement.
- Question 2 : Pourquoi un modèle GARCH est-il préférable à un écart-type constant pour une série de rendements financiers ? Réponse : parce que la volatilité des rendements financiers varie dans le temps et se regroupe en périodes calmes et agitées, ce qu''un écart-type constant ne peut pas représenter.
- Question 3 : Une volatilité quotidienne de 2 % correspond approximativement à quelle volatilité annualisée (avec 252 jours de bourse) ? Réponse : environ 2% × racine de 252, soit environ 31,7 %.
- Question 4 : Citez deux limites méthodologiques de l''enquête auprès de dirigeants financiers. Réponse : le biais de déclaration (réponses valorisantes) et le taux de réponse souvent faible, qui limite la représentativité de l''échantillon.
- Question 5 : Pourquoi recommande-t-on un protocole mixte (quantitatif et qualitatif) pour tester une théorie de structure de financement dans un contexte de marché en développement ? Réponse : parce que l''analyse quantitative documente les choix de financement réellement observés tandis que l''enquête qualitative en explore les motivations, et leur combinaison permet de détecter d''éventuelles spécificités locales non prévues par la théorie d''origine.', 'video', 90, false, 80
from public.courses c where c.slug = 'doc-fin'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : les méthodes de recherche en finance');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : traiter une question de synthèse d''examen de qualification en Finance', '## Fiche du cours vidéo

Durée : 1h30. Public : doctorants en finance préparant leur examen de qualification. Objectifs : s''entraîner en direct au traitement d''une question de synthèse d''examen, en mobilisant les deux courants théoriques et une méthode de recherche vus dans les séances précédentes. Matériel : diaporama, tableau pour construire le plan en direct. Prérequis : avoir visionné les trois vidéos précédentes et lu la leçon texte correspondante (leçon 5).

## Déroulé minuté

## 00:00 – 05:00 · Introduction

Bienvenue dans cette séance d''entraînement direct au traitement d''une question de synthèse d''examen de qualification. Nous allons reprendre la question étudiée en leçon texte : « Dans quelle mesure les débats théoriques sur l''efficience des marchés et sur la structure de financement des entreprises doivent-ils être reconsidérés lorsqu''on les applique à un marché financier en développement comme celui de l''Afrique de l''Ouest ? » et construire ensemble, pas à pas, une réponse complète. Une pause quiz interviendra au milieu, et nous terminerons par une évaluation finale.

## 05:00 – 15:00 · Décomposer la question avant de répondre

La première compétence à démontrer devant un jury, avant même de commencer à répondre, est la capacité à décomposer la question posée. Je vous propose de noter au tableau, avec moi, les trois exigences croisées de cette question. Exigence théorique : mobiliser à la fois le débat efficience/finance comportementale et le débat sur la structure de financement, sans en privilégier un seul au détriment de l''autre. Exigence contextuelle : la question porte explicitement sur la transposition de ces théories à un marché financier en développement, ce qui exclut une réponse purement descriptive qui se contenterait de résumer les théories occidentales sans les discuter. Exigence méthodologique : la question demande une proposition concrète de protocole empirique, qui doit découler logiquement de l''analyse qui précède plutôt que lui être ajoutée artificiellement en fin de copie. Un jury sanctionne sévèrement une réponse qui ignore une de ces trois exigences, même si les connaissances théoriques exposées sont par ailleurs correctes.

## 15:00 – 30:00 · Construire le plan en direct : parties I et II

Construisons maintenant le plan ensemble. La partie I traite le débat efficience/finance comportementale reconsidéré en contexte de marché peu profond : on rappelle les formes de l''efficience et les apports de la finance comportementale, puis on montre que la faible liquidité et les coûts d''arbitrage plus élevés sur un marché comme la BRVM peuvent limiter l''efficience de forme semi-forte, sans que cela traduise nécessairement une irrationalité plus marquée des investisseurs locaux — il s''agit d''une différence de structure de marché, pas de comportement. La partie II traite le débat sur la structure de financement reconsidéré dans le même contexte : on rappelle le théorème de Modigliani-Miller et ses trois extensions, puis on montre que l''accès restreint aux marchés de capitaux externes et l''asymétrie d''information potentiellement plus marquée renforcent particulièrement la pertinence de la théorie du financement hiérarchique pour les entreprises de la région. Remarquez la symétrie de construction entre ces deux parties : chacune suit le même schéma, rappel théorique puis discussion contextuelle, ce qui donne une cohérence visible à votre réponse.

## 30:00 – 40:00 · Construire le plan en direct : parties III et IV

La partie III met en tension les deux débats précédents, en montrant qu''ils se rejoignent sur un même constat méthodologique : les théories financières de référence, construites sur des hypothèses de marchés profonds, doivent être testées empiriquement sur le contexte local avant d''être supposées valides, plutôt que transposées par analogie. C''est cette partie III qui distingue une excellente réponse d''une réponse moyenne, car elle montre que vous ne traitez pas deux questions séparées mais une seule problématique unifiée. La partie IV propose le protocole empirique : une étude d''événement appliquée à un échantillon d''annonces d''entreprises cotées à la BRVM pour mesurer l''efficience locale, complétée par une enquête auprès de directeurs financiers de la région pour tester la théorie du financement hiérarchique. Notez bien que ce protocole combine les deux méthodes vues en séance précédente, ce qui montre au jury votre capacité à relier théorie et méthode de façon cohérente.

## 40:00 – 45:00 · Pause et quiz interactif

Prenons cinq minutes de pause avec un quiz. Première question : quelles sont les trois exigences croisées de la question d''examen étudiée ? Deuxième question : pourquoi la partie III du plan est-elle considérée comme la plus discriminante pour le jury ? Troisième question : quelles deux méthodes sont mobilisées dans le protocole empirique proposé ? Réponses : exigence théorique, exigence contextuelle, exigence méthodologique. La partie III montre que le candidat traite une problématique unifiée plutôt que deux questions séparées. Le protocole mobilise une étude d''événement et une enquête auprès de dirigeants financiers.

## 45:00 – 60:00 · Rédiger un extrait en direct

Passons maintenant à la rédaction, car un bon plan ne suffit pas : il faut savoir le rédiger avec précision à l''oral comme à l''écrit. Reprenons l''extrait de la partie I étudié en leçon texte et décomposons sa construction phrase par phrase. La première phrase pose le cadre théorique avec précision (la forme semi-forte de l''efficience). La deuxième phrase introduit la condition qui rend ce cadre théorique vérifié sur un marché développé (nombreux arbitragistes, coûts de transaction faibles). La troisième phrase introduit la nuance contextuelle, sans jamais affirmer un résultat empirique non vérifié (« ce qui n''invalide pas le cadre théorique mais invite à en vérifier empiriquement le degré effectif »). La quatrième phrase ajoute l''éclairage du second courant théorique (la finance comportementale) pour enrichir l''analyse plutôt que la répéter. Cette structure en quatre temps — cadre théorique, condition de validité, nuance contextuelle, éclairage complémentaire — est une excellente grille de rédaction que vous pouvez réutiliser pour n''importe quelle partie de votre réponse à l''oral.

## 60:00 – 75:00 · Simuler les objections d''un jury

Un jury ne se contente jamais d''écouter une réponse préparée : il pose des questions de relance pour tester la profondeur de votre maîtrise. Entraînons-nous à anticiper trois objections possibles sur cette question. Première objection : « Vous affirmez que la BRVM est moins efficiente, mais avez-vous des preuves empiriques précises ? » Bonne réponse : rappeler que l''on ne peut affirmer un résultat empirique précis sans étude dédiée, et que c''est précisément la raison du protocole proposé en partie IV — la nuance plutôt que l''affirmation catégorique est la meilleure défense. Deuxième objection : « La théorie du financement hiérarchique s''applique-t-elle aussi aux grandes entreprises cotées, ou seulement aux PME ? » Bonne réponse : préciser que la théorie a été développée principalement sur des entreprises cotées de marchés développés, et que son application aux PME de marchés en développement, où l''accès aux fonds propres externes est encore plus restreint, constitue justement une extension intéressante à tester empiriquement. Troisième objection : « Ne pourrait-on pas simplement appliquer les résultats obtenus sur des marchés comme Paris ou New York ? » Bonne réponse : rappeler que les caractéristiques structurelles diffèrent (liquidité, nombre d''arbitragistes, cadre institutionnel), ce qui justifie précisément la nécessité d''un test empirique local plutôt qu''une transposition directe.

## 75:00 – 85:00 · Synthèse de la séance

Récapitulons les compétences travaillées aujourd''hui. Décomposer systématiquement une question de synthèse en ses exigences théoriques, contextuelles et méthodologiques. Construire un plan qui traite chaque courant puis les met en tension avec le contexte imposé. Rédiger selon une grille en quatre temps : cadre théorique, condition de validité, nuance contextuelle, éclairage complémentaire. Anticiper les objections de relance d''un jury en privilégiant toujours la nuance méthodologique à l''affirmation catégorique non vérifiée.

## 85:00 – 1:30:00 · Évaluation finale (5 questions avec réponses)

Terminons par une évaluation de cinq questions.

- Question 1 : Citez les trois exigences croisées d''une question de synthèse d''examen de qualification en finance appliquée à un contexte de marché en développement. Réponse : exigence théorique (mobiliser plusieurs courants), exigence contextuelle (discuter la transposition au contexte imposé), exigence méthodologique (proposer un protocole empirique cohérent).
- Question 2 : Pourquoi une réponse qui traite séparément les deux courants théoriques sans les mettre en tension avec le contexte est-elle jugée insuffisante ? Réponse : parce qu''elle ne répond pas réellement à la question posée, qui porte sur la reconsidération conjointe des théories dans un contexte spécifique, et non sur leur simple restitution.
- Question 3 : Décrivez la grille de rédaction en quatre temps présentée dans cette séance. Réponse : cadre théorique précis, condition de validité de ce cadre, nuance contextuelle sans affirmation catégorique non vérifiée, éclairage complémentaire d''un second courant théorique.
- Question 4 : Un jury vous demande des preuves empiriques précises que vous n''avez pas. Quelle est la meilleure stratégie de réponse ? Réponse : reconnaître qu''aucune affirmation empirique précise ne peut être faite sans étude dédiée, et rappeler que c''est précisément la raison d''être du protocole empirique proposé.
- Question 5 : Pourquoi ne peut-on pas simplement transposer des résultats obtenus sur un marché développé à un marché financier en développement ? Réponse : parce que les caractéristiques structurelles (liquidité, nombre d''arbitragistes, cadre institutionnel, accès aux marchés de capitaux) diffèrent, ce qui impose une vérification empirique locale plutôt qu''une transposition par analogie.', 'video', 90, false, 90
from public.courses c where c.slug = 'doc-fin'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : traiter une question de synthèse d''examen de qualification en Finance');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : simulation complète d''une soutenance de qualification doctorale en Finance', '## Fiche du cours vidéo

Durée : 1h30. Public : doctorants en finance en fin de préparation à leur examen de qualification. Objectifs : vivre, dans des conditions proches du réel, une simulation complète de soutenance de qualification doctorale en finance, avec présentation du champ, défense d''un projet de thèse fictif, et questions de jury type. Matériel : diaporama de présentation, grille d''auto-évaluation finale. Prérequis : avoir suivi les quatre vidéos précédentes et lu les cinq leçons texte du cours.

## Déroulé minuté

## 00:00 – 05:00 · Introduction et mise en situation

Bienvenue dans cette cinquième et dernière vidéo, la plus importante pour votre préparation finale : une simulation complète de soutenance de qualification doctorale en finance. Je vais jouer le rôle du candidat doctorant, puis nous passerons en revue les questions qu''un jury type poserait, avec la structure attendue d''une bonne réponse pour chacune. Mettez-vous dans les conditions réelles de l''épreuve : calme, concentration, et une bonne gestion du temps de parole, qui est aussi évaluée par le jury.

## 05:00 – 20:00 · Présentation du champ (15 minutes)

« Mesdames, Messieurs les membres du jury, je vous propose de présenter en 15 minutes l''état du champ de la finance qui structure mon projet de thèse. La finance de marché et la finance d''entreprise sont traversées par deux grands débats que j''ai choisi d''articuler. D''une part, le débat entre l''hypothèse d''efficience des marchés, qui postule une intégration rapide de l''information dans les prix, et la finance comportementale, qui documente des biais cognitifs systématiques et des anomalies de marché durables. D''autre part, le débat sur la structure de financement des entreprises, ouvert par le théorème de Modigliani-Miller, puis enrichi par trois extensions majeures : l''avantage fiscal de la dette, les coûts de faillite et de détresse financière, et l''asymétrie d''information, cette dernière donnant naissance à la théorie du financement hiérarchique. Ces deux débats, bien que portant sur des objets différents — la formation des prix d''un côté, le choix des sources de financement de l''autre — partagent un point commun essentiel pour mon projet de thèse : ils ont été construits et testés empiriquement, pour l''essentiel, sur des marchés financiers profonds et liquides des économies avancées. Mon projet de thèse propose de les tester empiriquement sur la Bourse Régionale des Valeurs Mobilières et sur un échantillon d''entreprises de la zone UEMOA, en combinant deux méthodes : une étude d''événement pour mesurer le degré effectif d''efficience locale, et une enquête auprès de directeurs financiers pour tester la pertinence de la théorie du financement hiérarchique dans ce contexte. Ma problématique centrale est la suivante : dans quelle mesure les théories de référence de la finance doivent-elles être reconsidérées, plutôt que simplement transposées, lorsqu''elles sont appliquées à un marché financier en développement ? » Voilà le type d''exposé structuré, avec une problématique claire énoncée explicitement à la fin, que votre jury attend de vous en quinze minutes.

## 20:00 – 25:00 · Transition et consignes pour la suite

Après cette présentation, le jury engage généralement une série de questions, qui alternent entre questions de connaissance pure, questions de mise en tension critique, et questions sur la faisabilité méthodologique du projet. Nous allons maintenant passer en revue dix questions de jury type, avec chaque fois la structure attendue d''une bonne réponse, plutôt qu''une réponse mot à mot à mémoriser — c''est cette structure qu''il faut intérioriser.

## 25:00 – 55:00 · Questions de jury type 1 à 5

- Question 1 du jury : « Pourquoi avez-vous choisi d''articuler ces deux débats théoriques plutôt que de vous concentrer sur un seul ? » Structure de bonne réponse : rappeler que les deux débats partagent le même enjeu méthodologique (la transposition à un marché en développement), ce qui justifie leur articulation plutôt qu''un choix exclusif, et montrer que cette articulation enrichit la problématique sans la disperser.
- Question 2 du jury : « L''hypothèse d''efficience des marchés n''est-elle pas réfutée par l''existence de bulles spéculatives ? » Structure de bonne réponse : nuancer en distinguant les formes de l''efficience, rappeler que les bulles sont documentées comme anomalies mais que leur existence ne réfute pas nécessairement l''efficience de forme faible, et mentionner les limites à l''arbitrage comme explication de leur persistance.
- Question 3 du jury : « Pourquoi la théorie du financement hiérarchique vous semble-t-elle plus pertinente que la théorie du compromis pour votre terrain ? » Structure de bonne réponse : ne jamais rejeter totalement l''une des deux théories, mais argumenter que les caractéristiques structurelles du terrain (accès restreint aux marchés de capitaux, asymétrie d''information) rendent la théorie du financement hiérarchique a priori plus prédictive, tout en précisant que cela reste une hypothèse à tester, pas une certitude.
- Question 4 du jury : « Votre étude d''événement portera sur combien d''entreprises, et pourquoi ce nombre ? » Structure de bonne réponse : donner un ordre de grandeur réaliste compte tenu du nombre de titres cotés à la BRVM, reconnaître la contrainte d''un échantillon plus restreint que sur un marché développé, et expliquer les implications statistiques de cette contrainte (puissance du test, nécessité de regrouper plusieurs types d''événements).
- Question 5 du jury : « Comment garantirez-vous la qualité des réponses à votre enquête auprès des directeurs financiers ? » Structure de bonne réponse : mentionner les techniques de fiabilisation (anonymat des réponses, croisement avec des données financières objectives, pré-test du questionnaire auprès d''un petit échantillon) et reconnaître honnêtement les limites qui subsisteront malgré ces précautions.

## 55:00 – 60:00 · Pause et quiz interactif

Prenons cinq minutes de pause. Je vous propose, à titre de quiz, de reformuler mentalement en une phrase chacune des cinq questions de jury déjà vues, sans relire vos notes, pour tester votre capacité de restitution sous une forme proche de l''oral réel.

## 60:00 – 85:00 · Questions de jury type 6 à 10

- Question 6 du jury : « Si votre étude d''événement montre une réaction de marché très rapide, en conclurez-vous que la BRVM est efficiente ? » Structure de bonne réponse : refuser la conclusion hâtive, rappeler qu''un seul résultat ne suffit pas à trancher, et qu''il faudrait répliquer l''analyse sur plusieurs types d''événements et plusieurs périodes avant toute généralisation.
- Question 7 du jury : « Votre projet mentionne un taux d''impôt sur les sociétés pour vos simulations : sur quelle source officielle vous appuyez-vous ? » Structure de bonne réponse : préciser explicitement que toute valeur chiffrée utilisée dans les illustrations théoriques est fictive, à but pédagogique, et qu''une application réelle nécessiterait de vérifier le taux officiel en vigueur auprès des sources réglementaires compétentes au moment de l''étude.
- Question 8 du jury : « En quoi votre travail apporte-t-il une contribution originale par rapport à la littérature existante ? » Structure de bonne réponse : rappeler que la plupart des tests empiriques de ces théories ont été menés sur des marchés développés, et que leur test systématique et combiné sur un marché financier en développement comme la BRVM, avec une méthode mixte, constitue l''apport attendu, sans exagérer la portée de ce qui reste une étude de cas régionale.
- Question 9 du jury : « Quelles limites anticipez-vous déjà pour votre travail ? » Structure de bonne réponse : citer honnêtement la taille réduite de l''échantillon disponible, les éventuelles limites de qualité ou de disponibilité des données financières locales, et le biais de déclaration possible dans l''enquête — une bonne réponse anticipe les limites plutôt que de les laisser découvrir par le jury.
- Question 10 du jury : « Si vos résultats empiriques contredisaient vos hypothèses théoriques, que feriez-vous ? » Structure de bonne réponse : affirmer qu''un résultat contraire aux hypothèses initiales est aussi une contribution scientifique légitime, à condition d''être discuté rigoureusement, et qu''il faudrait alors explorer les raisons de cet écart plutôt que de le dissimuler ou de forcer l''interprétation des données.

## 85:00 – 1:30:00 · Grille d''auto-évaluation de la soutenance simulée

Cette dernière vidéo se termine, non par une évaluation à cinq questions avec réponses comme les précédentes, mais par une grille d''auto-évaluation que vous devez utiliser après chaque entraînement oral, seul ou avec un collègue. Notez-vous honnêtement de 1 à 4 sur chacun des critères suivants (1 = à retravailler, 4 = maîtrisé).

- Clarté de la problématique énoncée en fin de présentation de 15 minutes : la problématique est-elle formulée en une phrase compréhensible, sans jargon excessif ?
- Articulation des deux courants théoriques : les deux débats sont-ils reliés par un fil directeur clair, plutôt que juxtaposés sans lien ?
- Précision du vocabulaire théorique : les termes techniques (formes de l''efficience, extensions de Modigliani-Miller, AR, CAR) sont-ils employés avec exactitude ?
- Gestion des questions pièges : les réponses évitent-elles les affirmations catégoriques non vérifiées, au profit d''une nuance méthodologique assumée ?
- Honnêteté sur les limites du projet : les limites de l''échantillon, des données ou de la méthode sont-elles reconnues spontanément plutôt qu''évitées ?
- Gestion du temps de parole : la présentation tient-elle dans le temps imparti sans précipitation ni longueurs excessives ?
- Capacité à relier théorie et méthode : chaque méthode proposée est-elle justifiée par rapport à la théorie qu''elle permet de tester ?
- Ancrage dans le contexte régional : le projet évite-t-il la transposition par analogie, au profit d''une vérification empirique explicitement revendiquée ?

Faites le total sur 32 points. Un score supérieur à 26 traduit une préparation solide ; entre 18 et 26, continuez à retravailler les points les plus faibles identifiés ; en dessous de 18, reprenez les quatre premières vidéos de ce cours avant de retenter une simulation complète. Cette grille, répétée à intervalles réguliers durant vos huit semaines de préparation, est l''outil le plus efficace pour transformer une connaissance théorique en une performance orale maîtrisée devant un jury réel.', 'video', 90, false, 100
from public.courses c where c.slug = 'doc-fin'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : simulation complète d''une soutenance de qualification doctorale en Finance');
