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

-- Cours : Doctorat Contrôle de gestion : réussir l'examen de qualification doctorale
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'doc-cg', (select id from public.levels where name = 'Doctorat'), null, 'Contrôle de gestion', 'Doctorat Contrôle de gestion : réussir l''examen de qualification doctorale', 'Préparation à l''examen de qualification doctorale en contrôle de gestion : l''opposition entre l''approche cybernétique et rationnelle du contrôle et les approches socio-organisationnelles, le débat budget traditionnel contre beyond budgeting, les méthodes de recherche du champ (étude de cas clinique, recherche-intervention, enquêtes quantitatives) et une simulation complète de soutenance. Public : doctorants en sciences de gestion ayant déjà une formation de niveau Master en contrôle de gestion.', true, 804
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Réussir son examen de qualification doctorale en contrôle de gestion', 'L''examen de qualification doctorale en contrôle de gestion n''est pas un contrôle de connaissances au sens scolaire du terme. C''est une épreuve de passage, souvent appelée comprehensive exam ou examen de synthèse selon les programmes, qui vérifie qu''un doctorant maîtrise suffisamment l''état de l''art de son champ pour s''engager, en toute autonomie intellectuelle, dans la rédaction d''une thèse. Avant cette épreuve, on est étudiant qui apprend une discipline ; après, on est censé être un chercheur qui peut la faire avancer. Comprendre cette bascule est la première clé de la réussite.

## Nature de l''épreuve

Dans la plupart des programmes doctoraux en sciences de gestion, l''examen de qualification en contrôle de gestion comporte deux volets qui se répondent.

Le premier est une synthèse écrite de la littérature. Le candidat doit produire un document qui démontre qu''il connaît les grands courants théoriques du contrôle de gestion, qu''il peut les situer historiquement les uns par rapport aux autres, qu''il perçoit leurs tensions et leurs complémentarités, et qu''il est capable d''en tirer un positionnement pour son propre projet de thèse. Ce n''est pas un résumé juxtaposé d''auteurs : c''est une mise en intrigue de la littérature, organisée autour de débats (par exemple l''opposition entre une vision cybernétique du contrôle, héritée des travaux fondateurs sur la planification-contrôle, et une vision socio-organisationnelle qui voit le contrôle comme une construction sociale traversée par des jeux d''acteurs).

Le second volet est une soutenance orale devant un jury, généralement composé de trois à cinq enseignants-chercheurs du département, parfois complété par un spécialiste extérieur. Le candidat y présente d''abord brièvement son positionnement théorique et l''esquisse de son projet de thèse, puis répond à des questions qui testent la profondeur de sa compréhension : peut-il expliquer pourquoi un courant a émergé en réaction à un autre ? Peut-il discuter les limites d''une méthode de recherche qu''il envisage d''utiliser ? Peut-il relier un phénomène de terrain qu''il a observé à un concept théorique précis ?

## Ce qu''attend un jury doctoral

Un jury de qualification n''attend pas l''exhaustivité, il attend la maîtrise. Un candidat qui cite vingt auteurs sans jamais les faire dialoguer entre eux inquiète davantage un jury qu''un candidat qui structure sa pensée autour de trois ou quatre débats solides, qu''il explique avec précision et qu''il relie explicitement à son projet.

Trois qualités sont systématiquement recherchées. La rigueur conceptuelle, d''abord : les termes du champ (contrôle de gestion, pilotage, planification, budget, tableau de bord, contrôle organisationnel) doivent être employés avec la précision qu''exige la discipline, et non comme des synonymes interchangeables. La distance critique, ensuite : un bon candidat ne récite pas une théorie, il sait dire dans quel contexte elle s''applique bien, dans quel contexte elle a été critiquée, et par qui. La capacité de positionnement, enfin : le candidat doit montrer qu''il sait où se situe son propre projet de recherche dans cette cartographie théorique, et pourquoi ce positionnement est pertinent et original.

Un jury sanctionne en revanche très sévèrement trois défauts récurrents : la paraphrase sans recul (répéter ce que dit un auteur sans jamais le discuter), l''anachronisme théorique (utiliser un cadre d''analyse hors de son contexte d''émergence sans le justifier), et l''approximation historique (confondre l''ordre d''apparition des courants, ce qui trahit une connaissance livresque et non digérée).

## Méthode de travail recommandée

La préparation d''un examen de qualification s''étale typiquement sur plusieurs mois et repose sur trois outils complémentaires.

Les fiches de lecture sont le socle. Pour chaque texte ou chaque courant important, une fiche synthétique doit répondre à des questions stables : quelle est la question de recherche ou le problème pratique à l''origine de ce courant ? Quels sont les concepts clés qu''il mobilise ? Quelles hypothèses sur l''organisation et sur l''acteur humain sous-tend-il ? Quelles critiques lui ont été adressées, et par quels courants concurrents ? Quels usages empiriques en a-t-on faits ?

La cartographie des courants vient ensuite. Il s''agit de construire, au fil de la lecture, une représentation visuelle (un tableau à double entrée, une frise chronologique, un schéma de filiations) qui situe les courants les uns par rapport aux autres : qui critique qui, qui prolonge qui, quels courants partagent des présupposés malgré des vocabulaires différents. Cette cartographie est l''outil qui permet, le jour de l''oral, de répondre avec aisance à une question inattendue en resituant immédiatement l''enjeu dans l''ensemble du champ.

La note de synthèse, enfin, est l''aboutissement écrit : un document structuré de quelques dizaines de pages qui expose la cartographie sous forme de texte argumenté, conclut sur les zones encore peu explorées de la littérature (les « trous » dans lesquels une thèse peut s''insérer utilement), et propose un positionnement théorique et méthodologique pour le projet de thèse du candidat.

## Plan de travail sur huit semaines

Un calendrier de préparation réaliste peut s''organiser ainsi. Les deux premières semaines sont consacrées à la relecture des textes fondateurs du champ et à l''ouverture des fiches de lecture ; l''objectif est de couvrir large avant d''aller en profondeur. Les semaines trois et quatre approfondissent les deux ou trois grands débats théoriques jugés les plus structurants pour le projet de thèse, avec un effort particulier sur les critiques croisées entre courants. La semaine cinq est consacrée aux méthodes de recherche du champ : il faut être capable de discuter, pour chaque grande méthode, ses forces, ses limites, et les débats épistémologiques qu''elle soulève. La semaine six est celle de la rédaction de la note de synthèse. La semaine sept est consacrée à des simulations d''oral, idéalement devant des pairs doctorants ou un directeur de thèse, qui posent des questions déstabilisantes. La semaine huit, enfin, est une semaine de consolidation : relecture de la cartographie, révision des points faibles identifiés lors des simulations, et repos la veille de l''épreuve, car un jury perçoit immédiatement la fatigue intellectuelle d''un candidat.

Ce cours vous accompagne dans cette préparation en se concentrant sur le contrôle de gestion : ses grands débats théoriques, ses méthodes de recherche spécifiques, et un exercice type d''examen de qualification entièrement corrigé.

## Exercices pratiques

1. Construisez le squelette d''une fiche de lecture type (rubriques et questions) que vous utiliserez pour chaque courant théorique étudié dans ce cours.

2. Esquissez une première version de votre cartographie des courants en contrôle de gestion, même incomplète : placez au moins quatre courants ou auteurs que vous connaissez déjà et tracez les relations (filiation, critique, complémentarité) que vous pressentez entre eux.

3. Identifiez, dans votre propre projet de thèse (même à l''état d''ébauche), la question pratique de contrôle de gestion à laquelle il cherche à répondre. Reformulez-la en une phrase qui pourrait ouvrir votre note de synthèse.

4. Rédigez un calendrier de préparation sur huit semaines adapté à votre situation (temps disponible, accès aux textes, disponibilité d''un directeur de thèse pour les simulations d''oral).

5. Listez trois questions que vous redoutez qu''un jury vous pose sur votre projet de thèse, et pour chacune, notez en une phrase l''angle par lequel vous pourriez commencer à y répondre.

## Corrigé

1. Une fiche de lecture robuste comporte au minimum les rubriques suivantes : référence complète du texte ou identification du courant ; problème pratique ou question de recherche à l''origine ; concepts clés et leur définition précise ; hypothèses implicites sur l''organisation et sur l''acteur ; principaux apports ; principales critiques reçues, avec le nom des courants ou auteurs critiques ; usages empiriques connus ; liens possibles avec votre propre projet de thèse.

2. Il n''y a pas de corrigé unique : l''exercice vise à vous faire prendre conscience, dès le début de la préparation, de l''état réel de vos connaissances et de leurs lacunes. Une cartographie satisfaisante à ce stade montre au moins une opposition claire (par exemple une approche qui insiste sur la rationalité des dispositifs de contrôle face à une approche qui insiste sur leur dimension sociale et politique) et une filiation claire (par exemple un courant qui prolonge et complexifie un modèle plus ancien).

3. L''exercice est individuel, mais une bonne reformulation évite deux pièges : elle n''est pas purement théorique et déconnectée du terrain (« étudier le contrôle de gestion dans les PME »), et elle n''est pas purement opérationnelle sans portée théorique (« aider une entreprise à construire son budget »). Une formulation réussie relie un phénomène observable à une question conceptuelle non résolue dans la littérature.

4. Le calendrier proposé dans la leçon est un gabarit ; l''essentiel est de vérifier qu''il réserve du temps explicite à quatre activités distinctes : lecture large, approfondissement des débats structurants, travail sur les méthodes, et entraînement oral — cette dernière étant souvent négligée par les candidats qui sur-investissent la seule lecture.

5. Il n''y a pas de bonne ou de mauvaise question redoutée : l''intérêt de l''exercice est de la nommer explicitement plutôt que de l''éviter, et de commencer, même modestement, à y préparer une réponse structurée plutôt que de compter sur l''improvisation le jour de l''oral.', 'texte', 45, true, 10
from public.courses c where c.slug = 'doc-cg'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Réussir son examen de qualification doctorale en contrôle de gestion');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Courant théorique 1 : l''approche cybernétique et rationnelle du contrôle de gestion', 'Le premier grand courant que doit maîtriser tout candidat à l''examen de qualification en contrôle de gestion est ce que l''on appelle, par commodité, l''approche cybernétique ou rationnelle du contrôle. Elle constitue le socle historique de la discipline et reste, aujourd''hui encore, le cadre implicite de la plupart des dispositifs de gestion observés dans les organisations.

## Définition et logique d''ensemble

Dans cette approche, le contrôle de gestion est pensé comme un processus de régulation : on fixe des objectifs, on alloue des ressources pour les atteindre, on mesure les résultats obtenus, on compare ces résultats aux objectifs, et on corrige l''action en consé­quence. Cette boucle (objectif, action, mesure, écart, correction) est directement inspirée de la cybernétique, c''est-à-dire de la science du pilotage des systèmes par rétroaction, dont les principes ont été formulés dans les travaux fondateurs sur la théorie des systèmes et des mécanismes de régulation au milieu du vingtième siècle. Appliquée à l''organisation, cette logique traite l''entreprise comme un système que l''on peut piloter rationnellement, à condition de disposer des bons instruments de mesure et de la bonne architecture de responsabilités.

Le contrôle de gestion y est donc défini comme le processus par lequel les dirigeants s''assurent que les ressources sont obtenues et utilisées avec efficacité et efficience pour atteindre les objectifs de l''organisation. Cette définition, devenue classique dans la discipline, insiste sur trois idées : le contrôle sert la stratégie (il n''est pas une fin en soi), il porte sur l''utilisation des ressources (il est donc étroitement lié à la comptabilité de gestion), et il est distinct à la fois de la planification stratégique, qui fixe les grandes orientations à long terme, et du contrôle d''exécution, qui porte sur des tâches programmables et répétitives à très court terme.

## Auteurs fondateurs et apports

L''auteur le plus structurant de ce courant est le chercheur américain à l''origine, dans les années 1960 et 1970, du modèle dit de la planification-contrôle, qui distingue trois niveaux de pilotage dans l''organisation. Le niveau de la planification stratégique définit les finalités et les grandes orientations, sur un horizon long et dans un contexte d''incertitude élevée. Le niveau du contrôle de gestion (management control) organise la mise en œuvre de la stratégie à moyen terme, notamment par les budgets, les centres de responsabilité et les tableaux de bord : c''est un processus qui engage un dialogue entre dirigeants et responsables opérationnels. Le niveau du contrôle d''exécution (ou contrôle opérationnel) assure, à très court terme, que des tâches bien définies sont exécutées efficacement, souvent par des règles et des procédures plutôt que par un dialogue managérial.

Cette architecture à trois niveaux a eu une influence considérable : elle a fourni le vocabulaire encore utilisé aujourd''hui (centres de coûts, centres de profit, centres d''investissement, prix de cession interne) et elle a légitimé le contrôle de gestion comme fonction managériale distincte de la comptabilité générale, orientée vers l''aide à la décision plutôt que vers la seule production d''états financiers.

