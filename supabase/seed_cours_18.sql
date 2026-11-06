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

-- Cours : Doctorat Comptabilité : réussir l'examen de qualification doctorale
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'doc-compta', (select id from public.levels where name = 'Doctorat'), null, 'Comptabilité', 'Doctorat Comptabilité : réussir l''examen de qualification doctorale', 'Cours de préparation à l''examen de qualification doctorale en Comptabilité : maîtrise de la théorie positive de la comptabilité et des approches critiques et sociales, du débat entre harmonisation IFRS et référentiels régionaux OHADA/SYSCOHADA, et des méthodes de recherche du champ (études d''événements, recherche qualitative et institutionnelle, études de cas). Public : doctorants en comptabilité préparant leur soutenance de qualification. Prérequis : Master en comptabilité ou discipline proche, projet de thèse en cours de construction.', true, 805
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Réussir son examen de qualification doctorale en Comptabilité', 'Objectifs de la leçon

Cette première leçon pose le cadre de l''examen de qualification doctorale en Comptabilité : à quoi il sert, comment un jury doctoral l''évalue, et comment organiser un travail de préparation efficace sur huit semaines. Elle s''adresse au doctorant qui a validé son inscription en thèse et doit, avant de s''y consacrer pleinement, démontrer qu''il maîtrise l''état de l''art de son champ disciplinaire.

Nature de l''épreuve

L''examen de qualification doctorale (souvent appelé examen comprehensive dans les systèmes anglo-saxons, ou soutenance de projet de thèse dans les systèmes francophones) n''est pas un contrôle de connaissances au sens d''un examen de Master. Il vérifie trois choses distinctes.

- La maîtrise de la littérature du champ : le doctorant doit savoir restituer les grands courants théoriques de la recherche comptable, leurs auteurs représentatifs (identifiés par leur apport, pas par citation exacte mémorisée), leurs débats et leurs limites.
- La capacité de synthèse critique : il ne s''agit pas de réciter des théories côte à côte, mais de les mettre en tension, de montrer leurs présupposés respectifs et d''expliquer pourquoi des chercheurs les opposent ou les articulent.
- La solidité du projet de thèse : le candidat doit situer sa propre problématique dans cette littérature, justifier le choix d''un cadre théorique et d''une méthode de recherche, et anticiper les critiques qu''un jury pourrait formuler.

Concrètement, l''épreuve combine le plus souvent un document écrit (note de synthèse de la littérature et/ou projet de thèse détaillé) et une soutenance orale devant un jury de trois à cinq enseignants-chercheurs, dont le directeur de thèse n''est pas toujours partie prenante au vote. La durée de la soutenance varie selon les établissements, mais elle suit presque toujours la même logique : un exposé initial du candidat (15 à 30 minutes), puis une série de questions du jury portant sur la littérature, la méthode et la faisabilité du projet.

Ce que le jury doctoral attend réellement

Un jury de qualification ne cherche pas l''exhaustivité encyclopédique. Il évalue surtout la posture de chercheur du candidat, à travers quatre attentes récurrentes.

- La clarté du positionnement théorique : le candidat sait dire explicitement dans quel courant il s''inscrit (ou comment il articule plusieurs courants) et pourquoi ce choix est cohérent avec sa question de recherche.
- L''honnêteté intellectuelle face aux limites : un bon candidat reconnaît les faiblesses de son cadre théorique et de sa méthode plutôt que de les occulter. C''est souvent ce critère qui distingue un candidat qui maîtrise son sujet d''un candidat qui le récite.
- La cohérence méthodologique : la méthode de recherche annoncée doit être adaptée à la question posée ; un jury sanctionne sévèrement une méthode choisie par habitude plutôt que par pertinence.
- La capacité à dialoguer : contrairement à un examen écrit, la soutenance est un échange. Le jury observe comment le candidat réagit à une objection, s''il sait nuancer sans se contredire, et s''il distingue ce qu''il sait de ce qu''il ignore encore.

En comptabilité, ces attentes prennent une coloration particulière : le champ est traversé par une tension ancienne entre une tradition de recherche proche des sciences de gestion quantitatives et des marchés financiers, et une tradition plus proche des sciences sociales, qui interroge la comptabilité comme construction sociale et politique. Un candidat qui ignore l''existence de cette tension, ou qui prétend qu''un seul courant détient la vérité, affaiblit sa position.

Méthode de travail pour préparer l''épreuve

Trois outils structurent efficacement la préparation.

- La fiche de lecture : pour chaque texte ou chaque courant étudié, une fiche courte et standardisée (problématique, cadre théorique mobilisé, méthode, résultat principal, limite assumée par l''auteur ou relevée par la critique) évite de se noyer dans le détail et permet de réviser rapidement avant la soutenance.
- La cartographie des courants : un schéma ou un tableau qui positionne les courants les uns par rapport aux autres (sur quoi ils s''opposent, sur quoi ils se recoupent, quels objets d''étude ils privilégient) aide à répondre aux questions transversales du jury, qui portent souvent sur les liens entre courants plutôt que sur un courant isolé.
- La note de synthèse : un document de quelques pages qui résume l''état de l''art du champ et positionne le projet de thèse par rapport à lui. C''est souvent ce document, ou une version enrichie, qui sert de support écrit à la soutenance.

Plan de travail sur huit semaines

Un calendrier réaliste, à adapter selon le temps disponible, peut s''organiser ainsi.

- Semaines 1 et 2 : recensement et lecture des textes fondateurs du courant de la théorie positive de la comptabilité (recherche en information financière, lien avec les marchés de capitaux) ; rédaction des fiches de lecture correspondantes.
- Semaines 3 et 4 : recensement et lecture des textes représentatifs des approches critiques et sociales de la comptabilité (comptabilité comme construction sociale, théorie des parties prenantes, responsabilité sociétale) ; fiches de lecture ; premier essai de cartographie opposant les deux courants.
- Semaine 5 : étude des méthodes de recherche propres au champ comptable (études d''événements sur les marchés financiers, recherche qualitative et institutionnelle, études de cas) et de leurs conditions d''application.
- Semaine 6 : rédaction d''un premier jet de note de synthèse articulant les deux courants et une méthode, et esquisse du positionnement du projet de thèse personnel.
- Semaine 7 : entraînement sur une question de synthèse type, rédaction d''un plan de réponse complet, puis simulation orale (seul ou avec un pair) chronométrée.
- Semaine 8 : relecture critique, correction des points faibles identifiés lors de la simulation, préparation des réponses aux objections les plus probables, repos la veille de l''épreuve.

Ce plan n''est pas une recette rigide : il s''ajuste au nombre de courants exigés et au temps disponible. Ce qui compte est la régularité du travail de fiche, plus efficace qu''une révision massive de dernière minute.

## Exercices pratiques

1. Rédigez en cinq lignes la différence entre un examen de Master et un examen de qualification doctorale, du point de vue de ce qui est évalué.
2. Listez les quatre attentes d''un jury doctoral présentées dans cette leçon et donnez, pour chacune, un exemple concret de ce qu''un candidat pourrait dire ou faire pour y répondre.
3. Construisez le squelette d''une fiche de lecture (rubriques uniquement, sans contenu) que vous utiliserez pour les leçons suivantes.
4. Pourquoi la cohérence entre la question de recherche, le cadre théorique et la méthode est-elle un critère d''évaluation central, plus que la seule exactitude des connaissances ?
5. Rédigez votre propre plan de travail sur huit semaines en l''adaptant à votre situation (temps disponible, nombre de courants exigés par votre programme).

## Corrigé

1. Un examen de Master évalue la capacité à résoudre un cas ou à appliquer une connaissance balisée dans un cadre fixé par l''enseignant. Un examen de qualification doctorale évalue la capacité à se positionner soi-même dans un champ de recherche existant, à comparer de façon critique des courants théoriques concurrents, et à défendre un projet de thèse original devant un jury qui peut remettre en cause chaque choix. Le niveau attendu est donc celui d''un chercheur en formation, pas celui d''un étudiant qui applique une méthode enseignée.

2. Clarté du positionnement théorique : dire explicitement « je m''inscris dans la perspective critique et sociale de la comptabilité parce que ma question porte sur la légitimité des normes, pas sur leur utilité pour les marchés ». Honnêteté sur les limites : reconnaître par exemple qu''une étude de cas unique ne permet pas de généraliser, et expliquer pourquoi ce choix reste justifié pour une recherche exploratoire. Cohérence méthodologique : ne pas annoncer une étude d''événements sur les marchés financiers si la question de recherche porte sur la perception des normes par des acteurs non cotés en bourse. Capacité à dialoguer : répondre à une objection du jury en reformulant ce qui est accepté et ce qui est nuancé, sans se contredire ni se braquer.

3. Une fiche de lecture utile comporte au minimum : référence et auteur(s) identifiés par leur apport ; problématique traitée ; cadre théorique mobilisé ; méthode de recherche employée ; principal résultat ou argument ; limite assumée ou critique reçue ; lien possible avec mon propre projet de thèse.

4. Parce qu''un jury évalue la capacité à raisonner comme un chercheur, pas la mémoire. Un candidat qui connaît un courant théorique mais choisit une méthode inadaptée révèle qu''il n''a pas intégré la logique de la recherche : la question doit guider le cadre théorique, qui oriente à son tour la méthode. Cette incohérence est l''un des signaux les plus visibles d''un travail insuffisamment mûri.

5. Il n''existe pas de corrigé unique : la bonne réponse est un plan réaliste, daté, qui couvre bien les étapes clés (lecture des courants, méthodes, entraînement à la question de synthèse, simulation orale) et qui tient compte du temps réellement disponible du candidat. L''essentiel à vérifier soi-même : chaque semaine doit avoir un livrable concret (une fiche, une cartographie, un brouillon de note de synthèse), pas seulement une intention de lecture.', 'texte', 45, true, 10
from public.courses c where c.slug = 'doc-compta'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Réussir son examen de qualification doctorale en Comptabilité');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Courant théorique 1 : la théorie positive de la comptabilité', 'Objectifs de la leçon

Cette leçon présente le premier grand courant théorique du champ comptable retenu pour votre examen de qualification : la théorie positive de la comptabilité (positive accounting theory). Vous devez être capable d''en exposer les fondements, d''en citer l''apport des auteurs fondateurs, de retracer son évolution, et d''en formuler les limites et les critiques les plus sérieuses.

Définition et postulat central

La théorie positive de la comptabilité désigne un courant de recherche qui cherche à expliquer et à prédire les pratiques comptables réellement observées, plutôt qu''à prescrire ce qu''elles devraient être. Son postulat central est que les choix comptables des dirigeants, des entreprises et des régulateurs s''expliquent par des motivations économiques rationnelles : minimiser les coûts contractuels, gérer les conflits d''intérêts entre actionnaires, dirigeants et créanciers, et répondre aux incitations créées par les contrats (rémunération indexée sur le résultat, clauses d''endettement, pression politique sur les grandes entreprises).

Ce courant s''inscrit dans une démarche positiviste empruntée aux sciences économiques : il formule des hypothèses testables statistiquement, les confronte à des données de marché ou d''entreprise, et en tire des régularités. Il s''oppose explicitement à une comptabilité normative qui se contenterait de dire comment les comptes devraient être tenus, sans chercher à expliquer pourquoi les praticiens s''en écartent souvent.

Auteurs fondateurs et apport

Sans prétendre à une citation textuelle exacte de leurs travaux, on peut situer l''apport de plusieurs figures associées à ce courant.

- Ross Watts et Jerold Zimmerman sont les auteurs dont l''apport est le plus directement associé à la formalisation de la théorie positive de la comptabilité dans les années 1970 et 1980. Leur contribution majeure est d''avoir proposé un cadre explicatif des choix comptables fondé sur trois hypothèses répandues dans la littérature qui leur est associée : l''hypothèse du plan de rémunération (les dirigeants choisissent des méthodes comptables qui augmentent leur rémunération quand celle-ci dépend du résultat comptable), l''hypothèse des clauses d''endettement (les entreprises proches de violer une clause contractuelle liée à leur niveau d''endettement ont intérêt à choisir des méthodes comptables qui améliorent leurs ratios), et l''hypothèse des coûts politiques (les grandes entreprises visibles ont intérêt à lisser ou minorer un résultat trop élevé pour éviter une attention réglementaire ou fiscale accrue).
- William Beaver est associé à l''apport fondateur sur l''utilité de l''information comptable pour les marchés financiers, en étudiant comment la publication des résultats comptables modifie le comportement des investisseurs (volume des transactions, volatilité des cours) autour de la date d''annonce.
- Ray Ball et Philip Brown sont associés à l''un des travaux fondateurs établissant empiriquement un lien entre le contenu informatif des résultats comptables publiés et les variations de cours de bourse, ce qui a durablement orienté la recherche comptable vers l''étude de la valeur informationnelle (value relevance) des chiffres comptables pour les marchés de capitaux.

Évolution historique du courant

Le courant trouve son origine dans le mouvement de recherche empirique en comptabilité financière des années 1960 et 1970, lui-même porté par le développement de l''hypothèse d''efficience des marchés financiers en finance. Si les marchés intègrent rapidement l''information disponible, alors on peut étudier statistiquement comment ils réagissent à la publication d''une information comptable, et en déduire si cette information est utile.