D''autres apports ont enrichi ce socle. Les travaux sur la comptabilité de gestion et les coûts de production, antérieurs et postérieurs, ont fourni les outils de calcul (coûts complets, coûts variables, coûts standards, analyse des écarts) qui permettent de rendre opérationnelle la logique de comparaison entre prévision et réalisation. Les travaux sur la théorie de l''agence, développés en économie des organisations, ont ensuite donné un fondement microéconomique à cette approche : si les intérêts des dirigeants et des actionnaires, ou des responsables opérationnels et de la direction générale, peuvent diverger, les dispositifs de contrôle (budgets, indicateurs, systèmes d''incitation) servent à aligner ces intérêts et à réduire les asymétries d''information.

## Évolution historique

Ce courant naît dans un contexte précis : celui des grandes entreprises industrielles américaines de la première moitié du vingtième siècle, confrontées au problème de la décentralisation. Comment une direction générale peut-elle déléguer des responsabilités à des directions de division tout en gardant une vision d''ensemble de la performance ? La réponse apportée est celle des centres de responsabilité budgétaire : on découpe l''organisation en unités dont on peut mesurer la performance de façon homogène (coûts, profit ou rentabilité des capitaux investis selon le périmètre de responsabilité confié), et on pilote l''ensemble par un système de reporting périodique.

Cette logique s''est ensuite diffusée largement, y compris dans des organisations non marchandes, avec l''idée que tout système organisé peut bénéficier d''un pilotage par objectifs et indicateurs, pour peu que l''on adapte les outils de mesure à la nature de son activité.

## Limites et critiques

Ce courant a fait l''objet de critiques convergentes, qui ont ouvert la voie aux approches concurrentes étudiées dans la leçon suivante. Une première limite porte sur l''hypothèse de rationalité : le modèle suppose des acteurs qui réagissent de façon prévisible aux objectifs et aux mesures, alors que les comportements réels face aux budgets (négociation à la baisse des objectifs, constitution de « coussins » budgétaires, manipulation des indicateurs en fin de période) montrent que les acteurs interprètent et s''approprient stratégiquement les dispositifs de contrôle.

Une deuxième limite porte sur le réductionnisme de la mesure : tout ce qui compte vraiment dans une organisation (la qualité de service, la coopération entre équipes, l''innovation) n''est pas toujours mesurable facilement, et un pilotage trop centré sur quelques indicateurs quantitatifs financiers risque de détourner l''attention des acteurs vers ce qui est mesuré au détriment de ce qui ne l''est pas.

Une troisième limite porte sur la rigidité face à l''incertitude : le modèle de la planification-contrôle a été pensé pour des environnements relativement stables, où l''on peut fixer des objectifs annuels pertinents sur toute la période. Dans des environnements plus volatils, le cycle budgétaire annuel devient rapidement obsolète, ce qui a nourri, bien plus tard, le débat sur le « beyond budgeting » étudié en leçon quatre.

Malgré ces critiques, l''approche cybernétique reste la grammaire de base du contrôle de gestion : même les auteurs qui la critiquent le plus vivement s''y réfèrent, explicitement ou implicitement, comme le point de départ de leur propre construction théorique.

## Exercices pratiques

1. Expliquez, avec vos propres mots, la différence entre contrôle de gestion et contrôle d''exécution selon le modèle de la planification-contrôle. Donnez un exemple pour chaque niveau dans une entreprise de distribution.

2. Pourquoi la théorie de l''agence est-elle considérée comme un fondement complémentaire de l''approche cybernétique plutôt que comme un courant concurrent ?

3. Un directeur financier affirme : « Tant que nos indicateurs sont dans le vert, l''organisation fonctionne bien. » Discutez cette affirmation à la lumière des limites du courant cybernétique.

4. En quoi le découpage d''une organisation en centres de responsabilité peut-il créer des comportements non prévus par les concepteurs du système de contrôle ? Donnez deux exemples.

5. Dans quel type de contexte organisationnel (stabilité, prévisibilité, nature de l''activité) l''approche cybernétique vous semble-t-elle la plus pertinente ? Justifiez.

## Corrigé

1. Le contrôle de gestion organise, à moyen terme, le dialogue entre la direction générale et les responsables d''unités autour d''objectifs négociés (budgets, plans d''action) : il laisse une marge d''appréciation aux responsables sur la façon d''atteindre l''objectif. Le contrôle d''exécution porte sur des tâches très cadrées, à très court terme, où la marge d''appréciation est faible et où des règles ou procédures suffisent : par exemple, dans une enseigne de distribution, la définition des objectifs de chiffre d''affaires et de marge d''un directeur de magasin relève du contrôle de gestion, tandis que le respect d''une procédure d''encaissement en caisse relève du contrôle d''exécution.

2. Parce qu''elle ne propose pas un modèle alternatif de pilotage de l''organisation, mais un fondement théorique qui explique pourquoi les dispositifs de contrôle (budgets, indicateurs, incitations) sont nécessaires : elle justifie, en termes d''intérêts divergents et d''asymétrie d''information entre dirigeants et subordonnés, la logique même de surveillance et de mesure que l''approche cybernétique met en œuvre.

3. L''affirmation traduit un réductionnisme typique de la mesure : elle suppose que les indicateurs choisis captent l''essentiel de la performance de l''organisation, alors que des dimensions importantes (qualité perçue par les clients, climat social, capacité d''innovation) peuvent se détériorer sans que les indicateurs financiers s''en trouvent immédiatement affectés. Une bonne réponse doit nuancer : les indicateurs sont utiles mais insuffisants seuls, et leur interprétation doit être complétée par d''autres sources d''information.

4. Le découpage en centres de responsabilité peut inciter un responsable à optimiser son propre indicateur au détriment de la performance globale (par exemple refuser une commande urgente qui dégraderait son taux d''utilisation des capacités, alors qu''elle serait bénéfique pour l''entreprise dans son ensemble), ou à retarder artificiellement des charges d''une période sur l''autre pour présenter un résultat conforme à l''objectif du centre, sans que cela corresponde à une amélioration réelle de la gestion.

5. L''approche cybernétique est la plus pertinente dans des contextes où l''activité est relativement stable et répétitive, où les relations de cause à effet entre actions et résultats sont bien connues, et où les objectifs peuvent être fixés avec un horizon de douze mois sans devenir rapidement caducs : c''est typiquement le cas d''activités industrielles ou de services standardisés dans un environnement concurrentiel prévisible. Elle est moins adaptée dans des environnements très incertains ou dans des organisations dont la performance repose largement sur des dimensions difficiles à mesurer, comme l''innovation ou la créativité.', 'texte', 45, false, 20
from public.courses c where c.slug = 'doc-cg'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Courant théorique 1 : l''approche cybernétique et rationnelle du contrôle de gestion');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Courant théorique 2 : les approches socio-organisationnelles du contrôle', 'Face au courant cybernétique présenté dans la leçon précédente, un ensemble de travaux, regroupés ici sous le terme d''approches socio-organisationnelles du contrôle, proposent une lecture radicalement différente : le contrôle de gestion n''y est plus seulement un instrument de régulation rationnelle, mais une construction sociale, traversée par des jeux d''acteurs, des rapports de pouvoir et des significations qui se négocient dans l''organisation.

## Définition et logique d''ensemble

L''idée centrale de ce courant est que les dispositifs de contrôle (budgets, indicateurs, tableaux de bord, procédures) ne produisent jamais mécaniquement les effets prévus par leurs concepteurs. Entre la conception d''un outil de gestion et son usage effectif sur le terrain s''interposent des acteurs qui l''interprètent, le détournent, le contournent, ou au contraire s''en saisissent pour défendre leurs propres intérêts, leur position dans l''organisation, ou leur conception légitime du métier. Le contrôle de gestion devient alors un objet d''analyse sociologique autant qu''un objet de gestion technique.

Ce courant s''appuie sur une hypothèse différente de celle du modèle cybernétique quant à la nature de l''acteur organisationnel : l''acteur n''est pas seulement un agent qui réagit à des incitations financières, il est un acteur stratégique, doté d''une rationalité limitée mais réelle, qui cherche à préserver ou à étendre ses marges de liberté (ses « zones d''incertitude ») dans un système d''action concret. Il en résulte que tout dispositif de contrôle, aussi bien conçu soit-il techniquement, est en réalité le produit (et l''enjeu) d''un jeu de pouvoir entre les acteurs qui le construisent, ceux qui doivent l''appliquer, et ceux qui en subissent les effets.

## Apports fondateurs

Plusieurs lignées de travaux nourrissent ce courant. La sociologie des organisations, en France notamment, a développé l''analyse stratégique des organisations : toute organisation est un système d''action concret, structuré par des jeux de pouvoir autour de zones d''incertitude que chaque acteur cherche à contrôler pour négocier en position favorable. Appliquée au contrôle de gestion, cette grille de lecture montre que les responsables budgétaires, par exemple, ne se contentent pas d''exécuter des directives : ils négocient les objectifs qui leur sont fixés, retiennent stratégiquement de l''information sur leurs marges de manœuvre réelles, et utilisent leur connaissance fine du terrain comme une ressource de pouvoir face à la direction générale.

Une deuxième lignée, issue des études critiques en comptabilité (critical accounting studies), analyse les dispositifs comptables et budgétaires comme des technologies de pouvoir : loin d''être neutres, ils rendent visibles certains phénomènes et invisibles d''autres, ils légitiment certaines catégories d''acteurs (les gestionnaires, les financiers) au détriment d''autres (les métiers opérationnels, les corps de métier traditionnels), et ils participent ainsi à façonner les rapports de force dans l''organisation autant qu''ils les mesurent.

Une troisième lignée s''appuie sur les théories de l''institutionnalisation et de la construction sociale des pratiques de gestion : les outils de contrôle se diffusent dans les organisations non pas uniquement parce qu''ils sont techniquement supérieurs, mais parce qu''ils deviennent des normes socialement attendues, des signes de légitimité et de modernité organisationnelle, que les dirigeants adoptent parfois davantage pour se conformer à ce qui est considéré comme une « bonne pratique » du secteur que pour leur efficacité intrinsèque démontrée.

## Évolution historique

Ces approches se développent à partir des années 1970-1980, en réaction aux limites perçues du modèle cybernétique : les chercheurs en sociologie des organisations et en comptabilité critique observent, sur le terrain, des écarts considérables entre le fonctionnement théorique des dispositifs de contrôle et leurs usages réels. Le courant se nourrit également de la montée, dans les sciences sociales, d''une attention plus générale portée aux dimensions symboliques, politiques et discursives des phénomènes organisationnels, par contraste avec des approches plus fonctionnalistes qui dominaient auparavant.

Ce courant a progressivement gagné en influence dans la recherche académique en contrôle de gestion, notamment via le développement de la méthode de l''étude de cas clinique et de la recherche-intervention (présentées en leçon quatre), qui permettent précisément de documenter finement ces jeux d''acteurs autour des dispositifs de contrôle, alors que les méthodes quantitatives à grande échelle les rendent plus difficiles à observer.

## Limites et critiques

Ce courant a lui-même été critiqué, notamment par les tenants de l''approche cybernétique et par certains chercheurs en gestion plus appliquée. Une première critique porte sur l''opérationnalité : en insistant sur la complexité des jeux d''acteurs et sur l''imprévisibilité des usages des outils, ce courant offre parfois peu de prescriptions concrètes aux praticiens qui doivent, malgré tout, concevoir et faire vivre des systèmes de contrôle dans leurs organisations.

Une deuxième critique porte sur un risque de relativisme excessif : si tout dispositif de contrôle n''est qu''un enjeu de pouvoir sans portée technique propre, on perd de vue que certains outils de mesure sont, de fait, plus pertinents que d''autres pour éclairer une décision économique, et que la dimension sociale du contrôle n''épuise pas entièrement sa dimension instrumentale.

Une troisième critique, plus méthodologique, porte sur la généralisation : les études de cas qualitatives qui nourrissent ce courant, riches et détaillées, se prêtent plus difficilement à des conclusions généralisables à un grand nombre d''organisations que les enquêtes quantitatives privilégiées par l''approche cybernétique.

## Tension et complémentarité avec le courant cybernétique

La tension entre les deux courants n''est pas seulement académique : elle structure directement la pratique du contrôle de gestion. Un contrôleur de gestion qui ignore la dimension sociale et politique des dispositifs qu''il conçoit risque de produire des outils techniquement irréprochables mais massivement contournés ou vidés de leur sens sur le terrain. Inversement, un contrôleur de gestion qui négligerait entièrement la dimension instrumentale (la qualité du calcul de coût, la pertinence d''un indicateur) au profit d''une lecture uniquement politique perdrait la capacité de produire une information de gestion fiable. Les recherches les plus récentes en contrôle de gestion tendent d''ailleurs à articuler les deux lectures plutôt qu''à les opposer frontalement, en étudiant comment la dimension technique et la dimension sociale des dispositifs de contrôle s''influencent mutuellement dans le temps.