Dans les années 1980, le courant s''élargit des études de marché aux études de choix comptables eux-mêmes : pourquoi une entreprise choisit-elle une méthode d''amortissement plutôt qu''une autre, pourquoi certains dirigeants pratiquent-ils la gestion du résultat (earnings management) à certaines périodes. La théorie de l''agence, qui analyse les conflits d''intérêts entre les différentes parties prenantes d''un contrat, devient le cadre explicatif dominant de cette deuxième vague.

À partir des années 1990 et 2000, le courant se diversifie encore : il nourrit une abondante littérature sur la pertinence des normes comptables internationales (IFRS) pour les marchés financiers. L''argument central de cette littérature est que l''harmonisation comptable internationale réduit les coûts d''information pour les investisseurs, facilite la comparabilité des entreprises cotées entre pays, et peut ainsi abaisser le coût du capital des entreprises qui adoptent des normes de haute qualité perçue. C''est une extension logique du postulat de départ : si l''information comptable est utile aux marchés, alors sa qualité et sa comparabilité internationale doivent avoir une valeur économique mesurable, par exemple via des études d''événements autour des dates d''adoption des IFRS.

Limites et critiques

Ce courant a fait l''objet de critiques anciennes et récurrentes, qu''un candidat doit connaître pour nuancer sa présentation.

- Un déterminisme économique excessif : en expliquant tout choix comptable par un calcul d''intérêt économique rationnel, la théorie positive tend à ignorer les dimensions institutionnelles, culturelles et politiques qui façonnent aussi les pratiques comptables, notamment dans des contextes où les marchés financiers jouent un rôle secondaire.
- Une confusion possible entre corrélation et explication : montrer qu''un choix comptable est statistiquement associé à une incitation économique ne prouve pas que cette incitation en est la cause, ni qu''elle en est la seule cause.
- Une focalisation sur les marchés financiers développés : une large part des travaux fondateurs du courant s''appuie sur des données de marchés nord-américains très liquides. Leur transposition à des contextes où les marchés boursiers sont étroits ou peu liquides, ce qui est le cas de nombreuses places africaines, pose la question de la validité externe des résultats, un point qu''un candidat doit savoir discuter sans pour autant rejeter l''ensemble du courant.
- Une neutralité scientifique contestée : des chercheurs d''autres courants reprochent à la théorie positive de se présenter comme purement descriptive alors qu''elle véhicule, selon eux, une vision implicite de l''entreprise centrée sur l''efficience des marchés et les intérêts des actionnaires, ce qui n''est pas un choix neutre. Cette critique prépare directement la discussion du courant opposé ou complémentaire étudié dans la prochaine leçon.

Ce que le candidat doit retenir pour l''épreuve

Pour l''examen, il est attendu de savoir présenter ce courant de façon équilibrée : en rappeler le postulat et l''apport réel (avoir mis l''information comptable au centre d''une démarche empirique testable, avoir éclairé des mécanismes contractuels concrets), tout en étant capable d''articuler ses limites sans les présenter comme une réfutation totale. C''est cette capacité de nuance, plus que la restitution brute des trois hypothèses de Watts et Zimmerman, qui distingue une bonne réponse de jury d''une réponse mémorisée.

## Exercices pratiques

1. En trois phrases, formulez le postulat central de la théorie positive de la comptabilité sans utiliser le mot « positive ».
2. Expliquez avec un exemple fictif comment l''hypothèse des clauses d''endettement pourrait motiver un choix comptable précis dans une entreprise sénégalaise fortement endettée.
3. Pourquoi le développement de ce courant est-il historiquement lié à l''hypothèse d''efficience des marchés financiers ?
4. Présentez un argument et une limite de l''application de ce courant à l''étude de la valeur informationnelle des normes IFRS dans un contexte de marché financier peu liquide.
5. Un membre du jury vous objecte : « votre cadre théorique réduit les dirigeants à des calculateurs d''intérêt, n''est-ce pas réducteur ? ». Rédigez une réponse de deux phrases qui reconnaît la limite sans abandonner le cadre théorique.

## Corrigé

1. Les choix comptables observés dans les entreprises s''expliquent principalement par des motivations économiques rationnelles liées aux contrats qui lient les dirigeants aux actionnaires et aux créanciers. Ce courant chercher à expliquer les pratiques réelles plutôt qu''à prescrire des règles idéales. Il utilise des méthodes empiriques pour tester statistiquement ces explications sur des données réelles.

2. Une entreprise sénégalaise proche de violer une clause contractuelle bancaire liée à un ratio d''endettement maximal (exemple fictif pour l''illustration) pourrait choisir une méthode de comptabilisation qui améliore son résultat ou réduit son passif apparent, afin d''éviter un défaut technique et ses conséquences (renégociation, exigibilité anticipée). Ce choix n''est pas nécessairement frauduleux : il reste souvent dans le cadre des options autorisées par le référentiel comptable applicable, ce qui est précisément ce que l''hypothèse des clauses d''endettement chercher à expliquer.

3. Parce que l''étude empirique de l''utilité de l''information comptable pour les marchés suppose que ces marchés réagissent à cette information de façon suffisamment rapide et cohérente pour être mesurable statistiquement. Sans l''hypothèse d''efficience, qui postule que les prix intègrent rapidement l''information disponible, il serait difficile d''interpréter une variation de cours autour d''une annonce comptable comme la preuve que l''information a eu une valeur pour les investisseurs.

4. Argument : l''adoption de normes IFRS, perçues comme de meilleure qualité et plus comparables, peut réduire l''incertitude des investisseurs sur la qualité des comptes et donc, en théorie, réduire le coût du capital des entreprises qui les adoptent. Limite : sur un marché financier peu liquide, où les volumes d''échange sont faibles et où peu d''investisseurs suivent activement l''information publiée, la réaction du marché à une annonce comptable peut être trop faible ou trop bruitée pour être mesurée de façon fiable, ce qui affaiblit la validité empirique de l''argument dans ce contexte.

5. Réponse possible : « Je reconnais que ce cadre simplifie la motivation des dirigeants en la ramenant à des incitations contractuelles mesurables, et qu''il laisse de côté des dimensions institutionnelles ou culturelles plus difficiles à modéliser statistiquement. Je le mobilise néanmoins parce qu''il permet de formuler des hypothèses testables sur mon terrain, et je prévois de le compléter, si nécessaire, par une lecture plus institutionnelle pour les aspects qu''il laisse dans l''ombre. »', 'texte', 45, false, 20
from public.courses c where c.slug = 'doc-compta'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Courant théorique 1 : la théorie positive de la comptabilité');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Courant théorique 2 : les approches critiques et sociales de la comptabilité', 'Objectifs de la leçon

Cette leçon présente le second grand courant théorique retenu pour votre examen : les approches critiques et sociales de la comptabilité. Ce courant se construit en partie en réaction au courant étudié dans la leçon précédente, et il est fréquent qu''un jury demande explicitement de mettre les deux en tension. Vous devez savoir en exposer les fondements, les apports, l''évolution, et les limites.

Définition et postulat central

Les approches critiques et sociales de la comptabilité regroupent un ensemble de courants hétérogènes qui partagent un postulat commun : la comptabilité n''est pas un simple outil technique neutre de mesure économique, mais une construction sociale qui façonne, et est façonnée par, des rapports de pouvoir, des représentations sociales et des choix politiques. Produire un chiffre comptable, c''est déjà faire un choix sur ce qui compte, pour qui, et selon quelles catégories.

Ce courant déplace donc la question de recherche. Là où la théorie positive demande « quelle incitation économique explique ce choix comptable, et quel effet ce choix a-t-il sur les marchés », les approches critiques et sociales demandent « quels intérêts, quelles représentations du monde, quels rapports entre l''entreprise et la société ce choix comptable reflète-t-il ou contribue-t-il à construire ». Ce ne sont pas seulement des méthodes différentes, mais des questions différentes posées à partir de présupposés différents sur ce qu''est la comptabilité.

Auteurs et apports représentatifs

Plusieurs lignes de travail peuvent être situées dans ce courant, par leur apport plutôt que par citation exacte.

- Anthony Hopwood est associé à l''apport fondateur consistant à étudier la comptabilité comme pratique sociale et organisationnelle, en s''intéressant à la façon dont les systèmes comptables influencent le comportement des acteurs dans l''organisation, au-delà de leur seule fonction de mesure.
- Richard Laughlin et des chercheurs proches de la tradition dite de la comptabilité critique sont associés à l''apport d''une lecture inspirée des théories sociales critiques, qui interroge le rôle de la comptabilité dans la reproduction de rapports de pouvoir au sein des organisations et de la société.
- Les travaux rattachés à la théorie des parties prenantes (stakeholder theory), popularisée notamment à partir des apports de R. Edward Freeman en management stratégique puis largement repris en comptabilité sociale et environnementale, sont associés à l''idée que l''entreprise doit rendre compte non seulement à ses actionnaires mais à l''ensemble des parties affectées par son activité (salariés, communautés locales, collectivités, environnement), ce qui a nourri le développement de la comptabilité sociale et environnementale et des rapports de responsabilité sociétale des entreprises.
- La théorie de la légitimité, mobilisée par de nombreux chercheurs de ce courant, est associée à l''idée que les entreprises publient des informations sociales et environnementales en partie pour préserver leur légitimité auprès de la société, indépendamment de toute utilité directe pour les décisions des investisseurs financiers.

Évolution historique du courant

Ce courant émerge à partir des années 1970 et 1980, en partie comme réaction au tournant empirique et quantitatif de la recherche comptable dominante à cette période. Des chercheurs, souvent influencés par la sociologie des organisations, la philosophie sociale ou l''économie politique, estiment que réduire la comptabilité à son utilité pour des marchés financiers efficients laisse de côté l''essentiel : les effets de la comptabilité sur le travail, sur les communautés, sur l''environnement, et sur la répartition du pouvoir dans et autour des organisations.

Dans les années 1990, le courant se structure davantage autour de la comptabilité sociale et environnementale, avec l''essor des rapports extra-financiers des grandes entreprises et l''apparition progressive de cadres de reporting sur la responsabilité sociétale. La recherche critique s''intéresse alors beaucoup à la question de savoir si ces rapports traduisent un changement réel de comportement des entreprises, ou s''ils servent surtout une fonction de légitimation symbolique, sans effet substantiel sur les pratiques.

Depuis les années 2000, une partie de ce courant s''intéresse de près à la normalisation comptable internationale elle-même comme objet d''étude social et politique : qui participe à l''élaboration des normes comptables internationales, quels intérêts y sont représentés, et quelles conséquences la diffusion mondiale d''un même référentiel a-t-elle sur des économies très différentes. C''est ici que se noue un débat particulièrement pertinent pour un chercheur africain en comptabilité : celui de l''harmonisation comptable internationale portée par les normes IFRS, face à la pertinence de référentiels régionaux comme le droit comptable de l''Organisation pour l''Harmonisation du Droit des Affaires en Afrique, mis en œuvre à travers le Système Comptable Ouest-Africain (OHADA et SYSCOHADA).

Les chercheurs proches des approches critiques et sociales invitent à ne pas considérer l''adoption des IFRS comme un simple progrès technique universel, mais à interroger les conditions sociales de sa production (élaborée principalement par des organismes des économies les plus industrialisées) et sa pertinence pour des économies où les marchés financiers sont étroits, où le tissu économique est dominé par des petites et moyennes entreprises non cotées, et où les besoins d''information des utilisateurs diffèrent de ceux des investisseurs boursiers visés en priorité par les IFRS. Le référentiel SYSCOHADA, construit pour un espace économique régional ouest et centrafricain, peut alors être lu non comme un simple retard par rapport à une norme internationale supérieure, mais comme une construction institutionnelle répondant à des besoins et à des rapports de pouvoir économiques propres à la zone, ce qui est précisément la question posée par les approches critiques et sociales.

Limites et critiques

Ce courant, à son tour, fait l''objet de critiques qu''un candidat doit connaître.

- Un déficit de généralisation statistique : beaucoup de travaux s''appuient sur des études de cas ou des analyses qualitatives dont la portée reste difficile à généraliser, ce que les chercheurs du courant opposé soulignent régulièrement.
- Un risque de glissement normatif : partant d''un engagement critique explicite, certains travaux sont accusés de mélanger analyse scientifique et prise de position militante.
- Une difficulté à proposer des solutions opérationnelles immédiates : mettre en évidence des rapports de pouvoir est parfois jugé plus facile que formuler des recommandations applicables.

Articulation avec le courant précédent

Pour l''examen, il est attendu de ne pas présenter ces deux courants comme simplement incompatibles. Beaucoup de chercheurs contemporains considèrent qu''ils répondent à des questions différentes et peuvent être mobilisés de façon complémentaire selon l''objet étudié : un travail sur la valeur informationnelle d''une annonce comptable sur un marché boursier relève naturellement du premier courant, tandis qu''un travail sur l''adoption d''un référentiel comptable régional par des petites entreprises non cotées relève plus naturellement du second. Savoir expliquer ce critère de choix, plutôt que de déclarer un courant supérieur à l''autre, est souvent ce qui distingue une bonne prestation orale.

## Exercices pratiques

1. Formulez en trois phrases le postulat central des approches critiques et sociales de la comptabilité, en évitant toute formule mémorisée.
2. Expliquez la différence entre la théorie des parties prenantes et la théorie de la légitimité, en une phrase chacune.
3. Pourquoi le débat sur la pertinence d''un référentiel régional comme le SYSCOHADA face aux normes IFRS est-il un terrain naturel pour les approches critiques et sociales de la comptabilité ?
4. Donnez un exemple fictif de rapport de responsabilité sociétale d''une entreprise sénégalaise qui pourrait être analysé sous l''angle de la théorie de la légitimité plutôt que sous l''angle de son utilité informationnelle pour les marchés.
5. Un membre du jury vous objecte que vos travaux critiques « ne proposent pas de solution concrète ». Rédigez une réponse de deux phrases qui défend la valeur du travail descriptif et critique sans prétendre qu''il doit toujours produire une recommandation opérationnelle.

## Corrigé

1. La comptabilité n''est pas un outil technique neutre : elle reflète et façonne des rapports de pouvoir, des représentations sociales et des choix politiques, dans l''organisation comme dans la société. Produire un chiffre comptable implique toujours de choisir ce qui compte et selon quelles catégories. Ce courant étudie donc les effets sociaux et politiques des pratiques comptables, plutôt que leur seule utilité économique pour les marchés.

2. La théorie des parties prenantes soutient que l''entreprise doit rendre compte à l''ensemble des acteurs affectés par son activité, pas seulement à ses actionnaires. La théorie de la légitimité explique, elle, pourquoi une entreprise publie certaines informations sociales ou environnementales : pour préserver son acceptabilité sociale, indépendamment de toute obligation envers des parties prenantes précises.

3. Parce que ce débat ne porte pas seulement sur une question technique de qualité comptable, mais sur la question de savoir qui produit les normes, pour quels besoins, et avec quels intérêts économiques en jeu, ce qui est exactement l''objet d''étude privilégié des approches critiques et sociales : interroger les conditions sociales et institutionnelles de production d''un référentiel plutôt que supposer sa supériorité technique universelle.

4. Une entreprise sénégalaise (exemple fictif) qui publie chaque année un rapport détaillé sur ses actions sociales dans les communautés où elle opère, sans que ce rapport soit directement utilisé par les investisseurs financiers pour évaluer son cours de bourse, illustre bien la théorie de la légitimité : la publication vise à maintenir une image socialement acceptable de l''entreprise, plutôt qu''à informer un marché financier sur sa valeur.

5. Réponse possible : « La recherche critique a pour fonction première de révéler des mécanismes et des rapports de pouvoir qui restent invisibles dans une lecture purement technique de la comptabilité ; cette mise en lumière a une valeur scientifique propre. Je reconnais cependant que mon projet pourrait, en complément, discuter des implications pratiques de ces résultats pour les régulateurs ou les praticiens, sans pour autant transformer un travail descriptif en recommandation normative. »', 'texte', 45, false, 30
from public.courses c where c.slug = 'doc-compta'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Courant théorique 2 : les approches critiques et sociales de la comptabilité');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Les méthodes de recherche en comptabilité', 'Objectifs de la leçon

Cette leçon présente les grandes méthodes de recherche propres au champ comptable, en lien direct avec les deux courants théoriques étudiés précédemment. Elle se termine par un exemple de protocole de recherche appliqué à un contexte sénégalais fictif, construit pour vous entraîner à justifier une méthode devant un jury.

Les études d''événements sur les marchés financiers

L''étude d''événements (event study) est la méthode quantitative la plus associée à la théorie positive de la comptabilité et à l''étude de la valeur informationnelle des chiffres comptables. Son principe est de mesurer la réaction d''un marché financier à la publication d''une information comptable précise (résultat annuel, changement de méthode comptable, adoption d''un nouveau référentiel), en comparant le rendement réellement observé d''un titre autour de la date de l''événement à un rendement attendu en l''absence de cet événement.

La démarche suit généralement quatre étapes. Premièrement, définir précisément l''événement et sa date (par exemple la date de publication officielle d''un résultat annuel). Deuxièmement, estimer un modèle de rendement attendu sur une période antérieure à l''événement, le plus souvent un modèle de marché qui relie le rendement du titre au rendement d''un indice de référence par une relation linéaire. Troisièmement, calculer le rendement anormal (abnormal return) à chaque date de la fenêtre d''événement, défini comme la différence entre le rendement observé et le rendement attendu par le modèle. Quatrièmement, cumuler ces rendements anormaux sur la fenêtre étudiée (cumulative abnormal return, CAR) et tester si ce cumul est statistiquement différent de zéro.

Un exemple chiffré, entièrement fictif et vérifié par calcul, illustre la méthode. Sur une fenêtre de onze jours de bourse autour de la publication des comptes annuels d''une entreprise fictive cotée sur un marché régional (jour 0 = date de l''annonce), avec un modèle de marché fictif déjà estimé (alpha = 0,02 pourcent, bêta = 1,10), les rendements anormaux quotidiens calculés sont faibles les jours sans événement (de l''ordre de -0,08 à +0,07 pourcent) mais atteignent 1,67 pourcent le jour de l''annonce elle-même. Le cumul des rendements anormaux sur l''ensemble de la fenêtre (CAR) atteint environ 1,86 pourcent, très majoritairement porté par le seul jour de l''annonce. Un test de significativité simplifié, comparant l''écart du jour 0 à la moyenne et à l''écart-type des rendements anormaux des autres jours, donne une statistique très supérieure aux valeurs seuils usuelles, ce qui, dans cet exemple construit pour l''illustration, serait interprété comme une réaction de marché statistiquement significative à l''annonce comptable. Ces chiffres sont fictifs et construits pour la démonstration : dans une recherche réelle, la robustesse d''un tel résultat dépend de la qualité du modèle de rendement attendu, de la taille de l''échantillon d''entreprises étudiées, et du contrôle d''événements concurrents susceptibles d''affecter le cours à la même date.

Cette méthode suppose un marché boursier suffisamment liquide et un échantillon suffisant d''entreprises cotées pour être statistiquement robuste, ce qui limite directement son application dans des contextes où le marché financier est étroit.

La recherche qualitative et institutionnelle

À l''opposé méthodologique, la recherche qualitative et institutionnelle est la méthode privilégiée des approches critiques et sociales de la comptabilité. Elle vise à comprendre en profondeur comment des acteurs donnent sens à des pratiques comptables, comment des institutions (organismes de normalisation, administrations, organisations professionnelles) façonnent ces pratiques, et comment des rapports de pouvoir s''y expriment.

Les techniques les plus courantes sont l''entretien semi-directif avec des acteurs clés (dirigeants, comptables, régulateurs, auditeurs), l''analyse documentaire approfondie (rapports annuels, procès-verbaux d''organismes de normalisation, débats publics autour d''un projet de norme), et l''observation directe ou participante au sein d''une organisation. L''analyse qualitative recourt souvent à un codage thématique des données recueillies pour en dégager des catégories et des régularités interprétatives, sans viser une généralisation statistique.

La recherche institutionnelle, plus spécifiquement, s''appuie fréquemment sur la théorie néo-institutionnelle pour expliquer pourquoi des organisations adoptent des pratiques comptables similaires non pas parce qu''elles sont techniquement supérieures, mais parce qu''elles répondent à des pressions de légitimité, d''imitation ou de normalisation professionnelle. Ce cadre est particulièrement utile pour étudier la diffusion d''un référentiel comme le SYSCOHADA dans un espace régional, ou l''adoption progressive de pratiques inspirées des IFRS par des entreprises non cotées.

Les études de cas

L''étude de cas occupe une place particulière : elle peut servir aussi bien une démarche positiviste (étudier en détail les mécanismes contractuels d''une entreprise précise pour illustrer ou affiner une hypothèse générale) qu''une démarche critique et sociale (comprendre en profondeur un contexte organisationnel singulier). Une étude de cas rigoureuse précise toujours son unité d''analyse (une entreprise, un service, un processus de décision), sa stratégie d''échantillonnage (cas unique en profondeur ou cas multiples comparés), et ses sources de données (entretiens, documents internes, observation), en veillant à trianguler plusieurs sources pour renforcer la validité des résultats. Sa principale limite, souvent soulevée par le jury, est la difficulté à généraliser les résultats obtenus sur un ou quelques cas à une population plus large, ce qui doit être anticipé et assumé dans la présentation de la méthode plutôt que nié.

Exemple de protocole de recherche appliqué à un contexte sénégalais fictif

Imaginons un projet de thèse fictif portant sur la question suivante : « Comment les petites et moyennes entreprises sénégalaises non cotées perçoivent-elles la pertinence du référentiel SYSCOHADA révisé par rapport aux normes IFRS, et quels facteurs institutionnels expliquent leurs pratiques comptables effectives ? » Un protocole de recherche cohérent avec cette question, mobilisant la méthode qualitative et institutionnelle plutôt que l''étude d''événements (puisque ces entreprises ne sont pas cotées en bourse), pourrait s''organiser ainsi.

- Choix du cadre théorique : approche néo-institutionnelle, issue du courant critique et social, pour expliquer l''adoption de pratiques comptables par des pressions de légitimité plutôt que par un seul calcul d''efficience.
- Échantillon : étude de cas multiples, par exemple six à dix petites et moyennes entreprises sénégalaises de secteurs différents (commerce, industrie légère, services), sélectionnées pour contraster leur taille et leur exposition à des bailleurs de fonds exigeant des normes internationales.
- Collecte de données : entretiens semi-directifs avec les dirigeants et les responsables comptables de chaque entreprise, complétés par l''analyse de leurs états financiers et, lorsque disponible, de leurs échanges avec des organismes de normalisation ou des cabinets d''audit.
- Analyse : codage thématique des entretiens pour identifier les catégories de justification données par les acteurs (contrainte réglementaire, exigence d''un bailleur de fonds, habitude professionnelle, méconnaissance des alternatives), puis comparaison systématique entre les cas.
- Limites anticipées à présenter au jury : un échantillon de cas multiples sénégalais ne permet pas de généraliser les résultats à l''ensemble des petites entreprises ouest-africaines ; le choix de s''appuyer sur les discours des dirigeants, plutôt que sur une observation prolongée des pratiques réelles, introduit un biais de déclaration qu''il convient de discuter.

## Exercices pratiques

1. Expliquez en trois phrases le principe d''une étude d''événements, sans recourir au vocabulaire anglais.
2. Pourquoi l''étude d''événements est-elle difficilement applicable à une recherche portant sur des petites entreprises sénégalaises non cotées ?
3. Donnez deux techniques de collecte de données propres à la recherche qualitative et institutionnelle, et expliquez à quel type de question de recherche chacune convient le mieux.
4. Dans le protocole fictif présenté, pourquoi le choix d''une étude de cas multiples est-il préférable à un cas unique pour cette question de recherche précise ?
5. Un membre du jury objecte que les résultats de votre étude de cas multiples « ne prouvent rien de généralisable ». Formulez une réponse de deux phrases qui assume cette limite sans abandonner la méthode.

## Corrigé

1. Une étude d''événements mesure la réaction d''un marché financier à la publication d''une information précise, par exemple un résultat comptable. Elle compare le rendement réellement observé d''un titre autour de cette publication à un rendement attendu calculé à partir d''un modèle estimé sur une période antérieure. L''écart entre ces deux rendements, appelé rendement anormal, est interprété comme la réaction du marché à l''information en question.

2. Parce que cette méthode suppose un titre coté sur un marché boursier suffisamment liquide pour que ses variations de cours reflètent l''arrivée d''une information nouvelle. Des petites entreprises sénégalaises non cotées n''ont, par définition, aucun cours de bourse observable : il n''existe donc aucun rendement de marché à mesurer, ce qui rend la méthode inapplicable à cette population.

3. L''entretien semi-directif convient aux questions portant sur le sens que les acteurs donnent à leurs pratiques (pourquoi un dirigeant choisit telle méthode comptable) ; l''analyse documentaire (rapports, procès-verbaux d''organismes de normalisation) convient aux questions portant sur l''évolution institutionnelle d''un référentiel ou sur les débats publics qui l''ont entouré.

4. Parce que la question de recherche porte sur des facteurs institutionnels qui peuvent varier selon la taille, le secteur ou l''exposition à des bailleurs de fonds exigeants : un cas unique ne permettrait pas de voir si ces facteurs varient systématiquement selon ces dimensions, alors que des cas multiples contrastés permettent une comparaison qui enrichit l''interprétation, même sans viser une généralisation statistique.

5. Réponse possible : « Je reconnais que mes résultats ne sont pas généralisables statistiquement à l''ensemble des petites entreprises ouest-africaines : ce n''est pas l''objectif de ma méthode. Mon objectif est de comprendre en profondeur les mécanismes institutionnels à l''œuvre dans les cas étudiés, une compréhension qui peut ensuite nourrir des hypothèses à tester sur un échantillon plus large par une autre méthode. »', 'texte', 45, false, 40
from public.courses c where c.slug = 'doc-compta'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Les méthodes de recherche en comptabilité');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Épreuve type d''examen de qualification doctorale', 'Objectifs de la leçon