## Exercices pratiques

1. Expliquez la notion de « zone d''incertitude » et montrez, par un exemple, comment un responsable opérationnel peut en tirer un pouvoir de négociation face à la direction financière lors de l''élaboration du budget.

2. En quoi les dispositifs comptables peuvent-ils être qualifiés de « technologies de pouvoir » plutôt que de simples outils de mesure neutre ? Donnez un exemple concret.

3. Comparez, sur le plan des hypothèses sur l''acteur organisationnel, le courant cybernétique et le courant socio-organisationnel.

4. Un chercheur affirme que les approches socio-organisationnelles rendent le contrôle de gestion « illisible » pour les praticiens. Discutez cette critique en identifiant ses limites.

5. Dans votre propre projet de thèse, identifiez un phénomène de terrain qui relèverait davantage d''une lecture socio-organisationnelle que d''une lecture cybernétique, et expliquez pourquoi.

## Corrigé

1. Une zone d''incertitude est une portion d''information ou de compétence que seul un acteur maîtrise réellement, ce qui lui donne un pouvoir de négociation face aux autres acteurs qui en dépendent. Par exemple, un chef d''atelier qui connaît seul les capacités réelles de production (au-delà des chiffres officiels) peut, lors de la négociation budgétaire, sous-estimer stratégiquement ces capacités pour obtenir un objectif plus facile à atteindre, la direction financière ne disposant pas des moyens de vérifier cette information de façon indépendante.

2. Un dispositif comptable n''est pas neutre parce qu''il choisit ce qui est mesuré (donc rendu visible et légitime) et ce qui ne l''est pas (donc rendu invisible). Par exemple, un système de coûts qui valorise fortement la productivité horaire d''une chaîne de production, sans mesurer la qualité perçue par le client final, oriente implicitement les comportements des opérateurs vers la vitesse au détriment de la qualité, tout en donnant l''apparence d''une mesure purement technique et objective.

3. Le courant cybernétique suppose un acteur qui réagit de façon relativement prévisible aux incitations et aux objectifs fixés, dans une logique proche de l''agent rationnel de la théorie économique. Le courant socio-organisationnel suppose un acteur stratégique, doté d''une rationalité limitée, qui interprète activement les dispositifs de contrôle, cherche à préserver ses marges de liberté, et peut détourner un dispositif de ses objectifs initiaux pour servir ses propres intérêts ou sa conception du métier.

4. La critique a une part de vérité : une lecture purement sociologique et politique, sans traduction opérationnelle, peut effectivement laisser le praticien démuni face à la question concrète « que dois-je faire demain matin pour améliorer mon système de contrôle ? ». Mais la limite de la critique est qu''elle sous-estime l''utilité pratique de comprendre les jeux d''acteurs : un contrôleur de gestion averti de ces mécanismes peut anticiper les détournements probables d''un outil et concevoir des dispositifs plus robustes socialement, ce qui est en soi une forme d''opérationnalité, différente mais non inférieure à celle du courant cybernétique.

5. Il n''y a pas de réponse unique : un exemple type serait l''observation que des responsables intermédiaires parviennent à neutraliser un nouvel outil de pilotage imposé par le siège d''un groupe, non par refus ouvert, mais par une application purement formelle qui en vide le contenu, ce qui ne peut s''expliquer par le seul design technique de l''outil et appelle une lecture en termes de jeux de pouvoir et de défense de l''autonomie professionnelle.', 'texte', 45, false, 30
from public.courses c where c.slug = 'doc-cg'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Courant théorique 2 : les approches socio-organisationnelles du contrôle');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Les méthodes de recherche en contrôle de gestion', 'Un candidat à l''examen de qualification doit non seulement connaître les grands courants théoriques du contrôle de gestion, mais aussi maîtriser les méthodes de recherche propres au champ, c''est-à-dire savoir comment la discipline produit ses connaissances, avec quels outils, et avec quelles limites. Cette leçon présente trois grandes familles de méthodes : l''étude de cas clinique, la recherche-intervention, et les enquêtes quantitatives sur les pratiques de contrôle.

## L''étude de cas clinique en contrôle de gestion

L''étude de cas clinique consiste à observer en profondeur, sur une durée généralement longue, le fonctionnement réel des dispositifs de contrôle dans une ou plusieurs organisations, en combinant entretiens avec les acteurs, observation directe de réunions ou de processus budgétaires, et analyse de documents internes (budgets, tableaux de bord, comptes rendus). Le terme « clinique » souligne que le chercheur adopte une posture proche de celle d''un clinicien : il s''intéresse au fonctionnement singulier d''un cas, dans toute sa complexité, plutôt qu''à la vérification d''une loi générale sur un grand échantillon.

Cette méthode est particulièrement adaptée pour étudier les phénomènes mis en avant par les approches socio-organisationnelles : elle permet de documenter finement comment un outil de contrôle est effectivement interprété, négocié ou détourné par les acteurs, ce qu''une enquête quantitative ne peut généralement pas saisir avec la même profondeur. Elle permet aussi d''observer des processus dans leur déroulement temporel, ce qui est précieux pour comprendre la dynamique de construction d''un dispositif, pas seulement son état à un instant donné.

Ses limites sont bien identifiées : la difficulté de généraliser les résultats d''un ou quelques cas à toute une population d''organisations, le risque d''un biais d''interprétation du chercheur impliqué longuement sur le terrain, et l''exigence méthodologique d''un protocole de collecte explicite, d''une triangulation des sources, et d''une transparence sur les critères de choix des cas étudiés.

## La recherche-intervention

La recherche-intervention va plus loin que l''étude de cas en ce que le chercheur n''observe pas seulement l''organisation de l''extérieur, mais y intervient activement, généralement en accompagnant un changement organisationnel (par exemple la conception ou la refonte d''un système de contrôle de gestion), tout en produisant simultanément une connaissance scientifique sur ce processus de changement. Le chercheur occupe alors une double posture, à la fois acteur du changement (parfois rémunéré comme consultant) et observateur scientifique de ce même changement, ce qui exige une vigilance méthodologique particulière pour distinguer ce qui relève de l''action du chercheur et ce qui relève du phénomène qu''il étudie.

Cette méthode est très présente en contrôle de gestion parce que la discipline a, historiquement, des liens étroits avec la pratique managériale : de nombreux dispositifs étudiés par la recherche ont d''abord été conçus en partenariat avec des organisations. Les tenants de cette méthode soutiennent qu''elle seule permet d''accéder à certaines connaissances : on ne comprend vraiment la dynamique de résistance à un nouvel outil de contrôle qu''en participant à sa mise en œuvre, non en l''observant de l''extérieur a posteriori.

Sa limite principale tient à la validité scientifique : comment s''assurer que les conclusions ne reflètent pas simplement les intérêts du chercheur-intervenant, qui a par construction intérêt à ce que son intervention soit perçue comme réussie ? La discipline y répond par l''explicitation de la posture du chercheur, la validation croisée avec d''autres acteurs, et la publication de protocoles détaillés — un débat méthodologique qui reste permanent dans le champ.

## Les enquêtes quantitatives sur les pratiques de contrôle

À l''inverse de ces deux méthodes qualitatives, les enquêtes quantitatives consistent à administrer des questionnaires structurés à un grand nombre d''organisations ou de responsables de contrôle de gestion, afin de mesurer statistiquement des relations entre variables : par exemple, la relation entre le degré de turbulence de l''environnement d''une entreprise et le degré de flexibilité de son système budgétaire, ou entre la taille d''une organisation et la sophistication de ses outils de pilotage.

Cette méthode permet des résultats généralisables, avec des tests statistiques explicites de la robustesse des relations observées, ce qui répond à la principale limite des méthodes qualitatives. Elle s''inscrit dans la continuité du courant cybernétique, qui postule des relations relativement stables et mesurables entre caractéristiques organisationnelles et pratiques de contrôle.

Ses limites sont, en miroir, celles des méthodes qualitatives : la perte de profondeur (un questionnaire standardisé capture mal les jeux d''acteurs autour d''un dispositif), le risque que les répondants déclarent des pratiques officielles qui ne correspondent pas aux usages réels, et la difficulté de mesurer fiablement des phénomènes par nature qualitatifs, comme le degré de « jeu politique » autour d''un budget.

## Choisir sa méthode selon sa question de recherche

Un doctorant doit justifier le choix d''une méthode par cohérence avec sa question de recherche, non par préférence personnelle. Mesurer l''ampleur d''un phénomène dans une population d''organisations appelle une enquête quantitative ; comprendre un mécanisme fin de construction sociale d''un dispositif appelle une étude de cas clinique ; produire une connaissance tout en accompagnant un changement concret appelle une recherche-intervention.

## Exemple de protocole de recherche appliqué à un contexte sénégalais fictif

Prenons un projet de thèse fictif sur l''introduction de démarches de pilotage inspirées du beyond budgeting dans des PME agro-industrielles de la région de Thiès. Le protocole pourrait combiner les trois méthodes. Une phase quantitative, par questionnaire auprès d''un échantillon de PME du secteur, mesurerait la diffusion des pratiques budgétaires traditionnelles et alternatives, et leur association avec la taille de l''entreprise ou le degré de concurrence perçu. Une phase de recherche-intervention accompagnerait une ou deux PME volontaires dans la refonte de leur système de pilotage, en documentant les résistances et les apprentissages observés. Une phase d''étude de cas clinique a posteriori analyserait, un an après, comment le nouveau dispositif est réellement utilisé au quotidien, au-delà de son fonctionnement officiel initial.

Pour illustrer concrètement le type de calcul que ce terrain pourrait mobiliser, prenons l''exemple d''une unité de transformation agro-alimentaire fictive. Son budget initial prévoyait un volume de 10 000 unités vendues à un prix unitaire de 2 500 francs CFA (valeur fictive pour l''exemple), pour un coût variable unitaire budgété de 1 500 francs CFA et des charges fixes budgétées de 8 000 000 francs CFA. Le résultat budgété est donc de (2 500 moins 1 500) multiplié par 10 000, soit 10 000 000 francs CFA de marge sur coût variable, moins 8 000 000 de charges fixes, soit un résultat budgété de 2 000 000 francs CFA.

En réalité, l''entreprise a vendu 11 200 unités, mais à un prix unitaire moyen de seulement 2 400 francs CFA (pression concurrentielle plus forte que prévu), avec un coût variable unitaire réel de 1 600 francs CFA (hausse du coût des intrants) et des charges fixes réelles de 8 300 000 francs CFA. Le résultat réel est de (2 400 moins 1 600) multiplié par 11 200, soit 8 960 000 francs CFA de marge sur coût variable, moins 8 300 000 de charges fixes, soit un résultat réel de 660 000 francs CFA.

L''écart total entre le résultat réel et le résultat budgété est donc de 660 000 moins 2 000 000, soit moins 1 340 000 francs CFA. L''analyse des écarts, vérifiée par un calcul informatique, permet de décomposer cet écart total en quatre effets : un effet volume favorable de 1 200 000 francs CFA (l''entreprise a vendu plus que prévu), un effet prix de vente défavorable de 1 120 000 francs CFA (le prix réel est inférieur au prix budgété sur le volume réellement vendu), un effet coût variable défavorable de 1 120 000 francs CFA (le coût unitaire réel est supérieur au coût budgété sur le volume réellement vendu), et un effet charges fixes défavorable de 300 000 francs CFA. La somme de ces quatre effets (1 200 000 moins 1 120 000 moins 1 120 000 moins 300 000) redonne bien moins 1 340 000 francs CFA, ce qui confirme la cohérence de la décomposition.

Ce calcul, technique en apparence, illustre le débat entre les deux courants : le courant cybernétique y voit un diagnostic rationnel des causes de la sous-performance, tandis que le courant socio-organisationnel invite à se demander comment les acteurs interprètent ou contestent cette décomposition — par exemple si le responsable commercial conteste que l''effet prix lui soit attribué, alors que la baisse résultait d''une décision collective de la direction face à la concurrence.

## Exercices pratiques

1. Un doctorant souhaite étudier comment des contrôleurs de gestion de grandes entreprises sénégalaises perçoivent la légitimité de leur fonction face aux directions opérationnelles. Quelle méthode lui recommanderiez-vous en priorité, et pourquoi ?

2. Expliquez la différence essentielle entre une étude de cas clinique et une recherche-intervention.

3. Quelle est la principale difficulté méthodologique propre à la recherche-intervention, et comment la discipline tente-t-elle d''y répondre ?