Cette leçon vous propose une question de synthèse typique d''un examen de qualification doctorale en comptabilité (question non officielle, construite pour l''entraînement), suivie d''un plan de réponse détaillé et corrigé. L''objectif est de vous entraîner à mobiliser ensemble les deux courants théoriques et une méthode de recherche étudiés dans les leçons précédentes, exactement comme un jury vous le demanderait.

Énoncé de la question type

« Dans quelle mesure la recherche comptable peut-elle à la fois évaluer l''utilité de l''information financière pour les marchés de capitaux et interroger la comptabilité comme construction sociale ? Vous discuterez cette tension à partir du débat entre harmonisation comptable internationale (IFRS) et pertinence des référentiels comptables régionaux, et vous proposerez une méthode de recherche adaptée à l''étude de cette question dans un contexte africain. »

Analyse de la question avant de répondre

Avant de se lancer dans la rédaction, un bon candidat prend quelques minutes pour décomposer la question en ses exigences implicites. Cette question en comporte au moins quatre : présenter le courant de la théorie positive de la comptabilité et son approche de l''utilité de l''information financière ; présenter le courant critique et social et sa lecture de la comptabilité comme construction sociale ; articuler ces deux courants autour du débat IFRS contre référentiels régionaux ; proposer et justifier une méthode de recherche cohérente avec un contexte africain. Un plan qui traiterait ces quatre éléments de façon séparée, sans les relier, répondrait partiellement à la question mais perdrait des points sur la capacité de synthèse attendue.

Plan de réponse détaillé

Introduction (environ 10 pourcent du temps de réponse) : rappeler que la recherche comptable est traversée par une tension entre une tradition qui étudie la comptabilité comme information utile aux décisions des marchés, et une tradition qui l''étudie comme construction sociale et politique ; annoncer que cette tension s''illustre particulièrement bien dans le débat sur l''harmonisation comptable internationale ; annoncer le plan en trois temps.

Premier temps : la lecture de l''utilité de l''information financière (mobilise la leçon 2). Présenter le postulat de la théorie positive de la comptabilité : les choix et les normes comptables s''expliquent et se justifient par leur capacité à réduire l''incertitude des investisseurs et à faciliter l''allocation efficace du capital. Appliquer ce postulat au débat IFRS : l''argument principal en faveur de l''harmonisation internationale est que des normes communes et de qualité perçue élevée réduisent les coûts d''information et peuvent abaisser le coût du capital des entreprises qui les adoptent, ce qui est testable empiriquement par des études d''événements autour des dates d''adoption. Signaler la limite : cet argument suppose des marchés financiers suffisamment développés et liquides pour que l''effet soit mesurable, ce qui n''est pas la situation de la majorité des entreprises africaines.

Deuxième temps : la lecture de la comptabilité comme construction sociale (mobilise la leçon 3). Présenter le postulat des approches critiques et sociales : la comptabilité reflète et façonne des rapports de pouvoir et des représentations sociales, et les normes comptables sont elles-mêmes le produit d''un processus institutionnel situé, pas une vérité technique universelle. Appliquer ce postulat au même débat : la normalisation IFRS est portée par des organismes et des intérêts principalement issus des économies les plus industrialisées, ce qui invite à interroger sa pertinence pour des économies où les marchés financiers sont étroits et où le tissu économique est dominé par des entreprises non cotées. Présenter alors le référentiel régional SYSCOHADA non comme un simple retard technique, mais comme une réponse institutionnelle à des besoins et à des rapports de pouvoir économiques spécifiques à l''espace ouest et centrafricain.

Troisième temps : articulation des deux lectures et proposition méthodologique (mobilise la leçon 4). Montrer que les deux lectures ne sont pas forcément incompatibles : elles répondent à des questions différentes selon l''objet étudié. Pour une question portant sur la réaction des marchés financiers à l''adoption de nouvelles normes par de grandes entreprises cotées, une étude d''événements, cohérente avec la théorie positive, est pertinente. Pour une question portant sur la façon dont des petites entreprises non cotées perçoivent et appliquent effectivement un référentiel comptable régional, une démarche qualitative et institutionnelle, cohérente avec les approches critiques et sociales, est plus appropriée. Proposer, à titre d''illustration, un protocole combinant les deux regards : une étude d''événements limitée aux quelques grandes entreprises africaines cotées ayant adopté les IFRS, complétée par une étude de cas qualitative auprès de petites entreprises non cotées restées au référentiel régional, afin de confronter les deux logiques sur un même terrain.

Conclusion (environ 10 pourcent du temps de réponse) : rappeler que la tension entre les deux courants n''est pas un obstacle à résoudre mais un objet d''étude en soi, particulièrement fécond pour un chercheur travaillant sur un contexte africain, où la coexistence de normes internationales et régionales offre un terrain naturel de comparaison.

Corrigé commenté : ce qui ferait la différence devant un jury

Un jury valoriserait particulièrement trois éléments dans cette réponse. Premièrement, la clarté de la distinction entre les deux courants dès l''introduction, sans les mélanger prématurément. Deuxièmement, le fait de ne pas présenter le référentiel régional comme simplement inférieur aux IFRS, ce qui serait une erreur de positionnement révélant une mauvaise compréhension du courant critique et social. Troisièmement, la capacité à proposer une méthode concrète et réalisable, plutôt qu''une méthode mentionnée sans justification de son adéquation au terrain étudié. À l''inverse, un jury pénaliserait une réponse qui se contenterait de réciter les deux courants sans jamais les articuler autour du débat proposé, ou qui proposerait une méthode sans expliquer pourquoi elle convient précisément à la question posée.

## Exercices pratiques

1. Rédigez seul, en quinze minutes chronométrées, une introduction de réponse à la question type de cette leçon, sans relire le plan proposé.
2. Identifiez, dans le plan de réponse détaillé, la phrase qui articule explicitement les deux courants plutôt que de les juxtaposer, et expliquez pourquoi cette articulation est importante pour le jury.
3. Proposez une variante de la question type qui porterait sur un autre couple de méthodes (par exemple étude de cas contre recherche institutionnelle) plutôt que sur le débat IFRS contre référentiels régionaux.
4. Un jury vous demande : « votre protocole combinant étude d''événements et étude de cas n''est-il pas simplement un empilement de deux méthodes sans cohérence ? ». Rédigez une réponse de trois phrases qui justifie la cohérence du protocole.
5. Entraînez-vous à l''oral : présentez le plan de réponse à voix haute en dix minutes maximum, puis identifiez les deux points que vous avez eu le plus de mal à articuler clairement.

## Corrigé

1. Il n''existe pas de corrigé unique pour cet exercice d''entraînement individuel : la bonne pratique est de comparer votre introduction à celle proposée dans la leçon et de vérifier qu''elle annonce bien les trois temps du plan (utilité pour les marchés, construction sociale, articulation méthodologique), sans entrer déjà dans le détail de chaque courant.

2. La phrase clé est celle qui explique que les deux lectures « répondent à des questions différentes selon l''objet étudié » : elle montre au jury que le candidat ne choisit pas un courant par conviction personnelle mais sait identifier à quel type de question chaque courant, et chaque méthode associée, est le mieux adapté. C''est cette logique de choix raisonné, plus que la connaissance des courants eux-mêmes, qui démontre la maturité de chercheur attendue à ce niveau.

3. Exemple de variante : « Dans quelle mesure l''étude de cas et la recherche institutionnelle permettent-elles d''éclairer des questions que l''étude d''événements sur les marchés financiers ne peut pas traiter, notamment dans des économies où les marchés boursiers sont peu développés ? » Cette question mobiliserait les mêmes courants théoriques mais déplacerait le débat appliqué sur un autre terrain.

4. Réponse possible : « Le protocole n''empile pas deux méthodes au hasard : il applique chaque méthode à la population pour laquelle elle est pertinente, les grandes entreprises cotées pour l''étude d''événements et les petites entreprises non cotées pour l''étude de cas qualitative. La cohérence ne vient donc pas de l''unité de la méthode, mais de l''adéquation entre chaque méthode et le sous-objet de recherche auquel elle s''applique. Cette combinaison permet justement de couvrir toute la population étudiée, ce qu''aucune des deux méthodes prise isolément ne permettrait. »

5. Cet exercice n''a pas de corrigé textuel : il vise à faire expérimenter la contrainte orale du temps et à identifier, par l''auto-évaluation, les transitions les moins maîtrisées, qui devront être retravaillées avant la soutenance réelle.', 'texte', 45, false, 50
from public.courses c where c.slug = 'doc-compta'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Épreuve type d''examen de qualification doctorale');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : la théorie positive de la comptabilité', '## Fiche du cours vidéo

Durée : 1h30. Public : doctorants préparant un examen de qualification en comptabilité. Objectifs : maîtriser la théorie positive de la comptabilité pour pouvoir l''exposer, la mettre en œuvre dans un exemple, et en discuter les limites devant un jury. Matériel : tableau ou diaporama avec les trois hypothèses de la théorie positive, un tableau de calcul d''étude d''événements projeté, de quoi prendre des notes. Prérequis : avoir lu la leçon texte sur la théorie positive de la comptabilité et tenté les exercices correspondants.

## Déroulé minuté

## 00:00 – 05:00 · Ouverture et objectifs de la séance

Bonjour à toutes et à tous. Cette séance vidéo reprend et approfondit la leçon sur la théorie positive de la comptabilité, premier grand courant théorique de votre examen de qualification. Mon objectif aujourd''hui n''est pas de vous refaire lire la leçon texte, mais de vous faire manipuler ce courant comme un chercheur le ferait réellement : en le mettant à l''épreuve d''un exemple chiffré, et en anticipant les objections qu''un jury pourrait vous opposer. Nous allons procéder en quatre temps : d''abord un rappel structuré du postulat et des hypothèses du courant, ensuite une démonstration complète d''une étude d''événements avec des chiffres fictifs mais calculés, puis une discussion critique des limites, et enfin un temps de questions-réponses simulé, comme à l''oral. Gardez un papier à portée de main : je vais vous demander de noter vos propres réponses avant de vous donner les miennes.

## 05:00 – 20:00 · Rappel structuré : postulat et hypothèses de la théorie positive

Commençons par le postulat central. La théorie positive de la comptabilité part d''une idée simple mais puissante : les choix comptables observés dans les entreprises ne sont pas arbitraires, ils s''expliquent par des motivations économiques rationnelles liées aux contrats qui lient les différents acteurs de l''entreprise. Ce courant ne cherche pas à dire comment on devrait comptabiliser, il cherche à expliquer pourquoi on comptabilise de telle ou telle façon dans la réalité.

Trois hypothèses structurent la majorité des travaux de ce courant. La première, l''hypothèse du plan de rémunération, dit que lorsque la rémunération d''un dirigeant dépend du résultat comptable, ce dirigeant a intérêt à choisir des méthodes comptables qui augmentent ce résultat, ou à les choisir au moment où cela sert le mieux son intérêt. Prenez un exemple simple : un dirigeant dont le bonus est calculé sur le résultat net d''une année donnée pourrait avoir intérêt à retarder une charge exceptionnelle à l''année suivante, dans la mesure où le référentiel comptable applicable l''autorise.

La deuxième, l''hypothèse des clauses d''endettement, dit qu''une entreprise proche de violer une clause contractuelle liée à son endettement (un ratio maximal imposé par un prêteur, par exemple) a intérêt à choisir des méthodes comptables qui améliorent ce ratio, pour éviter les conséquences d''un défaut technique : renégociation du prêt, exigibilité anticipée, perte de confiance des créanciers.

La troisième, l''hypothèse des coûts politiques, dit que les grandes entreprises très visibles ont intérêt, au contraire, à minorer ou à lisser un résultat trop élevé, pour ne pas attirer une attention réglementaire, fiscale ou syndicale qui pourrait leur coûter cher. Vous voyez que ces trois hypothèses, loin de se contredire, décrivent des situations contractuelles différentes qui orientent le choix comptable dans des directions parfois opposées.

Je vous propose un petit exercice mental, à faire en pause sur votre papier : pour chacune des trois hypothèses, trouvez un exemple fictif d''entreprise sénégalaise où cette hypothèse jouerait un rôle. Prenez trente secondes... Nous reviendrons sur vos réponses possibles à la fin de cette section.

## 20:00 – 45:00 · Démonstration complète d''une étude d''événements

Passons maintenant à la méthode de recherche la plus associée à ce courant : l''étude d''événements sur les marchés financiers. Je vais vous montrer, pas à pas, comment elle fonctionne, avec un exemple entièrement fictif mais dont tous les calculs ont été vérifiés.

Imaginons une entreprise fictive cotée sur un marché régional, qui publie ses comptes annuels au jour que nous appelons jour zéro. Nous observons une fenêtre de onze jours de bourse, de cinq jours avant à cinq jours après l''annonce. Pour chaque jour, nous disposons du rendement réellement observé de l''action, et du rendement de l''indice de marché.

La première étape consiste à estimer, sur une période antérieure à cette fenêtre, un modèle de marché qui relie le rendement de l''action au rendement de l''indice par une relation du type : rendement attendu égale alpha plus bêta multiplié par le rendement du marché. Dans notre exemple fictif, ce modèle a déjà été estimé et donne un alpha de 0,02 pourcent et un bêta de 1,10. Cela signifie que, toutes choses égales, le titre amplifie légèrement les mouvements du marché.

La deuxième étape consiste à calculer, pour chaque jour de la fenêtre, le rendement attendu à partir de ce modèle, puis à le comparer au rendement réellement observé. L''écart entre les deux est le rendement anormal du jour. Sur les jours sans événement particulier, dans notre exemple, ces écarts restent faibles, de l''ordre de moins 0,08 pourcent à plus 0,07 pourcent : rien d''anormal. Mais le jour de l''annonce elle-même, le rendement observé de l''action est de 1,80 pourcent, alors que le rendement attendu par le modèle n''était que de 0,13 pourcent. Le rendement anormal de ce jour est donc de 1,67 pourcent, nettement supérieur à tous les autres jours de la fenêtre.

La troisième étape consiste à cumuler ces rendements anormaux sur l''ensemble de la fenêtre pour obtenir ce qu''on appelle le rendement anormal cumulé. Dans notre exemple, ce cumul atteint environ 1,86 pourcent sur les onze jours, et vous remarquez qu''il est presque entièrement porté par le seul jour de l''annonce : cela confirme que l''essentiel de la réaction du marché se concentre bien sur l''événement étudié, et non sur un bruit diffus avant ou après.

La quatrième étape, enfin, consiste à tester si ce rendement anormal du jour de l''annonce est statistiquement différent des rendements anormaux habituels. En comparant l''écart du jour zéro à la moyenne et à l''écart-type des rendements anormaux des autres jours de la fenêtre, on obtient dans notre exemple une statistique très largement supérieure aux seuils usuels de significativité, ce qui, pour cet exemple construit à des fins pédagogiques, serait interprété comme une réaction significative du marché à l''annonce comptable.

Je veux insister sur un point de méthode important pour votre examen : dans une recherche réelle, on ne travaille jamais sur une seule entreprise. On construit un échantillon de plusieurs dizaines ou centaines d''événements similaires, et on teste si, en moyenne sur l''échantillon, le rendement anormal du jour de l''annonce est significativement différent de zéro. Travailler sur un seul cas, comme nous venons de le faire, sert à illustrer la mécanique du calcul, pas à produire un résultat scientifiquement valide.

## 45:00 – 50:00 · Quiz interactif

Prenons une pause active. Je vous pose cinq questions, répondez sur votre papier avant d''entendre la réponse. Première question : quelle hypothèse de la théorie positive explique qu''une entreprise proche de violer une clause bancaire choisisse une méthode comptable qui améliore son ratio d''endettement ? Réponse : l''hypothèse des clauses d''endettement. Deuxième question : dans une étude d''événements, que mesure le rendement anormal ? Réponse : l''écart entre le rendement réellement observé d''un titre et le rendement attendu par un modèle de marché estimé sur une période antérieure. Troisième question : pourquoi une étude d''événements fondée sur un seul cas n''est-elle pas scientifiquement concluante ? Réponse : parce qu''elle ne permet pas de distinguer un effet systématique d''un résultat dû au hasard sur ce cas particulier ; il faut un échantillon. Quatrième question : quelle condition de marché limite l''application de l''étude d''événements dans de nombreux contextes africains ? Réponse : la faible liquidité et le nombre réduit d''entreprises cotées sur certains marchés financiers régionaux. Cinquième question : citez une limite non méthodologique, mais théorique, de la théorie positive de la comptabilité. Réponse : son déterminisme économique, qui tend à expliquer tout choix comptable par un calcul d''intérêt rationnel, en laissant de côté des dimensions institutionnelles et sociales.

## 50:00 – 1:10:00 · Discussion critique et mise en perspective

Revenons maintenant sur les limites de ce courant, car un jury doctoral valorise toujours la capacité à nuancer. Première limite : le déterminisme économique. En expliquant les choix comptables uniquement par des incitations contractuelles, la théorie positive laisse de côté les dimensions culturelles, institutionnelles et politiques qui façonnent aussi les pratiques, ce qui prépare directement la discussion du courant critique et social que nous verrons dans la prochaine vidéo.

Deuxième limite : la confusion possible entre corrélation et explication. Montrer qu''un choix comptable est statistiquement associé à une incitation économique ne prouve pas que cette incitation est la seule cause de ce choix. D''autres facteurs, non observés dans le modèle, peuvent jouer un rôle.

Troisième limite, particulièrement importante pour vous : la focalisation historique sur des marchés financiers développés et liquides. Une large part des travaux fondateurs de ce courant s''appuie sur des données nord-américaines. Leur transposition à des contextes où les marchés boursiers sont étroits, comme c''est le cas de nombreuses places africaines, pose une vraie question de validité externe. Cela ne signifie pas que le courant est inapplicable en Afrique : cela signifie qu''il faut être prudent sur les méthodes mobilisées, et parfois préférer d''autres approches pour certaines questions, comme nous l''avons vu avec les méthodes qualitatives et institutionnelles.

Je vous propose maintenant un temps de réflexion individuelle : pensez à votre propre projet de thèse. Si vous deviez mobiliser la théorie positive de la comptabilité, sur quel objet précis le feriez-vous, et quelle limite devriez-vous assumer explicitement devant un jury ? Prenez deux minutes pour l''écrire.

## 1:10:00 – 1:25:00 · Simulation de questions de jury

Passons à un exercice de simulation orale. Je vais vous poser trois questions comme le ferait un membre de jury, avec un temps de réflexion, puis je vous donnerai une structure de bonne réponse.

Première question : « Votre cadre théorique réduit les dirigeants à des calculateurs d''intérêt économique, n''est-ce pas réducteur ? » Une bonne réponse reconnaît la limite sans abandonner le cadre : on peut dire que ce cadre simplifie effectivement la motivation des dirigeants pour la rendre testable statistiquement, qu''il laisse de côté des dimensions plus difficiles à modéliser, mais qu''on le mobilise précisément parce qu''il permet de formuler des hypothèses vérifiables sur le terrain étudié, et qu''on prévoit, si nécessaire, de le compléter par une lecture plus institutionnelle.

Deuxième question : « Comment justifiez-vous l''usage d''une étude d''événements sur un marché financier aussi peu liquide que celui que vous étudiez ? » Une bonne réponse reconnaît la contrainte, propose une adaptation méthodologique (élargir la fenêtre d''observation, élargir l''échantillon à plusieurs marchés régionaux comparables, ou compléter par une méthode qualitative) et explique en quoi cette adaptation répond à la critique sans abandonner l''objectif de recherche.

Troisième question : « En quoi votre travail apporte-t-il quelque chose de nouveau par rapport aux études fondatrices de Watts et Zimmerman ? » Une bonne réponse situe précisément la contribution : un contexte empirique différent, une population d''entreprises différente, ou une hypothèse complémentaire testée, en évitant la formule vague « mon contexte est différent » sans préciser en quoi cette différence change l''analyse.

## 1:25:00 – 1:30:00 · Synthèse et évaluation finale

Nous arrivons au terme de cette séance. Retenez trois idées : la théorie positive explique les choix comptables par des incitations contractuelles rationnelles ; l''étude d''événements est sa méthode de recherche la plus emblématique et suppose un marché suffisamment liquide ; ses limites, notamment sa focalisation sur des marchés développés, préparent logiquement la discussion du courant critique et social que nous aborderons dans la prochaine vidéo.

Évaluation finale, cinq questions. Un, quelles sont les trois hypothèses de la théorie positive de la comptabilité ? Réponse : l''hypothèse du plan de rémunération, l''hypothèse des clauses d''endettement, l''hypothèse des coûts politiques. Deux, que mesure un rendement anormal cumulé (CAR) dans une étude d''événements ? Réponse : la somme des rendements anormaux sur toute la fenêtre d''événement, qui indique l''ampleur totale de la réaction du marché. Trois, pourquoi une étude sur un seul cas ne suffit-elle pas à conclure scientifiquement ? Réponse : parce qu''elle ne permet pas de distinguer un effet systématique d''un hasard propre à ce cas, il faut un échantillon suffisant. Quatre, citez une limite théorique et une limite méthodologique de la théorie positive. Réponse : limite théorique, le déterminisme économique qui néglige les dimensions institutionnelles et culturelles ; limite méthodologique, la dépendance à des marchés suffisamment liquides pour produire des résultats robustes. Cinq, pourquoi la focalisation historique sur les marchés nord-américains pose-t-elle une question de validité externe pour un chercheur africain ? Réponse : parce que les mécanismes observés sur des marchés très liquides ne se transposent pas nécessairement à des marchés étroits, où la réaction des investisseurs à une information comptable peut être trop faible ou trop bruitée pour être mesurée de façon fiable, ce qui exige prudence et parfois des méthodes complémentaires.', 'video', 90, false, 60
from public.courses c where c.slug = 'doc-compta'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : la théorie positive de la comptabilité');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : les approches critiques et sociales de la comptabilité', '## Fiche du cours vidéo

Durée : 1h30. Public : doctorants préparant un examen de qualification en comptabilité. Objectifs : maîtriser les approches critiques et sociales de la comptabilité, savoir les mettre en tension avec la théorie positive vue dans la vidéo précédente, et discuter le débat IFRS contre référentiels régionaux. Matériel : tableau ou diaporama avec un schéma comparatif des deux courants, de quoi prendre des notes. Prérequis : avoir suivi la vidéo précédente sur la théorie positive et lu la leçon texte sur les approches critiques et sociales.

## Déroulé minuté

## 00:00 – 05:00 · Ouverture et lien avec la séance précédente

Bonjour à toutes et à tous. Dans la séance précédente, nous avons étudié la théorie positive de la comptabilité, qui explique les choix comptables par des incitations économiques rationnelles, et nous avons vu ses limites, notamment son déterminisme économique. Cette séance prend le relais en étudiant le courant qui, historiquement, s''est en partie construit en réaction à cette lecture : les approches critiques et sociales de la comptabilité. Mon objectif est de vous permettre de présenter ce courant de façon aussi rigoureuse que le précédent, et surtout de savoir les articuler l''un à l''autre, ce qui est très souvent demandé à l''oral. Nous verrons le postulat du courant, ses apports représentatifs, une discussion approfondie du débat entre harmonisation IFRS et référentiels régionaux comme OHADA et SYSCOHADA, puis un temps de simulation de jury.

## 05:00 – 25:00 · Le postulat des approches critiques et sociales

Le postulat de ce courant renverse la question posée par la théorie positive. Là où la théorie positive demande quelle incitation économique explique un choix comptable, les approches critiques et sociales demandent quels rapports de pouvoir, quelles représentations sociales, quels intérêts un choix comptable reflète-t-il ou contribue-t-il à construire. La comptabilité n''est plus un simple instrument de mesure neutre, elle devient un objet d''étude social et politique à part entière.

Plusieurs lignes de travail structurent ce courant. La première s''intéresse à la comptabilité comme pratique organisationnelle, en étudiant comment les systèmes comptables influencent le comportement des acteurs dans l''organisation, au-delà de leur fonction de mesure. La deuxième, inspirée de théories sociales critiques, interroge le rôle de la comptabilité dans la reproduction de rapports de pouvoir, dans l''organisation comme dans la société plus large. La troisième s''appuie sur la théorie des parties prenantes, qui soutient que l''entreprise doit rendre compte non seulement à ses actionnaires mais à l''ensemble des acteurs affectés par son activité : salariés, communautés locales, environnement. La quatrième s''appuie sur la théorie de la légitimité, qui explique pourquoi les entreprises publient des informations sociales et environnementales en partie pour préserver leur acceptabilité sociale, indépendamment de toute utilité directe pour des investisseurs financiers.

Je vous propose un exercice de clarification : prenez votre papier et notez, en une phrase chacune, la différence entre la théorie des parties prenantes et la théorie de la légitimité. Prenez une minute... La théorie des parties prenantes porte sur à qui l''entreprise doit rendre compte. La théorie de la légitimité porte sur pourquoi l''entreprise choisit de communiquer certaines informations. Ce sont deux questions complémentaires, pas rivales.

## 25:00 – 50:00 · Le débat IFRS contre référentiels régionaux, lu par ce courant

C''est ici que ce courant devient particulièrement pertinent pour votre propre recherche si vous travaillez sur un terrain africain. Les chercheurs proches des approches critiques et sociales invitent à ne jamais considérer l''adoption de normes comptables internationales comme un simple progrès technique universellement bénéfique. Ils posent plutôt la question suivante : qui a produit ces normes, avec quels intérêts représentés, et pour répondre à quels besoins d''information ?

Les normes IFRS ont été élaborées principalement par des organismes et des experts issus des économies les plus industrialisées, avec pour préoccupation centrale l''information des investisseurs sur des marchés financiers développés et liquides. Cette préoccupation n''est pas universelle. Dans de nombreuses économies africaines, le tissu économique est dominé par des petites et moyennes entreprises non cotées, les marchés financiers sont étroits, et les utilisateurs principaux de l''information comptable ne sont pas des investisseurs boursiers mais des administrations fiscales, des bailleurs de fonds, ou des institutions régionales. Dans ce contexte, le référentiel SYSCOHADA, construit pour l''espace économique régional ouest et centrafricain par l''Organisation pour l''Harmonisation du Droit des Affaires en Afrique, peut se lire non comme un simple retard par rapport à une norme internationale supérieure, mais comme une construction institutionnelle répondant à des besoins d''information et à des rapports de pouvoir économiques spécifiques à la région.