4. Reprenez l''exemple chiffré de la leçon : si le volume réel avait été de 9 000 unités au lieu de 11 200 (toutes choses égales par ailleurs), l''effet volume aurait-il été favorable ou défavorable ? Justifiez sans recalculer précisément le montant.

5. Proposez, pour votre propre projet de thèse, la méthode de recherche qui vous semble la plus cohérente avec votre question de recherche, en justifiant ce choix en trois phrases.

## Corrigé

1. L''étude de cas clinique est la plus adaptée : la question porte sur des perceptions fines et potentiellement contradictoires entre acteurs, qu''un questionnaire standardisé capturerait mal ; des entretiens approfondis, combinés à l''observation de situations de travail réelles, permettent de documenter cette légitimité perçue dans toute sa complexité.

2. Dans l''étude de cas clinique, le chercheur observe un phénomène existant sans chercher à le modifier ; dans la recherche-intervention, il participe activement à la transformation de l''organisation, ce qui exige une vigilance supplémentaire sur la distinction entre son rôle d''acteur et son rôle d''observateur.

3. La principale difficulté est le risque de biais lié à l''intérêt du chercheur-intervenant à ce que son intervention soit perçue comme réussie. La discipline y répond par l''explicitation de sa posture, la validation croisée auprès d''autres acteurs, et la publication de protocoles détaillés.

4. Avec un volume réel de 9 000 unités, inférieur au volume budgété de 10 000, l''effet volume serait défavorable : vendre moins que prévu réduit mécaniquement la marge réalisée par rapport à celle qui aurait résulté du volume budgété, toutes choses égales par ailleurs.

5. Il n''y a pas de réponse unique : une justification satisfaisante relie la nature de la question de recherche au type de connaissance que la méthode choisie permet de produire, en écartant explicitement au moins une autre méthode jugée moins adaptée.', 'texte', 45, false, 40
from public.courses c where c.slug = 'doc-cg'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Les méthodes de recherche en contrôle de gestion');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Épreuve type d''examen de qualification : budget traditionnel et beyond budgeting', 'Cette leçon propose un exercice type d''examen de qualification doctorale en contrôle de gestion (non officiel, construit pour l''entraînement), avec un plan de réponse détaillé et corrigé. L''objectif est de vous montrer, sur un cas concret, comment mobiliser ensemble les deux courants théoriques et les méthodes de recherche étudiés dans les leçons précédentes.

## La question type

Voici une question de synthèse représentative du type d''épreuve que peut poser un jury de qualification : « Dans quelle mesure le débat entre le contrôle budgétaire traditionnel et les démarches dites de "beyond budgeting" renouvelle-t-il, ou prolonge-t-il, l''opposition entre une conception cybernétique et une conception socio-organisationnelle du contrôle de gestion ? Vous illustrerez votre propos en indiquant comment vous mobiliseriez une méthode de recherche pour instruire empiriquement cette question dans un contexte d''entreprises africaines. »

Cette question est typique à plusieurs égards : elle demande de maîtriser un débat contemporain spécifique du champ (budget traditionnel contre beyond budgeting), elle demande de le relier aux grands courants théoriques structurants de la discipline, et elle demande une mise en œuvre méthodologique concrète. C''est exactement l''articulation que teste un jury : connaissances théoriques, capacité de mise en relation, et sens pratique de la recherche.

## Présentation du débat budget traditionnel contre beyond budgeting

Avant de construire le plan de réponse, il faut maîtriser le contenu de ce débat, qui prolonge directement les deux courants étudiés en leçons 2 et 3.

Le contrôle budgétaire traditionnel, héritier direct de l''approche cybernétique, repose sur un cycle annuel : négociation des objectifs, allocation de ressources, suivi mensuel des écarts, actions correctives. Ses défenseurs soulignent qu''il reste, malgré ses défauts, un outil puissant de coordination entre unités, de responsabilisation des managers, et de discipline financière, en particulier dans des organisations de grande taille où il faut synchroniser des centaines de décisions décentralisées.

Le mouvement dit du « beyond budgeting », apparu à la fin des années 1990 dans la littérature professionnelle et académique, critique le cycle budgétaire annuel pour son incapacité à s''adapter à des environnements changeant plus vite qu''un an, pour le temps et les ressources considérables qu''il consomme (la préparation du budget annuel mobilise souvent plusieurs mois de l''année dans les grandes organisations), et pour les comportements pervers qu''il engendre : négociation stratégique des objectifs à la baisse, dépenses de fin d''année pour « consommer » une enveloppe budgétaire avant qu''elle ne soit perdue, ou focalisation sur l''atteinte d''un chiffre au détriment de la création de valeur réelle pour les clients. Les démarches alternatives proposées remplacent le budget annuel fixe par des prévisions glissantes révisées plus fréquemment, des objectifs relatifs (comparés à des concurrents ou à des unités comparables plutôt qu''à un chiffre absolu fixé un an à l''avance), et une décentralisation plus large des décisions vers les équipes opérationnelles, combinée à un pilotage par des indicateurs de performance globale plutôt que par le seul respect d''une enveloppe budgétaire.

Le point essentiel pour un candidat au doctorat est de percevoir que ce débat contemporain n''est pas purement technique : il rejoue, sous un vocabulaire différent, l''opposition entre les deux courants fondamentaux du champ. Le camp qui défend le contrôle budgétaire traditionnel reste largement dans une logique cybernétique : on peut améliorer le dispositif (le rendre plus flexible, plus réactif) sans remettre en cause l''idée qu''un bon système d''objectifs et de mesures, bien conçu, pilote rationnellement l''organisation. Le camp qui défend le beyond budgeting, en revanche, mobilise souvent, explicitement ou implicitement, des arguments proches du courant socio-organisationnel : il met en avant les effets pervers du budget sur les comportements des acteurs, la nécessité de faire confiance aux équipes plutôt que de les contraindre par des chiffres négociés sous contrainte hiérarchique, et l''idée que la performance d''une organisation dépend autant de sa capacité d''adaptation collective que de la rigueur de son calcul budgétaire.

## Plan de réponse détaillé

Une introduction efficace rappellerait d''abord les deux grands courants théoriques du contrôle de gestion (brièvement, sans développer : ce n''est pas l''objet principal de la question), puis annoncerait le fil directeur : le débat budget traditionnel contre beyond budgeting n''est pas un simple débat d''outils, mais la reformulation contemporaine de l''opposition théorique fondamentale du champ, enrichie par des considérations propres au contexte économique actuel (incertitude accrue, digitalisation, attentes de décentralisation).

Une première partie montrerait que le contrôle budgétaire traditionnel prolonge directement la logique cybernétique : elle rappellerait les fondements du modèle de planification-contrôle, puis montrerait comment le cycle budgétaire annuel en est une application directe, avant de reconnaître les limites de ce modèle déjà identifiées par la littérature (rigidité face à l''incertitude, comportements de négociation stratégique des objectifs).

Une deuxième partie montrerait que le beyond budgeting, sans être une pure application du courant socio-organisationnel, en reprend des intuitions centrales : la défiance envers un pilotage centralisé et chiffré qui ignore les jeux d''acteurs, l''attention portée aux effets pervers des dispositifs de mesure sur les comportements, et une préférence pour des mécanismes de coordination qui laissent plus de place à l''autonomie et à la négociation locale des équipes. Cette partie nuancerait cependant : le beyond budgeting reste, lui aussi, un dispositif de pilotage par indicateurs (relatifs plutôt qu''absolus), ce qui montre qu''aucun des deux camps ne sort complètement de la logique de mesure, et que l''opposition entre les deux courants théoriques est une opposition de degré et d''accent plus qu''une rupture totale.

Une troisième partie proposerait une mise en œuvre méthodologique : elle justifierait, par exemple, une recherche-intervention auprès de quelques entreprises sénégalaises ou ouest-africaines engagées dans une transition de leur système budgétaire, complétée par une enquête quantitative plus large pour mesurer l''ampleur de la diffusion de ces pratiques dans le tissu économique régional, en expliquant pourquoi une étude de cas clinique seule ne suffirait pas à mesurer cette diffusion, et pourquoi une enquête quantitative seule ne suffirait pas à comprendre les mécanismes fins de résistance ou d''appropriation de ces nouvelles pratiques par les acteurs.

Une conclusion rappellerait que ce débat contemporain illustre bien la nécessité, pour un chercheur en contrôle de gestion, de maîtriser les deux grandes lectures théoriques du champ : ni l''une ni l''autre, prise isolément, n''épuise la compréhension d''un phénomène de gestion aussi central que le pilotage budgétaire des organisations, et un bon positionnement de thèse sait souvent se situer à l''articulation des deux plutôt que dans l''adhésion exclusive à l''une.

## Ce que le jury évaluerait dans cette réponse

Un jury évaluerait, dans l''ordre d''importance, la capacité à relier explicitement le débat contemporain aux courants théoriques fondamentaux (et non à les traiter comme deux sujets séparés), la nuance apportée (éviter de caricaturer un camp comme purement rationnel et l''autre comme purement social), la justification méthodologique concrète et argumentée, et enfin la clarté de l''articulation entre les trois parties de la réponse.

## Exercices pratiques

1. Reformulez, en une phrase, le lien que vous établiriez entre le contrôle budgétaire traditionnel et l''approche cybernétique du contrôle.

2. Identifiez une limite du beyond budgeting qui n''est pas mentionnée dans cette leçon, et expliquez à quel courant théorique elle pourrait, selon vous, se rattacher.

3. Un candidat répond à la question type en se limitant à une description technique des deux systèmes budgétaires, sans les relier aux courants théoriques. Quel serait le principal défaut de cette réponse selon les critères d''évaluation d''un jury ?

4. Proposez une question d''examen de qualification alternative, sur un autre thème du contrôle de gestion, qui obligerait également à mobiliser les deux courants théoriques.

5. En vous appuyant sur le plan de réponse de cette leçon, rédigez l''introduction complète (4 à 6 phrases) que vous donneriez à l''oral si cette question vous était posée.

## Corrigé

1. Le contrôle budgétaire traditionnel applique directement la logique du modèle de planification-contrôle : il suppose qu''un cycle d''objectifs, de mesures et de corrections, correctement conçu, pilote rationnellement l''organisation vers ses finalités stratégiques, dans la continuité de l''approche cybernétique.

2. Une limite possible, non développée dans la leçon, est la difficulté du beyond budgeting à maintenir une cohérence financière globale lorsque les objectifs deviennent relatifs et négociés localement plutôt que fixés centralement : cette limite se rattacherait plutôt au courant cybernétique, qui valorise la cohérence d''ensemble et la comparabilité des performances entre unités, menacée par une décentralisation trop poussée.

3. Le principal défaut serait de traiter la question comme une simple comparaison technique d''outils de gestion, sans démontrer la compréhension du débat théorique sous-jacent que la question appelle explicitement : un jury y verrait un candidat capable de décrire des pratiques mais pas encore capable de les analyser comme chercheur, ce qui est précisément ce que l''examen de qualification doit vérifier.

4. Une question alternative pourrait être : « Dans quelle mesure l''introduction des tableaux de bord de type "balanced scorecard" dans les organisations africaines relève-t-elle d''une logique de pilotage rationnel de la performance, ou d''un phénomène d''imitation institutionnelle sans appropriation réelle par les acteurs de terrain ? » Cette question oblige également à articuler la logique cybernétique (le tableau de bord comme instrument rationnel de pilotage multidimensionnel) et la logique socio-organisationnelle et institutionnelle (la diffusion d''un outil comme phénomène social de légitimation plutôt que comme choix purement technique).

5. Une introduction satisfaisante rappellerait brièvement les deux courants théoriques fondamentaux du contrôle de gestion, annoncerait que le débat budget traditionnel contre beyond budgeting en constitue une reformulation contemporaine, préciserait que la réponse montrera d''abord la filiation du contrôle traditionnel avec le courant cybernétique, puis la proximité du beyond budgeting avec le courant socio-organisationnel, nuancerait en annonçant qu''aucun des deux dispositifs ne sort complètement de la logique de mesure, et annoncerait enfin la proposition méthodologique qui clôturera la démonstration.', 'texte', 45, false, 50
from public.courses c where c.slug = 'doc-cg'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Épreuve type d''examen de qualification : budget traditionnel et beyond budgeting');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : l''approche cybernétique et rationnelle du contrôle de gestion', '## Fiche du cours vidéo

Durée : 1h30. Public : doctorants préparant leur examen de qualification en contrôle de gestion. Objectifs : maîtriser en profondeur l''approche cybernétique et rationnelle du contrôle de gestion, savoir la restituer oralement devant un jury avec precision terminologique, et savoir en discuter les limites de façon critique. Matériel : tableau ou diaporama avec le schéma du modèle de planification-contrôle à trois niveaux, prérequis : avoir lu la leçon 2 de ce cours.