Cette lecture ne nie pas les avantages pratiques de la comparabilité internationale pour les entreprises qui lèvent des capitaux sur des marchés mondiaux. Elle invite seulement à ne pas transposer cet avantage comme une évidence universelle à toutes les entreprises, quelle que soit leur situation. C''est précisément la tension que vous devez savoir exposer : la théorie positive, vue dans la vidéo précédente, mettrait l''accent sur la valeur informationnelle mesurable de l''harmonisation pour les marchés ; les approches critiques et sociales mettraient l''accent sur les conditions de production du référentiel et sur sa pertinence différenciée selon les besoins réels des utilisateurs.

Prenons un instant pour une réflexion personnelle : si votre projet de thèse touche, même indirectement, à la comparaison entre normes internationales et référentiels régionaux, quelle serait votre position de chercheur sur cette tension ? Il ne s''agit pas de trancher dans l''absolu, mais de savoir dire explicitement sur quel terrain et pour quelle question vous mobiliseriez chaque lecture.

## 50:00 – 55:00 · Quiz interactif

Pause active, cinq questions. Première question : quel est le postulat central des approches critiques et sociales de la comptabilité ? Réponse : la comptabilité n''est pas un instrument neutre, elle reflète et façonne des rapports de pouvoir et des représentations sociales. Deuxième question : quelle théorie explique pourquoi une entreprise publie un rapport social sans que ce rapport serve directement les investisseurs financiers ? Réponse : la théorie de la légitimité. Troisième question : pourquoi le référentiel SYSCOHADA n''est-il pas, pour ce courant, simplement un retard technique par rapport aux IFRS ? Réponse : parce qu''il répond à des besoins d''information et à des rapports de pouvoir économiques propres à la région, différents de ceux des marchés financiers développés visés par les IFRS. Quatrième question : citez une limite méthodologique souvent adressée à ce courant. Réponse : la difficulté à généraliser des résultats issus d''études de cas ou d''analyses qualitatives. Cinquième question : qu''est-ce qui distingue la question posée par la théorie positive de celle posée par les approches critiques et sociales face à un même choix comptable ? Réponse : la théorie positive demande quelle incitation économique explique ce choix, les approches critiques et sociales demandent quels rapports de pouvoir ou quelles représentations sociales ce choix reflète.

## 55:00 – 1:15:00 · Discussion critique et articulation des deux courants

Abordons maintenant les limites de ce courant, pour la même raison que précédemment : un jury valorise la nuance. Première limite, le déficit de généralisation statistique, déjà évoqué : beaucoup de travaux de ce courant s''appuient sur des cas ou des analyses qualitatives dont la portée reste difficile à généraliser à grande échelle. Deuxième limite, le risque de glissement normatif : en partant d''un engagement critique explicite, certains travaux sont accusés de mélanger analyse scientifique et prise de position militante, ce qui peut fragiliser leur neutralité perçue par certains pairs. Troisième limite, la difficulté à produire des recommandations opérationnelles immédiates : révéler des rapports de pouvoir est souvent jugé plus facile que de formuler des solutions concrètes applicables par des régulateurs ou des praticiens.

Pour autant, je veux insister sur un point essentiel pour votre examen : ces deux courants, la théorie positive et les approches critiques et sociales, ne sont pas de simples rivaux dont il faudrait choisir le vainqueur. Ils répondent à des questions différentes. Une recherche sur la réaction d''un marché boursier à l''adoption d''une norme comptable relève naturellement de la théorie positive. Une recherche sur la façon dont des petites entreprises non cotées perçoivent et appliquent un référentiel régional relève naturellement des approches critiques et sociales. Savoir expliquer ce critère de choix, plutôt que de déclarer un courant supérieur à l''autre dans l''absolu, est très souvent ce qui distingue une bonne prestation orale d''une prestation moyenne.

## 1:15:00 – 1:25:00 · Simulation de questions de jury

Passons à la simulation. Première question de jury : « Votre approche critique ne risque-t-elle pas de n''être qu''un jugement moral déguisé en recherche ? » Une bonne réponse distingue clairement la description analytique (quels intérêts, quels rapports de pouvoir sont à l''œuvre) de la prescription normative (ce qui devrait changer), en assumant que le chercheur peut adopter une posture engagée tout en appliquant une méthode rigoureuse de collecte et d''analyse des données.

Deuxième question : « Si le référentiel régional répond mieux aux besoins locaux, pourquoi tant d''entreprises cherchent-elles quand même à adopter les IFRS ? » Une bonne réponse reconnaît la réalité de cette tendance (accès à des financements internationaux, exigences de bailleurs de fonds) et explique qu''elle ne contredit pas la lecture critique mais l''enrichit : elle montre justement comment des pressions institutionnelles et des rapports de pouvoir économiques, plutôt qu''une seule supériorité technique, orientent le choix des entreprises.

Troisième question : « Comment rendriez-vous votre étude de cas plus convaincante pour un jury qui valorise la généralisation ? » Une bonne réponse propose, par exemple, d''étendre l''échantillon à plusieurs cas contrastés, ou de préciser explicitement l''objectif de compréhension en profondeur visé par la méthode, sans prétendre à une généralisation qu''elle ne permet pas.

## 1:25:00 – 1:30:00 · Synthèse et évaluation finale

Pour conclure, retenez trois idées : les approches critiques et sociales étudient la comptabilité comme construction sociale et politique, pas comme simple outil de mesure neutre ; le débat entre normes IFRS et référentiels régionaux comme le SYSCOHADA est un terrain d''application privilégié de ce courant ; et la théorie positive comme les approches critiques et sociales ne s''excluent pas, elles répondent à des questions différentes selon l''objet étudié.

Évaluation finale, cinq questions. Un, quel est le postulat central des approches critiques et sociales ? Réponse : la comptabilité reflète et façonne des rapports de pouvoir et des représentations sociales, elle n''est pas un outil neutre. Deux, citez deux théories mobilisées par ce courant et leur apport respectif. Réponse : la théorie des parties prenantes, qui élargit la responsabilité de l''entreprise au-delà des actionnaires, et la théorie de la légitimité, qui explique la communication sociale des entreprises par le besoin de préserver leur acceptabilité sociale. Trois, pourquoi le référentiel SYSCOHADA peut-il être lu comme une construction institutionnelle plutôt qu''un simple retard technique ? Réponse : parce qu''il répond à des besoins d''information et à des rapports de pouvoir économiques propres à la région, différents de ceux visés en priorité par les IFRS. Quatre, citez une limite de ce courant. Réponse : la difficulté à généraliser statistiquement des résultats issus de méthodes qualitatives, ou le risque de glissement normatif. Cinq, comment choisir entre théorie positive et approches critiques et sociales pour un projet de recherche donné ? Réponse : en fonction de la question posée et de l''objet étudié, pas en fonction d''une préférence théorique a priori : les marchés financiers et la valeur informationnelle relèvent plutôt de la théorie positive, les rapports de pouvoir et les constructions institutionnelles relèvent plutôt des approches critiques et sociales.', 'video', 90, false, 70
from public.courses c where c.slug = 'doc-compta'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : les approches critiques et sociales de la comptabilité');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : les méthodes de recherche en comptabilité', '## Fiche du cours vidéo

Durée : 1h30. Public : doctorants préparant un examen de qualification en comptabilité. Objectifs : savoir présenter et justifier les grandes méthodes de recherche du champ comptable, refaire pas à pas le calcul d''une étude d''événements, et construire un protocole de recherche adapté à un contexte africain. Matériel : tableau de calcul projeté, diaporama avec le schéma des quatre étapes d''une étude d''événements, de quoi prendre des notes. Prérequis : avoir suivi les deux vidéos précédentes et lu la leçon texte sur les méthodes de recherche.

## Déroulé minuté

## 00:00 – 05:00 · Ouverture et objectifs de la séance

Bonjour à toutes et à tous. Nous avons vu deux courants théoriques qui posent des questions différentes à la comptabilité : la théorie positive, qui s''intéresse à l''utilité de l''information pour les marchés, et les approches critiques et sociales, qui s''intéressent à la comptabilité comme construction sociale. Cette séance fait le pont entre théorie et pratique de recherche : nous allons détailler les méthodes qui permettent concrètement d''étudier ces questions, avec une attention particulière à leur adéquation au terrain africain. Nous verrons l''étude d''événements, la recherche qualitative et institutionnelle, l''étude de cas, puis nous construirons ensemble, pas à pas, un protocole de recherche appliqué à un contexte sénégalais fictif.

## 05:00 – 30:00 · L''étude d''événements, méthode par méthode

Reprenons la logique de l''étude d''événements, en insistant cette fois sur les choix méthodologiques qu''un chercheur doit justifier, pas seulement sur le calcul. Premier choix : la définition précise de l''événement et de sa date. Un événement mal défini, par exemple une date d''annonce approximative, introduit un bruit qui affaiblit toute l''analyse ultérieure. Deuxième choix : la longueur de la fenêtre d''événement. Une fenêtre trop courte risque de manquer une réaction retardée du marché ; une fenêtre trop longue risque de capter d''autres événements qui brouillent l''interprétation. Troisième choix : le modèle de rendement attendu. Le modèle de marché, que nous avons utilisé dans notre exemple avec un alpha et un bêta estimés sur une période antérieure, est le plus courant, mais d''autres modèles existent et le choix doit être justifié. Quatrième choix : la taille et la composition de l''échantillon d''entreprises étudiées, qui doit être assez large pour permettre un test statistique robuste, et assez homogène pour que l''événement étudié ait un sens comparable pour chaque entreprise de l''échantillon.

Petit rappel chiffré de notre exemple fictif : avec un alpha de 0,02 pourcent et un bêta de 1,10, nous avions obtenu un rendement anormal du jour de l''annonce de 1,67 pourcent, et un rendement anormal cumulé sur la fenêtre d''environ 1,86 pourcent. Ce que je veux que vous reteniez ici, c''est que ces chiffres n''ont de valeur scientifique que rapportés à un échantillon, jamais à un cas isolé. Un jury qui vous demande « votre résultat est-il robuste » attend que vous sachiez immédiatement répondre en termes de taille d''échantillon et de test statistique, pas seulement en termes de calcul individuel.

## 30:00 – 50:00 · La recherche qualitative et institutionnelle, et l''étude de cas

Passons maintenant à l''autre grande famille de méthodes. La recherche qualitative vise à comprendre en profondeur comment des acteurs donnent sens à des pratiques comptables. Ses techniques principales sont l''entretien semi-directif, l''analyse documentaire et l''observation. La recherche institutionnelle, plus spécifiquement, s''appuie souvent sur la théorie néo-institutionnelle pour expliquer pourquoi des organisations adoptent des pratiques similaires non par supériorité technique, mais par pression de légitimité, d''imitation entre pairs, ou de normalisation professionnelle.

L''étude de cas, de son côté, peut servir les deux grandes lectures théoriques que nous avons vues. Elle précise toujours trois éléments : l''unité d''analyse, qui peut être une entreprise, un service ou un processus de décision ; la stratégie d''échantillonnage, cas unique en profondeur ou cas multiples comparés ; les sources de données, en veillant à en trianguler plusieurs pour renforcer la validité du résultat. Sa limite principale, la difficulté à généraliser, doit être assumée explicitement devant un jury, pas dissimulée.

Un point de méthode essentiel à retenir : le choix entre ces familles de méthodes ne dépend pas d''une préférence personnelle, mais de la nature de la question posée et de la population étudiée. Une question sur la réaction de marchés financiers appelle une méthode quantitative sur données boursières. Une question sur la perception d''acteurs non cotés appelle une méthode qualitative. Un jury sanctionne sévèrement un candidat qui choisit une méthode par habitude plutôt que par adéquation à sa question.

## 50:00 – 55:00 · Quiz interactif

Pause active, cinq questions. Première question : quelles sont les quatre étapes d''une étude d''événements ? Réponse : définir l''événement et sa date, estimer un modèle de rendement attendu, calculer les rendements anormaux, cumuler et tester leur significativité. Deuxième question : pourquoi la taille de l''échantillon est-elle déterminante dans une étude d''événements ? Réponse : parce qu''un résultat obtenu sur un seul cas ne permet pas de distinguer un effet systématique d''un hasard propre à ce cas, un échantillon suffisant est nécessaire pour un test statistique robuste. Troisième question : citez deux techniques de collecte de données propres à la recherche qualitative. Réponse : l''entretien semi-directif et l''analyse documentaire, auxquelles s''ajoute l''observation directe ou participante. Quatrième question : qu''apporte la théorie néo-institutionnelle à l''étude d''un référentiel comptable régional ? Réponse : elle explique l''adoption de pratiques comptables par des pressions de légitimité ou d''imitation plutôt que par un seul calcul d''efficience économique. Cinquième question : quelle est la principale limite d''une étude de cas, et comment la gérer devant un jury ? Réponse : la difficulté à généraliser les résultats, qu''il faut assumer explicitement plutôt que nier, en précisant l''objectif de compréhension en profondeur visé par la méthode.

## 55:00 – 1:20:00 · Construction pas à pas d''un protocole de recherche en contexte sénégalais fictif