## Déroulé minuté

## 00:00 – 05:00 · Introduction et enjeux de la séance

Bonjour à toutes et à tous. Cette séance vidéo reprend et approfondit l''un des deux grands courants théoriques que vous devez absolument maîtriser pour votre examen de qualification : l''approche cybernétique et rationnelle du contrôle de gestion. Je vous propose de commencer par une question simple, que vous devez être capable de traiter à l''oral sans hésitation : qu''est-ce que le contrôle de gestion, au sens où ce courant le définit ? Prenez trente secondes pour formuler mentalement votre réponse avant que je ne poursuive. Cette discipline de la reformulation rapide est précisément ce qu''un jury testera le jour de votre soutenance : il ne vous laissera jamais le temps de consulter vos notes pour une définition de base.

## 05:00 – 20:00 · Les fondements de la logique cybernétique

Le mot cybernétique vient d''un champ scientifique plus large que le contrôle de gestion : c''est la science du pilotage des systèmes par rétroaction, formulée au milieu du vingtième siècle. L''idée clé, que je veux que vous puissiez expliquer avec vos propres mots, est la boucle de régulation : on fixe un objectif, on agit, on mesure le résultat obtenu, on calcule l''écart entre le résultat et l''objectif, et on utilise cet écart pour corriger l''action future. Cette boucle s''applique à un thermostat qui régule une température, à un système de navigation qui corrige une trajectoire, et, par transposition, à une organisation que l''on souhaite piloter vers ses objectifs stratégiques.

Visuel à montrer : un schéma simple avec quatre cases reliées en boucle (Objectif, Action, Mesure, Écart et correction). Je vous invite à le redessiner vous-même, de mémoire, après cette séance : c''est un excellent test de votre compréhension réelle, au-delà de la récitation.

Appliquée à l''entreprise, cette logique suppose que l''organisation peut être pilotée rationnellement si l''on dispose de bons instruments de mesure et d''une architecture claire de responsabilités. C''est tout l''enjeu du modèle que nous allons détailler maintenant.

## 20:00 – 40:00 · Le modèle de planification-contrôle à trois niveaux

Le modèle fondateur de ce courant distingue trois niveaux de pilotage dans l''organisation, et je veux que vous puissiez les distinguer sans la moindre hésitation à l''oral, car c''est l''une des questions les plus fréquemment posées lors des épreuves de qualification.

Le premier niveau est la planification stratégique : elle définit les finalités de l''organisation, ses grandes orientations, sur un horizon long, dans un contexte d''incertitude généralement élevée. C''est le niveau de la direction générale et, le cas échéant, du conseil d''administration.

Le deuxième niveau est le contrôle de gestion proprement dit, ce que l''on appelle en anglais le management control : il organise la mise en œuvre de la stratégie à moyen terme, typiquement sur un horizon annuel, par des outils comme les budgets, les centres de responsabilité, les tableaux de bord et les prix de cession interne entre unités. Ce niveau engage un dialogue, une négociation, entre la direction générale et les responsables opérationnels : ce n''est pas une simple transmission mécanique d''ordres.

Le troisième niveau est le contrôle d''exécution, ou contrôle opérationnel : il porte sur des tâches très cadrées, répétitives, à très court terme, où la marge d''appréciation du responsable est faible, et où des règles et procédures bien définies suffisent généralement à garantir la bonne exécution.

Visuel à montrer : le schéma pyramidal à trois niveaux, avec, pour chaque niveau, un exemple concret tiré d''une entreprise de distribution de produits alimentaires au Sénégal (stratégie d''expansion géographique du groupe au niveau un, budget annuel négocié avec chaque directeur régional au niveau deux, procédure de contrôle des caisses en magasin au niveau trois).

Question à poser aux apprenants : pourquoi est-il essentiel de distinguer le contrôle de gestion du contrôle d''exécution, et quelles conséquences pratiques cette distinction a-t-elle sur le type d''indicateurs à utiliser à chaque niveau ?

## 40:00 – 45:00 · Pause et quiz interactif

Nous faisons une courte pause. Je vous propose un quiz en quatre questions pour vérifier votre compréhension à ce stade de la séance.

Première question : le contrôle de gestion, dans ce modèle, se situe-t-il à l''horizon court terme, moyen terme ou long terme ? Réponse : moyen terme, typiquement annuel.

Deuxième question : quel est le mot-clé qui distingue le contrôle de gestion du contrôle d''exécution sur le plan de la relation managériale ? Réponse : le dialogue, ou la négociation, qui caractérise le contrôle de gestion, par opposition à l''application de règles qui caractérise le contrôle d''exécution.

Troisième question : d''où vient le terme cybernétique appliqué au contrôle de gestion ? Réponse : de la science du pilotage des systèmes par rétroaction, développée au milieu du vingtième siècle, puis transposée à l''organisation.

Quatrième question : citez un outil typique du niveau du contrôle de gestion. Réponse possible : le budget, le tableau de bord, le centre de responsabilité, le prix de cession interne.

Si vous avez répondu correctement à au moins trois de ces quatre questions, vous maîtrisez les bases de ce courant ; sinon, je vous invite à revoir la séquence précédente avant de poursuivre.

## 45:00 – 60:00 · Les apports complémentaires : théorie de l''agence et calcul des coûts

Au-delà du modèle à trois niveaux, deux familles de travaux viennent enrichir ce courant et vous devez pouvoir les mobiliser à l''oral. La théorie de l''agence, développée en économie des organisations, apporte un fondement microéconomique : lorsque les intérêts d''un dirigeant et d''un actionnaire, ou d''un responsable opérationnel et de la direction générale, peuvent diverger, les dispositifs de contrôle (budgets, indicateurs, systèmes d''incitation) servent à réduire ces divergences et les asymétries d''information entre les parties.

La comptabilité de gestion, de son côté, fournit l''instrumentation technique nécessaire : coûts complets, coûts variables, coûts standards, analyse des écarts. C''est cette instrumentation qui rend concrètement possible la comparaison entre prévision et réalisation, pierre angulaire de la logique cybernétique.

Visuel à montrer : un tableau à deux colonnes opposant, pour chaque outil (budget, tableau de bord, coût standard), sa fonction de pilotage rationnel (colonne de gauche) et la justification qu''en donne la théorie de l''agence en termes de réduction des asymétries d''information (colonne de droite).

## 60:00 – 75:00 · Les limites et critiques du courant

Un bon candidat doit pouvoir exposer spontanément trois limites de ce courant, sans attendre qu''on les lui demande. Première limite : l''hypothèse de rationalité des acteurs est contestée par l''observation empirique de comportements de négociation stratégique des objectifs budgétaires, de constitution de coussins budgétaires, ou de manipulation des indicateurs en fin de période. Deuxième limite : le réductionnisme de la mesure, c''est-à-dire le risque qu''un pilotage centré sur quelques indicateurs financiers détourne l''attention des acteurs vers ce qui est mesuré, au détriment de dimensions importantes mais difficiles à quantifier, comme la qualité de service ou la coopération entre équipes. Troisième limite : la rigidité face à l''incertitude, le cycle budgétaire annuel devenant rapidement obsolète dans des environnements très changeants, ce qui a nourri, plus récemment, le débat sur le beyond budgeting que nous étudierons dans une séance ultérieure.

Je vous invite ici à un exercice de nuance essentiel pour l''oral : ne présentez jamais ces limites comme une invalidation totale du courant, mais comme des angles morts identifiés par la littérature, qui ont nourri le développement de courants complémentaires, notamment le courant socio-organisationnel que nous étudierons dans la prochaine vidéo.

## 75:00 – 85:00 · Mise en situation : simuler une question de jury

Je vais maintenant vous poser, comme le ferait un membre de jury, une question difficile, et vous laisser le temps d''y réfléchir avant de vous proposer une structure de réponse. Question : « Si l''approche cybernétique est si critiquée, pourquoi reste-t-elle, selon vous, la grammaire de base implicite de la plupart des dispositifs de contrôle observés dans les organisations ? »

Une bonne structure de réponse commencerait par reconnaître la prémisse de la question (oui, les critiques sont fondées et largement documentées), puis apporterait trois éléments de réponse : la robustesse opérationnelle du modèle dans des environnements relativement stables, la facilité de diffusion d''un vocabulaire commun (centres de coûts, centres de profit) qui permet la comparaison entre unités et organisations, et le fait que même les courants critiques s''y réfèrent, explicitement ou implicitement, comme point de départ, ce qui en fait un socle conceptuel difficile à remplacer entièrement plutôt qu''à seulement contester.

## 85:00 – 90:00 · Synthèse et évaluation finale

Pour conclure cette séance, rappelons les trois points essentiels : le modèle de planification-contrôle à trois niveaux, les apports complémentaires de la théorie de l''agence et de la comptabilité de gestion, et les trois grandes limites du courant.

Évaluation finale, cinq questions :

Un, quels sont les trois niveaux du modèle de planification-contrôle ? Réponse : planification stratégique, contrôle de gestion, contrôle d''exécution.

Deux, quel horizon temporel caractérise typiquement le niveau du contrôle de gestion ? Réponse : le moyen terme, généralement annuel.

Trois, quelle théorie économique apporte un fondement microéconomique à ce courant ? Réponse : la théorie de l''agence.

Quatre, citez une des trois limites majeures de ce courant discutées dans cette séance. Réponse possible : l''hypothèse de rationalité des acteurs contestée par l''observation empirique, le réductionnisme de la mesure, ou la rigidité face à l''incertitude.

Cinq, pourquoi ce courant reste-t-il, malgré ses critiques, un socle conceptuel difficile à remplacer ? Réponse : parce qu''il reste robuste dans des environnements stables, qu''il fournit un vocabulaire commun de comparaison entre unités, et que même les courants critiques s''y réfèrent comme point de départ.', 'video', 90, false, 60
from public.courses c where c.slug = 'doc-cg'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : l''approche cybernétique et rationnelle du contrôle de gestion');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : les approches socio-organisationnelles du contrôle', '## Fiche du cours vidéo

Durée : 1h30. Public : doctorants préparant leur examen de qualification en contrôle de gestion. Objectifs : maîtriser les approches socio-organisationnelles du contrôle, savoir les opposer et les articuler avec l''approche cybernétique étudiée dans la séance précédente, et savoir illustrer ces concepts par des exemples de terrain. Matériel : tableau ou diaporama, schéma des jeux d''acteurs autour d''un dispositif de contrôle. Prérequis : avoir suivi la vidéo précédente et lu la leçon 3.

## Déroulé minuté

## 00:00 – 05:00 · Introduction : un changement de regard

Dans la séance précédente, nous avons vu le contrôle de gestion comme un dispositif de pilotage rationnel. Aujourd''hui, je vous propose de changer complètement de regard : nous allons voir le contrôle de gestion comme un phénomène social, traversé par des rapports de pouvoir, des interprétations divergentes, et des stratégies d''acteurs. Cette bascule de regard est exactement ce qu''un jury testera lorsqu''il vous demandera de comparer les deux courants : il voudra voir que vous savez changer de lunettes théoriques selon la question posée, et non que vous récitez un seul cadre d''analyse appliqué partout.

## 05:00 – 15:00 · L''idée centrale : le contrôle comme construction sociale

L''idée centrale de ce courant est qu''un dispositif de contrôle (un budget, un indicateur, un tableau de bord) ne produit jamais mécaniquement les effets prévus par ses concepteurs. Entre la conception d''un outil et son usage réel sur le terrain s''interposent des acteurs qui l''interprètent, le négocient, le détournent, ou s''en saisissent pour défendre leur position. Le contrôle de gestion devient alors autant un objet d''analyse sociologique qu''un objet de gestion technique.

Visuel à montrer : un schéma en deux colonnes opposant « ce que prévoit le concepteur du dispositif » et « ce qui se passe réellement sur le terrain », avec des flèches représentant les interprétations, négociations et détournements possibles.

Je vous invite à un exercice simple : pensez à un outil de gestion que vous avez vu fonctionner différemment, dans la réalité, de ce que prévoyait son manuel d''utilisation officiel. Cette expérience, même anecdotique, est exactement le type d''intuition que ce courant théorise.

## 15:00 – 30:00 · Les trois lignées fondatrices

Trois lignées de travaux nourrissent ce courant, et vous devez pouvoir les distinguer clairement à l''oral.

La première est l''analyse stratégique des organisations, issue de la sociologie des organisations : toute organisation est un système d''action concret, structuré par des jeux de pouvoir autour de zones d''incertitude que chaque acteur cherche à contrôler. Appliquée au budget, cette grille montre que les responsables négocient leurs objectifs, retiennent stratégiquement de l''information, et utilisent leur connaissance fine du terrain comme ressource de pouvoir.