Construisons maintenant ensemble un protocole complet, comme vous devrez le faire pour votre propre projet de thèse. Notre question fictive est la suivante : comment les petites et moyennes entreprises sénégalaises non cotées perçoivent-elles la pertinence du référentiel SYSCOHADA révisé par rapport aux normes IFRS, et quels facteurs institutionnels expliquent leurs pratiques comptables effectives ?

Première étape, le choix du cadre théorique. Puisque la population étudiée est composée d''entreprises non cotées, l''étude d''événements est exclue d''emblée : il n''existe aucun cours de bourse à observer. Le cadre le plus pertinent est donc une approche néo-institutionnelle issue du courant critique et social, pour expliquer l''adoption de pratiques comptables par des pressions de légitimité plutôt que par un seul calcul d''efficience.

Deuxième étape, le choix de l''échantillon. Une étude de cas multiples, par exemple six à dix entreprises de secteurs contrastés comme le commerce, l''industrie légère et les services, sélectionnées pour varier leur taille et leur exposition à des bailleurs de fonds exigeant des normes internationales, permet une comparaison enrichissante sans viser une généralisation statistique.

Troisième étape, la collecte de données. Des entretiens semi-directifs avec les dirigeants et les responsables comptables de chaque entreprise, complétés par l''analyse de leurs états financiers et, lorsque disponible, de leurs échanges avec des cabinets d''audit ou des organismes de normalisation.

Quatrième étape, l''analyse. Un codage thématique des entretiens pour identifier les catégories de justification données par les acteurs, par exemple contrainte réglementaire, exigence d''un bailleur de fonds, habitude professionnelle, ou méconnaissance des alternatives, suivi d''une comparaison systématique entre les cas étudiés.

Cinquième étape, les limites à anticiper et présenter au jury sans attendre qu''il les découvre lui-même : un échantillon de cas sénégalais ne permet pas de généraliser à l''ensemble des petites entreprises ouest-africaines, et le choix de s''appuyer sur les discours des dirigeants plutôt que sur une observation prolongée des pratiques réelles introduit un biais de déclaration qu''il faut discuter ouvertement.

Je vous invite à refaire cet exercice avec votre propre question de thèse : passez les cinq mêmes étapes, et vérifiez que chaque choix méthodologique découle logiquement de la question posée, pas d''une préférence personnelle pour une méthode plutôt qu''une autre.

## 1:20:00 – 1:30:00 · Synthèse et évaluation finale

Pour conclure cette séance, retenez trois idées : l''étude d''événements est la méthode la plus associée à la théorie positive et suppose un marché suffisamment liquide ; la recherche qualitative et institutionnelle, dont l''étude de cas, est la méthode la plus associée aux approches critiques et sociales et vise une compréhension en profondeur plutôt qu''une généralisation statistique ; et le choix d''une méthode doit toujours découler de la question de recherche et de la population étudiée, jamais d''une habitude.

Évaluation finale, cinq questions. Un, pourquoi l''étude d''événements est-elle inapplicable à une population d''entreprises non cotées ? Réponse : parce qu''elle suppose l''existence d''un cours de bourse observable, qui n''existe pas pour des entreprises non cotées. Deux, quelles sont les trois éléments qu''une étude de cas rigoureuse doit toujours préciser ? Réponse : l''unité d''analyse, la stratégie d''échantillonnage, et les sources de données triangulées. Trois, dans le protocole sénégalais fictif construit en séance, pourquoi le choix de cas multiples plutôt qu''un cas unique ? Réponse : parce que la question porte sur des facteurs institutionnels susceptibles de varier selon la taille, le secteur et l''exposition à des bailleurs de fonds, ce qu''un cas unique ne permettrait pas de comparer. Quatre, citez une limite à anticiper explicitement dans ce protocole. Réponse : l''absence de généralisation statistique au-delà de l''échantillon étudié, ou le biais de déclaration lié à l''usage principal d''entretiens. Cinq, quel principe général doit guider le choix d''une méthode de recherche en comptabilité ? Réponse : la cohérence entre la question de recherche, le cadre théorique mobilisé et la méthode choisie, la méthode devant toujours être justifiée par son adéquation à l''objet étudié et à la population concernée.', 'video', 90, false, 80
from public.courses c where c.slug = 'doc-compta'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : les méthodes de recherche en comptabilité');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : s''entraîner sur une question de synthèse type', '## Fiche du cours vidéo

Durée : 1h30. Public : doctorants préparant un examen de qualification en comptabilité. Objectifs : s''entraîner en conditions réelles de temps à répondre à une question de synthèse type, mobilisant les deux courants théoriques et les méthodes de recherche étudiés. Matériel : chronomètre, papier pour prise de notes, diaporama avec le plan de réponse projeté progressivement. Prérequis : avoir suivi les trois vidéos précédentes.

## Déroulé minuté

## 00:00 – 05:00 · Ouverture et consignes de l''entraînement

Bonjour à toutes et à tous. Cette séance est différente des trois précédentes : il ne s''agit plus d''apprendre un contenu nouveau, mais de vous entraîner, en conditions proches de la réalité d''un oral, à répondre à une question de synthèse type. Je vais vous donner la question, vous laisser un temps de préparation chronométré comme à l''oral, puis nous construirons ensemble le plan de réponse complet, section par section, avec les mêmes exigences qu''un jury doctoral. Prenez votre papier et votre chronomètre, nous allons vraiment nous mettre en situation.

## 05:00 – 10:00 · Énoncé et temps de préparation chronométré

Voici la question type, non officielle, construite pour cet entraînement : « Dans quelle mesure la recherche comptable peut-elle à la fois évaluer l''utilité de l''information financière pour les marchés de capitaux et interroger la comptabilité comme construction sociale ? Vous discuterez cette tension à partir du débat entre harmonisation comptable internationale et pertinence des référentiels comptables régionaux, et vous proposerez une méthode de recherche adaptée à l''étude de cette question dans un contexte africain. » Je vous laisse maintenant cinq minutes, comme à l''oral, pour noter au brouillon les grandes lignes de votre réponse, sans consulter vos notes de cours. Mettez la vidéo en pause si besoin, et reprenez une fois vos cinq minutes écoulées.

## 10:00 – 20:00 · Analyse de la question et construction du plan

Reprenons. Avant de répondre, un bon candidat décompose toujours la question en ses exigences implicites. Celle-ci en comporte quatre : présenter la théorie positive et sa lecture de l''utilité de l''information financière ; présenter les approches critiques et sociales et leur lecture de la construction sociale ; articuler les deux autour du débat IFRS contre référentiels régionaux ; proposer une méthode de recherche justifiée pour un contexte africain. Comparez ces quatre exigences à ce que vous avez noté pendant votre préparation. Avez-vous bien identifié les quatre, ou en avez-vous oublié une ? C''est souvent la quatrième, la proposition méthodologique, qui est oubliée ou traitée trop rapidement, alors qu''elle compte autant que les deux premières aux yeux d''un jury.

Construisons le plan en quatre temps : une introduction qui annonce la tension entre les deux lectures et le plan en trois parties ; un premier temps sur la lecture par l''utilité de l''information financière ; un deuxième temps sur la lecture par la construction sociale ; un troisième temps qui articule les deux et propose une méthode ; une conclusion qui ouvre sur la fécondité de cette tension pour un chercheur africain.

## 20:00 – 45:00 · Développement complet du plan, partie par partie

Développons maintenant chaque partie comme vous devriez le faire à l''oral, avec des phrases complètes, pas de simples mots-clés.

Introduction : la recherche comptable est traversée par une tension entre une tradition qui étudie la comptabilité comme information utile aux décisions des marchés financiers, et une tradition qui l''étudie comme construction sociale et politique. Cette tension s''illustre particulièrement bien dans le débat sur l''harmonisation comptable internationale face aux référentiels régionaux. Nous traiterons cette question en trois temps : la lecture par l''utilité informationnelle, la lecture par la construction sociale, puis leur articulation méthodologique.

Premier temps, la lecture par l''utilité de l''information financière. La théorie positive de la comptabilité postule que les choix et les normes comptables s''expliquent et se justifient par leur capacité à réduire l''incertitude des investisseurs et à faciliter l''allocation efficace du capital. Appliqué au débat qui nous occupe, l''argument en faveur de l''harmonisation internationale est que des normes communes et de qualité perçue élevée réduisent les coûts d''information et peuvent abaisser le coût du capital des entreprises qui les adoptent, ce qui est testable par des études d''événements autour des dates d''adoption. La limite de cet argument est qu''il suppose des marchés financiers suffisamment développés et liquides pour que l''effet soit mesurable, ce qui n''est pas la situation de la majorité des entreprises africaines.

Deuxième temps, la lecture par la construction sociale. Les approches critiques et sociales soutiennent que la comptabilité reflète et façonne des rapports de pouvoir, et que les normes comptables sont elles-mêmes le produit d''un processus institutionnel situé, pas une vérité technique universelle. Appliqué au même débat, les normes IFRS sont portées par des organismes et des intérêts principalement issus des économies les plus industrialisées, ce qui invite à interroger leur pertinence pour des économies où les marchés financiers sont étroits et où le tissu économique est dominé par des entreprises non cotées. Le référentiel régional SYSCOHADA se lit alors comme une réponse institutionnelle à des besoins et à des rapports de pouvoir économiques spécifiques à la région, et non comme un simple retard technique.

Troisième temps, articulation et proposition méthodologique. Ces deux lectures ne sont pas incompatibles : elles répondent à des questions différentes selon l''objet étudié. Pour une question sur la réaction des marchés financiers à l''adoption de nouvelles normes par de grandes entreprises cotées, une étude d''événements, cohérente avec la théorie positive, est pertinente. Pour une question sur la façon dont des petites entreprises non cotées perçoivent et appliquent un référentiel régional, une démarche qualitative et institutionnelle, cohérente avec les approches critiques et sociales, est plus appropriée. On peut même proposer un protocole combinant les deux regards : une étude d''événements limitée aux grandes entreprises africaines cotées ayant adopté les IFRS, complétée par une étude de cas qualitative auprès de petites entreprises restées au référentiel régional, afin de confronter les deux logiques sur un même terrain.

Conclusion : la tension entre les deux courants n''est pas un obstacle à résoudre, mais un objet d''étude en soi, particulièrement fécond pour un chercheur travaillant sur un contexte africain, où la coexistence de normes internationales et régionales offre un terrain naturel de comparaison.

## 45:00 – 50:00 · Quiz interactif

Pause active, cinq questions sur la méthode de réponse elle-même. Première question : combien d''exigences implicites une bonne analyse de la question type a-t-elle identifiées ? Réponse : quatre. Deuxième question : quelle exigence est le plus souvent oubliée ou sous-traitée par les candidats ? Réponse : la proposition et la justification d''une méthode de recherche adaptée. Troisième question : pourquoi faut-il annoncer le plan dès l''introduction dans une réponse orale de ce type ? Réponse : pour que le jury puisse suivre la structure de la réponse et évaluer si chaque partie annoncée est bien traitée. Quatrième question : qu''est-ce qui distingue une bonne articulation des deux courants d''une simple juxtaposition ? Réponse : expliquer le critère qui permet de choisir quel courant mobiliser selon la question posée, plutôt que de présenter les deux courants l''un après l''autre sans les relier. Cinquième question : pourquoi la conclusion proposée ouvre-t-elle sur la fécondité de la tension plutôt que de chercher à la refermer ? Réponse : parce qu''un jury valorise la capacité à voir une tension théorique comme un objet de recherche productif, pas comme un problème qu''il faudrait nécessairement résoudre.

## 50:00 – 1:20:00 · Simulation orale complète et retour sur erreurs fréquentes

Passons maintenant à une simulation orale complète. Je vous invite à reprendre votre plan préparé en début de séance, et à le présenter à voix haute, chronomètre en main, en visant quinze minutes maximum, comme le temps généralement imparti à un exposé de ce type devant un jury. Mettez la vidéo en pause et faites cet exercice maintenant, avant de continuer.

Une fois cet exercice réalisé, voici les erreurs les plus fréquentes que l''on observe chez des candidats qui s''entraînent sur ce type de question, et que vous devez vérifier n''avoir pas commises. Première erreur fréquente : présenter les deux courants théoriques sans jamais les relier explicitement au débat IFRS contre référentiels régionaux, en les traitant comme deux parties séparées sans lien apparent. Deuxième erreur : présenter le référentiel régional comme simplement inférieur aux IFRS, ce qui révèle une mauvaise compréhension du courant critique et social et de sa capacité à relativiser une hiérarchie supposée entre normes. Troisième erreur : proposer une méthode de recherche sans justifier son adéquation à la question posée, en se contentant de nommer une méthode à la fin de l''exposé sans expliquer pourquoi elle convient précisément à cet objet. Quatrième erreur : dépasser largement le temps imparti par excès de détail sur un seul courant, au détriment de l''articulation finale, qui est pourtant la partie la plus valorisée par le jury.

Comparez votre propre prestation à ces quatre erreurs fréquentes. Lesquelles avez-vous évitées, lesquelles devez-vous encore travailler avant votre soutenance réelle ?

## 1:20:00 – 1:30:00 · Synthèse et évaluation finale