La deuxième est la comptabilité critique, qui analyse les dispositifs comptables comme des technologies de pouvoir : ils rendent visibles certains phénomènes et invisibles d''autres, et légitiment certains acteurs (les gestionnaires) au détriment d''autres (les métiers opérationnels).

La troisième est la théorie de l''institutionnalisation, qui montre que les outils de gestion se diffusent parfois davantage parce qu''ils sont devenus des normes socialement attendues, des signes de légitimité et de modernité, que pour leur efficacité intrinsèque démontrée.

Visuel à montrer : un tableau à trois colonnes, une par lignée, avec pour chacune le concept clé, un exemple d''application au contrôle de gestion, et le nom du champ disciplinaire d''origine (sociologie des organisations, comptabilité critique, théorie des organisations).

## 30:00 – 45:00 · La notion de zone d''incertitude et de jeu de pouvoir

Arrêtons-nous en détail sur la notion de zone d''incertitude, car c''est l''une des notions les plus fréquemment demandées à l''oral. Une zone d''incertitude est une portion d''information ou de compétence que seul un acteur maîtrise réellement : par exemple, un chef d''atelier qui connaît seul les capacités réelles de production, au-delà des chiffres officiels. Cette maîtrise lui donne un pouvoir de négociation face aux autres acteurs qui en dépendent, par exemple lors de l''élaboration du budget annuel.

Question à poser aux apprenants : si un responsable opérationnel sait que la direction financière ne peut pas vérifier indépendamment ses déclarations sur ses capacités réelles, quel comportement stratégique pourrait-il adopter lors de la négociation budgétaire, et quel est le risque pour l''organisation dans son ensemble si ce comportement se généralise ?

Cette notion permet de comprendre pourquoi les budgets négociés aboutissent souvent à des objectifs qui ne reflètent pas fidèlement les capacités réelles de l''organisation : ce n''est pas un défaut de conception technique du budget, c''est la conséquence logique des jeux de pouvoir qui l''entourent.

## 45:00 – 50:00 · Pause et quiz interactif

Petite pause avec un quiz en quatre questions. Première question : qu''est-ce qu''une zone d''incertitude ? Réponse : une portion d''information ou de compétence que seul un acteur maîtrise, qui lui donne un pouvoir de négociation. Deuxième question : citez les trois lignées fondatrices de ce courant. Réponse : l''analyse stratégique des organisations, la comptabilité critique, la théorie de l''institutionnalisation. Troisième question : qu''entend-on par « technologie de pouvoir » appliquée à un dispositif comptable ? Réponse : l''idée qu''il rend visibles certaines réalités et invisibles d''autres, et légitime certains acteurs plutôt que d''autres. Quatrième question : pourquoi un outil de gestion peut-il se diffuser sans être le plus efficace techniquement ? Réponse : parce qu''il devient une norme socialement attendue, un signe de légitimité et de modernité organisationnelle.

## 50:00 – 65:00 · Limites du courant et débat avec l''approche cybernétique

Ce courant a lui-même reçu des critiques que vous devez pouvoir exposer avec nuance. Première critique : un déficit d''opérationnalité, le courant offrant parfois peu de prescriptions concrètes aux praticiens qui doivent, malgré tout, concevoir des systèmes de contrôle qui fonctionnent. Deuxième critique : un risque de relativisme excessif, qui ferait perdre de vue que certains outils de mesure sont, de fait, plus pertinents que d''autres pour éclairer une décision économique. Troisième critique, méthodologique : la difficulté à généraliser des études de cas qualitatives riches à un grand nombre d''organisations.

Visuel à montrer : un schéma en double colonne comparant explicitement, point par point, les critiques adressées à l''approche cybernétique (vues dans la séance précédente) et les critiques adressées à l''approche socio-organisationnelle, pour que les apprenants visualisent la symétrie du débat.

Je veux insister ici sur un point de nuance essentiel pour votre oral : les recherches les plus récentes tendent à articuler les deux lectures plutôt qu''à les opposer frontalement. Un contrôleur de gestion qui ignore la dimension sociale produit des outils contournés ; un contrôleur qui ignore la dimension technique perd la capacité de produire une information fiable. Les deux dimensions s''influencent mutuellement dans le temps.

## 65:00 – 80:00 · Mise en situation : analyser un cas fictif

Je vous propose maintenant un cas fictif à analyser avec les outils de cette séance. Une entreprise sénégalaise de distribution impose à ses directeurs régionaux un nouveau tableau de bord mensuel, conçu par le siège, avec quinze indicateurs. Six mois après son déploiement, le siège constate que les directeurs régionaux remplissent bien le tableau de bord, mais que leurs décisions quotidiennes semblent inchangées : le dispositif paraît purement formel.

Avec les concepts de cette séance, comment analyseriez-vous cette situation ? Une bonne analyse mobiliserait la notion de zone d''incertitude (les directeurs régionaux conservent leur connaissance fine du terrain, que le tableau de bord ne capture pas entièrement, et continuent donc à décider sur cette base), la notion de technologie de pouvoir (le tableau de bord légitime le siège comme détenteur de l''information de pilotage, ce qui peut être perçu comme une remise en cause de l''autonomie historique des directeurs régionaux), et la notion d''institutionnalisation (le tableau de bord a peut-être été adopté par le siège davantage comme signe de modernité managériale que pour une utilité opérationnelle clairement établie en amont).

## 80:00 – 90:00 · Synthèse et évaluation finale

Pour conclure, retenez trois points : l''idée que le contrôle de gestion est une construction sociale et non un mécanisme neutre, les trois lignées fondatrices (analyse stratégique des organisations, comptabilité critique, institutionnalisation), et la nécessité d''articuler ce courant avec le courant cybernétique plutôt que de les opposer de façon binaire.

Évaluation finale, cinq questions :

Un, définissez en une phrase l''idée centrale du courant socio-organisationnel. Réponse : un dispositif de contrôle ne produit jamais mécaniquement les effets prévus par ses concepteurs, car les acteurs l''interprètent, le négocient ou le détournent.

Deux, qu''est-ce qu''une zone d''incertitude ? Réponse : une portion d''information ou de compétence que seul un acteur maîtrise réellement, source de pouvoir de négociation.

Trois, citez une critique adressée à ce courant. Réponse possible : déficit d''opérationnalité, risque de relativisme excessif, ou difficulté de généralisation des études de cas.

Quatre, pourquoi un dispositif de contrôle peut-il être qualifié de technologie de pouvoir ? Réponse : parce qu''il rend visibles certaines réalités et invisibles d''autres, et légitime certains acteurs au détriment d''autres.

Cinq, comment les recherches récentes tendent-elles à articuler ce courant avec le courant cybernétique ? Réponse : en étudiant comment la dimension technique et la dimension sociale des dispositifs de contrôle s''influencent mutuellement dans le temps, plutôt qu''en choisissant exclusivement l''une ou l''autre lecture.', 'video', 90, false, 70
from public.courses c where c.slug = 'doc-cg'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : les approches socio-organisationnelles du contrôle');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : les méthodes de recherche en contrôle de gestion', '## Fiche du cours vidéo

Durée : 1h30. Public : doctorants préparant leur examen de qualification en contrôle de gestion. Objectifs : maîtriser les trois grandes méthodes de recherche du champ (étude de cas clinique, recherche-intervention, enquête quantitative), savoir justifier le choix d''une méthode selon une question de recherche, et savoir présenter et vérifier un calcul d''écart budgétaire. Matériel : tableau ou diaporama, calculatrice ou tableur pour la démonstration chiffrée. Prérequis : avoir lu la leçon 4 de ce cours.

## Déroulé minuté

## 00:00 – 05:00 · Introduction : pourquoi les méthodes comptent autant que les théories

Un jury de qualification ne vous demandera pas seulement ce que vous savez sur le contrôle de gestion, mais comment vous comptez produire de la connaissance nouvelle sur votre sujet de thèse. Cette séance vous donne les trois grandes familles de méthodes du champ, avec leurs forces et leurs limites, pour que vous puissiez défendre un choix méthodologique de façon argumentée.

## 05:00 – 20:00 · L''étude de cas clinique

L''étude de cas clinique consiste à observer en profondeur, sur une durée longue, le fonctionnement réel des dispositifs de contrôle dans une ou plusieurs organisations, en combinant entretiens, observation directe et analyse de documents internes. Le terme « clinique » souligne une posture proche de celle d''un clinicien : s''intéresser au fonctionnement singulier d''un cas dans toute sa complexité, plutôt qu''à la vérification d''une loi générale sur un grand échantillon.

Visuel à montrer : un schéma représentant les trois sources de données typiques d''une étude de cas (entretiens, observation, documents) convergeant vers une interprétation triangulée.

Cette méthode est particulièrement adaptée pour documenter les phénomènes du courant socio-organisationnel : interprétation, négociation, détournement d''un outil de contrôle par les acteurs. Ses limites : la difficulté de généraliser les résultats, le risque de biais d''interprétation du chercheur impliqué longuement sur le terrain, et l''exigence d''un protocole rigoureux (triangulation des sources, transparence sur le choix des cas).

## 20:00 – 35:00 · La recherche-intervention

La recherche-intervention va plus loin : le chercheur n''observe pas seulement, il intervient activement dans l''organisation, généralement en accompagnant un changement (par exemple la refonte d''un système de contrôle), tout en produisant une connaissance scientifique sur ce processus. Le chercheur occupe une double posture, acteur et observateur, ce qui exige une vigilance méthodologique particulière.

Question à poser aux apprenants : si vous étiez rémunéré comme consultant par l''entreprise que vous étudiez en recherche-intervention, quel risque cela crée-t-il pour la validité scientifique de vos conclusions, et comment pourriez-vous y répondre méthodologiquement ?

Réponse attendue : le risque est que vos conclusions reflètent vos propres intérêts (montrer que votre intervention a réussi) plutôt que la réalité observée ; on y répond par l''explicitation systématique de sa posture, la validation croisée avec d''autres acteurs de l''organisation non impliqués dans la rémunération, et la publication d''un protocole de recherche détaillé et vérifiable.

Visuel à montrer : un schéma en double cercle représentant le chercheur à l''intersection du rôle d''acteur du changement et du rôle d''observateur scientifique.

## 35:00 – 45:00 · Les enquêtes quantitatives sur les pratiques de contrôle

À l''inverse des deux méthodes précédentes, les enquêtes quantitatives administrent des questionnaires structurés à un grand nombre d''organisations, pour mesurer statistiquement des relations entre variables : par exemple la relation entre la turbulence de l''environnement d''une entreprise et la flexibilité de son système budgétaire, ou entre la taille d''une organisation et la sophistication de ses outils de pilotage. Cette méthode permet des résultats généralisables, avec des tests statistiques explicites de la robustesse des relations observées, ce qui répond directement à la principale limite des deux méthodes qualitatives présentées précédemment.

Elle s''inscrit naturellement dans la continuité du courant cybernétique, qui postule des relations relativement stables et mesurables entre caractéristiques organisationnelles et pratiques de contrôle. Mais elle perd en profondeur et en contexte : un questionnaire standardisé capture mal la complexité des jeux d''acteurs autour d''un dispositif, et elle dépend de la sincérité déclarative des répondants, qui peuvent décrire des pratiques officielles plutôt que des usages réels du terrain.

Visuel à montrer : un tableau récapitulatif à trois colonnes (étude de cas clinique, recherche-intervention, enquête quantitative) avec, pour chacune, le type de question de recherche à laquelle elle répond le mieux, sa principale force, et sa principale limite.

## 45:00 – 50:00 · Pause et quiz interactif

Quiz en quatre questions. Un, quelle méthode privilégier pour comprendre un mécanisme social fin de détournement d''un outil de gestion ? Réponse : l''étude de cas clinique. Deux, quelle méthode implique une double posture d''acteur et d''observateur ? Réponse : la recherche-intervention. Trois, quelle méthode permet la généralisation statistique à une population d''organisations ? Réponse : l''enquête quantitative. Quatre, quelle est la limite commune aux deux méthodes qualitatives face à l''enquête quantitative ? Réponse : la difficulté à généraliser les résultats obtenus sur un nombre restreint de cas.

## 50:00 – 70:00 · Démonstration chiffrée : l''analyse des écarts budgétaires

Je vous propose maintenant une démonstration chiffrée, vérifiée informatiquement, qui illustre comment un calcul technique peut nourrir une question de recherche. Prenons une unité de transformation agro-alimentaire fictive. Le budget initial prévoyait 10 000 unités vendues à un prix unitaire de 2 500 francs CFA, valeur fictive pour l''exemple, avec un coût variable unitaire budgété de 1 500 francs CFA et des charges fixes budgétées de 8 000 000 francs CFA.

Visuel à montrer : un tableau à deux colonnes, budget initial et réalisé, avec les quatre lignes volume, prix unitaire, coût variable unitaire, charges fixes.

Calculons le résultat budgété : la marge sur coût variable est de 2 500 moins 1 500, soit 1 000 francs CFA par unité, multipliée par 10 000 unités, soit 10 000 000 francs CFA ; moins 8 000 000 de charges fixes, le résultat budgété est de 2 000 000 francs CFA.

En réalité, l''entreprise a vendu 11 200 unités, à un prix unitaire moyen de 2 400 francs CFA, avec un coût variable unitaire réel de 1 600 francs CFA et des charges fixes réelles de 8 300 000 francs CFA. Le résultat réel est de (2 400 moins 1 600) multiplié par 11 200, soit 8 960 000 francs CFA de marge, moins 8 300 000 de charges fixes, soit un résultat réel de 660 000 francs CFA.

L''écart total est de 660 000 moins 2 000 000, soit moins 1 340 000 francs CFA. Décomposons-le en quatre effets, vérifiés par calcul : un effet volume favorable de 1 200 000 francs CFA (plus d''unités vendues que prévu), un effet prix défavorable de 1 120 000 francs CFA (prix réel inférieur au prix budgété, sur le volume réel), un effet coût variable défavorable de 1 120 000 francs CFA (coût réel supérieur au coût budgété, sur le volume réel), et un effet charges fixes défavorable de 300 000 francs CFA. La somme de ces quatre effets redonne exactement moins 1 340 000 francs CFA, ce qui confirme la cohérence de la décomposition.

Question à poser aux apprenants : si cette entreprise avait vendu seulement 9 000 unités au lieu de 11 200, toutes choses égales par ailleurs sur le prix et le coût unitaire, l''effet volume aurait-il été favorable ou défavorable, et pourquoi ?

## 70:00 – 85:00 · Articuler calcul technique et question de recherche

Ce calcul, purement technique en apparence, est un excellent point d''appui pour illustrer le débat entre les deux courants théoriques. Le courant cybernétique y voit un diagnostic rationnel et objectif des causes de la sous-performance. Le courant socio-organisationnel invite à se demander comment les acteurs de l''entreprise interprètent ou contestent cette décomposition : le responsable commercial pourrait contester que l''effet prix lui soit attribué, si la baisse de prix résultait d''une décision collective de la direction face à la concurrence, et non d''une défaillance de sa propre action commerciale.

C''est exactement ce type d''articulation entre rigueur technique et analyse critique que vous devez montrer à l''oral : ne jamais présenter un calcul comme neutre sans interroger la façon dont les acteurs se l''approprient ou le contestent dans l''organisation réelle.

## 85:00 – 90:00 · Synthèse et évaluation finale

Pour conclure, retenez les trois méthodes et leur domaine de pertinence respectif, ainsi que la démarche de vérification systématique d''un calcul d''écart budgétaire par décomposition en effets qui doivent se recomposer exactement.

Évaluation finale, cinq questions :

Un, quelle méthode choisiriez-vous pour mesurer l''ampleur de la diffusion d''une pratique de gestion dans une population d''entreprises ? Réponse : l''enquête quantitative.

Deux, quelle est la principale limite méthodologique de la recherche-intervention ? Réponse : le risque de biais lié à l''intérêt du chercheur-intervenant à voir son intervention perçue comme réussie.

Trois, dans l''exemple chiffré, quel est le montant de l''effet volume ? Réponse : 1 200 000 francs CFA, favorable.

Quatre, pourquoi la somme des quatre effets doit-elle être strictement égale à l''écart total ? Réponse : parce que la décomposition en effets est une recomposition exacte et non une approximation de l''écart global entre résultat réel et résultat budgété.

Cinq, comment le courant socio-organisationnel enrichit-il la lecture d''un calcul d''écart budgétaire a priori purement technique ? Réponse : en interrogeant la façon dont les acteurs interprètent, négocient ou contestent l''attribution de chaque effet, au-delà de sa validité arithmétique.', 'video', 90, false, 80
from public.courses c where c.slug = 'doc-cg'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : les méthodes de recherche en contrôle de gestion');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : budget traditionnel et beyond budgeting, un débat théorique renouvelé', '## Fiche du cours vidéo

Durée : 1h30. Public : doctorants préparant leur examen de qualification en contrôle de gestion. Objectifs : maîtriser le débat entre contrôle budgétaire traditionnel et beyond budgeting, savoir le relier aux deux courants théoriques fondamentaux du champ, et savoir construire à l''oral un plan de réponse structuré à une question de synthèse. Matériel : tableau ou diaporama. Prérequis : avoir suivi les deux vidéos précédentes et lu la leçon 5.

## Déroulé minuté

## 00:00 – 05:00 · Introduction : un débat contemporain, un débat ancien

Cette séance traite d''un débat très actuel en contrôle de gestion, celui du contrôle budgétaire traditionnel face aux démarches de beyond budgeting. Mon objectif est de vous montrer que ce débat contemporain, loin d''être un sujet isolé, est la reformulation actuelle de l''opposition théorique fondamentale que vous avez étudiée dans les deux séances précédentes : l''approche cybernétique contre l''approche socio-organisationnelle. Savoir faire ce lien est précisément ce qui distingue, à l''oral, un candidat qui connaît sa discipline en profondeur d''un candidat qui empile des connaissances sans les articuler.

## 05:00 – 20:00 · Le contrôle budgétaire traditionnel et ses justifications

Le contrôle budgétaire traditionnel repose sur un cycle annuel : négociation des objectifs, allocation de ressources, suivi mensuel des écarts, actions correctives. C''est l''héritier direct du modèle de planification-contrôle étudié dans notre première vidéo. Ses défenseurs soulignent qu''il reste un outil puissant de coordination entre unités, de responsabilisation des managers, et de discipline financière, en particulier dans les grandes organisations où il faut synchroniser des centaines de décisions décentralisées.

Visuel à montrer : le schéma du cycle budgétaire annuel (fixation des objectifs, mise en œuvre, suivi des écarts, actions correctives), avec, en regard, un rappel du schéma de la boucle cybernétique vu en première vidéo, pour souligner visuellement la filiation directe entre les deux.

## 20:00 – 35:00 · Les critiques du beyond budgeting

Le mouvement du beyond budgeting, apparu à la fin des années 1990, critique le cycle budgétaire annuel pour trois raisons principales. D''abord, son incapacité à s''adapter à des environnements changeant plus vite qu''un an. Ensuite, le temps et les ressources considérables qu''il consomme, la préparation budgétaire mobilisant souvent plusieurs mois dans les grandes organisations. Enfin, les comportements pervers qu''il engendre : négociation stratégique des objectifs à la baisse, dépenses de fin d''année pour consommer une enveloppe avant qu''elle ne soit perdue, ou focalisation sur l''atteinte d''un chiffre au détriment de la création de valeur réelle.

Les démarches alternatives remplacent le budget annuel fixe par des prévisions glissantes révisées plus fréquemment, des objectifs relatifs plutôt qu''absolus, et une décentralisation plus large des décisions vers les équipes opérationnelles.

Question à poser aux apprenants : en quoi la critique du beyond budgeting sur les comportements pervers du budget rejoint-elle les intuitions du courant socio-organisationnel étudiées dans notre deuxième vidéo ?

## 35:00 – 40:00 · Pause et quiz interactif

Quatre questions. Un, sur quel cycle repose le contrôle budgétaire traditionnel ? Réponse : un cycle annuel de fixation d''objectifs, allocation, suivi des écarts, actions correctives. Deux, citez une critique du beyond budgeting envers le budget traditionnel. Réponse possible : rigidité face à l''incertitude, coût élevé en temps et ressources, ou comportements pervers. Trois, par quoi le beyond budgeting remplace-t-il le budget annuel fixe ? Réponse : des prévisions glissantes et des objectifs relatifs. Quatre, le beyond budgeting élimine-t-il toute forme de mesure de la performance ? Réponse : non, il la déplace vers des indicateurs relatifs et une décentralisation plus large, mais ne sort pas de la logique de mesure.

## 40:00 – 60:00 · L''articulation avec les deux courants théoriques

Voici le cœur de cette séance, le point que vous devez absolument savoir exposer à l''oral. Le camp qui défend le contrôle budgétaire traditionnel reste largement dans une logique cybernétique : on peut améliorer le dispositif, le rendre plus flexible, sans remettre en cause l''idée qu''un bon système d''objectifs et de mesures pilote rationnellement l''organisation. Le camp qui défend le beyond budgeting mobilise, souvent implicitement, des arguments proches du courant socio-organisationnel : les effets pervers du budget sur les comportements des acteurs, la nécessité de faire confiance aux équipes plutôt que de les contraindre par des chiffres négociés sous contrainte hiérarchique.

Mais attention à la nuance essentielle que j''attends de vous à l''oral : le beyond budgeting reste, lui aussi, un dispositif de pilotage par indicateurs, relatifs plutôt qu''absolus. Aucun des deux camps ne sort complètement de la logique de mesure. L''opposition entre les deux courants théoriques est donc une opposition de degré et d''accent, plus qu''une rupture totale entre un monde purement rationnel et un monde purement social.

Visuel à montrer : un schéma à double flèche, avec à une extrémité « logique cybernétique pure » et à l''autre « logique socio-organisationnelle pure », sur lequel on positionne le budget traditionnel plutôt vers la première extrémité et le beyond budgeting plutôt vers la seconde, sans jamais les placer aux extrêmes absolus.

## 60:00 – 75:00 · Construire un plan de réponse à l''oral

Reprenons maintenant la question type : « Dans quelle mesure le débat entre le contrôle budgétaire traditionnel et les démarches de beyond budgeting renouvelle-t-il, ou prolonge-t-il, l''opposition entre une conception cybernétique et une conception socio-organisationnelle du contrôle de gestion ? » Un bon plan comporterait une introduction qui rappelle brièvement les deux courants et annonce le fil directeur, une première partie sur la filiation du budget traditionnel avec la logique cybernétique, une deuxième partie sur la proximité du beyond budgeting avec la logique socio-organisationnelle (nuancée par le fait qu''aucun des deux camps ne sort de la logique de mesure), une troisième partie proposant une mise en œuvre méthodologique concrète (par exemple une recherche-intervention combinée à une enquête quantitative dans un contexte d''entreprises ouest-africaines), et une conclusion qui rappelle la nécessité d''articuler les deux lectures théoriques plutôt que d''en choisir une exclusivement.

Je vous invite à vous entraîner maintenant : prenez deux minutes pour formuler oralement, à voix haute si possible, l''introduction de cette réponse, avant que je ne vous propose une version possible dans la synthèse finale.

## 75:00 – 85:00 · Ce qu''un jury évalue dans ce type de réponse

Un jury évalue, dans l''ordre d''importance, la capacité à relier explicitement le débat contemporain aux courants théoriques fondamentaux, la nuance apportée (éviter de caricaturer un camp comme purement rationnel et l''autre comme purement social), la justification méthodologique concrète, et la clarté de l''articulation entre les parties de la réponse. Un candidat qui se limite à une description technique des deux systèmes budgétaires, sans les relier à la théorie, montrera qu''il connaît la pratique mais pas encore qu''il sait l''analyser comme chercheur, ce qui est précisément ce que l''examen de qualification doit vérifier.

Un autre piège fréquent, que j''ai vu commettre par des candidats par ailleurs bien préparés, est de présenter le beyond budgeting comme une solution définitive qui aurait remplacé le budget traditionnel dans la pratique des organisations. Ce n''est factuellement pas le cas : la grande majorité des organisations, y compris de grande taille, continuent d''utiliser un cycle budgétaire annuel, parfois assoupli par des éléments empruntés au beyond budgeting (prévisions glissantes partielles, objectifs relatifs sur certains indicateurs) sans abandonner totalement la logique budgétaire classique. Un bon candidat signale cette coexistence plutôt que de présenter une rupture totale et généralisée qui ne correspond pas à la réalité observée du terrain.

## 85:00 – 90:00 · Synthèse et évaluation finale

Pour conclure, une introduction possible à la question type serait la suivante : le contrôle de gestion s''est historiquement construit autour de deux grandes lectures, cybernétique et socio-organisationnelle ; le débat entre budget traditionnel et beyond budgeting en constitue une reformulation contemporaine, le premier restant fidèle à la logique de pilotage rationnel, le second reprenant des intuitions proches du courant socio-organisationnel sans pour autant sortir entièrement de la logique de mesure ; nous montrerons cette filiation avant de proposer une mise en œuvre méthodologique adaptée à un contexte d''entreprises africaines.

Évaluation finale, cinq questions :

Un, à quelle logique théorique le contrôle budgétaire traditionnel reste-t-il fidèle ? Réponse : la logique cybernétique et rationnelle.

Deux, quelles intuitions du courant socio-organisationnel le beyond budgeting reprend-il ? Réponse : la défiance envers un pilotage centralisé et chiffré ignorant les jeux d''acteurs, et l''attention aux effets pervers des dispositifs de mesure sur les comportements.