Pour conclure cette séance d''entraînement, retenez trois idées : une bonne réponse à une question de synthèse décompose toujours la question en exigences implicites avant de répondre ; l''articulation explicite entre les courants théoriques, plutôt que leur simple juxtaposition, est ce qui distingue le plus une bonne prestation ; et la proposition méthodologique finale doit toujours être justifiée par son adéquation à la question posée, pas simplement mentionnée.

Évaluation finale, cinq questions. Un, combien de temps un exposé oral de ce type dure-t-il généralement devant un jury ? Réponse : de l''ordre de quinze à trente minutes selon les établissements, suivi d''une phase de questions du jury. Deux, quelle est la première étape avant de répondre à une question de synthèse ? Réponse : décomposer la question en ses exigences implicites, pour s''assurer de n''en oublier aucune. Trois, pourquoi présenter un référentiel régional comme simplement inférieur à un référentiel international est-il une erreur de positionnement ? Réponse : parce que cela ignore la lecture critique et sociale, qui explique la pertinence différenciée des référentiels selon les besoins et les rapports de pouvoir propres à chaque contexte, plutôt que de supposer une hiérarchie technique universelle. Quatre, quelle est l''erreur la plus fréquente concernant la proposition méthodologique en fin de réponse ? Réponse : la mentionner sans la justifier par son adéquation à la question et à la population étudiée. Cinq, que doit viser la conclusion d''une réponse à ce type de question ? Réponse : montrer que la tension entre les courants théoriques est un objet de recherche fécond, pas un problème à trancher définitivement, en particulier pour un chercheur travaillant sur un contexte africain où coexistent normes internationales et régionales.', 'video', 90, false, 90
from public.courses c where c.slug = 'doc-compta'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : s''entraîner sur une question de synthèse type');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : simulation complète d''une soutenance de qualification doctorale', '## Fiche du cours vidéo

Durée : 1h30. Public : doctorants préparant un examen de qualification en comptabilité, en fin de préparation. Objectifs : vivre une simulation complète d''une soutenance de qualification doctorale, de la présentation initiale aux questions de jury, et s''auto-évaluer à l''aide d''une grille structurée. Matériel : chronomètre, grille d''auto-évaluation imprimée ou notée sur papier. Prérequis : avoir suivi les quatre vidéos précédentes et les cinq leçons texte du cours.

## Déroulé minuté

## 00:00 – 05:00 · Ouverture : le principe de cette séance finale

Bonjour à toutes et à tous. Cette dernière séance est différente de toutes les précédentes : il n''y aura pas de nouveau contenu théorique. Nous allons simuler, du début à la fin, une soutenance de qualification doctorale en comptabilité, avec un candidat fictif, un projet de thèse fictif, et un jury qui pose des questions types. Mon objectif est double : vous montrer concrètement le déroulement complet d''une telle épreuve, et vous donner, à la fin, une grille d''auto-évaluation que vous pourrez réutiliser pour préparer votre propre soutenance réelle.

## 05:00 – 20:00 · Présentation du champ et du projet de thèse fictif (15 minutes)

Voici la présentation que ferait notre candidat fictif en ouverture de soutenance, pendant les quinze minutes qui lui sont généralement accordées.

« Mesdames et messieurs les membres du jury, mon travail de thèse porte sur la pertinence perçue des référentiels comptables par les petites et moyennes entreprises ouest-africaines, dans un contexte où coexistent les normes IFRS, destinées en priorité aux grandes entreprises cotées, et le référentiel régional SYSCOHADA, applicable à l''ensemble des entreprises de l''espace OHADA. Le champ de la recherche comptable, dans lequel je m''inscris, est traversé par une tension ancienne entre deux grandes lectures. La première, portée par la théorie positive de la comptabilité, explique les choix et les normes comptables par leur utilité pour réduire l''incertitude des investisseurs sur les marchés de capitaux, et les étudie notamment par des méthodes quantitatives comme l''étude d''événements sur les marchés financiers. La seconde, portée par les approches critiques et sociales de la comptabilité, lit les normes comptables comme des constructions institutionnelles situées, reflétant des rapports de pouvoir et des besoins d''information différenciés selon les contextes économiques, et les étudie plutôt par des méthodes qualitatives et institutionnelles.

Mon projet de thèse se positionne principalement dans la seconde lecture, pour une raison précise : mon objet d''étude, les petites et moyennes entreprises non cotées, est par définition hors du champ d''application des méthodes fondées sur les marchés financiers. Je mobiliserai donc un cadre néo-institutionnel pour comprendre pourquoi des entreprises non cotées adoptent, ou non, des pratiques inspirées des IFRS alors qu''elles relèvent légalement du référentiel SYSCOHADA, et quels facteurs institutionnels, au-delà de la seule obligation légale, expliquent leurs pratiques effectives.

Ma méthode de recherche envisagée est une étude de cas multiples, portant sur six à dix entreprises sénégalaises de secteurs contrastés, combinant entretiens semi-directifs avec les dirigeants et responsables comptables, et analyse documentaire de leurs états financiers. J''assume dès à présent deux limites de ce choix : l''absence de généralisation statistique à l''ensemble des petites entreprises ouest-africaines, et le risque de biais de déclaration lié à l''usage principal d''entretiens plutôt que d''une observation prolongée des pratiques réelles. Je vous remercie de votre attention et je reste à votre disposition pour vos questions. »

Voilà pour la présentation initiale. Remarquez sa structure : situer le champ et sa tension théorique, positionner son propre projet dans cette tension en justifiant ce choix, présenter la méthode envisagée, et assumer explicitement ses limites avant même que le jury ne les soulève. C''est exactement cette structure que vous devez reproduire pour votre propre présentation.

## 20:00 – 25:00 · Quiz interactif avant les questions de jury

Avant d''entendre les questions du jury fictif, testez-vous. Première question : pourquoi le candidat fictif choisit-il de se positionner principalement dans les approches critiques et sociales plutôt que dans la théorie positive ? Réponse : parce que son objet d''étude, des entreprises non cotées, est hors du champ d''application des méthodes fondées sur les marchés financiers, qui supposent un cours de bourse observable. Deuxième question : quelle méthode de recherche le candidat envisage-t-il, et pourquoi ? Réponse : une étude de cas multiples combinant entretiens et analyse documentaire, cohérente avec un cadre néo-institutionnel appliqué à des entreprises non cotées. Troisième question : quelles limites le candidat assume-t-il dès sa présentation initiale ? Réponse : l''absence de généralisation statistique et le risque de biais de déclaration lié aux entretiens. Quatrième question : pourquoi est-il stratégiquement utile d''assumer ses limites avant que le jury ne les soulève ? Réponse : cela démontre une maîtrise critique du projet et évite que le jury n''ait l''impression de révéler une faiblesse que le candidat aurait ignorée ou dissimulée. Cinquième question : quel élément de la présentation initiale rappelle explicitement la tension théorique du champ ? Réponse : la phrase qui oppose la théorie positive, centrée sur l''utilité pour les marchés, et les approches critiques et sociales, centrées sur les constructions institutionnelles et les rapports de pouvoir.

## 25:00 – 1:15:00 · Simulation des questions de jury (huit à dix questions)

Passons maintenant aux questions du jury fictif. Pour chacune, je vous laisse un court temps de réflexion, puis je donne la structure d''une bonne réponse, comme la donnerait notre candidat.

Première question du jury : « Pourquoi n''avoir pas envisagé une étude d''événements, qui est pourtant une méthode reconnue en recherche comptable ? » Structure de bonne réponse : rappeler que cette méthode suppose un cours de bourse observable, inexistant pour la population étudiée, et affirmer que le choix méthodologique découle de la question de recherche et de la population, pas d''un rejet de la méthode en général.

Deuxième question : « Votre échantillon de six à dix entreprises n''est-il pas trop restreint pour conclure quoi que ce soit ? » Structure de bonne réponse : assumer que l''objectif n''est pas une généralisation statistique mais une compréhension en profondeur de mécanismes institutionnels, qui pourront ensuite nourrir des hypothèses testables sur un échantillon plus large par une autre méthode.

Troisième question : « En quoi votre travail n''est-il pas qu''une simple description de ce que disent des dirigeants interrogés ? » Structure de bonne réponse : préciser que l''analyse ne se limite pas à rapporter les discours mais à les coder thématiquement, à les comparer systématiquement entre les cas, et à les interpréter à la lumière du cadre néo-institutionnel mobilisé.

Quatrième question : « Pensez-vous que le référentiel SYSCOHADA est moins pertinent que les IFRS pour ces entreprises ? » Structure de bonne réponse : refuser l''opposition binaire, et répondre que la pertinence d''un référentiel dépend des besoins d''information des utilisateurs concernés, le SYSCOHADA répondant à des besoins propres à la région, sans que cela implique une infériorité technique.

Cinquième question : « Comment gérerez-vous le biais de déclaration que vous évoquez vous-même ? » Structure de bonne réponse : proposer une triangulation avec les documents comptables disponibles, et reconnaître que ce biais ne peut pas être totalement éliminé mais seulement atténué, ce qu''il faut assumer plutôt que promettre une solution parfaite.

Sixième question : « Votre cadre néo-institutionnel ne risque-t-il pas de négliger les motivations économiques réelles des dirigeants ? » Structure de bonne réponse : reconnaître que le cadre institutionnel met l''accent sur la légitimité et l''imitation plutôt que sur le seul calcul économique, mais préciser que les entretiens permettront justement de recueillir aussi les justifications économiques exprimées par les dirigeants, sans présupposer leur absence.

Septième question : « Quelle serait la contribution originale de votre thèse par rapport à la littérature existante sur ce sujet ? » Structure de bonne réponse : situer précisément l''apport, par exemple l''étude d''un contexte sénégalais spécifique encore peu documenté, ou la comparaison entre secteurs contrastés, en évitant une réponse vague comme « mon contexte est différent » sans préciser en quoi cette différence change l''analyse.

Huitième question : « Si vos résultats montrent que les entreprises adoptent des pratiques IFRS malgré l''absence d''obligation légale, comment l''interpréterez-vous ? » Structure de bonne réponse : proposer une interprétation cohérente avec le cadre mobilisé, par exemple une pression de légitimité liée à des bailleurs de fonds ou à des partenaires commerciaux internationaux, plutôt qu''une conclusion hâtive sur la supériorité technique des IFRS.

Neuvième question : « Votre calendrier de thèse vous semble-t-il réaliste au regard de la méthode choisie ? » Structure de bonne réponse : présenter un calendrier indicatif découpé en phases (revue de littérature, collecte de données, analyse, rédaction), en reconnaissant les risques de retard les plus probables, par exemple la disponibilité des dirigeants pour les entretiens.

Dixième question : « Quel usage pratique un régulateur ou une organisation professionnelle pourrait-il faire de vos résultats ? » Structure de bonne réponse : proposer un usage raisonnable et modeste, par exemple mieux comprendre les freins à l''adoption de certaines pratiques comptables pour adapter l''accompagnement des petites entreprises, sans promettre une recommandation normative que l''étude ne permettrait pas de fonder seule.

## 1:15:00 – 1:30:00 · Grille d''auto-évaluation de la soutenance simulée

Cette séance, et ce cours, se concluent non par une évaluation à cinq questions mais par une grille d''auto-évaluation que vous devez remplir vous-même après avoir simulé votre propre soutenance, seul ou avec des pairs. Pour chacun des critères suivants, notez-vous honnêtement de un à quatre : un, insuffisant ; deux, à améliorer ; trois, satisfaisant ; quatre, maîtrisé.

Critère un : clarté du positionnement théorique dès la présentation initiale, sans attendre une question du jury pour le préciser.
Critère deux : justification explicite du choix méthodologique par son adéquation à la question de recherche et à la population étudiée, plutôt que par habitude.
Critère trois : capacité à assumer les limites de son projet avant que le jury ne les soulève, sans les dissimuler ni les minimiser.
Critère quatre : capacité à articuler les courants théoriques du champ plutôt que de les juxtaposer ou d''en rejeter un en bloc.
Critère cinq : qualité du dialogue avec le jury, c''est-à-dire la capacité à reformuler une objection, à distinguer ce qui est accepté de ce qui est nuancé, sans se contredire ni se braquer.
Critère six : respect du temps imparti à la présentation initiale, sans sacrifier les parties les plus importantes par excès de détail sur les parties moins centrales.
Critère sept : précision des réponses aux questions sur la contribution originale du projet, en évitant les formules vagues non étayées.
Critère huit : réalisme et honnêteté du calendrier de thèse présenté, avec reconnaissance des risques probables.

Additionnez vos points sur ces huit critères. Un score élevé indique une préparation solide ; un score faible sur un critère précis indique exactement où concentrer votre travail dans les jours qui précèdent votre soutenance réelle. Ce cours se termine ici : vous disposez maintenant des deux courants théoriques du champ, des méthodes de recherche propres à la comptabilité, d''un exemple complet d''épreuve type, et d''une simulation entière de soutenance. La suite du travail vous appartient : répétez, faites-vous challenger par des pairs ou par votre directeur de thèse, et présentez-vous à l''épreuve avec la même honnêteté critique que celle démontrée par le candidat fictif de cette séance.', 'video', 90, false, 100
from public.courses c where c.slug = 'doc-compta'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : simulation complète d''une soutenance de qualification doctorale');