Trois, pourquoi faut-il nuancer une opposition trop binaire entre les deux dispositifs ? Réponse : parce que le beyond budgeting reste lui-même un dispositif de pilotage par indicateurs, relatifs plutôt qu''absolus, et ne sort donc pas complètement de la logique de mesure.

Quatre, quelles méthodes de recherche combineriez-vous pour étudier ce débat empiriquement dans un contexte africain ? Réponse possible : une recherche-intervention auprès de quelques entreprises en transition, complétée par une enquête quantitative pour mesurer l''ampleur de la diffusion de ces pratiques.

Cinq, que doit viser en priorité l''introduction d''une réponse à ce type de question de synthèse ? Réponse : annoncer explicitement le lien entre le débat contemporain et les courants théoriques fondamentaux du champ, pour montrer d''emblée au jury la structure argumentative de la réponse.', 'video', 90, false, 90
from public.courses c where c.slug = 'doc-cg'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : budget traditionnel et beyond budgeting, un débat théorique renouvelé');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : simulation complète d''une soutenance de qualification doctorale', '## Fiche du cours vidéo

Durée : 1h30. Public : doctorants préparant leur examen de qualification en contrôle de gestion, en fin de préparation. Objectifs : vivre une simulation complète de soutenance de qualification doctorale, de la présentation initiale aux questions de jury, et savoir s''auto-évaluer avec une grille structurée. Matériel : tableau ou diaporama, chronomètre. Prérequis : avoir suivi l''ensemble des leçons et vidéos précédentes de ce cours.

## Déroulé minuté

## 00:00 – 05:00 · Introduction : le format de la soutenance simulée

Cette dernière séance simule intégralement une soutenance de qualification doctorale en contrôle de gestion. Je vais jouer, tour à tour, le rôle du candidat qui présente son champ et son projet de thèse fictif, puis le rôle du jury qui pose des questions. Je vous invite à vous mettre réellement à la place du candidat : notez vos propres réponses aux questions du jury avant d''écouter la réponse modèle que je proposerai, car c''est cet entraînement actif, et non l''écoute passive, qui vous préparera efficacement.

## 05:00 – 20:00 · Présentation du champ et du projet de thèse fictif (15 minutes)

Voici la présentation introductive que ferait un candidat type, d''une durée de quinze minutes, que nous allons dérouler intégralement.

« Mesdames et messieurs les membres du jury, le contrôle de gestion, en tant que champ de recherche, s''est structuré historiquement autour d''une approche cybernétique et rationnelle, héritée du modèle de la planification-contrôle, qui pense le pilotage de l''organisation comme une boucle de régulation par objectifs, mesures et corrections. Cette approche a été enrichie, puis fortement questionnée, par des travaux qui montrent que le contrôle de gestion est aussi, et peut-être avant tout, une construction sociale, traversée par des jeux de pouvoir entre acteurs, où les dispositifs de mesure ne produisent jamais mécaniquement les effets prévus par leurs concepteurs.

Mon projet de thèse, encore à l''état de proposition, s''inscrit précisément à l''articulation de ces deux lectures. Il porte sur l''introduction de démarches de pilotage inspirées du beyond budgeting dans des petites et moyennes entreprises agro-industrielles de la région de Thiès, au Sénégal. Ma question de recherche est la suivante : comment des PME familiales, habituées à un pilotage budgétaire informel ou récemment formalisé, s''approprient-elles, négocient-elles, ou résistent-elles à l''introduction d''outils de pilotage par indicateurs relatifs et par prévisions glissantes, portés par des organismes d''accompagnement ou des investisseurs extérieurs ?

Sur le plan théorique, je mobiliserai le cadre de l''analyse stratégique des organisations pour comprendre les jeux de pouvoir entre le dirigeant propriétaire, souvent détenteur de zones d''incertitude considérables sur le fonctionnement réel de son entreprise, et les acteurs extérieurs qui portent ces nouveaux outils. Sur le plan méthodologique, je propose un protocole en trois phases : une enquête quantitative exploratoire pour mesurer la diffusion actuelle des pratiques budgétaires dans un échantillon de PME agro-industrielles de la région, une recherche-intervention auprès de deux ou trois PME volontaires pour accompagner et documenter finement un processus de changement, et un retour d''étude de cas clinique un an après l''intervention pour observer les usages réels, au-delà du fonctionnement officiel du dispositif au moment de sa conception.

Ma contribution attendue est double : sur le plan théorique, mieux comprendre comment les outils de pilotage de la performance globale, conçus initialement dans de grandes entreprises occidentales, sont réappropriés dans un contexte de PME familiales africaines, où les zones d''incertitude et les rapports de pouvoir prennent des formes spécifiques liées à la structure de propriété et de gouvernance de ces entreprises ; sur le plan pratique, produire des recommandations pour les organismes d''accompagnement qui promeuvent ces outils, afin qu''ils tiennent mieux compte des jeux d''acteurs réels plutôt que de supposer une adoption purement technique et rationnelle. »

Visuel à montrer : le plan de la présentation affiché à l''écran (champ théorique, question de recherche, cadre théorique mobilisé, protocole méthodologique en trois phases, contribution attendue), pour que les apprenants voient la structure même pendant qu''ils l''écoutent.

## 20:00 – 25:00 · Pause et quiz interactif

Avant de passer aux questions du jury, un quiz rapide en quatre questions sur la présentation que vous venez d''entendre. Un, à quels deux courants théoriques le projet de thèse présenté se réfère-t-il explicitement ? Réponse : l''approche cybernétique et rationnelle, et l''approche socio-organisationnelle (via l''analyse stratégique des organisations). Deux, combien de phases comporte le protocole méthodologique proposé, et lesquelles ? Réponse : trois phases, une enquête quantitative exploratoire, une recherche-intervention, et un retour d''étude de cas clinique. Trois, quelle notion du courant socio-organisationnel est mobilisée pour analyser le dirigeant propriétaire de PME ? Réponse : la zone d''incertitude. Quatre, quelle est la double nature de la contribution attendue annoncée par le candidat ? Réponse : une contribution théorique et une contribution pratique.

## 25:00 – 70:00 · Les questions de jury type (8 à 10 questions) et la structure d''une bonne réponse

Question 1 du jury : « Vous présentez votre projet comme se situant à l''articulation des deux courants théoriques. N''est-ce pas une façon de refuser de trancher, plutôt qu''un véritable positionnement ? » Structure d''une bonne réponse : reconnaître la légitimité de la question, puis expliquer que l''articulation n''est pas une absence de choix mais un choix argumenté, cohérent avec l''état actuel du débat académique où les recherches les plus récentes articulent justement les deux lectures plutôt que de les opposer, et préciser à quel endroit précis de l''analyse chaque cadre théorique sera mobilisé.

Question 2 : « Comment allez-vous gérer, sur le plan méthodologique, le fait d''être à la fois chercheur et possible intervenant rémunéré dans les PME de votre recherche-intervention ? » Réponse attendue : expliciter systématiquement sa posture dans les publications, prévoir une validation croisée des observations avec des acteurs non directement impliqués dans la relation contractuelle, et documenter un protocole détaillé permettant d''évaluer la rigueur de la démarche.

Question 3 : « Pourquoi ne pas vous contenter d''une enquête quantitative à grande échelle, qui serait plus rapide et plus généralisable ? » Réponse attendue : une enquête quantitative seule ne permettrait pas de comprendre les mécanismes fins d''appropriation ou de résistance aux outils de pilotage, qui sont précisément l''objet central de la question de recherche ; elle est donc complémentaire, non substituable, aux deux autres méthodes.

Question 4 : « En quoi votre terrain sénégalais apporte-t-il une contribution originale par rapport à la littérature existante, majoritairement produite sur des contextes occidentaux ? » Réponse attendue : souligner que les structures de propriété et de gouvernance des PME familiales étudiées diffèrent souvent significativement des grandes entreprises occidentales sur lesquelles le beyond budgeting a été initialement théorisé, ce qui permet de tester la portée et les limites de ce cadre théorique dans un contexte différent, sans prétendre que « le contexte africain » serait homogène ou uniformément différent.

Question 5 : « Quelle est la principale limite de votre protocole méthodologique en trois phases ? » Réponse attendue : reconnaître une limite réelle, par exemple la difficulté de recruter des PME volontaires pour la phase de recherche-intervention, ou le risque que les deux ou trois PME étudiées en profondeur ne soient pas représentatives de l''échantillon plus large mesuré par l''enquête quantitative, et indiquer comment cette limite sera explicitement discutée dans la thèse plutôt que dissimulée.

Question 6 : « Si vos résultats montraient que les PME étudiées résistent massivement à ces nouveaux outils sans jamais les adopter réellement, cela invaliderait-il votre projet de thèse ? » Réponse attendue : non, un résultat de résistance massive serait en soi un résultat de recherche intéressant et interprétable à la lumière du cadre théorique mobilisé (il confirmerait, par exemple, l''importance des zones d''incertitude et des jeux de pouvoir), ce qui montre la nécessité de ne jamais présupposer, avant l''enquête, le résultat que l''on souhaiterait obtenir.

Question 7 : « Comment définiriez-vous, en une phrase, la différence entre le contrôle de gestion et le pilotage de la performance globale que vous évoquez ? » Réponse attendue : le contrôle de gestion, dans son acception la plus classique, se concentre sur le pilotage des ressources financières et opérationnelles au regard d''objectifs budgétaires, tandis que le pilotage de la performance globale élargit cette logique à des dimensions non strictement financières (sociale, environnementale, relationnelle) et à des indicateurs relatifs plutôt qu''absolus.

Question 8 : « Votre projet mobilise-t-il des auteurs ou des travaux issus du continent africain sur le contrôle de gestion ? » Réponse attendue : un candidat honnête reconnaît l''état réel de ses lectures sur ce point précis plutôt que de citer des noms par complaisance ; si la littérature spécifiquement africaine sur le contrôle de gestion en PME reste encore peu développée par rapport à d''autres champs des sciences sociales, le candidat peut légitimement annoncer que sa thèse contribuera à combler, même modestement, ce manque, sans jamais inventer une filiation académique qu''il ne maîtrise pas réellement.

## 70:00 – 85:00 · Débriefing de la simulation

Reprenons maintenant, à froid, les points clés de cette simulation. Le candidat a montré une capacité constante à relier chaque réponse aux deux courants théoriques fondamentaux du champ, sans jamais s''en écarter durablement. Il a su reconnaître les limites réelles de son protocole plutôt que de les nier, ce qui renforce sa crédibilité plutôt que de l''affaiblir. Il a su rester prudent sur les points où ses connaissances étaient incertaines, notamment sur la littérature africaine spécifique du champ, plutôt que de prendre le risque d''une affirmation non vérifiée devant un jury qui pourrait la contester immédiatement.

Visuel à montrer : la liste des huit questions de jury posées pendant la séquence précédente, pour que les apprenants puissent les reprendre et s''exercer eux-mêmes à y répondre après la séance, avec leur propre projet de thèse.

## 85:00 – 90:00 · Grille d''auto-évaluation de la soutenance simulée

Cette dernière vidéo ne se conclut pas par une évaluation à cinq questions avec réponses, mais par une grille d''auto-évaluation que vous utiliserez pour préparer votre propre soutenance. Notez-vous, sur une échelle de un à quatre, pour chacun des six critères suivants, en étant honnête plutôt que complaisant avec vous-même.

Premier critère : la présentation initiale relie-t-elle explicitement le champ théorique, la question de recherche, le cadre mobilisé et la méthodologie, sans rupture logique entre ces éléments ?

Deuxième critère : chaque réponse à une question de jury commence-t-elle par reconnaître explicitement la légitimité ou la difficulté de la question posée, plutôt que de l''éluder ?

Troisième critère : les limites du projet sont-elles reconnues spontanément, sans attendre d''y être acculé par le jury ?

Quatrième critère : le candidat évite-t-il toute affirmation non vérifiable, notamment sur des auteurs, des chiffres ou des filiations académiques qu''il ne maîtrise pas réellement ?

Cinquième critère : le candidat sait-il articuler les deux grands courants théoriques du champ plutôt que de n''en mobiliser qu''un seul de façon rigide ?

Sixième critère : la justification méthodologique est-elle argumentée en fonction de la question de recherche, et non présentée comme un choix arbitraire ou de pure convenance ?

Un score global de dix-huit sur vingt-quatre ou plus indique une préparation solide ; un score inférieur signale les critères sur lesquels concentrer vos dernières semaines de préparation avant l''épreuve réelle. Je vous souhaite une excellente soutenance.', 'video', 90, false, 100
from public.courses c where c.slug = 'doc-cg'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : simulation complète d''une soutenance de qualification doctorale');
