-- Fichier généré par tools/generate-seed.mjs — ne pas modifier à la main.
-- Cours (partie 16/17). À exécuter après seed.sql.

-- Cours : Finance Master 2 : risques avancés, finance internationale et mémoire professionnel
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'mas-fin-m2', (select id from public.levels where name = 'Master 2'), null, 'Finance', 'Finance Master 2 : risques avancés, finance internationale et mémoire professionnel', 'Cours de préparation aux examens de Master 2 Finance : gestion des risques financiers avancée (VaR, options, swaps), finance internationale et financement de projets (project finance, microfinance, marchés régionaux africains), méthodologie du mémoire professionnel et soutenance. Pour étudiants de Master 2 ayant déjà validé les bases du Master 1 Finance. Cas d''entreprise sénégalais fictifs chiffrés et vérifiés.', true, 752
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Réussir ses examens de Master 2 en Finance', '## Objectifs de la leçon

- Comprendre les enjeux spécifiques de l''année de Master 2 : approfondissement des risques financiers, ouverture internationale, et préparation du mémoire professionnel et de sa soutenance.
- Identifier les trois matières avancées du programme et leur lien avec les examens et le mémoire.
- Construire un plan de révision sur six semaines qui intègre la préparation du mémoire.

## Le Master 2 Finance : l''année de la spécialisation et de la soutenance

Le Master 2 est l''année charnière entre la formation académique et l''entrée dans la vie professionnelle. Deux évolutions majeures distinguent le M2 du M1.

- La sophistication des outils de gestion des risques et d''ouverture internationale : vous allez manier des notions que la plupart des praticiens de terrain connaissent sans les avoir formalisées (value at risk, produits dérivés, financement de projet), ce qui vous donne un avantage réel sur le marché du travail.
- Le mémoire professionnel ou de recherche et sa soutenance orale deviennent l''aboutissement de l''année, souvent couplés à un stage long en entreprise, en banque, en cabinet ou en société de gestion. La soutenance n''est pas un simple exposé : c''est un exercice de défense argumentée devant un jury qui connaît le sujet et qui testera votre capacité à justifier vos choix méthodologiques.

Contrairement au M1, où l''on apprenait encore à combiner les méthodes, le M2 demande une capacité de jugement en situation d''incertitude radicale : un marché financier régional peu liquide, un risque de change sur un financement international, une donnée incomplète dans un dossier de project finance. Il n''existe pas toujours de réponse unique et le correcteur évalue la qualité du raisonnement autant que le résultat chiffré.

## Les trois matières avancées de l''année

- Gestion des risques financiers avancée : la mesure du risque de marché par la value at risk simplifiée, et les produits dérivés (options et swaps) comme outils de couverture ou de spéculation. Ces outils sont devenus incontournables dans toute direction financière, banque ou société de gestion exposée aux marchés.
- Finance internationale et financement de projets : le financement de projet (project finance), la microfinance comme source alternative de financement en zone UEMOA, et une vue d''ensemble des marchés financiers régionaux africains, indispensables pour comprendre comment une entreprise ou un État lève des capitaux au-delà du financement bancaire classique.
- Méthodologie du mémoire professionnel et soutenance : comment construire une problématique, mener une revue de littérature, choisir une méthodologie de collecte de données, rédiger en respectant les normes académiques, et se préparer à la soutenance orale devant jury.

Ces trois blocs ne sont pas indépendants du mémoire : beaucoup d''étudiants choisissent un thème de mémoire lié à la gestion des risques (par exemple la couverture du risque de change d''une entreprise exportatrice) ou à la finance internationale (par exemple le financement d''une infrastructure par project finance), ce qui permet de préparer les examens et le mémoire en même temps plutôt que comme deux charges de travail séparées.

## Le mémoire professionnel : ce qu''on attend réellement

Le mémoire de Master 2 n''est pas une dissertation théorique : c''est un travail appliqué qui part d''une situation réelle ou réaliste (une entreprise, un secteur, une politique financière) et qui mobilise les outils du Master pour l''analyser.

- Une problématique précise et délimitée vaut mieux qu''un sujet vaste et flou : « comment une PME exportatrice sénégalaise peut-elle se couvrir contre le risque de change sur ses ventes en devises » est préférable à « la gestion des risques financiers en Afrique ».
- Une méthodologie clairement explicitée : étude de cas unique approfondie, comparaison de plusieurs entreprises, entretiens avec des praticiens, ou analyse de données financières publiques ; chaque choix doit être justifié, pas seulement décrit.
- Une revue de littérature qui situe le travail par rapport à ce qui a déjà été écrit sur le sujet, sans invention de sources ni de chiffres qui ne pourraient être vérifiés.
- Une conclusion qui répond explicitement à la problématique posée en introduction, avec les limites du travail honnêtement reconnues.

La soutenance, elle, teste votre capacité à défendre ces choix à l''oral : pourquoi cette méthodologie et pas une autre, pourquoi ce choix de cas d''étude, que feriez-vous différemment avec plus de temps. Nous consacrerons une leçon et un atelier vidéo entiers à cette préparation.

## Plan de révision sur six semaines

- Semaines 1 et 2 : gestion des risques financiers avancée. Reprenez le calcul de la value at risk paramétrique, les mécanismes des options (payoff, valeur intrinsèque, valeur temps) et des swaps de taux.
- Semaines 3 et 4 : finance internationale et financement de projets. Entraînez-vous sur les ratios de couverture du service de la dette (DSCR) dans un montage de project finance, et sur les indicateurs clés de la microfinance.
- Semaine 5 : méthodologie du mémoire. Relisez votre plan de mémoire, vérifiez la cohérence entre problématique, méthodologie et conclusion provisoire, et préparez une version orale de dix minutes de présentation.
- Semaine 6 : entraînement croisé sur des sujets type combinant les trois matières, et simulation de soutenance avec un camarade ou un proche jouant le rôle du jury.

Chaque semaine, terminez par un exercice chronométré et un corrigé détaillé, et notez les points à retravailler avant l''examen final.

## Points clés

- Le Master 2 approfondit la gestion des risques, ouvre vers l''international, et aboutit souvent au mémoire professionnel et à sa soutenance.
- Trois matières structurent l''année : gestion des risques financiers avancée, finance internationale et financement de projets, méthodologie du mémoire et soutenance.
- Un bon mémoire part d''une problématique précise, explicite sa méthodologie, et conclut en répondant réellement à la question posée.
- La révision doit intégrer la préparation de la soutenance orale, pas seulement les examens écrits.

## Exercices

1. Expliquez la différence entre le niveau d''incertitude attendu en M1 et celui attendu en M2 dans le traitement d''un cas.
2. Citez les trois matières avancées du programme de M2 Finance présentées dans cette leçon.
3. Pourquoi une problématique de mémoire trop vaste est-elle un problème méthodologique ?
4. Proposez un découpage de six semaines de révision qui intègre à la fois les examens et la préparation d''une soutenance de mémoire.
5. Donnez un exemple de problématique de mémoire qui combinerait la gestion des risques financiers et la finance internationale.

## Corrigé

1. En M1, on combine des méthodes déjà connues et on compare leurs résultats pour construire une fourchette argumentée ; en M2, l''incertitude porte souvent sur des données elles-mêmes incomplètes ou des marchés peu liquides, et il faut construire un jugement professionnel sans réponse unique disponible, en justifiant les hypothèses retenues.
2. Gestion des risques financiers avancée ; finance internationale et financement de projets ; méthodologie du mémoire professionnel et soutenance.
3. Un sujet trop vaste ne permet pas de collecter des données suffisamment précises ni de proposer une méthodologie rigoureuse ; le travail risque de rester descriptif et superficiel, sans réelle valeur ajoutée, et sera difficile à défendre avec précision devant un jury qui posera des questions ciblées.
4. Réponse libre ; un bon plan conserve la progression proposée (risques, puis finance internationale, puis méthodologie du mémoire, puis entraînement croisé et simulation de soutenance) en consacrant une session hebdomadaire à l''avancement concret du mémoire.
5. Exemple possible : « Le financement de projets d''infrastructure énergétique en zone UEMOA face au risque de change : étude de cas d''un montage de project finance », qui combine finance internationale (project finance, monnaie régionale) et gestion des risques financiers (couverture du risque de change).', 'texte', 45, true, 10
from public.courses c where c.slug = 'mas-fin-m2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Réussir ses examens de Master 2 en Finance');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Gestion des risques financiers avancée : l''essentiel pour l''examen', '## Objectifs de la leçon

- Calculer une value at risk (VaR) paramétrique simple et l''interpréter correctement.
- Comprendre le mécanisme d''une option (call et put) et évaluer son prix par un modèle binomial à une période.
- Comprendre le fonctionnement d''un swap de taux d''intérêt et calculer ses flux nets.

Tous les taux, volatilités et paramètres de marché de cette leçon sont fictifs pour l''exemple.

## Fiche 1 : la value at risk (VaR) paramétrique

La VaR répond à une question précise : quelle est la perte maximale que peut subir une position, avec un niveau de confiance donné, sur un horizon de temps donné, en excluant les scénarios extrêmes au-delà de ce niveau de confiance.

- VaR paramétrique = position × z × σ, où z est le coefficient associé au niveau de confiance (environ 1,645 pour 95 %, environ 2,33 pour 99 %, sous hypothèse de distribution normale des rendements) et σ la volatilité (écart-type) du rendement sur l''horizon considéré.
- Pour passer d''un horizon d''un jour à un horizon de n jours, on utilise la règle de la racine du temps : VaR(n jours) = VaR(1 jour) × racine de n, sous hypothèse de rendements indépendants dans le temps.
- La VaR a des limites connues : elle suppose une distribution normale des rendements, souvent fausse en période de crise (queues de distribution plus épaisses que la loi normale), et elle ne dit rien de l''ampleur de la perte au-delà du seuil choisi.

Cas : une direction financière détient un portefeuille obligataire fictif de 500 millions de FCFA, avec une volatilité journalière estimée à 1,2 %. La VaR à 95 % sur un jour est 500 000 000 × 1,645 × 0,012 = 9 870 000 FCFA : il y a 95 % de chances que la perte sur un jour ne dépasse pas environ 9,87 millions de FCFA. La VaR à 99 % sur un jour est 500 000 000 × 2,33 × 0,012 = 13 980 000 FCFA. Sur dix jours, la VaR à 95 % devient 9 870 000 × racine de 10, soit environ 31 211 681 FCFA.

## Fiche 2 : les options, mécanisme et évaluation simplifiée

Une option donne le droit, sans obligation, d''acheter (option d''achat ou call) ou de vendre (option de vente ou put) un actif sous-jacent à un prix fixé à l''avance, le prix d''exercice ou strike, à ou avant une échéance donnée.

- Valeur intrinsèque d''un call : maximum entre (cours du sous-jacent moins strike) et zéro. Pour un put : maximum entre (strike moins cours du sous-jacent) et zéro.
- Le modèle binomial à une période évalue l''option en supposant que le cours du sous-jacent ne peut prendre que deux valeurs à l''échéance, une hausse (facteur u) ou une baisse (facteur d), et en construisant un portefeuille de réplication sans risque d''arbitrage.
- Probabilité risque-neutre : p = (1 + r − d) / (u − d), où r est le taux sans risque sur la période. La valeur de l''option est alors l''espérance actualisée de ses payoffs sous cette probabilité : C0 = [p × Cu + (1 − p) × Cd] / (1 + r).

Cas : une action fictive cote 2 000 FCFA, avec un facteur de hausse de 1,15 et un facteur de baisse de 0,90 sur la période, et un taux sans risque de la période de 5 %. Un call au prix d''exercice de 2 000 FCFA a pour payoffs : en hausse, le cours atteint 2 300 FCFA, soit un payoff de 300 ; en baisse, le cours atteint 1 800 FCFA, soit un payoff de 0 (l''option n''est pas exercée). La probabilité risque-neutre est p = (1 + 0,05 − 0,90) / (1,15 − 0,90) = 0,60. La valeur du call est [0,60 × 300 + 0,40 × 0] / 1,05 = 171,43 FCFA.

Pour le put de même strike : payoff en hausse = 0, payoff en baisse = 2 000 − 1 800 = 200. Valeur du put = [0,60 × 0 + 0,40 × 200] / 1,05 = 76,19 FCFA. On vérifie la relation de parité call-put : C − P doit égaler S0 − strike actualisé, soit 2 000 − 2 000/1,05 = 95,24 FCFA, exactement l''écart obtenu entre 171,43 et 76,19.

## Fiche 3 : les swaps de taux d''intérêt

Un swap de taux d''intérêt est un contrat par lequel deux contreparties échangent des flux d''intérêts sur un même notionnel, l''une payant un taux fixe, l''autre un taux variable (indexé sur un taux de référence du marché).

- Utilité principale : transformer la nature d''une dette ou d''un placement sans toucher au principal, par exemple une entreprise endettée à taux variable qui veut sécuriser ses charges financières en les transformant en taux fixe via un swap.
- À chaque période, seul le flux net (différence entre les deux jambes) est généralement échangé, ce qui réduit le risque de contrepartie par rapport à un échange des deux flux bruts.

Cas : un notionnel fictif de 1 milliard de FCFA, un payeur de taux fixe à 7 %, receveur de taux variable estimé successivement à 6,5 %, 6,8 %, 7,2 % et 7,5 % sur quatre périodes. Le flux fixe payé est chaque période de 1 000 000 000 × 7 % = 70 000 000 FCFA. Les flux variables reçus sont 65, 68, 72 et 75 millions. Les flux nets pour le payeur de taux fixe sont donc : période 1, −5 millions (il paie plus qu''il ne reçoit) ; période 2, −2 millions ; période 3, +2 millions ; période 4, +5 millions. Ce swap devient favorable au payeur de taux fixe lorsque les taux de marché montent au-delà de 7 %, ce qui illustre sa fonction de couverture contre une hausse des taux.

## Exercices pratiques

1. Un portefeuille de 300 millions de FCFA a une volatilité journalière de 1,5 %. Calculez la VaR à 95 % sur un jour et sur cinq jours.
2. Expliquez pourquoi la VaR ne dit rien de l''ampleur de la perte au-delà du seuil de confiance choisi.
3. Une action cote 1 500 FCFA, avec u = 1,20, d = 0,85 et un taux sans risque de période de 4 %. Calculez la probabilité risque-neutre et la valeur d''un call au strike de 1 500 FCFA.
4. Pourquoi une entreprise endettée à taux variable peut-elle vouloir conclure un swap où elle paie un taux fixe ?
5. Cas pratique : un portefeuille actions fictif de 800 millions de FCFA a une volatilité journalière de 1,8 %. Calculez la VaR à 99 % sur un jour, puis sur vingt jours. Une action sous-jacente cote 1 000 FCFA avec u = 1,10, d = 0,92 et un taux sans risque de période de 3 % ; calculez la valeur d''un put au strike de 1 000 FCFA.

## Corrigé

1. VaR 95 % 1 jour : 300 000 000 × 1,645 × 0,015 = 7 402 500 FCFA. Sur 5 jours : 7 402 500 × racine de 5 ≈ 16 552 493 FCFA.
2. La VaR fixe un seuil de perte qui ne doit pas être dépassé avec une probabilité donnée, mais elle ne précise pas la perte moyenne ou maximale dans les scénarios situés au-delà de ce seuil ; deux positions peuvent avoir la même VaR à 95 % alors que l''une a des pertes extrêmes bien plus catastrophiques que l''autre dans les 5 % de cas restants.
3. Cours en hausse : 1 500 × 1,20 = 1 800, payoff call = 300. Cours en baisse : 1 500 × 0,85 = 1 275, payoff call = 0. Probabilité risque-neutre : (1,04 − 0,85)/(1,20 − 0,85) = 0,543. Valeur du call : (0,543 × 300 + 0,457 × 0)/1,04 ≈ 156,6 FCFA.
4. Parce que le swap fixe à l''avance ses charges d''intérêts futures, la protégeant d''une hausse des taux de marché qui augmenterait sa charge financière réelle si elle restait exposée au taux variable ; elle échange un risque incertain contre une charge connue.
5. VaR 99 % 1 jour : 800 000 000 × 2,33 × 0,018 = 33 552 000 FCFA. Sur 20 jours : 33 552 000 × racine de 20 ≈ 150 049 106 FCFA. Pour le put : cours en hausse 1 100, payoff put = 0 ; cours en baisse 920, payoff put = 80. Probabilité risque-neutre : (1,03 − 0,92)/(1,10 − 0,92) = 0,611. Valeur du put : (0,611 × 0 + 0,389 × 80)/1,03 ≈ 30,2 FCFA.', 'texte', 50, false, 20
from public.courses c where c.slug = 'mas-fin-m2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Gestion des risques financiers avancée : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Finance internationale et financement de projets : l''essentiel pour l''examen', '## Objectifs de la leçon

- Comprendre la logique du financement de projet (project finance) et calculer un ratio de couverture du service de la dette (DSCR).
- Connaître les principaux indicateurs de la microfinance comme source de financement alternative.
- Décrire en termes généraux le rôle des marchés financiers régionaux africains dans le financement des entreprises et des États.

Tous les montants, ratios et taux de cette leçon sont fictifs pour l''exemple.

## Fiche 1 : le financement de projet (project finance)

Le financement de projet consiste à financer un actif ou une infrastructure (centrale électrique, route à péage, port) par une société ad hoc, le véhicule de projet, dont la dette est remboursée uniquement par les flux de trésorerie générés par le projet lui-même, sans recours (ou avec un recours limité) au patrimoine des actionnaires sponsors.

- Le véhicule de projet isole le risque : les créanciers du projet ne peuvent pas, en principe, se retourner contre les actifs des sponsors en cas de défaillance du projet.
- La structure de financement combine une dette senior importante (souvent 60 à 80 % du coût total), remboursée en priorité, et des fonds propres des sponsors, plus risqués mais aussi plus rémunérés en cas de succès.
- L''indicateur central de la solidité du montage est le ratio de couverture du service de la dette, DSCR : DSCR = flux de trésorerie disponible pour le service de la dette (CFADS) / service de la dette de la période (capital plus intérêts). Les banques exigent généralement un DSCR moyen et un DSCR minimum au-dessus d''un seuil contractuel, qui doit être vérifié chaque année.

Cas : le projet fictif « Soleil du Sahel », une centrale solaire de 30 MW, coûte 18 000 millions de FCFA, financés à 70 % par une dette senior, soit 12 600 millions, et 30 % par des fonds propres des sponsors, soit 5 400 millions. Sur huit années de remboursement, le CFADS prévisionnel varie entre 2 500 et 2 720 millions de FCFA selon l''année, avec une annuité de dette constante fictive de 1 900 millions. Le DSCR annuel varie alors entre 1,32 et 1,43, avec un DSCR moyen de 1,38. Un DSCR minimum de 1,32, supérieur à 1, signifie que même dans l''année la plus défavorable, le projet génère 32 % de flux supplémentaire au-delà du service de la dette : c''est une marge de sécurité que les prêteurs examinent attentivement avant d''accorder le financement.

## Fiche 2 : la microfinance comme financement alternatif

La microfinance regroupe les institutions qui octroient des crédits de faible montant, souvent sans garantie classique, à des populations ou des très petites entreprises exclues du système bancaire traditionnel. Elle joue un rôle significatif de financement alternatif en zone UEMOA, en complément du financement bancaire et des marchés financiers.

- Taux de remboursement : proportion des prêts remboursés dans les délais prévus, indicateur de la qualité du portefeuille de crédit.
- Portefeuille à risque à 30 jours, PAR30 : proportion de l''encours de crédit dont au moins une échéance est en retard de plus de 30 jours, rapportée à l''encours total. C''est l''indicateur de référence pour mesurer la qualité du portefeuille d''une institution de microfinance.

Cas : une institution de microfinance fictive a un encours total de 850 millions de FCFA, dont 42,5 millions présentent un retard de plus de 30 jours : le PAR30 est 42 500 000 / 850 000 000 = 5,0 %, à comparer à des seuils prudentiels que l''institution se fixe en interne (souvent sous les 5 à 10 % selon les pratiques du secteur, à vérifier auprès des régulateurs compétents). Sur 1 200 prêts décaissés, 1 140 ont été remboursés à temps, soit un taux de remboursement de 95,0 %.

## Fiche 3 : les marchés financiers régionaux africains, vue d''ensemble

Les marchés financiers régionaux africains, comme les marchés boursiers et obligataires organisés au sein de certaines zones monétaires d''Afrique de l''Ouest et d''Afrique centrale, permettent aux entreprises et aux États de lever des capitaux directement auprès des investisseurs, en complément du crédit bancaire.

- Marché des actions : permet aux entreprises cotées de lever des fonds propres sans recourir à l''endettement, mais la profondeur du marché (nombre d''entreprises cotées, volumes échangés) reste généralement limitée par rapport aux grandes places financières internationales.
- Marché obligataire régional : les États et certaines grandes entreprises émettent des titres de dette pour financer des projets d''infrastructure ou des besoins budgétaires, souscrits par des investisseurs institutionnels régionaux (banques, assurances, caisses de retraite, fonds).
- Rôle pour une entreprise en croissance : le marché financier régional offre une alternative de financement à moyen et long terme, utile pour diversifier les sources de financement au-delà du seul crédit bancaire, mais suppose une taille et une transparence financière suffisantes de l''entreprise émettrice.

Pour toute donnée précise sur un marché financier régional particulier (indices, capitalisation, nombre de sociétés cotées), il convient de se référer aux publications officielles de l''autorité de régulation ou de la bourse concernée plutôt qu''à des chiffres mémorisés, qui évoluent rapidement.

## Exercices pratiques

1. Expliquez pourquoi le financement de projet repose sur un véhicule ad hoc plutôt que sur le bilan direct des sponsors.
2. Un projet a un CFADS de 1 800 millions de FCFA et un service de la dette de 1 300 millions sur la période. Calculez le DSCR et commentez.
3. Une institution de microfinance a un encours total de 600 millions de FCFA, dont 18 millions en retard de plus de 30 jours. Calculez le PAR30.
4. Pourquoi la profondeur limitée d''un marché financier régional complique-t-elle l''usage des méthodes d''évaluation par les multiples de comparables, vues dans le cours de Master 1 ?
5. Cas pratique : un projet routier à péage fictif coûte 25 000 millions de FCFA, financé à 75 % par dette senior. Le CFADS prévisionnel est de 2 100 millions par an sur dix ans, avec une annuité de dette constante de 1 650 millions. Calculez le montant de la dette senior, le DSCR annuel, et commentez la marge de sécurité du montage.

## Corrigé

1. Le véhicule ad hoc isole juridiquement et financièrement le risque du projet : en cas de défaillance, les créanciers ne peuvent se retourner, en principe, que sur les actifs et les flux du projet lui-même, pas sur le patrimoine des sponsors, ce qui permet à ces derniers de financer des projets ambitieux sans engager l''intégralité de leur bilan.
2. DSCR = 1 800 / 1 300 ≈ 1,38, ce qui signifie que le projet génère 38 % de flux disponible au-delà du service de la dette, une marge de sécurité jugée confortable par la plupart des prêteurs de ce type de financement.
3. PAR30 = 18 000 000 / 600 000 000 = 3,0 %, un niveau généralement considéré comme sain pour un portefeuille de microcrédit, sous réserve des seuils prudentiels propres à chaque institution et à son régulateur.
4. Avec peu d''entreprises cotées comparables dans un même secteur sur un marché régional, il devient difficile de constituer un échantillon de comparables suffisamment homogène et liquide ; les multiples obtenus sont alors moins fiables, ce qui renforce l''intérêt de croiser systématiquement cette méthode avec le DCF et l''approche patrimoniale.
5. Dette senior : 25 000 × 0,75 = 18 750 millions. DSCR = 2 100 / 1 650 ≈ 1,27 : la marge de sécurité est positive mais plus réduite que dans l''exemple de la centrale solaire (DSCR moyen de 1,38), ce qui pourrait conduire les prêteurs à demander des garanties supplémentaires ou un ratio de couverture plus élevé avant de finaliser le financement.', 'texte', 50, false, 30
from public.courses c where c.slug = 'mas-fin-m2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Finance internationale et financement de projets : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Méthodologie du mémoire professionnel et soutenance : l''essentiel pour l''examen', '## Objectifs de la leçon

- Construire une problématique de mémoire précise et une méthodologie cohérente avec elle.
- Structurer un mémoire professionnel en finance : revue de littérature, méthodologie, résultats, discussion, conclusion.
- Préparer une soutenance orale efficace : plan de présentation, anticipation des questions du jury, gestion du temps.

## Fiche 1 : choisir et formuler une problématique

La problématique est la question centrale à laquelle le mémoire répond. Elle doit être précise, délimitée dans le temps, l''espace et le périmètre d''entreprise ou de secteur étudié, et répondre à un enjeu réel, pas seulement académique.

- Une bonne problématique relie un phénomène observé (par exemple, la difficulté des PME sénégalaises à accéder au crédit bancaire classique) à un cadre d''analyse du Master (par exemple, les critères de notation du risque de crédit, ou les alternatives de financement comme la microfinance ou le crédit-bail).
- Elle se formule le plus souvent comme une question ouverte suivie d''une délimitation : « Dans quelle mesure le financement de projet constitue-t-il une alternative crédible au crédit bancaire classique pour les PME agro-industrielles sénégalaises, à partir de l''étude d''un cas fictif de centrale solaire ? » plutôt qu''une question fermée appelant un simple oui ou non.
- Évitez les sujets trop vastes (« la finance en Afrique ») et les sujets trop étroits ne laissant aucune place à l''analyse (« le calcul du DSCR d''un seul projet », sans mise en perspective).

## Fiche 2 : construire une méthodologie cohérente

La méthodologie décrit comment vous allez répondre à la problématique, et doit être choisie en fonction de la nature de la question posée, pas par facilité.

- Étude de cas unique approfondie : pertinente quand on veut comprendre en détail un mécanisme ou une décision dans un contexte précis (par exemple, le montage financier d''un projet d''infrastructure).
- Étude comparative de plusieurs entreprises ou projets : pertinente quand on veut identifier des facteurs communs ou des différences entre plusieurs situations.
- Entretiens avec des praticiens (banquiers, directeurs financiers, gérants de fonds) : utiles pour recueillir des informations qualitatives non disponibles dans les documents publics, à condition de présenter une grille d''entretien claire et de respecter l''anonymat si nécessaire.
- Analyse de données financières publiques (rapports annuels, données de marché) : pertinente pour des analyses quantitatives, à condition de citer précisément les sources et de ne jamais inventer un chiffre non vérifiable.

Chaque choix méthodologique doit être justifié dans le mémoire lui-même : pourquoi cette méthode plutôt qu''une autre, quelles sont ses limites, comment elles ont été atténuées autant que possible.

## Fiche 3 : la structure attendue d''un mémoire professionnel

- Introduction : contexte, problématique, annonce du plan.
- Revue de littérature ou cadre théorique : présentation des concepts et travaux existants mobilisés, sans invention de sources ni de citations qui ne pourraient être retrouvées et vérifiées.
- Méthodologie : présentation détaillée et justifiée de la démarche suivie.
- Résultats ou analyse du cas : présentation factuelle des données et calculs, avec les hypothèses toujours explicitées, notamment lorsque des taux fictifs sont utilisés à des fins pédagogiques dans un exercice ; dans un mémoire réel, seules des données vérifiables et sourcées doivent être utilisées.
- Discussion : interprétation des résultats, mise en perspective avec la littérature, limites du travail.
- Conclusion : réponse explicite à la problématique posée en introduction, et pistes pour des travaux futurs.
- Bibliographie et annexes : toutes les sources citées doivent être réelles, vérifiables et correctement référencées ; le plagiat, y compris la paraphrase non attribuée, est une faute grave sanctionnée par les établissements.

## Fiche 4 : préparer la soutenance orale

La soutenance dure généralement entre vingt et quarante-cinq minutes selon les établissements, dont une présentation orale de dix à vingt minutes suivie de questions du jury.

- Structurez votre présentation autour de la problématique, de la méthodologie, des principaux résultats et de la conclusion : ne répétez pas l''intégralité du mémoire, mettez en avant ce qui a le plus de valeur ajoutée.
- Préparez des diapositives sobres, avec des graphiques ou tableaux clés plutôt que des pavés de texte ; le jury a déjà lu le mémoire, il attend une synthèse, pas une lecture.
- Anticipez les questions classiques d''un jury : pourquoi ce choix méthodologique, quelles sont les limites de votre étude, que feriez-vous différemment avec plus de temps ou de données, quelle est la portée pratique de vos conclusions pour une entreprise ou un décideur réel.
- Entraînez-vous à voix haute, chronométré, devant un public même informel (camarades, famille) ; la fluidité orale compte autant que le contenu pour la note finale.
- Gardez une posture de recul critique sur votre propre travail : un jury valorise davantage un candidat qui reconnaît honnêtement les limites de son étude qu''un candidat qui surestime la portée de ses conclusions.

## Exercices pratiques

1. Reformulez cette problématique trop vaste : « La gestion des risques financiers des entreprises africaines ». Proposez une version précise et délimitée.
2. Pourquoi le choix de la méthodologie doit-il être justifié dans le mémoire, et pas seulement décrit ?
3. Citez les six grandes parties attendues dans la structure d''un mémoire professionnel.
4. Quelles sont les trois questions de jury les plus fréquentes à anticiper en soutenance ?
5. Expliquez pourquoi la paraphrase non attribuée constitue une forme de plagiat, même sans copier-coller exact.

## Corrigé

1. Exemple de reformulation : « Dans quelle mesure une entreprise exportatrice sénégalaise de produits halieutiques peut-elle réduire son exposition au risque de change par des instruments de couverture accessibles sur le marché régional, à partir d''une étude de cas fictive ? » ; la version révisée précise le secteur, le pays, le type de risque et le périmètre d''étude.
2. Parce qu''une méthodologie non justifiée laisse penser qu''elle a été choisie par facilité ou par défaut, alors qu''un jury attend de comprendre pourquoi cette démarche était la plus pertinente pour répondre à la problématique posée, et quelles limites elle comporte par rapport à d''autres approches possibles.
3. Introduction ; revue de littérature ou cadre théorique ; méthodologie ; résultats ou analyse du cas ; discussion ; conclusion (avec bibliographie et annexes en complément).
4. Pourquoi ce choix méthodologique plutôt qu''un autre ; quelles sont les limites de l''étude ; quelle est la portée pratique des conclusions pour une entreprise ou un décideur réel.
5. Parce que reformuler les idées ou l''analyse d''un auteur avec d''autres mots, sans les attribuer explicitement par une citation ou une référence, fait croire au lecteur que ce raisonnement est originel au candidat, alors qu''il provient d''une source tierce ; seule la citation explicite avec référence précise permet de distinguer ce qui appartient à l''auteur du mémoire de ce qui est repris d''un travail existant.', 'texte', 50, false, 40
from public.courses c where c.slug = 'mas-fin-m2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Méthodologie du mémoire professionnel et soutenance : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Sujet type d''examen de Master 2 Finance (entraînement corrigé)', '## Avertissement

Ce sujet est un entraînement non officiel construit pour ce cours, avec un barème indicatif. Il ne remplace pas les annales de votre établissement mais mobilise les matières avancées du programme de Master 2 Finance.

## Sujet type d''examen de Master 2 Finance (3 heures, barème indicatif sur 20)

Cas d''entreprise : Sine-Saloum Énergie SA, société de projet fictive, développe une mini-centrale hydroélectrique de 15 MW dans la région du Sine-Saloum, financée par un montage de financement de projet, et une direction financière d''un groupe exportateur, Delta Riz SA, souhaite couvrir son exposition au risque de change.

## Partie 1 : financement de projet (7 points)

Données : coût total du projet 9 000 millions de FCFA, financé à 65 % par dette senior. Le CFADS prévisionnel est de 1 350 millions par an sur sept ans, avec une annuité de dette constante de 980 millions.

1. Calculez le montant de la dette senior et des fonds propres des sponsors.
2. Calculez le DSCR annuel et commentez la marge de sécurité du montage.
3. Expliquez pourquoi les créanciers de ce projet n''ont, en principe, pas de recours direct sur le patrimoine personnel des sponsors.

## Partie 2 : gestion des risques financiers (8 points)

Données : Delta Riz SA détient une position de change de 400 millions de FCFA équivalents en devises à encaisser dans trois mois, avec une volatilité journalière estimée du taux de change de 0,9 %.

4. Calculez la VaR à 95 % sur un jour de cette position, puis sur dix jours.
5. Delta Riz envisage un swap de taux pour une autre dette à taux variable de notionnel 600 millions de FCFA : taux fixe proposé 6,5 %, taux variable estimé successivement à 6,0 %, 6,3 %, 6,8 % sur trois périodes. Calculez les flux nets pour l''entreprise si elle paie le taux fixe, et indiquez dans quel cas ce choix se révèle favorable.
6. Expliquez la différence entre couverture par un instrument dérivé et simple acceptation du risque de change, en termes de coût et de certitude du résultat.

## Partie 3 : méthodologie du mémoire (5 points)

7. Un étudiant propose la problématique suivante : « Le financement des entreprises en Afrique ». Critiquez cette formulation et proposez une version améliorée en lien avec le cas Sine-Saloum Énergie.
8. Citez trois questions qu''un jury pourrait poser en soutenance sur un mémoire consacré au financement de projet de cette centrale.

## Exercices pratiques (entraînement complémentaire)

1. Pourquoi le DSCR minimum sur toute la durée du financement est-il plus important pour les prêteurs que le DSCR moyen ?
2. Dans quel cas précis un swap où l''entreprise paie un taux fixe devient-il défavorable par rapport à rester en taux variable ?
3. Pourquoi un mémoire sur un projet de financement doit-il explicitement reconnaître les limites des données disponibles, notamment lorsque certains chiffres sont fictifs ou estimés ?

## Corrigé

1. Dette senior : 9 000 × 0,65 = 5 850 millions. Fonds propres des sponsors : 9 000 − 5 850 = 3 150 millions.
2. DSCR = 1 350 / 980 ≈ 1,38 chaque année (CFADS et annuité constants dans cet énoncé simplifié) : une marge de sécurité de 38 % au-delà du service de la dette, jugée confortable, à condition que les prévisions de CFADS restent fiables sur toute la durée du financement.
3. Parce que la dette est logée dans le véhicule de projet, juridiquement distinct des sponsors, et structurée sans recours ou à recours limité : en cas de défaillance du projet, les créanciers se remboursent sur les actifs et les flux du projet lui-même, pas sur le patrimoine personnel ou le bilan global des sponsors, ce qui limite le risque pris par ces derniers.
4. VaR 95 % 1 jour : 400 000 000 × 1,645 × 0,009 = 5 922 000 FCFA. Sur 10 jours : 5 922 000 × racine de 10 ≈ 18 727 008 FCFA.
5. Flux fixe payé chaque période : 600 000 000 × 6,5 % = 39 000 000 FCFA. Flux variables reçus : 36, 37,8 et 40,8 millions. Flux nets pour l''entreprise : période 1, −3 millions ; période 2, −1,2 million ; période 3, +1,8 million. Ce choix devient favorable lorsque le taux variable de marché dépasse 6,5 %, comme en période 3.
6. La couverture par un dérivé a un coût (prime d''option, ou écart potentiellement défavorable sur un swap) mais fixe ou plafonne le résultat financier futur, réduisant l''incertitude ; l''acceptation du risque ne coûte rien immédiatement mais expose l''entreprise à une variabilité totale de son résultat selon l''évolution réelle du taux de change, favorable ou défavorable.
7. La problématique est trop vaste, sans délimitation géographique précise, sectorielle ni méthodologique. Version améliorée : « Dans quelle mesure le financement de projet permet-il de sécuriser le financement d''une infrastructure énergétique régionale face au risque de construction et d''exploitation, à partir de l''étude d''un cas fictif de mini-centrale hydroélectrique au Sine-Saloum ? »
8. Exemples de questions : pourquoi avoir choisi une étude de cas unique plutôt qu''une comparaison de plusieurs projets ; comment avez-vous validé la fiabilité des hypothèses de CFADS utilisées dans le montage ; quelles seraient les conséquences pour les sponsors et les créanciers si le DSCR minimum tombait sous le seuil contractuel pendant une année difficile.
Exercices complémentaires : 1. Parce que le DSCR minimum identifie l''année la plus fragile du montage, celle où le risque de défaut est le plus élevé ; un DSCR moyen confortable peut masquer une année isolée où la marge de sécurité devient dangereusement faible. 2. Quand le taux variable de marché reste durablement inférieur au taux fixe convenu : l''entreprise paie alors plus qu''elle n''aurait payé en restant à taux variable, le swap devient un coût net plutôt qu''une protection utile. 3. Parce que la crédibilité d''un mémoire professionnel repose sur la transparence de ses sources et de ses hypothèses ; reconnaître explicitement qu''un chiffre est estimé ou fictif, et pourquoi, renforce la rigueur perçue du travail, alors que le dissimuler expose le candidat à une perte de crédibilité en soutenance si le jury le découvre.', 'texte', 55, false, 50
from public.courses c where c.slug = 'mas-fin-m2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Sujet type d''examen de Master 2 Finance (entraînement corrigé)');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Gestion des risques financiers avancée (VaR, options, swaps)', '## Fiche du cours vidéo

Durée : 1h30. Niveau : Master 2 Finance.
Objectifs : calculer une VaR paramétrique et en discuter les limites, évaluer une option par le modèle binomial, calculer les flux nets d''un swap de taux.
Matériel : tableau ou diaporama, calculatrice.
Prérequis : actualisation, notions de probabilité et de variance.

## 00:00 – 05:00 · Introduction et enjeux

Bonjour. Cette séance porte sur la gestion des risques financiers avancée : trois outils que toute direction financière ou salle des marchés utilise au quotidien pour mesurer et couvrir ses risques. Nous allons calculer une value at risk, évaluer une option par un modèle simple, et comprendre comment un swap de taux transforme une exposition financière. Gardez votre calculatrice à portée de main, nous allons refaire chaque calcul ensemble.

Visuel : diapositive de titre avec les trois outils annoncés.

## 05:00 – 20:00 · Partie 1 : la value at risk paramétrique

La VaR répond à une question très concrète : quelle est la perte maximale que je risque de subir, avec un niveau de confiance donné, sur un horizon donné. C''est l''indicateur de risque de marché le plus utilisé dans les salles de marché et les directions financières, malgré ses limites que nous allons discuter.

La formule paramétrique est simple : VaR égale la position, multipliée par un coefficient z associé au niveau de confiance, multipliée par la volatilité. Pour un niveau de confiance de 95 %, sous hypothèse de distribution normale, z vaut environ 1,645. Pour 99 %, z vaut environ 2,33.

Prenons un exemple concret : une direction financière détient un portefeuille obligataire de 500 millions de FCFA, avec une volatilité journalière estimée à 1,2 %. La VaR à 95 % sur un jour est 500 millions fois 1,645 fois 0,012, soit 9 870 000 FCFA. Cela signifie qu''il y a 95 % de chances que la perte sur une seule journée ne dépasse pas environ 9,87 millions de FCFA. À 99 %, la VaR monte à 500 millions fois 2,33 fois 0,012, soit 13 980 000 FCFA : plus on exige un niveau de confiance élevé, plus la VaR augmente, car on veut couvrir des scénarios plus rares et plus extrêmes.

Pour passer à un horizon plus long, on utilise la règle de la racine du temps, sous hypothèse d''indépendance des rendements journaliers : la VaR sur dix jours égale la VaR sur un jour multipliée par la racine de dix. Ici, 9 870 000 fois racine de 10, soit environ 31 211 681 FCFA.

Visuel : courbe de distribution normale avec la zone de 5 % de queue gauche hachurée, le seuil de VaR indiqué par une ligne verticale.

Discussion essentielle, à toujours mentionner en examen : la VaR suppose une distribution normale des rendements. En période de crise financière, les marchés présentent des queues de distribution plus épaisses que la loi normale ne le prévoit : les pertes extrêmes sont plus fréquentes que le modèle ne le suggère. De plus, la VaR ne dit absolument rien de l''ampleur de la perte au-delà du seuil choisi : deux portefeuilles peuvent avoir exactement la même VaR à 95 % alors que l''un a des pertes catastrophiques dans les 5 % de cas restants et l''autre non.

## 20:00 – 35:00 · Partie 2 : évaluer une option par le modèle binomial

Passons aux options. Une option donne le droit, sans obligation, d''acheter (call) ou de vendre (put) un actif à un prix fixé d''avance, le strike. Le modèle binomial à une période est la façon la plus pédagogique de comprendre comment on évalue une option sans recourir à des formules fermées complexes.

On suppose que le cours du sous-jacent ne peut prendre que deux valeurs à l''échéance : une valeur haute, obtenue en multipliant le cours initial par un facteur u, et une valeur basse, obtenue en multipliant par un facteur d. L''idée clé du modèle est de construire un portefeuille de réplication, combinant l''actif sous-jacent et un prêt ou un emprunt sans risque, qui reproduit exactement les payoffs de l''option dans les deux scénarios. Cela permet de calculer une probabilité dite risque-neutre, qui n''est pas la vraie probabilité de hausse ou de baisse, mais un outil mathématique qui permet d''actualiser correctement les payoffs futurs.

Prenons un exemple : une action cote 2 000 FCFA, avec un facteur de hausse u de 1,15 et un facteur de baisse d de 0,90, et un taux sans risque de la période de 5 %. En hausse, le cours atteint 2 300 FCFA ; en baisse, 1 800 FCFA. Pour un call au strike de 2 000 FCFA, le payoff en hausse est 300, le payoff en baisse est 0, puisque l''option ne serait pas exercée si le cours est inférieur au strike.

La probabilité risque-neutre est p égale (1 plus le taux sans risque moins d) divisé par (u moins d), soit (1,05 moins 0,90) divisé par (1,15 moins 0,90), soit 0,60. La valeur du call est l''espérance actualisée des payoffs sous cette probabilité : [0,60 fois 300 plus 0,40 fois 0] divisé par 1,05, soit 171,43 FCFA.

Visuel : arbre binomial à une période dessiné au tableau, avec les deux branches et les payoffs indiqués.

Faisons le même calcul pour le put correspondant, même strike de 2 000 FCFA : payoff en hausse égal à 0, payoff en baisse égal à 2 000 moins 1 800, soit 200. La valeur du put est [0,60 fois 0 plus 0,40 fois 200] divisé par 1,05, soit 76,19 FCFA. Vérifions la relation de parité call-put, qui doit toujours être respectée sans opportunité d''arbitrage : C moins P doit égaler S0 moins le strike actualisé, soit 2 000 moins 2 000 divisé par 1,05, soit 95,24 FCFA. Et effectivement, 171,43 moins 76,19 égale 95,24. Cette vérification est un excellent réflexe à montrer à l''examen : elle prouve que vos deux calculs sont cohérents entre eux.

## 35:00 – 50:00 · Partie 3 : les swaps de taux d''intérêt

Troisième outil : le swap de taux d''intérêt. Un swap est un contrat par lequel deux contreparties échangent des flux d''intérêts calculés sur un même notionnel, l''une payant un taux fixe, l''autre un taux variable indexé sur un taux de référence du marché. Le principal n''est jamais échangé, seul le flux d''intérêt net est généralement réglé à chaque période.

Pourquoi une entreprise utiliserait-elle un swap ? Imaginez une entreprise endettée à taux variable, qui craint une hausse des taux de marché dans les prochaines années. Elle peut conclure un swap où elle paie un taux fixe et reçoit un taux variable : le taux variable reçu compense exactement le taux variable qu''elle paie sur sa dette d''origine, et il ne lui reste plus, économiquement, qu''à payer le taux fixe du swap. Elle a transformé sa dette à taux variable en dette synthétique à taux fixe, sans renégocier le contrat de prêt d''origine.

Prenons un exemple : un notionnel de 1 milliard de FCFA, un taux fixe payé de 7 %, et des taux variables reçus estimés successivement à 6,5 %, 6,8 %, 7,2 % et 7,5 % sur quatre périodes. Le flux fixe payé chaque période est 1 milliard fois 7 %, soit 70 millions. Les flux variables reçus sont 65, 68, 72 et 75 millions. Les flux nets pour le payeur de taux fixe sont donc : période 1, moins 5 millions ; période 2, moins 2 millions ; période 3, plus 2 millions ; période 4, plus 5 millions.

Visuel : tableau des quatre périodes avec flux fixe, flux variable et flux net, en couleur selon le signe.

Observez la logique : quand les taux de marché montent au-delà du taux fixe de 7 %, le swap devient favorable au payeur de taux fixe, puisqu''il reçoit alors plus qu''il ne paie. C''est exactement ce qui se passe en période 3 et 4 dans notre exemple. Le swap a bien joué son rôle de couverture contre la hausse des taux.

## 50:00 – 55:00 · Pause et quiz interactif

Trois questions de vérification.

- Question 1 : que signifie une VaR à 95 % sur un jour de 10 millions de FCFA ? Réponse : il y a 95 % de chances que la perte sur cette position ne dépasse pas 10 millions de FCFA sur une seule journée, sous les hypothèses du modèle.
- Question 2 : à quoi sert la probabilité risque-neutre dans le modèle binomial d''évaluation d''option ? Réponse : à actualiser correctement l''espérance des payoffs futurs de l''option, en s''appuyant sur un portefeuille de réplication sans opportunité d''arbitrage, plutôt que sur la vraie probabilité de hausse ou de baisse du marché.
- Question 3 : comment un swap de taux permet-il de transformer une dette à taux variable en dette synthétique à taux fixe ? Réponse : en recevant un flux variable qui compense exactement le taux variable payé sur la dette d''origine, ne laissant à l''entreprise que le paiement du taux fixe du swap.

## 55:00 – 70:00 · Partie 4 : combiner les outils dans une politique de gestion des risques

Dans la pratique, une direction financière ne choisit pas un seul outil : elle combine mesure du risque et instruments de couverture. La VaR permet de quantifier et de suivre l''exposition globale de l''entreprise aux marchés. Les options offrent une couverture asymétrique : elles protègent contre un mouvement défavorable tout en conservant le bénéfice d''un mouvement favorable, au prix d''une prime payée d''avance. Les swaps offrent une couverture symétrique, souvent sans paiement initial de prime, mais sans possibilité de bénéficier d''un mouvement favorable une fois le contrat conclu.

Le choix entre option et swap dépend donc de l''appétit au risque de l''entreprise et du coût relatif des deux instruments sur le marché à un instant donné. Une entreprise exportatrice qui craint une baisse de la devise dans laquelle elle facture peut acheter un put sur cette devise pour se protéger tout en gardant la possibilité de profiter d''une hausse, ou conclure un contrat à terme, plus proche d''un swap, qui fixe le taux de change futur sans paiement de prime mais sans possibilité de gain si la devise s''apprécie.

Visuel : tableau comparatif option versus swap, sur les critères coût initial, symétrie de la protection, flexibilité.

## 70:00 – 80:00 · Cas pratique approfondi : stress test simplifié

Terminons par un exercice de stress test, complément essentiel à la VaR. Reprenons le portefeuille obligataire de 500 millions de FCFA. La VaR à 99 % sur un jour nous donnait 13 980 000 FCFA, en supposant une distribution normale. Mais que se passerait-il si la volatilité journalière, habituellement de 1,2 %, triplait soudainement à 3,6 % lors d''une crise de marché, un scénario que la VaR historique n''aurait peut-être pas anticipé ? La perte potentielle sur un jour deviendrait alors 500 millions fois 2,33 fois 0,036, soit environ 41 940 000 FCFA, trois fois plus que la VaR calculée en conditions normales.

C''est pourquoi les bonnes pratiques de gestion des risques exigent de compléter la VaR par des scénarios de stress, qui testent des conditions de marché extrêmes mais plausibles. La VaR mesure le risque en conditions normales ; le stress test mesure la résistance en conditions de crise.

## 80:00 – 85:00 · Synthèse générale

Pour résumer cette séance : la VaR quantifie un risque de marché sous hypothèse de distribution normale, avec des limites bien identifiées qu''il faut toujours savoir discuter ; les options offrent une couverture asymétrique évaluée par un modèle de réplication sans arbitrage ; les swaps transforment la nature d''une exposition financière à coût généralement nul au départ. Une politique de gestion des risques robuste combine ces outils de mesure et de couverture, complétés par des scénarios de stress.

## 85:00 – 90:00 · Évaluation finale

1. Quelle est la formule de la VaR paramétrique à un jour ? Réponse : position multipliée par le coefficient z associé au niveau de confiance, multipliée par la volatilité journalière.
2. Pourquoi la VaR est-elle limitée en période de crise financière ? Réponse : parce qu''elle suppose une distribution normale des rendements, alors que les marchés en crise présentent des pertes extrêmes plus fréquentes que ce que cette distribution prévoit.
3. Dans le modèle binomial, à quoi correspond la probabilité risque-neutre p ? Réponse : à (1 plus le taux sans risque moins le facteur de baisse d), divisé par (le facteur de hausse u moins le facteur de baisse d), utilisée pour actualiser l''espérance des payoffs de l''option.
4. Quelle relation doit toujours être vérifiée entre la valeur d''un call et celle d''un put de même strike et même échéance ? Réponse : la relation de parité call-put, C moins P égale le cours actuel du sous-jacent moins le strike actualisé au taux sans risque.
5. Pourquoi un swap de taux ne comporte-t-il généralement pas de prime initiale, contrairement à une option ? Réponse : parce que les conditions du swap, notionnel et taux fixe, sont fixées de telle sorte que la valeur actuelle des deux jambes de flux soit égale à l''origine du contrat, alors qu''une option offre un droit asymétrique qui doit être rémunéré par une prime pour compenser l''absence d''obligation de l''acheteur.', 'video', 90, false, 60
from public.courses c where c.slug = 'mas-fin-m2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Gestion des risques financiers avancée (VaR, options, swaps)');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Finance internationale et financement de projets', '## Fiche du cours vidéo

Durée : 1h30. Niveau : Master 2 Finance.
Objectifs : construire un montage de financement de projet et calculer le DSCR, connaître les indicateurs clés de la microfinance, situer le rôle des marchés financiers régionaux africains.
Matériel : tableau ou diaporama, calculatrice.
Prérequis : actualisation, lecture d''un plan de financement.

## 00:00 – 05:00 · Introduction et enjeux

Bonjour. Cette séance porte sur la finance internationale et le financement de projets : comment une infrastructure, une centrale électrique ou une route à péage, se finance par un montage spécifique où la dette est remboursée par les flux du projet lui-même ; comment la microfinance complète le financement bancaire classique ; et quel rôle jouent les marchés financiers régionaux africains. Nous allons suivre le cas fictif de la centrale solaire « Soleil du Sahel » tout au long de la séance.

Visuel : diapositive de titre avec une photo schématique de centrale solaire et les trois thèmes annoncés.

## 05:00 – 20:00 · Partie 1 : la logique du financement de projet

Le financement de projet, ou project finance, répond à un besoin précis : financer un actif coûteux et de longue durée de vie, sans faire peser l''intégralité du risque sur le bilan des entreprises qui portent le projet, appelées les sponsors.

Le mécanisme central est la création d''un véhicule de projet, une société ad hoc dédiée uniquement à ce projet. Cette société emprunte auprès des banques, construit et exploite l''actif, et rembourse sa dette exclusivement avec les flux de trésorerie générés par l''exploitation, sans recours ou avec un recours limité au patrimoine des sponsors. C''est la différence fondamentale avec un financement d''entreprise classique, où le prêteur peut se retourner sur l''ensemble du bilan de l''emprunteur.

Prenons notre cas : « Soleil du Sahel », une centrale solaire fictive de 30 mégawatts, coûte 18 000 millions de FCFA. Elle est financée à 70 % par une dette senior, soit 12 600 millions, et à 30 % par des fonds propres des sponsors, soit 5 400 millions. Cette répartition, typique du secteur de l''énergie, reflète le fait que les flux futurs du projet, très prévisibles une fois le contrat de vente d''électricité signé, permettent aux banques d''accepter un niveau d''endettement élevé.

Visuel : schéma du montage avec le véhicule de projet au centre, les sponsors à gauche, les banques à droite, et les flèches de flux de trésorerie vers les prêteurs.

## 20:00 – 35:00 · Partie 2 : calculer et interpréter le DSCR

L''indicateur central de la solidité d''un montage de financement de projet est le ratio de couverture du service de la dette, le DSCR : DSCR égale le flux de trésorerie disponible pour le service de la dette, qu''on appelle CFADS, divisé par le service de la dette de la période, c''est-à-dire la somme du capital remboursé et des intérêts payés.

Pour « Soleil du Sahel », sur huit années de remboursement, le CFADS prévisionnel varie entre 2 500 et 2 720 millions de FCFA selon l''année, avec une annuité de dette constante de 1 900 millions. Calculons le DSCR de la première année : 2 600 divisé par 1 900, soit environ 1,37. Sur l''ensemble des huit années, le DSCR varie entre 1,32 et 1,43, avec une moyenne de 1,38.

Que signifie un DSCR de 1,32 dans l''année la plus défavorable ? Cela signifie que même cette année-là, le projet génère 32 % de flux de trésorerie supplémentaire au-delà de ce qui est strictement nécessaire pour payer la dette. C''est cette marge de sécurité, et plus précisément le DSCR minimum sur toute la durée du financement, que les banques examinent en priorité avant d''accorder leur financement, car c''est l''année la plus fragile qui détermine le risque réel de défaut.

Visuel : graphique en barres du DSCR année par année, avec une ligne horizontale représentant le seuil contractuel minimum exigé par les prêteurs, par exemple 1,20 dans cet exemple fictif.

Mettez en pause et réfléchissez : si une année de maintenance exceptionnelle réduisait le CFADS de cette année-là à 2 200 millions au lieu de 2 600, que deviendrait le DSCR cette année, et quelles conséquences cela aurait-il potentiellement sur le respect des engagements contractuels envers les prêteurs ? Le DSCR tomberait à 2 200 divisé par 1 900, soit environ 1,16, probablement sous le seuil contractuel minimum, ce qui déclencherait une discussion avec les prêteurs, voire des mesures correctives prévues au contrat de financement.

## 35:00 – 50:00 · Partie 3 : la microfinance comme financement alternatif

Changeons d''échelle. Toutes les entreprises n''ont pas accès au financement bancaire classique ni aux marchés financiers. La microfinance s''est développée pour répondre aux besoins de financement de petite taille, souvent sans garantie classique, pour des populations ou de très petites entreprises exclues du système bancaire traditionnel.

Deux indicateurs structurent le pilotage du risque de crédit dans une institution de microfinance. Le taux de remboursement, qui mesure la proportion de prêts remboursés dans les délais prévus. Et le portefeuille à risque à 30 jours, le PAR30, qui mesure la proportion de l''encours total présentant au moins une échéance en retard de plus de 30 jours.

Pour une institution fictive avec un encours total de 850 millions de FCFA, dont 42,5 millions en retard de plus de 30 jours, le PAR30 est 42,5 divisé par 850, soit 5,0 %. Sur 1 200 prêts décaissés, 1 140 ont été remboursés à temps, soit un taux de remboursement de 95,0 %.

Visuel : jauge visuelle du PAR30 avec des zones de couleur verte, jaune et rouge selon le niveau, à titre pédagogique uniquement, les seuils réels dépendant de chaque régulateur et institution.

Pourquoi ces indicateurs sont-ils essentiels en finance internationale et en financement de projets ? Parce que de plus en plus de montages combinent financement bancaire classique, financement de projet et microfinance, notamment pour des projets d''électrification rurale décentralisée où les utilisateurs finaux sont eux-mêmes financés par microcrédit pour payer leurs raccordements ou leurs équipements.

## 50:00 – 55:00 · Pause et quiz interactif

Trois questions de vérification.

- Question 1 : pourquoi le DSCR minimum importe-t-il davantage que le DSCR moyen pour un prêteur ? Réponse : parce qu''il identifie l''année la plus fragile du montage, celle où le risque de défaut est le plus élevé, alors qu''une moyenne confortable peut masquer une année isolée dangereusement faible.
- Question 2 : que mesure le PAR30 dans une institution de microfinance ? Réponse : la proportion de l''encours total de crédit présentant au moins une échéance en retard de plus de 30 jours, indicateur de la qualité du portefeuille.
- Question 3 : pourquoi le financement de projet permet-il à des sponsors de porter des projets plus ambitieux que leur bilan ne le permettrait seul ? Réponse : parce que la dette est logée dans un véhicule ad hoc, remboursée par les flux du projet, sans engager l''intégralité du patrimoine ou du bilan global des sponsors.

## 55:00 – 70:00 · Partie 4 : les marchés financiers régionaux africains

Troisième thème de cette séance : le rôle des marchés financiers régionaux africains dans le financement des entreprises et des États. Au-delà du crédit bancaire et de la microfinance, certaines zones monétaires d''Afrique de l''Ouest et d''Afrique centrale disposent de marchés boursiers et obligataires organisés, qui permettent de lever des capitaux directement auprès d''investisseurs.

Sur le marché des actions, une entreprise cotée peut lever des fonds propres sans recourir à l''endettement, mais la profondeur de ces marchés, en nombre d''entreprises cotées et en volumes échangés, reste généralement limitée par rapport aux grandes places financières internationales. Sur le marché obligataire régional, les États et certaines grandes entreprises émettent des titres de dette pour financer des projets d''infrastructure ou des besoins budgétaires, souscrits par des investisseurs institutionnels régionaux, banques, assurances, caisses de retraite.

Pour une entreprise comme les sponsors de « Soleil du Sahel », le marché financier régional pourrait, à terme, offrir une source de financement complémentaire au financement bancaire et au financement de projet, par exemple via une émission obligataire adossée aux revenus futurs de plusieurs centrales similaires, à condition d''atteindre une taille et une transparence financière suffisantes.

Visuel : schéma des trois sources de financement, crédit bancaire, financement de projet, marché financier régional, avec leurs caractéristiques respectives de coût, de risque et d''accessibilité.

Point de méthode important : pour toute donnée précise sur un marché financier régional particulier, indices, capitalisation, nombre de sociétés cotées, il faut toujours se référer aux publications officielles de l''autorité de régulation ou de la bourse concernée, et jamais à des chiffres mémorisés qui évoluent rapidement et peuvent être obsolètes.

## 70:00 – 80:00 · Cas pratique approfondi : construire un plan de financement combiné

Imaginons un projet plus modeste que « Soleil du Sahel » : l''électrification d''un village par mini-réseau solaire, pour un coût total de 400 millions de FCFA. Le porteur de projet envisage trois sources : une dette de financement de projet auprès d''une banque de développement pour 60 % du coût, soit 240 millions, des fonds propres des sponsors pour 25 %, soit 100 millions, et une subvention ou garantie partielle appuyée par de la microfinance pour faciliter les raccordements des ménages pour les 15 % restants, soit 60 millions.

Ce type de montage hybride, combinant financement de projet classique et dispositifs de microfinance pour les utilisateurs finaux, est aujourd''hui une pratique courante pour les projets d''accès à l''énergie en zone rurale africaine. Le DSCR du projet se calculerait de la même façon que pour « Soleil du Sahel », en rapportant les flux de trésorerie disponibles du mini-réseau au service de la dette de financement de projet uniquement, les 60 millions liés aux dispositifs de microfinance des ménages n''entrant pas dans ce calcul puisqu''ils concernent une dette distincte, portée par les utilisateurs finaux et non par le véhicule de projet lui-même.

## 80:00 – 85:00 · Synthèse générale

Pour résumer cette séance : le financement de projet isole le risque d''une infrastructure dans un véhicule dédié, remboursé par ses propres flux, mesuré par le DSCR dont le minimum sur la durée est l''indicateur le plus surveillé par les prêteurs. La microfinance complète ce paysage pour les acteurs exclus du financement classique, mesurée par le taux de remboursement et le PAR30. Les marchés financiers régionaux africains, encore de profondeur limitée, offrent une troisième voie de financement en développement, à ne jamais confondre avec les grandes places financières internationales en termes de liquidité.

## 85:00 – 90:00 · Évaluation finale

1. Comment calcule-t-on le DSCR d''un projet financé par financement de projet ? Réponse : flux de trésorerie disponible pour le service de la dette, CFADS, divisé par le service de la dette de la période, capital plus intérêts.
2. Pourquoi le DSCR minimum sur la durée du financement est-il l''indicateur le plus surveillé par les prêteurs ? Réponse : parce qu''il identifie l''année la plus fragile du montage, celle qui présente le risque de défaut le plus élevé, information qu''une moyenne confortable pourrait masquer.
3. Que mesure le PAR30 en microfinance ? Réponse : la proportion de l''encours total de crédit présentant au moins une échéance en retard de plus de 30 jours.
4. Pourquoi la profondeur des marchés financiers régionaux africains reste-t-elle généralement limitée ? Réponse : parce que le nombre d''entreprises cotées et les volumes échangés y sont en général plus restreints que sur les grandes places financières internationales, ce qui réduit la liquidité et la facilité de lever des capitaux importants.
5. Pourquoi le financement de projet permet-il à des sponsors de porter un projet au-delà de leur capacité de bilan habituelle ? Réponse : parce que la dette est logée dans un véhicule de projet distinct, remboursée par les flux propres du projet, sans engager l''intégralité du bilan ou du patrimoine des sponsors en cas de défaillance.', 'video', 90, false, 70
from public.courses c where c.slug = 'mas-fin-m2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Finance internationale et financement de projets');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Méthodologie du mémoire professionnel et soutenance', '## Fiche du cours vidéo

Durée : 1h30. Niveau : Master 2 Finance.
Objectifs : construire une problématique et une méthodologie de mémoire cohérentes, structurer un mémoire professionnel en finance, préparer une soutenance orale efficace.
Matériel : tableau ou diaporama, votre propre plan de mémoire si vous en avez déjà un.
Prérequis : avoir réfléchi à un thème ou domaine d''intérêt pour votre mémoire.

## 00:00 – 05:00 · Introduction et enjeux

Bonjour. Cette séance est consacrée à la méthodologie du mémoire professionnel et à sa soutenance, l''aboutissement de votre année de Master 2. Beaucoup d''étudiants excellents sur le plan technique perdent des points inutilement parce qu''ils n''ont pas structuré leur réflexion méthodologique ou n''ont pas préparé leur oral. Nous allons construire ensemble, étape par étape, un mémoire fictif sur le financement de projet pour illustrer chaque principe.

Visuel : diapositive de titre avec le plan de la séance.

## 05:00 – 20:00 · Partie 1 : formuler une problématique précise

Tout commence par la problématique, la question centrale à laquelle votre mémoire va répondre. C''est l''erreur numéro un des étudiants : choisir un sujet trop vaste. « La finance en Afrique », « les risques financiers des entreprises », ce sont des thèmes, pas des problématiques. Une problématique doit être une question précise, délimitée dans le temps, l''espace, et le périmètre d''entreprise ou de secteur étudié.

Prenons un exemple de transformation. Thème initial, trop vaste : « le financement des entreprises en Afrique ». Première délimitation : on choisit un secteur, l''énergie, et une zone géographique, le Sénégal. Deuxième délimitation : on choisit un outil de financement précis, le financement de projet. Troisième délimitation : on choisit un angle d''analyse, par exemple le risque de construction et d''exploitation. On obtient alors : « Dans quelle mesure le financement de projet permet-il de sécuriser le financement d''une infrastructure énergétique au Sénégal face au risque de construction et d''exploitation, à partir de l''étude d''un cas fictif de mini-centrale solaire ? »

Visuel : schéma en entonnoir montrant les trois délimitations successives, du thème vague à la problématique précise.

Remarquez que cette problématique répond à un enjeu réel : un décideur, un bailleur de fonds, une banque de développement, pourrait vouloir connaître la réponse à cette question pour décider d''un financement futur. C''est ce critère d''utilité pratique qui distingue un bon mémoire professionnel d''un exercice purement académique.

## 20:00 – 35:00 · Partie 2 : choisir une méthodologie cohérente

Une fois la problématique posée, il faut choisir comment vous allez y répondre. Quatre grandes familles de méthodologie s''offrent à vous en finance.

L''étude de cas unique approfondie convient quand vous voulez comprendre en détail un mécanisme dans un contexte précis, par exemple le montage financier complet d''un projet d''infrastructure, avec son plan de financement, son DSCR, ses garanties. L''étude comparative de plusieurs entreprises ou projets convient quand vous voulez identifier des facteurs communs ou des différences, par exemple comparer plusieurs montages de project finance dans des secteurs différents. Les entretiens avec des praticiens, banquiers, directeurs financiers, apportent une information qualitative précieuse, à condition de présenter une grille d''entretien claire. L''analyse de données financières publiques permet des analyses quantitatives, à condition de citer précisément vos sources et de ne jamais inventer un chiffre non vérifiable.

Pour notre exemple sur le financement de projet énergétique, l''étude de cas unique approfondie, éventuellement complétée par deux ou trois entretiens avec des professionnels du secteur, serait la méthodologie la plus cohérente avec la problématique posée, car elle permet d''entrer dans le détail du montage financier et des mécanismes de couverture du risque.

Visuel : tableau comparatif des quatre méthodologies avec leurs usages typiques et leurs limites.

Point essentiel pour la soutenance : chaque choix méthodologique doit être justifié dans le mémoire, pas seulement décrit. Expliquez pourquoi cette méthode, et pas une autre, était la plus pertinente pour répondre à votre problématique précise.

## 35:00 – 50:00 · Partie 3 : structurer le mémoire

La structure attendue d''un mémoire professionnel en finance suit généralement six grandes parties. L''introduction pose le contexte, la problématique et annonce le plan. La revue de littérature ou cadre théorique présente les concepts et travaux mobilisés, sans invention de sources. La méthodologie justifie la démarche suivie. Les résultats ou l''analyse du cas présentent les données et calculs de façon factuelle, avec toutes les hypothèses explicitées. La discussion interprète ces résultats, les met en perspective avec la littérature, et reconnaît les limites du travail. La conclusion répond explicitement à la problématique posée en introduction.

Pour notre mémoire fictif, la partie résultats présenterait le montage de la mini-centrale solaire, son plan de financement, le calcul du DSCR année par année, et une analyse de sensibilité en cas de dégradation du CFADS. La partie discussion mettrait ces résultats en perspective avec la littérature sur le financement de projet énergétique en Afrique, et reconnaîtrait les limites : un seul cas étudié, des hypothèses de flux nécessairement incertaines sur une infrastructure qui n''existe pas encore réellement si le mémoire est prospectif.

Visuel : plan détaillé du mémoire fictif projeté au tableau, avec le nombre de pages indicatif pour chaque partie.

N''oubliez jamais la bibliographie : toutes les sources citées doivent être réelles, vérifiables et correctement référencées. Le plagiat, y compris la paraphrase non attribuée d''un auteur, est une faute grave, sanctionnée lourdement par les établissements et par les jurys.

## 50:00 – 55:00 · Pause et quiz interactif

Trois questions de vérification.

- Question 1 : pourquoi une problématique trop vaste est-elle un problème méthodologique ? Réponse : parce qu''elle empêche de collecter des données suffisamment précises et de proposer une méthodologie rigoureuse, ce qui rend le travail descriptif et difficile à défendre devant un jury.
- Question 2 : citez deux des quatre grandes familles de méthodologie présentées. Réponse possible : étude de cas unique approfondie, et étude comparative de plusieurs entreprises ou projets (ou entretiens avec des praticiens, ou analyse de données financières publiques).
- Question 3 : qu''est-ce que la paraphrase non attribuée et pourquoi est-elle une forme de plagiat ? Réponse : reformuler les idées d''un auteur avec d''autres mots sans les attribuer explicitement par une citation, ce qui fait croire au lecteur que ce raisonnement est originel au candidat alors qu''il provient d''une source tierce.

## 55:00 – 70:00 · Partie 4 : préparer la présentation orale de soutenance

Passons maintenant à la soutenance elle-même. Elle dure généralement entre vingt et quarante-cinq minutes selon les établissements, avec une présentation orale de dix à vingt minutes suivie de questions du jury. Votre présentation ne doit pas répéter l''intégralité du mémoire : le jury l''a déjà lu. Elle doit mettre en valeur la problématique, la méthodologie, les résultats clés et la conclusion, en dix à quinze diapositives sobres.

Structurez vos diapositives autour de graphiques et de tableaux clés plutôt que de longs paragraphes : pour notre mémoire fictif, une diapositive montrant le graphique du DSCR année par année avec le seuil contractuel minimum est beaucoup plus efficace qu''un paragraphe décrivant les mêmes chiffres. Entraînez-vous à voix haute, chronométré, devant un public même informel : la fluidité orale et la gestion du temps comptent autant que le contenu dans la note finale.

Visuel : exemple de diapositive de synthèse bien construite, avec titre clair, un graphique, et trois points clés en liste à puces.

## 70:00 – 80:00 · Cas pratique approfondi : anticiper les questions du jury

Un jury pose presque toujours trois types de questions. D''abord sur la méthodologie : pourquoi ce choix, et pas un autre ? Pour notre cas, une question possible serait : « Pourquoi avez-vous étudié un seul cas de mini-centrale solaire plutôt que de comparer plusieurs projets d''infrastructures énergétiques ? » Réponse attendue : l''étude de cas unique permet d''entrer dans le détail du montage financier et du calcul du DSCR, ce qu''une comparaison superficielle de plusieurs projets n''aurait pas permis avec la même profondeur, au prix, reconnu comme limite, d''une généralisation plus incertaine des conclusions.

Ensuite sur les limites : « Comment avez-vous validé la fiabilité de vos hypothèses de CFADS ? » Réponse attendue : reconnaître que, dans un cas fictif ou prospectif, ces hypothèses reposent sur des données de projets comparables et des taux marqués comme fictifs pour l''exercice, et qu''une étude réelle nécessiterait des données vérifiées auprès du porteur de projet et des études techniques d''ingénierie.

Enfin sur la portée pratique : « Quelles conséquences concrètes pour un décideur ou un bailleur de fonds ? » Réponse attendue : relier la conclusion du mémoire à une recommandation opérationnelle, par exemple sur le niveau de DSCR minimum à exiger contractuellement, ou sur l''intérêt de combiner financement de projet et dispositifs de microfinance pour les utilisateurs finaux.

## 80:00 – 85:00 · Synthèse générale

Pour résumer cette séance : une problématique précise et délimitée est la base de tout mémoire réussi. La méthodologie doit être choisie et justifiée en cohérence avec cette problématique, pas par facilité. La structure en six parties, de l''introduction à la conclusion, avec une bibliographie rigoureuse, est attendue par tous les jurys de Master 2. La soutenance orale se prépare comme un exercice à part entière, en anticipant les questions sur la méthodologie, les limites et la portée pratique.

## 85:00 – 90:00 · Évaluation finale

1. Quelles sont les trois dimensions à délimiter pour transformer un thème vague en problématique précise ? Réponse : le temps, l''espace géographique, et le périmètre d''entreprise ou de secteur étudié (ainsi que l''angle d''analyse précis retenu).
2. Pourquoi faut-il justifier son choix méthodologique dans le mémoire, et pas seulement le décrire ? Réponse : parce qu''un jury attend de comprendre pourquoi cette démarche était la plus pertinente pour répondre à la problématique, et quelles limites elle comporte par rapport à d''autres approches possibles.
3. Citez les six grandes parties attendues dans la structure d''un mémoire professionnel. Réponse : introduction, revue de littérature ou cadre théorique, méthodologie, résultats ou analyse du cas, discussion, conclusion.
4. Pourquoi la paraphrase non attribuée est-elle considérée comme une forme de plagiat ? Réponse : parce qu''elle fait croire au lecteur que le raisonnement est originel au candidat, alors qu''il provient d''une source tierce non citée explicitement.
5. Quels sont les trois types de questions qu''un jury pose presque toujours en soutenance ? Réponse : des questions sur la méthodologie et ses choix, des questions sur les limites du travail, et des questions sur la portée pratique des conclusions pour un décideur réel.', 'video', 90, false, 80
from public.courses c where c.slug = 'mas-fin-m2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Méthodologie du mémoire professionnel et soutenance');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Atelier méthodologie - simulation de soutenance et cas transversal', '## Fiche du cours vidéo

Durée : 1h30. Niveau : Master 2 Finance.
Objectifs : s''entraîner en conditions réelles à la soutenance d''un mémoire professionnel, à travers un cas transversal mobilisant la gestion des risques et la finance internationale.
Matériel : tableau ou diaporama, votre propre plan de mémoire si possible.
Prérequis : les trois leçons et vidéos précédentes de ce cours.

## 00:00 – 05:00 · Introduction et enjeux

Bonjour. Cette dernière séance vidéo est un atelier pratique : nous allons simuler une soutenance complète sur un mémoire fictif qui combine gestion des risques financiers et finance internationale, afin que vous repartiez avec une méthode concrète applicable à votre propre mémoire, quel que soit son sujet. Nous suivrons le dossier « La couverture du risque de change dans le financement international d''un projet énergétique sénégalais : étude de cas fictive ».

Visuel : diapositive de titre avec le sujet de mémoire simulé.

## 05:00 – 20:00 · Partie 1 : présenter la problématique et la méthodologie en cinq minutes

Premier exercice de l''atelier : présenter sa problématique et sa méthodologie en cinq minutes maximum, un format resserré qui force à aller à l''essentiel. Voici un exemple de présentation orale type.

« Mon mémoire porte sur le financement international d''un projet d''infrastructure énergétique au Sénégal, à travers le cas fictif de la centrale solaire Soleil du Sahel, financée en partie par une dette libellée en devise étrangère. La problématique est la suivante : dans quelle mesure une couverture par swap de taux permet-elle de sécuriser le service de la dette d''un tel projet face à la double exposition au risque de taux et au risque de change ? J''ai choisi une étude de cas unique approfondie, complétée par deux entretiens avec des professionnels du financement de projet, car cette méthodologie permet d''entrer dans le détail du montage financier et des mécanismes de couverture réellement envisageables, au prix d''une généralisation plus limitée qu''une étude comparative de plusieurs projets. »

Visuel : chronomètre affiché à l''écran pendant la lecture de cet exemple, pour matérialiser la contrainte de temps.

Remarquez la structure : contexte en une phrase, problématique précise en une phrase, méthodologie justifiée en une à deux phrases, avec la limite reconnue immédiatement. C''est exactement ce niveau de densité que votre introduction orale de soutenance doit atteindre.

## 20:00 – 35:00 · Partie 2 : défendre un résultat chiffré devant le jury

Deuxième exercice : défendre un résultat chiffré. Imaginons que le mémoire présente le calcul suivant. Le projet « Soleil du Sahel » porte une dette senior de 12 600 millions de FCFA à taux variable. Pour se couvrir, les sponsors envisagent un swap de taux fixe à 7,5 % contre le taux variable actuel, estimé fictivement à 6,8 %, 7,1 %, 7,6 % et 8,0 % sur quatre périodes futures. Calculons les flux nets pour le projet s''il paie le taux fixe du swap : flux fixe chaque période, 12 600 fois 7,5 %, soit 945 millions. Flux variables reçus : 856,8 ; 894,6 ; 957,6 ; 1 008 millions. Flux nets : période 1, moins 88,2 millions ; période 2, moins 50,4 millions ; période 3, plus 12,6 millions ; période 4, plus 63 millions.

Un membre du jury pourrait demander : « Pourquoi recommander ce swap si les deux premières périodes sont défavorables au projet ? » Voici la réponse attendue dans une soutenance réussie : le swap n''est pas souscrit pour maximiser le résultat à court terme, mais pour réduire l''incertitude sur le service de la dette sur toute la durée du financement ; les flux négatifs des deux premières périodes sont le coût de cette certitude, comparable à une prime d''assurance, et le mémoire devrait démontrer, par une analyse de scénarios, que ce coût reste inférieur au risque d''un dérapage du DSCR en cas de forte hausse des taux non couverte.

Visuel : tableau des quatre flux nets, avec le commentaire du jury affiché en incrustation.

## 35:00 – 50:00 · Partie 3 : répondre à une question sur les limites de l''étude

Troisième exercice : répondre à une question sur les limites, souvent la plus redoutée par les étudiants. Question type : « Vos hypothèses de taux variable futur reposent sur quelles données, et que se passerait-il si la réalité s''en écartait fortement ? »

Mauvaise réponse, à éviter absolument : rester vague ou minimiser la question, en affirmant que les hypothèses sont fiables sans le démontrer. Bonne réponse, à construire systématiquement en trois temps : premièrement, reconnaître honnêtement l''origine et la nature des hypothèses, par exemple des scénarios de taux fictifs construits pour l''exercice, ou dans un mémoire réel, des prévisions de marché à une date donnée nécessairement incertaines à plusieurs années. Deuxièmement, montrer que vous avez anticipé cette limite en présentant, si possible, une analyse de sensibilité dans le mémoire lui-même, par exemple en recalculant les flux nets du swap avec des taux variables plus élevés de un point sur toute la période. Troisièmement, indiquer ce qu''une étude complémentaire pourrait apporter, par exemple une analyse de plusieurs scénarios macroéconomiques réalisée par des économistes spécialisés.

Visuel : les trois temps de la réponse affichés comme une checklist, à mémoriser pour toute question de limite en soutenance.

## 50:00 – 55:00 · Pause et quiz interactif

Trois questions de vérification avant la suite de l''atelier.

- Question 1 : dans l''exemple du swap, pourquoi les deux premières périodes sont-elles défavorables au projet ? Réponse : parce que le taux fixe payé, 7,5 %, est supérieur aux taux variables reçus de 6,8 % et 7,1 % sur ces deux périodes, créant un flux net négatif pour le payeur de taux fixe.
- Question 2 : quelle est la structure en trois temps pour répondre à une question de jury sur les limites d''une étude ? Réponse : reconnaître honnêtement l''origine des hypothèses, montrer que la limite a été anticipée par exemple via une analyse de sensibilité, indiquer ce qu''une étude complémentaire pourrait apporter.
- Question 3 : pourquoi un swap peut-il rester recommandé même s''il génère des flux négatifs sur certaines périodes ? Réponse : parce qu''il réduit l''incertitude globale sur le service de la dette, et ce coût ponctuel doit être comparé au risque évité d''un dérapage du DSCR en cas de forte hausse des taux non couverte.

## 55:00 – 70:00 · Partie 4 : simulation complète chronométrée

Passons à la simulation complète. Je vais jouer le rôle du candidat pendant deux minutes, puis vous jouerez le rôle du jury en formulant mentalement vos propres questions, avant que je ne reprenne pour donner un exemple de bonnes réponses.

« Pour conclure, mon étude montre que la couverture par swap de taux permet de stabiliser le DSCR du projet Soleil du Sahel dans une fourchette resserrée, même en cas de hausse des taux de marché, au prix d''un coût certain sur les premières années si les taux restent bas. La limite principale de mon travail est le caractère fictif des scénarios de taux utilisés, qui devrait être remplacé, dans une mise en œuvre réelle, par des prévisions de marché validées par la banque arrangeuse du financement. Je recommande néanmoins, sur la base de cette analyse, que les sponsors intègrent une clause de couverture obligatoire dès la signature du contrat de financement, plutôt que d''attendre une dégradation déjà amorcée des taux. »

Visuel : minuteur affiché, puis liste de questions possibles du jury pour la suite de l''entraînement (à utiliser avec un camarade après la vidéo) : pourquoi un swap et pas une option de couverture, quel serait le coût d''une option de couverture équivalente, cette recommandation s''applique-t-elle à tous les projets de la même taille.

## 70:00 – 80:00 · Entraînement : variante chiffrée

Variante pour vous entraîner seul après la séance : si le taux fixe négocié du swap passe de 7,5 % à 7,2 %, recalculez les quatre flux nets pour le projet, toutes choses égales par ailleurs sur les taux variables reçus. Vous devez retrouver un flux fixe de 907,2 millions par période, et des flux nets de moins 50,4 ; moins 12,6 ; plus 50,4 ; plus 100,8 millions sur les quatre périodes. Cet exercice illustre qu''un taux fixe négocié plus bas rend le swap favorable plus rapidement, dès la troisième période au lieu de la troisième période dans l''exemple initial à 7,5 %, ce qui montre l''importance de la négociation du taux fixe dans la qualité finale de la couverture.

## 80:00 – 85:00 · Synthèse générale du cours

Ce cours de Master 2 vous a donné les outils pour mesurer et couvrir les risques financiers avancés, pour structurer un financement international ou de projet, et pour construire et défendre un mémoire professionnel jusqu''à sa soutenance. La compétence commune à ces trois blocs est la même que celle recherchée par tout recruteur ou tout jury : savoir reconnaître l''incertitude, la mesurer avec les bons outils, proposer une réponse argumentée, et en assumer les limites avec honnêteté plutôt que de les dissimuler.

## 85:00 – 90:00 · Évaluation finale

1. Dans la simulation de soutenance, quelle est la bonne structure pour répondre à une question sur les limites d''une étude ? Réponse : reconnaître l''origine des hypothèses, montrer qu''une analyse de sensibilité a anticipé la limite, indiquer ce qu''une étude complémentaire pourrait apporter.
2. Pourquoi un swap de couverture peut-il rester recommandé malgré des flux négatifs sur certaines périodes ? Réponse : parce qu''il réduit l''incertitude globale sur le service de la dette du projet, ce coût ponctuel étant comparé au risque plus grave d''un dérapage du DSCR en cas de forte hausse des taux non couverte.
3. Dans l''exercice chiffré, à partir de quelle période le swap devient-il favorable au projet quand le taux fixe est de 7,5 % ? Réponse : à partir de la troisième période, lorsque le taux variable reçu dépasse le taux fixe payé.
4. Quelle est la durée typique d''une soutenance de mémoire professionnel de Master 2 ? Réponse : généralement entre vingt et quarante-cinq minutes selon les établissements, dont une présentation orale de dix à vingt minutes suivie de questions du jury.
5. Quelle est la compétence commune recherchée par un jury à travers les questions de méthodologie, de limites et de portée pratique ? Réponse : la capacité à reconnaître l''incertitude du travail réalisé, à la mesurer avec les bons outils, et à en assumer honnêtement les limites plutôt qu''à les dissimuler, tout en proposant une conclusion opérationnelle utile.', 'video', 90, false, 90
from public.courses c where c.slug = 'mas-fin-m2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Atelier méthodologie - simulation de soutenance et cas transversal');

-- Cours : Économie Master 1 : réussir ses examens
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'mas-eco-m1', (select id from public.levels where name = 'Master 1'), null, 'Économie', 'Économie Master 1 : réussir ses examens', 'Préparation aux examens de Master 1 en Économie : économétrie appliquée, économie industrielle et organisation des marchés, politiques économiques en macroéconomie ouverte. Pour étudiants ayant validé une Licence en Économie (micro/macro, maths, statistiques, économie du développement, monétaire et internationale, publique). Fiches avancées, cas d''entreprise sénégalais/africains fictifs, exercices corrigés, sujet type d''examen et quatre cours vidéo de 1h30.', true, 761
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Réussir ses examens de Master 1 en Économie', 'Objectifs de la leçon

Cette première leçon pose le cadre de votre année de Master 1 en Économie. Elle explique ce qui change par rapport à la Licence, présente les trois matières avancées du semestre, et propose une méthode de travail et un plan de révision sur six semaines. À la fin de cette leçon, vous saurez organiser votre préparation aux examens partiels et, le cas échéant, à votre premier travail de recherche encadré (mémoire ou dossier de recherche).

Ce qui change entre la Licence et le Master 1

En Licence, vous avez appris les outils de base : microéconomie et macroéconomie 1 et 2, mathématiques pour économistes, une introduction aux statistiques et à l''économétrie, l''économie du développement, l''économie monétaire et internationale, l''économie publique. Le Master 1 ne répète pas ces bases : il les mobilise comme des prérequis acquis et vous demande de les combiner pour analyser des situations complexes, souvent avec des données chiffrées à traiter vous-même.

Trois ruptures caractérisent le passage en Master 1 :
- Vous ne vous contentez plus d''appliquer une formule : vous devez choisir la méthode adaptée à un problème, justifier ce choix, et discuter ses limites (validité des hypothèses, robustesse des résultats).
- Les exercices prennent la forme de cas d''entreprise ou de politique économique complets, avec plusieurs variables en jeu, parfois des données partielles ou bruitées, comme dans la réalité professionnelle.
- L''évaluation porte aussi sur la capacité à communiquer un résultat économique à un décideur (note de synthèse, recommandation argumentée), pas seulement à calculer un résultat.

Les trois matières de ce semestre

1. Économétrie appliquée. Vous allez approfondir la régression linéaire multiple : interprétation économique des coefficients, tests d''hypothèses sur un ou plusieurs paramètres, diagnostic de la qualité d''un modèle (R² ajusté, significativité globale avec le test F), et une sensibilisation aux problèmes qui biaisent les estimations (variable omise, multicolinéarité, hétéroscédasticité). L''objectif n''est pas de refaire des calculs à la main sur des données réelles complexes, mais de savoir lire, interpréter et critiquer une sortie de régression, et de construire un modèle simple vous-même sur un jeu de données réduit.

2. Économie industrielle et organisation des marchés. Cette matière approfondit la concurrence imparfaite déjà vue en Licence 2 (monopole, oligopole simple) vers des structures de marché plus réalistes : oligopole avec différenciation de produit, concurrence par les quantités (Cournot) et par les prix (Bertrand), collusion et cartels, pratiques anticoncurrentielles, et le rôle de la régulation économique (autorités de la concurrence, régulation sectorielle des télécommunications, de l''énergie ou des transports en Afrique de l''Ouest).

3. Politiques économiques et macroéconomie ouverte avancée. Vous retravaillez les politiques budgétaire et monétaire dans un cadre d''économie ouverte (taux de change, mobilité des capitaux, contraintes d''une union monétaire comme la zone UEMOA), avec une attention particulière à l''arbitrage entre croissance, stabilité des prix et soutenabilité de la dette publique.

Méthode de travail en Master 1

La méthode de travail doit évoluer vers une démarche de type recherche appliquée :
- Lecture active d''un cas ou d''un article avant le cours : identifiez le problème économique posé, les données disponibles, la question à laquelle on cherche une réponse.
- Formalisation : traduisez le problème en équations ou en modèle simple avant de calculer quoi que ce soit.
- Calcul rigoureux, avec vérification (ordre de grandeur, signe attendu des coefficients, cohérence avec la théorie).
- Discussion critique : un résultat chiffré n''a de valeur que s''il est interprété avec ses limites (échantillon petit, hypothèses du modèle, causalité versus corrélation).
- Rédaction synthétique : vous devez être capable de résumer un résultat en cinq lignes pour un lecteur non spécialiste, compétence indispensable si vous rédigez un mémoire professionnel ou de recherche en fin de Master.

Le mémoire ou le dossier de recherche

Selon votre parcours, le Master 1 peut inclure un dossier de recherche encadré (parfois appelé « mémoire de M1 ») ou un stage avec rapport. Dans tous les cas, la méthode est la même : poser une question précise, mobiliser une revue de littérature courte (quelques références académiques ou institutionnelles sérieuses, jamais inventées), choisir une méthode adaptée aux données disponibles, présenter des résultats honnêtes même s''ils sont partiels, et conclure avec des limites clairement identifiées. Ne citez jamais un auteur, un chiffre officiel ou une étude que vous n''avez pas vérifiés : en cas de doute, formulez le constat en termes généraux plutôt que d''inventer une référence précise.

Plan de révision sur six semaines

Semaine 1 : consolidation des prérequis. Reprenez vos notes de Licence sur la régression simple, le monopole et duopole, et les mécanismes IS-LM / offre-demande globale en économie fermée. Ne commencez pas le Master 1 avec des lacunes sur ces bases.

Semaine 2 : économétrie appliquée, partie 1. Régression multiple, lecture des coefficients, écart-types, tests de Student sur un coefficient.

Semaine 3 : économétrie appliquée, partie 2. Test F global, R² ajusté, première sensibilisation aux biais (variable omise, multicolinéarité). Faites au moins un exercice complet avec un jeu de données simple, à la main ou avec un tableur.

Semaine 4 : économie industrielle. Cournot, Bertrand, différenciation de produit, à partir d''exemples sénégalais ou ouest-africains fictifs (télécommunications, distribution, agro-industrie).

Semaine 5 : politiques économiques et macroéconomie ouverte. Reprenez les mécanismes de change fixe en union monétaire, les canaux de transmission de la politique monétaire de la BCEAO en termes généraux, et les contraintes de soutenabilité de la dette.

Semaine 6 : révision croisée et sujets types. Refaites les sujets d''examen type de cette série de leçons, chronométrez-vous, et identifiez vos points faibles pour les trois derniers jours avant l''examen.

Points clés à retenir
- Le Master 1 mobilise les outils de Licence pour résoudre des problèmes complexes, pas pour les refaire à l''identique.
- L''économétrie appliquée demande de savoir interpréter et critiquer un modèle, pas seulement de connaître une formule.
- L''économie industrielle avancée porte sur les stratégies des firmes en oligopole et le rôle de la régulation.
- Les politiques économiques s''étudient désormais en économie ouverte, avec les contraintes de l''union monétaire.
- Un mémoire ou un dossier de recherche doit être rigoureux : jamais de référence ou de chiffre inventé.

## Exercices pratiques

1. Expliquez en cinq lignes la différence entre corrélation et causalité, avec un exemple économique sénégalais fictif.
2. Citez deux structures de marché étudiées en Licence et deux structures nouvelles étudiées en Master 1 en économie industrielle.
3. Pourquoi un modèle de régression avec un R² très élevé n''est-il pas forcément un « bon » modèle du point de vue économique ?
4. Dans une union monétaire comme l''UEMOA, pourquoi la politique monétaire nationale indépendante n''est-elle pas possible pour chaque État membre ?
5. Construisez un planning de révision personnel sur six semaines en adaptant les priorités ci-dessus à votre propre emploi du temps.

## Corrigé

1. La corrélation signale que deux variables évoluent ensemble statistiquement ; la causalité signifie que l''une provoque l''autre. Exemple fictif : dans une région sénégalaise, le nombre d''agences bancaires et le volume des exportations locales peuvent être corrélés sans que l''un cause l''autre : tous deux peuvent dépendre d''une troisième variable, comme le dynamisme économique général de la région.
2. Licence : monopole simple, duopole simple (type Cournot basique). Master 1 : oligopole avec différenciation de produit, concurrence à la Bertrand, collusion et cartels, régulation sectorielle.
3. Un R² élevé peut provenir d''une corrélation fortuite, d''un échantillon trop petit, ou de variables qui bougent ensemble sans lien économique logique (par exemple deux séries qui croissent toutes deux avec le temps). Il faut aussi vérifier la significativité des coefficients, leur signe (cohérent avec la théorie économique) et la robustesse du modèle.
4. Parce que la politique monétaire (taux directeur, masse monétaire) est décidée au niveau de la banque centrale commune (BCEAO) pour l''ensemble de la zone ; un État membre ne peut donc pas ajuster seul son taux d''intérêt ou dévaluer sa propre monnaie pour répondre à un choc spécifique à son économie.
5. Réponse libre : l''essentiel est de répartir les six semaines entre consolidation des prérequis, les trois matières, puis la révision croisée, avec des points de contrôle (auto-évaluations) chaque semaine.', 'texte', 45, true, 10
from public.courses c where c.slug = 'mas-eco-m1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Réussir ses examens de Master 1 en Économie');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Économétrie appliquée : l''essentiel pour l''examen', 'Objectifs de la leçon

Cette leçon approfondit l''économétrie appliquée : estimer et interpréter une régression multiple, tester des hypothèses sur les coefficients, évaluer la qualité globale du modèle, et repérer les problèmes qui biaisent une estimation. Tous les calculs ont été vérifiés avec un logiciel de calcul scientifique (Python/NumPy) ; les données sont fictives.

Rappel : le modèle de régression multiple

Un modèle de régression linéaire multiple s''écrit : Y = β0 + β1·X1 + β2·X2 + ... + βk·Xk + ε, où Y est la variable à expliquer, X1 à Xk les variables explicatives, β0 à βk les coefficients à estimer, et ε le terme d''erreur. La méthode des moindres carrés ordinaires (MCO) choisit les coefficients qui minimisent la somme des carrés des résidus (écarts entre valeurs observées et valeurs prédites).

Étude de cas : les exportations d''une filière agro-industrielle fictive

Un observatoire régional fictif étudie les exportations mensuelles d''une filière agroalimentaire dans dix zones de production comparables (données fictives) : investissement productif cumulé (X1, milliards FCFA), taux d''ouverture commerciale (X2, %), exportations (Y, milliards FCFA). Les dix observations vont de X1 = 5 à 14, X2 = 2 à 6, Y = 20 à 53, en progression régulière.

En estimant Y = β0 + β1·X1 + β2·X2 + ε par MCO sur ces dix observations, on obtient (calcul vérifié) : β0 ≈ 2,00 ; β1 ≈ 3,60 ; β2 ≈ 0,05. Le modèle estimé s''écrit : Exportations estimées = 2,00 + 3,60 × Investissement + 0,05 × Taux d''ouverture.

Interprétation économique des coefficients
- β0 = 2,00 : constante, peu de sens économique direct, sert à ajuster l''ordonnée du modèle.
- β1 = 3,60 : toutes choses égales par ailleurs, une hausse de 1 milliard de FCFA de l''investissement est associée à une hausse de 3,60 milliards de FCFA des exportations. C''est l''effet marginal de l''investissement.
- β2 = 0,05 : toutes choses égales par ailleurs, une hausse de 1 point de taux d''ouverture est associée à seulement 0,05 milliard de FCFA d''exportations supplémentaires dans cet échantillon, un effet très faible.

Les écarts-types estimés sont : SE(β1) ≈ 0,207 ; SE(β2) ≈ 0,420 (calcul vérifié à partir de la matrice de variance-covariance des estimateurs).

Le test de Student sur un coefficient

Pour tester si βj est significativement différent de zéro : t = βj / SE(βj). Avec n = 10 observations et k = 2 variables, les degrés de liberté du résidu sont n - k - 1 = 7.

Pour β1 : t1 = 3,60 / 0,207 ≈ 17,39, bien au-delà de la valeur critique usuelle d''environ 2,36 (5 %, 7 degrés de liberté, à vérifier dans une table officielle) : on rejette β1 = 0, l''investissement a un effet significatif.

Pour β2 : t2 = 0,05 / 0,420 ≈ 0,12, bien en dessous de la valeur critique : on ne peut pas rejeter β2 = 0. Cela ne signifie pas que l''ouverture commerciale n''a jamais d''effet économique, seulement que sur ces dix observations fictives précises, l''effet mesuré n''est pas distinguable de zéro.

La qualité globale du modèle : R², R² ajusté et test F

Le R² mesure la part de variance de Y expliquée par le modèle. Ici (calcul vérifié) : R² ≈ 0,999, soit 99,9 % de la variation expliquée. Le R² ajusté, qui pénalise l''ajout de variables, reste très élevé lui aussi. Le test F évalue la significativité globale ; ici F ≈ 5057, très supérieur à une valeur critique usuelle de quelques unités : le modèle est hautement significatif.

Attention : un R² aussi proche de 1 sur seulement dix observations fictives doit être interprété avec prudence. Sur des données économiques réelles, un R² aussi élevé est rare et doit alerter sur un possible problème (échantillon trop petit, relation trop mécanique entre les variables).

Les problèmes qui biaisent une estimation

1. La variable omise. Si une variable qui influence réellement Y est corrélée avec une variable du modèle mais absente de celui-ci, les coefficients peuvent être biaisés. Exemple fictif : la qualité des infrastructures routières, si elle influence à la fois l''investissement et les exportations sans être incluse, peut biaiser le coefficient de l''investissement.

2. La multicolinéarité. Deux variables explicatives très corrélées entre elles rendent difficile de séparer statistiquement leurs effets ; les écarts-types augmentent et les tests perdent en puissance.

3. L''hétéroscédasticité. Lorsque la variance des erreurs n''est pas constante, les écarts-types usuels des coefficients MCO ne sont plus fiables, même si les coefficients restent en général non biaisés. Des écarts-types robustes permettent de corriger ce problème.

Points clés à retenir
- Un coefficient s''interprète toujours « toutes choses égales par ailleurs ».
- Le test de Student compare t à une valeur critique de table ; au-delà, on rejette la nullité du coefficient.
- R² et R² ajusté mesurent le pouvoir explicatif global ; le test F teste la significativité jointe.
- Un R² très élevé sur un petit échantillon s''interprète avec prudence.
- Variable omise, multicolinéarité, hétéroscédasticité : les trois pièges classiques de l''économétrie appliquée.

## Exercices pratiques

1. À partir du modèle estimé, calculez la valeur prédite des exportations pour une zone fictive avec un investissement de 10 milliards FCFA et un taux d''ouverture de 4 %.
2. Expliquez pourquoi un coefficient non significatif (comme β2 ici) ne doit pas être automatiquement interprété comme « cette variable n''a aucune importance économique ».
3. Un collègue vous présente un modèle avec un R² de 0,98 sur 6 observations et 4 variables explicatives. Quelle remarque méthodologique devez-vous faire ?
4. Donnez un exemple fictif de variable omise plausible dans une étude sur les exportations d''une filière agricole ouest-africaine.
5. Cas pratique : pour 5 entreprises fictives (effectif salarié X en dizaines ; chiffre d''affaires Y en millions FCFA) : (2,30), (3,45), (4,55), (5,70), (6,85). Calculez à la main la pente et la constante de la régression simple Y sur X, et interprétez.
6. Pourquoi la multicolinéarité est-elle un problème surtout pour l''interprétation des coefficients individuels, et moins pour la prévision globale ?
7. Proposez une méthode (sans calcul détaillé) pour détecter une hétéroscédasticité.

## Corrigé

1. Exportations prédites = 2,00 + 3,60×10 + 0,05×4 = 38,20 milliards de FCFA.
2. Un coefficient non significatif signifie que, sur cet échantillon, l''effet mesuré n''est pas distinguable de zéro ; cela peut venir d''un échantillon trop petit, d''une multicolinéarité, ou d''une relation réellement faible. Il ne faut jamais généraliser une non-significativité statistique à une absence totale de pertinence économique.
3. Risque de surapprentissage : avec 6 observations et 4 variables, il reste très peu de degrés de liberté (6-4-1=1), ce qui rend les résultats fragiles et peu généralisables, même avec un R² élevé.
4. Exemple fictif : la qualité du réseau routier reliant les zones de production aux ports. Elle influence à la fois l''investissement (accès aux marchés) et directement la capacité à exporter, sans être incluse au modèle.
5. Moyenne X=4, moyenne Y=57. Écarts X-4=(-2,-1,0,1,2), Y-57=(-27,-12,-2,13,28). Produits: somme=135. Carrés de (X-4): somme=10. Pente β1=135/10=13,5. Constante β0=57-13,5×4=3. Modèle: Y=3+13,5×X. Chaque dizaine de salariés supplémentaire est associée à 13,5 millions FCFA de chiffre d''affaires en plus.
6. La multicolinéarité empêche de distinguer la contribution propre de chaque variable corrélée, mais n''empêche pas le modèle de bien prédire Y globalement, tant que la combinaison des variables reste stable.
7. Représenter les résidus en fonction des valeurs prédites : si leur dispersion varie systématiquement avec le niveau de la variable, cela suggère une hétéroscédasticité. Des tests formels existent, à approfondir plus tard.', 'texte', 50, false, 20
from public.courses c where c.slug = 'mas-eco-m1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Économétrie appliquée : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Économie industrielle et organisation des marchés : l''essentiel pour l''examen', 'Objectifs de la leçon

Cette leçon approfondit l''économie industrielle : les structures de marché en concurrence imparfaite avancée (oligopole à la Cournot, à la Bertrand, différenciation de produit, collusion), et le rôle économique de la régulation. Les exemples s''appuient sur des cas d''entreprise fictifs inspirés de secteurs ouest-africains, sans référence à une entreprise réelle.

Rappel : du monopole à l''oligopole

En Licence, vous avez étudié le monopole et une introduction au duopole. En Master 1, l''analyse se concentre sur l''oligopole, structure où un petit nombre de firmes interagissent stratégiquement : la décision de chaque firme dépend de ce qu''elle anticipe que feront ses concurrentes. C''est le domaine de la théorie des jeux appliquée à l''économie industrielle.

Le modèle de Cournot (concurrence en quantités)

Dans le modèle de Cournot, les firmes choisissent simultanément les quantités qu''elles produisent, et le prix s''ajuste à l''offre totale.

Étude de cas fictive : deux opérateurs télécoms fictifs, « Teranga Télécom » et « Baobab Mobile », se partagent un marché régional fictif. La demande inverse est P = 100 - Q, Q = q1 + q2, coût marginal commun c = 10. La solution classique du duopole de Cournot symétrique avec demande linéaire P = a - Q donne qi* = (a - c)/3.

Calcul vérifié : qi* = (100-10)/3 = 30. Q* = 60, P* = 100-60 = 40. Profit de chaque firme : (P*-c)×qi* = (40-10)×30 = 900.

Comparaison : en monopole, qm* = (a-c)/2 = 45, prix 100-45 = 55, supérieur au prix de Cournot. En concurrence pure (prix = coût marginal), le prix serait de 10, inférieur. L''oligopole de Cournot se situe donc, comme attendu, entre le monopole et la concurrence pure.

Le modèle de Bertrand (concurrence en prix)

Dans le modèle de Bertrand, les firmes choisissent leur prix pour un produit homogène. Résultat classique : avec deux firmes seulement, produit homogène et coûts identiques, la concurrence en prix ramène le prix au coût marginal (P = c), comme en concurrence parfaite. C''est le « paradoxe de Bertrand » : très peu de concurrents suffisent à éliminer tout profit si le produit est homogène.

Dans l''exemple fictif, un produit strictement identique avec coût marginal 10 donnerait un prix d''équilibre de Bertrand de 10, bien inférieur au prix de Cournot (40). Ce résultat explique pourquoi les entreprises cherchent presque toujours à différencier leur produit plutôt qu''une concurrence frontale par les prix.

La différenciation de produit

Lorsque les produits ne sont pas parfaitement substituables (marque, qualité de service, réseau), chaque firme conserve un pouvoir de marché car une partie de sa clientèle reste fidèle malgré un prix légèrement supérieur. Exemple fictif : une meilleure couverture réseau en zone rurale permet de maintenir un prix plus élevé sans perdre immédiatement ses clients. La différenciation atténue la pression sur les prix, au bénéfice des marges, mais potentiellement au détriment du pouvoir d''achat si elle n''est pas encadrée.

La collusion et les cartels

La collusion se produit lorsque des firmes s''entendent, explicitement ou tacitement, pour limiter la concurrence afin d''augmenter leurs profits conjoints au détriment des consommateurs. Un cartel est une collusion explicite et organisée.

Calcul illustratif : en monopole conjoint, les deux firmes produiraient Q = 45 au prix de 55, profit joint (55-10)×45 = 2025, contre 900+900 = 1800 en Cournot. La collusion est donc plus profitable pour les firmes (2025 > 1800), mais elle réduit la quantité offerte et augmente le prix payé par les consommateurs.

Les cartels sont généralement instables sans mécanisme de surveillance, car chaque membre a individuellement intérêt à produire davantage que sa part convenue (incitation à « tricher »), objet d''étude de la théorie des jeux répétés.

Le rôle économique de la régulation

Face aux risques de pouvoir de marché excessif et de collusion, la régulation vise à préserver une concurrence suffisante et à encadrer les secteurs où la concurrence pure n''est pas naturellement possible (monopoles naturels). En Afrique de l''Ouest, des autorités nationales et régionales de la concurrence sanctionnent les pratiques anticoncurrentielles, et des régulateurs sectoriels (télécommunications, énergie, transports) encadrent les tarifs et l''accès aux infrastructures. Les règles précises diffèrent selon les pays et évoluent ; en cas de doute, il convient toujours de vérifier le texte officiel en vigueur plutôt que d''affirmer un taux ou un seuil non vérifié.

Points clés à retenir
- Cournot (concurrence en quantités) donne un prix entre celui du monopole et celui de la concurrence pure.
- Bertrand (concurrence en prix, produit homogène) peut ramener le prix au niveau du coût marginal même avec peu de concurrents : c''est le paradoxe de Bertrand.
- La différenciation de produit permet aux firmes de conserver un pouvoir de marché malgré la présence de concurrents.
- La collusion augmente le profit joint des firmes mais réduit le bien-être des consommateurs ; elle reste fragile sans mécanisme de surveillance.
- La régulation économique (autorités de la concurrence, régulateurs sectoriels) vise à limiter les effets négatifs du pouvoir de marché, notamment en présence de monopoles naturels.

## Exercices pratiques

1. Dans Cournot avec n firmes symétriques, qi* = (a-c)/(n+1). Calculez le prix d''équilibre pour a=100, c=10, n=3.
2. Expliquez en quoi le paradoxe de Bertrand est contre-intuitif.
3. Pourquoi une firme a-t-elle intérêt à différencier son produit plutôt que de concurrencer frontalement ses rivales sur les prix ?
4. Dans l''exemple du cartel fictif, calculez le profit individuel si les firmes se répartissent équitablement le profit joint de collusion, et comparez-le au profit de Cournot.
5. Pourquoi un monopole naturel justifie-t-il une régulation plutôt qu''une ouverture à la concurrence par les infrastructures ?
6. Cas pratique : un régulateur observe deux opérateurs fictifs à parts de marché stables à 50 % depuis cinq ans, prix très proches, hausses simultanées. Citez au moins trois indices pouvant justifier une enquête pour collusion tacite.
7. Pourquoi la théorie des jeux répétés explique-t-elle mieux la stabilité d''un cartel que la théorie des jeux à un coup ?

## Corrigé

1. qi* = (100-10)/4 = 22,5. Q* = 67,5. P* = 100-67,5 = 32,5. Plus il y a de firmes, plus le prix se rapproche du coût marginal (10), confirmant que Cournot converge vers la concurrence pure.
2. Le paradoxe de Bertrand montre qu''avec un produit homogène, deux concurrents suffisent déjà à ramener le prix au coût marginal : chaque firme a intérêt à baisser légèrement son prix pour capter toute la demande, jusqu''à ce qu''aucune marge ne soit plus possible.
3. La différenciation réduit la substituabilité parfaite : les clients ne changent plus de fournisseur pour un petit écart de prix, ce qui permet de conserver une marge, alors qu''en produit homogène la moindre différence de prix fait basculer toute la demande vers le moins cher.
4. Profit individuel en collusion = 2025/2 = 1012,5, contre 900 en Cournot. Chaque firme gagne davantage (1012,5>900), ce qui explique l''incitation à s''entendre, mais aussi l''incitation à « tricher » en produisant plus pour un gain immédiat supérieur, d''où la fragilité de l''accord.
5. Dupliquer l''infrastructure serait extrêmement coûteux et inefficace (coûts fixes énormes, fortes économies d''échelle) : un seul réseau régulé (tarifs encadrés, obligations d''accès) est plus efficace que plusieurs réseaux concurrents sous-utilisés.
6. Parts de marché anormalement stables sans gagnant ni perdant ; hausses de prix simultanées de montant proche malgré des coûts potentiellement différents ; absence de guerre des prix malgré seulement deux acteurs (attendue en Bertrand). Ces indices ne prouvent pas une entente mais peuvent justifier une enquête.
7. Dans un jeu à un coup, chaque firme a toujours intérêt à tricher, sans conséquence future. Dans un jeu répété, une triche aujourd''hui peut entraîner une rétorsion future : la menace crédible de punition peut rendre la collusion stable, tant que les gains futurs de coopération dépassent le gain immédiat de la triche.', 'texte', 50, false, 30
from public.courses c where c.slug = 'mas-eco-m1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Économie industrielle et organisation des marchés : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Politiques économiques et macroéconomie ouverte avancée : l''essentiel pour l''examen', 'Objectifs de la leçon

Cette leçon traite des politiques économiques en économie ouverte : les canaux de la politique budgétaire et monétaire lorsque l''économie commerce avec le reste du monde, les contraintes propres à une union monétaire comme l''UEMOA, et la soutenabilité de la dette publique.

De l''économie fermée à l''économie ouverte

En Licence, le modèle IS-LM a été étudié surtout en économie fermée. En Master 1, on introduit explicitement le compte extérieur : exportations, importations, taux de change, mobilité des capitaux. Le modèle de référence, souvent appelé IS-LM-BP (Mundell-Fleming), ajoute une courbe BP représentant l''équilibre de la balance des paiements.

Le trilemme de Mundell

Un résultat central de l''économie ouverte : un pays ne peut pas avoir simultanément (1) un taux de change fixe, (2) une parfaite mobilité des capitaux, et (3) une politique monétaire pleinement autonome. Il doit renoncer à l''un des trois.

Application à l''UEMOA (en termes généraux, sans taux précis) : les pays membres partagent une monnaie commune avec une parité fixe historique à l''euro, et une relative ouverture aux mouvements de capitaux. Conséquence directe du trilemme : chaque État membre renonce à une politique monétaire nationale autonome, décidée au niveau de la banque centrale commune. C''est le prix de la stabilité du taux de change offerte par l''union.

Politique budgétaire en économie ouverte avec change fixe

Avec un change fixe et une mobilité des capitaux élevée, la politique budgétaire devient l''instrument principal dont dispose un État membre pour agir sur son activité nationale, la politique monétaire ne lui appartenant plus en propre. Une relance budgétaire a, en théorie, un effet multiplicateur plus important dans ce cadre qu''en change flexible, car elle n''est pas « absorbée » par une appréciation automatique du taux de change pénalisant les exportations.

Cette dépendance renforcée à la politique budgétaire explique pourquoi la discipline budgétaire est sensible dans une union monétaire : un déficit mal maîtrisé dans un État membre peut peser sur la crédibilité de l''ensemble de la zone, même si chaque État reste en principe responsable de ses propres finances.

La soutenabilité de la dette publique

La dette publique est soutenable si l''État peut, durablement, honorer ses engagements sans ajustement brutal. Une approche simplifiée compare le taux de croissance (g) et le taux d''intérêt réel moyen de la dette (r).

Règle simplifiée (à utiliser avec prudence) : si g > r et que le solde primaire n''est pas trop négatif, le ratio dette/PIB tend à se stabiliser ou diminuer ; si r > g durablement, le ratio dette/PIB tend à augmenter mécaniquement, même sans nouveau déficit, par effet « boule de neige ».

Exemple numérique fictif (calcul vérifié) : ratio dette/PIB de 60 %, croissance réelle 5 %, taux d''intérêt réel 3 %, solde primaire nul. Formule : Δ(dette/PIB) ≈ (r-g)×(dette/PIB) - solde primaire/PIB. Calcul : (0,03-0,05)×0,60 - 0 = -0,012, soit une baisse d''environ 1,2 point, grâce à une croissance supérieure au taux d''intérêt.

Contre-exemple fictif : si la croissance chute à 1 % (r inchangé à 3 %) : (0,03-0,01)×0,60 = +0,012, soit une hausse d''environ 1,2 point. Ce basculement illustre que la croissance est une variable clé de la soutenabilité de la dette, au même titre que le déficit.

Attention : cette formule est une approximation pédagogique. Les seuils réellement utilisés par les institutions (critères de convergence UEMOA notamment) sont des valeurs officielles précises, à vérifier auprès des textes en vigueur ; aucun seuil officiel n''est affirmé ici.

Les canaux de la politique monétaire commune

Dans l''UEMOA, la politique monétaire commune agit en principe par plusieurs canaux généraux, sans taux précis non vérifié : le canal du taux d''intérêt (coût du crédit), le canal du crédit bancaire (disponibilité du financement), et le canal des anticipations (confiance dans la stabilité des prix et de la monnaie commune). La coordination entre politique monétaire commune et politiques budgétaires nationales est centrale dans la gouvernance économique régionale.

Points clés à retenir
- Le trilemme de Mundell explique pourquoi une union monétaire à change fixe implique de renoncer à une politique monétaire nationale autonome.
- En change fixe, la politique budgétaire devient l''instrument national principal de régulation de l''activité économique.
- La soutenabilité de la dette dépend de l''écart entre le taux de croissance et le taux d''intérêt réel, et du solde budgétaire primaire.
- Quand la croissance dépasse le taux d''intérêt réel, le ratio dette/PIB tend mécaniquement à diminuer, même sans excédent primaire.
- Aucun taux officiel, seuil réglementaire ou critère de convergence précis ne doit être affirmé sans vérification du texte officiel en vigueur.

## Exercices pratiques

1. Énoncez le trilemme de Mundell et expliquez ce qu''une union monétaire à change fixe doit sacrifier.
2. Pourquoi la politique budgétaire est-elle particulièrement importante pour un État membre d''une union monétaire par rapport à un pays à change flexible et politique monétaire autonome ?
3. Un pays fictif a un ratio dette/PIB de 50 %, une croissance réelle de 2 %, un taux d''intérêt réel de 4 %, un solde primaire de -1 % du PIB. Calculez la variation du ratio dette/PIB avec la formule du cours.
4. Expliquez, sans chiffre précis, pourquoi la discipline budgétaire d''un État membre peut affecter la crédibilité de toute une union monétaire.
5. Cas pratique : un gouvernement fictif envisage une relance budgétaire après un choc externe. Discutez, avec le trilemme et la soutenabilité de la dette, les avantages et risques de cette relance en union monétaire à change fixe.
6. Qu''est-ce que l''effet « boule de neige » de la dette, et dans quelles conditions (r vs g) se produit-il ?
7. Pourquoi faut-il être prudent avant d''affirmer un seuil officiel précis de dette/PIB dans un devoir ?

## Corrigé

1. Le trilemme énonce qu''un pays ne peut pas avoir simultanément change fixe, mobilité parfaite des capitaux et politique monétaire autonome. En acceptant un change fixe commun et une certaine ouverture financière, les États membres renoncent à fixer eux-mêmes leur politique monétaire, déléguée à la banque centrale commune.
2. Parce que la politique monétaire n''est plus un levier national : l''État ne peut pas seul baisser son taux ou dévaluer pour répondre à un choc spécifique. Il ne lui reste que la politique budgétaire comme instrument national de stabilisation, d''où son importance accrue.
3. Δ(dette/PIB) ≈ (0,04-0,02)×0,50-(-0,01) = 0,01+0,01 = 0,02, soit une hausse d''environ 2 points, résultant d''un taux d''intérêt supérieur à la croissance et d''un déficit primaire.
4. Si un État membre accumule une dette jugée non soutenable, les marchés peuvent réévaluer le risque perçu pour l''ensemble de la zone (contagion de la confiance), même si chaque État reste en théorie responsable de ses propres finances.
5. Avantages : la relance budgétaire reste l''instrument national disponible (conforme au trilemme) ; en change fixe, son effet n''est pas atténué par une appréciation automatique de la monnaie. Risques : si r > g, le ratio dette/PIB peut se dégrader durablement (boule de neige), pesant à terme sur la crédibilité du pays et de la zone ; une réponse équilibrée combine relance ciblée et trajectoire de dette soutenable à moyen terme.
6. Il se produit lorsque r est durablement supérieur à g : la charge d''intérêt croît plus vite que la capacité de l''économie à la rembourser, augmentant mécaniquement le ratio dette/PIB même sans nouveau déficit primaire.
7. Parce que ces seuils sont fixés par des textes officiels précis, révisables dans le temps ; il faut toujours renvoyer au texte en vigueur plutôt que d''inventer ou de se fier à un chiffre non vérifié.', 'texte', 50, false, 40
from public.courses c where c.slug = 'mas-eco-m1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Politiques économiques et macroéconomie ouverte avancée : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Sujet type d''examen de Master 1 Économie (entraînement, corrigé détaillé)', '## Fiche du sujet type

Ce sujet type d''examen de Master 1 en Économie couvre les trois matières avancées du semestre : économétrie appliquée, économie industrielle et organisation des marchés, et politiques économiques en économie ouverte. Il s''agit d''un sujet NON OFFICIEL construit pour l''entraînement, avec un barème indicatif sur 20 points. Durée indicative : 3 heures.

## Sujet

Partie 1 — Économétrie appliquée (7 points)

Une cellule d''analyse fictive étudie la relation entre le chiffre d''affaires mensuel (Y, en millions de FCFA) de dix commerces fictifs d''un même quartier et deux variables : la surface de vente (X1, en dizaines de m²) et le nombre d''employés (X2). L''estimation par MCO donne le modèle suivant (coefficients fournis, calculs déjà vérifiés par l''énoncé) :

Y_estimé = 5 + 4,2 × X1 + 1,8 × X2

avec les écarts-types suivants : SE(β1) = 0,6 et SE(β2) = 1,5, sur un échantillon de n = 10 observations avec k = 2 variables explicatives.

1.1. (2 points) Interprétez économiquement les coefficients β1 = 4,2 et β2 = 1,8.
1.2. (3 points) Calculez les statistiques de Student pour β1 et β2. En utilisant une valeur critique de table d''environ 2,36 (5 %, 7 degrés de liberté), concluez sur la significativité de chaque coefficient.
1.3. (2 points) Le R² du modèle est de 0,95. Que signifie cette valeur ? Citez un facteur de prudence à garder en tête avant de conclure trop vite à la qualité du modèle.

Partie 2 — Économie industrielle (7 points)

Deux brasseries fictives, « Lion d''Or » et « Teranga Brew », sont en situation de duopole de Cournot sur un marché régional fictif. La demande inverse est P = 120 - Q, avec Q = q1 + q2, et le coût marginal commun est c = 20.

2.1. (3 points) Calculez la quantité produite par chaque firme à l''équilibre de Cournot, le prix de marché, et le profit de chaque firme.
2.2. (2 points) Si les deux brasseries décidaient de s''entendre pour produire comme un monopole conjoint, calculez la quantité totale de monopole, le prix, et le profit joint. Comparez ce profit joint au profit joint obtenu en situation de Cournot.
2.3. (2 points) Expliquez pourquoi un tel accord, bien que plus profitable pour les deux firmes, reste fragile sans mécanisme de surveillance, et pourquoi une autorité de la concurrence s''y intéresserait.

Partie 3 — Politiques économiques en économie ouverte (6 points)

Un pays fictif, membre d''une union monétaire à change fixe, a un ratio dette publique/PIB de 55 % en début d''année, une croissance réelle anticipée de 4 %, un taux d''intérêt réel moyen de 2 % sur sa dette, et un solde primaire de +0,5 % du PIB (léger excédent primaire).

3.1. (2 points) Rappelez le trilemme de Mundell et expliquez ce que ce pays a dû accepter de sacrifier en adhérant à une union monétaire à change fixe.
3.2. (2 points) Calculez la variation approximative du ratio dette/PIB sur l''année, avec la formule simplifiée Δ(dette/PIB) ≈ (r - g) × (dette/PIB) - solde primaire/PIB.
3.3. (2 points) Le pays subit un choc externe qui fait chuter sa croissance réelle à 1 % sans changer le taux d''intérêt réel ni le solde primaire. Recalculez la variation du ratio dette/PIB et commentez l''évolution par rapport à la question précédente.

## Corrigé détaillé

1.1. β1 = 4,2 : toutes choses égales par ailleurs (nombre d''employés constant), chaque dizaine de m² supplémentaire de surface de vente est associée à une hausse moyenne de 4,2 millions de FCFA de chiffre d''affaires mensuel dans cet échantillon. β2 = 1,8 : toutes choses égales par ailleurs (surface constante), chaque employé supplémentaire est associé à une hausse moyenne de 1,8 million de FCFA de chiffre d''affaires mensuel.

1.2. t(β1) = 4,2 / 0,6 = 7,0. t(β2) = 1,8 / 1,5 = 1,2. Avec une valeur critique d''environ 2,36 : t(β1) = 7,0 > 2,36, donc β1 est statistiquement significatif, on rejette l''hypothèse β1 = 0. t(β2) = 1,2 < 2,36, donc β2 n''est pas statistiquement significatif à ce seuil sur cet échantillon : on ne peut pas rejeter l''hypothèse β2 = 0 avec confiance.

1.3. Un R² de 0,95 signifie que 95 % de la variation du chiffre d''affaires observé dans l''échantillon est expliquée par les deux variables du modèle (surface et nombre d''employés). Facteur de prudence : l''échantillon est petit (seulement 10 observations), ce qui rend le résultat statistiquement fragile et peu généralisable à d''autres commerces ou d''autres périodes ; un R² élevé ne garantit pas non plus une relation causale, seulement une forte association statistique dans cet échantillon précis.

2.1. Formule du duopole de Cournot symétrique : qi* = (a-c)/3 = (120-20)/3 = 100/3 ≈ 33,33. Q* = 66,67. P* = 120 - 66,67 = 53,33. Profit de chaque firme : (P*-c) × qi* = (53,33-20) × 33,33 ≈ 33,33 × 33,33 ≈ 1111,1 (unités fictives de profit, calcul vérifié : (100/3)² = 10000/9 ≈ 1111,11).

2.2. Quantité de monopole : qm* = (a-c)/2 = 100/2 = 50. Prix de monopole : Pm = 120 - 50 = 70. Profit joint de monopole : (70-20) × 50 = 50 × 50 = 2500. Profit joint de Cournot : 2 × 1111,11 ≈ 2222,2. On observe que 2500 > 2222,2 : la collusion en monopole conjoint est plus profitable pour les deux firmes réunies que la concurrence de Cournot.

2.3. L''accord est fragile car chaque firme a individuellement intérêt à produire davantage que sa part convenue pour capter un profit immédiat supérieur ; sans mécanisme crédible de surveillance et de sanction, l''accord tend à se rompre. Une autorité de la concurrence s''y intéresse parce qu''un tel accord, même tacite, réduit la quantité offerte et augmente le prix payé par les consommateurs, un préjudice économique pour le marché.

3.1. Le trilemme de Mundell énonce qu''un pays ne peut pas combiner simultanément taux de change fixe, mobilité parfaite des capitaux et politique monétaire nationale autonome. En adhérant à une union monétaire à change fixe avec une certaine ouverture financière, ce pays a dû accepter de renoncer à une politique monétaire nationale indépendante : les décisions de taux d''intérêt et de masse monétaire sont prises au niveau de la banque centrale commune, pas au niveau national.

3.2. Δ(dette/PIB) ≈ (0,02 - 0,04) × 0,55 - 0,005 = (-0,02) × 0,55 - 0,005 = -0,011 - 0,005 = -0,016, soit une baisse d''environ 1,6 point de pourcentage du ratio dette/PIB sur l''année, résultant à la fois d''une croissance supérieure au taux d''intérêt réel et d''un léger excédent primaire.

3.3. Avec une croissance tombée à 1 % : Δ(dette/PIB) ≈ (0,02-0,01)×0,55-0,005 = 0,0055-0,005 = 0,0005, variation quasi nulle, contre une baisse de 1,6 point initialement. Le choc de croissance fait basculer la trajectoire de la dette, malgré le maintien d''un excédent primaire.

## Exercices pratiques

1. Dans la partie 1 de ce sujet, si le nombre d''observations était de 30 au lieu de 10 (toutes choses égales par ailleurs sur les coefficients et écarts-types), quel effet attendu cela aurait-il généralement sur la fiabilité statistique du modèle ?
2. Dans la partie 2, si le coût marginal des deux brasseries augmentait à 30 (au lieu de 20), recalculez la quantité individuelle et le prix d''équilibre de Cournot.
3. Dans la partie 3, expliquez pourquoi un excédent primaire ne suffit pas toujours à garantir une baisse du ratio dette/PIB.

## Corrigé

1. Avec un échantillon plus grand, les degrés de liberté augmentent, ce qui réduit en général les écarts-types et augmente la puissance des tests : un coefficient proche de la significativité avec un petit échantillon peut devenir clairement significatif, et les résultats sont plus robustes.
2. qi* = (120-30)/3 = 30. Q* = 60. P* = 120-60 = 60. Le prix augmente par rapport au cas précédent (53,33 à 60), cohérent avec la hausse du coût marginal.
3. Parce que la variation dépend aussi de l''écart (r-g) : si r est durablement supérieur à g, l''effet boule de neige peut dépasser l''effet favorable d''un excédent primaire modeste, comme en 3.3 où un excédent de 0,5 % du PIB n''a presque plus suffi à stabiliser la dette une fois la croissance tombée à 1 %.', 'texte', 60, false, 50
from public.courses c where c.slug = 'mas-eco-m1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Sujet type d''examen de Master 1 Économie (entraînement, corrigé détaillé)');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Économétrie appliquée', '## Fiche du cours vidéo

Durée : 1h30 (90 minutes). Sujet : Économétrie appliquée — construire, tester et interpréter un modèle de régression multiple.
Objectifs : à la fin de la séance, l''étudiant sait estimer une régression multiple, interpréter chaque coefficient, réaliser un test de Student et un test F, et discuter les limites du modèle (variable omise, multicolinéarité, hétéroscédasticité).
Matériel : tableau ou diaporama, calculatrice ou tableur, le jeu de données fictif de l''étude de cas (exportations d''une filière agro-industrielle).
Prérequis : régression simple (Licence 2), notions de moyenne, variance, écart-type.

## Déroulé minuté

## 00:00 – 05:00 · Accueil et objectifs de la séance

Bonjour à toutes et à tous. Bienvenue dans ce cours vidéo consacré à l''économétrie appliquée, la première des trois matières avancées de votre semestre de Master 1 en Économie. Aujourd''hui, nous allons passer de la théorie vue en cours à la pratique : vous allez apprendre à construire un modèle de régression multiple, à l''estimer, à tester la significativité de ses coefficients, et surtout à l''interpréter comme un économiste, pas seulement comme un calculateur. L''objectif de cette séance n''est pas de vous transformer en statisticien pur, mais de vous donner les réflexes méthodologiques qui vous serviront aussi bien pour vos examens que pour votre mémoire de recherche ou votre futur travail en entreprise ou en administration. Nous travaillerons sur un exemple fictif, construit spécialement pour cette séance, dont tous les calculs ont été vérifiés.

## 05:00 – 20:00 · Rappel du modèle et présentation du cas d''étude

Commençons par rappeler la structure d''un modèle de régression linéaire multiple : Y égale bêta zéro, plus bêta un fois X un, plus bêta deux fois X deux, plus epsilon, le terme d''erreur. Y est la variable que l''on cherche à expliquer, les X sont les variables explicatives, et les bêta sont les coefficients que la méthode des moindres carrés ordinaires va estimer en minimisant la somme des carrés des écarts entre les valeurs observées et les valeurs prédites par le modèle.

Notre étude de cas : un observatoire régional fictif étudie les exportations mensuelles d''une filière de transformation agroalimentaire dans dix zones de production comparables. Nous disposons de deux variables explicatives : l''investissement productif cumulé, en milliards de FCFA, et le taux d''ouverture commerciale de chaque zone, en pourcentage. La variable à expliquer est le niveau d''exportations, en milliards de FCFA.

Je vous invite à noter les dix observations au tableau ou sur votre support : l''investissement va de 5 à 14 milliards FCFA, le taux d''ouverture de 2 à 6 %, et les exportations de 20 à 53 milliards FCFA, en progression régulière d''une zone à l''autre. Prenez un instant pour observer ces chiffres : on voit déjà, à l''œil, que les exportations augmentent globalement avec l''investissement. C''est précisément ce que la régression va quantifier de façon rigoureuse.

Question à la classe : avant même de calculer quoi que ce soit, à votre avis, laquelle des deux variables explicatives aura le coefficient le plus élevé en valeur absolue, et pourquoi ? Prenez trente secondes pour y réfléchir avant que nous passions au calcul.

## 20:00 – 35:00 · Estimation du modèle et lecture des coefficients

Le calcul, réalisé avec un outil de calcul scientifique vérifié, donne les résultats suivants : bêta zéro, la constante, est d''environ 2,00 ; bêta un, le coefficient de l''investissement, est d''environ 3,60 ; bêta deux, le coefficient du taux d''ouverture, est d''environ 0,05.

Le modèle estimé s''écrit donc : exportations estimées égale 2,00, plus 3,60 fois l''investissement, plus 0,05 fois le taux d''ouverture.

Interprétons chaque coefficient, et c''est ici que se joue la vraie compétence d''économiste. Le coefficient de 3,60 signifie que, toutes choses égales par ailleurs — c''est-à-dire en maintenant le taux d''ouverture constant — une augmentation d''un milliard de FCFA de l''investissement productif est associée à une augmentation de 3,60 milliards de FCFA des exportations. C''est un effet marginal important.

Le coefficient de 0,05, en revanche, est très faible : toutes choses égales par ailleurs, une hausse d''un point de pourcentage du taux d''ouverture n''est associée qu''à 0,05 milliard de FCFA d''exportations supplémentaires. C''est un effet quasiment négligeable dans cet échantillon précis. Retenez bien cette phrase : « toutes choses égales par ailleurs ». C''est la clé de toute interprétation économétrique correcte, et c''est souvent ce qui manque dans les copies d''examen qui se contentent de recopier un chiffre sans l''interpréter.

## 35:00 – 50:00 · Le test de Student sur les coefficients

Comment savoir si un coefficient est statistiquement fiable, ou s''il pourrait être dû au hasard de l''échantillon ? C''est le rôle du test de Student. La formule est simple : t égale le coefficient divisé par son écart-type estimé.

Dans notre exemple, l''écart-type de bêta un est d''environ 0,207, et celui de bêta deux est d''environ 0,420. Calculons : t un égale 3,60 divisé par 0,207, ce qui donne environ 17,39. C''est une valeur très élevée. Avec dix observations et deux variables explicatives, nous avons sept degrés de liberté, et la valeur critique usuelle à 5 % est d''environ 2,36 — valeur à toujours vérifier dans une table de Student officielle. Puisque 17,39 est largement supérieur à 2,36, nous rejetons l''hypothèse selon laquelle bêta un serait nul : l''investissement a un effet statistiquement significatif.

Pour bêta deux : t deux égale 0,05 divisé par 0,420, ce qui donne environ 0,12. Cette valeur est bien inférieure à 2,36 : nous ne pouvons pas rejeter l''hypothèse que bêta deux est nul. Attention à la formulation correcte : cela ne veut pas dire que le taux d''ouverture commerciale n''a aucun effet économique sur les exportations en général. Cela signifie seulement que, sur cet échantillon fictif précis de dix observations, l''effet mesuré n''est pas statistiquement distinguable de zéro.

## 50:00 – 55:00 · Pause et quiz interactif

Nous allons marquer une pause de cinq minutes. Avant cela, un petit quiz pour vérifier votre compréhension. Première question : si la statistique de Student d''un coefficient est de 1,5 et que la valeur critique est de 2,36, que concluez-vous ? Deuxième question : que signifie l''expression « toutes choses égales par ailleurs » dans l''interprétation d''un coefficient de régression ? Troisième question : pourquoi faut-il sept degrés de liberté dans notre exemple et pas dix ? Réfléchissez à ces trois questions pendant la pause ; nous les corrigerons ensemble à notre retour.

Correction du quiz : premièrement, avec un t de 1,5 inférieur à 2,36, on ne peut pas rejeter l''hypothèse de nullité du coefficient, celui-ci n''est pas statistiquement significatif à ce seuil. Deuxièmement, cela signifie que l''on étudie l''effet d''une variable en maintenant toutes les autres variables du modèle constantes, pour isoler sa contribution propre. Troisièmement, les degrés de liberté sont égaux au nombre d''observations moins le nombre de variables explicatives moins un (pour la constante), soit dix moins deux moins un, égal sept.

## 55:00 – 1:10:00 · Qualité globale du modèle et pièges à éviter

Passons maintenant à l''évaluation globale du modèle. Le R² mesure la part de la variance de la variable expliquée qui est captée par le modèle. Dans notre exemple, le R² est d''environ 0,999, soit 99,9 % de la variation des exportations expliquée par nos deux variables. Le R² ajusté, qui pénalise l''ajout de variables supplémentaires, reste également très élevé. Le test F, qui évalue la significativité globale du modèle, donne ici une valeur d''environ 5057, largement supérieure à la valeur critique usuelle : le modèle, dans son ensemble, est hautement significatif.

Mais attention, et c''est un point méthodologique essentiel que je veux que vous reteniez durablement : un R² aussi proche de 1 sur seulement dix observations fictives doit vous rendre prudents, pas satisfaits. Dans la réalité professionnelle, avec des données économiques réelles, un R² aussi élevé est rare et doit alerter sur un possible problème : échantillon trop petit, relation trop mécanique entre les variables construites pour l''exercice, ou données trop lissées.

Trois pièges classiques à toujours mentionner dans une analyse économétrique appliquée, même sans les calculer en détail à ce niveau. Premièrement, la variable omise : si une variable qui influence réellement la variable expliquée est corrélée avec une variable du modèle mais n''y figure pas, les coefficients estimés peuvent être biaisés. Deuxièmement, la multicolinéarité : quand deux variables explicatives sont très corrélées entre elles, il devient difficile de distinguer statistiquement leurs effets respectifs. Troisièmement, l''hétéroscédasticité : quand la variance des erreurs n''est pas constante, les écarts-types usuels des coefficients ne sont plus fiables, même si les coefficients eux-mêmes restent souvent corrects.

## 1:10:00 – 1:25:00 · Application guidée et synthèse

Reprenons un exercice guidé ensemble. Imaginez une nouvelle zone fictive avec un investissement de 10 milliards de FCFA et un taux d''ouverture de 4 %. Quelle est l''exportation prédite par notre modèle ? Calculons ensemble : 2,00, plus 3,60 fois 10, plus 0,05 fois 4, soit 2,00 plus 36,00 plus 0,20, égal 38,20 milliards de FCFA. Vous voyez que le calcul lui-même est simple ; la vraie difficulté, et ce sur quoi portera votre examen, c''est de savoir interpréter ce chiffre avec ses limites : un modèle estimé sur dix observations fictives, avec un coefficient de taux d''ouverture non significatif, ne doit pas être présenté comme une vérité absolue, mais comme une estimation à discuter.

Synthétisons les points essentiels de cette séance : un modèle de régression multiple s''interprète coefficient par coefficient, toujours « toutes choses égales par ailleurs » ; le test de Student permet de juger la significativité individuelle de chaque coefficient par comparaison à une valeur critique de table ; le R² et le test F évaluent la qualité globale du modèle, mais un R² très élevé sur un petit échantillon appelle la prudence plutôt que la satisfaction ; enfin, variable omise, multicolinéarité et hétéroscédasticité sont les trois limites méthodologiques à toujours savoir mentionner dans une copie d''examen ou un mémoire de recherche.

## 1:25:00 – 1:30:00 · Évaluation finale

Pour clore cette séance, voici cinq questions d''évaluation finale.

Question 1 : Dans un modèle Y = β0 + β1·X1 + β2·X2 + ε avec n = 20 observations, combien de degrés de liberté a le résidu ?
Réponse : n - k - 1 = 20 - 2 - 1 = 17 degrés de liberté.

Question 2 : Un coefficient β1 = 2,5 a un écart-type de 0,5. Quelle est sa statistique de Student ?
Réponse : t = 2,5 / 0,5 = 5,0, une valeur fortement significative dans la plupart des configurations usuelles.

Question 3 : Que mesure le R² d''un modèle de régression ?
Réponse : la part de la variance de la variable expliquée qui est captée par le modèle, entre 0 (aucune variance expliquée) et 1 (toute la variance expliquée).

Question 4 : Citez les trois problèmes classiques qui peuvent biaiser ou fragiliser une estimation par les moindres carrés ordinaires.
Réponse : la variable omise, la multicolinéarité, et l''hétéroscédasticité.

Question 5 : Pourquoi un R² extrêmement élevé sur un très petit échantillon doit-il être interprété avec prudence ?
Réponse : parce qu''avec peu d''observations, le résultat est statistiquement fragile, peu généralisable, et peut refléter une relation trop mécanique entre les variables plutôt qu''une véritable régularité économique robuste.

Merci à toutes et à tous pour votre attention. Révisez bien cette méthode : elle reviendra systématiquement dans vos examens d''économétrie appliquée et dans tout travail de recherche appliquée que vous mènerez cette année. À la prochaine séance.', 'video', 90, false, 60
from public.courses c where c.slug = 'mas-eco-m1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Économétrie appliquée');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Économie industrielle et organisation des marchés', '## Fiche du cours vidéo

Durée : 1h30 (90 minutes). Sujet : Économie industrielle — Cournot, Bertrand, différenciation, collusion et régulation.
Objectifs : savoir résoudre un duopole de Cournot et un duopole de Bertrand, comprendre l''effet de la différenciation de produit, analyser la logique économique de la collusion et le rôle de la régulation.
Matériel : tableau ou diaporama, calculatrice.
Prérequis : monopole et notions de base de duopole (Licence 2).

## Déroulé minuté

## 00:00 – 05:00 · Accueil et mise en contexte

Bonjour et bienvenue dans ce deuxième cours vidéo de votre Master 1 en Économie, consacré à l''économie industrielle avancée. En Licence, vous avez étudié le monopole et une introduction au duopole. Aujourd''hui, nous allons formaliser rigoureusement deux modèles classiques d''oligopole, le modèle de Cournot et le modèle de Bertrand, puis nous verrons pourquoi les entreprises différencient leurs produits, comment fonctionne la collusion, et pourquoi la régulation économique intervient sur ces marchés. Tous nos exemples utiliseront des entreprises fictives, construites pour l''exercice, inspirées de secteurs ouest-africains sans référence à une entreprise réelle.

## 05:00 – 20:00 · Le modèle de Cournot : concurrence en quantités

Dans le modèle de Cournot, chaque firme choisit simultanément la quantité qu''elle va produire, sans connaître la décision exacte de l''autre, mais en anticipant correctement son comportement à l''équilibre. Prenons notre cas fictif : deux opérateurs de télécommunications, que nous appellerons Firme A et Firme B, se partagent un marché régional. La demande inverse du marché est P égale 100 moins Q, où Q est la quantité totale produite par les deux firmes, et P le prix unitaire. Le coût marginal est identique pour les deux : 10.

La solution classique du duopole de Cournot symétrique, avec une demande linéaire P égale a moins Q et un coût marginal constant c, donne pour chaque firme : qi étoile égale a moins c, divisé par trois. Faisons le calcul ensemble : 100 moins 10, divisé par 3, égale 90 divisé par 3, égale 30. Chaque firme produit donc 30 unités, la quantité totale est de 60, et le prix d''équilibre est de 100 moins 60, soit 40.

Le profit de chaque firme, hors coûts fixes, est le prix moins le coût marginal, multiplié par la quantité : 40 moins 10, soit 30, multiplié par 30, soit 900 unités fictives de profit.

Comparons maintenant à deux cas de référence. En situation de monopole, la quantité optimale serait a moins c divisé par deux, soit 45, avec un prix de 100 moins 45, soit 55 — un prix supérieur à celui de Cournot. En concurrence pure, où le prix égale le coût marginal, le prix serait de 10 — un prix inférieur à celui de Cournot. L''oligopole de Cournot se situe donc exactement où la théorie le prédit : entre le monopole et la concurrence pure.

## 20:00 – 35:00 · Le modèle de Bertrand et le paradoxe de Bertrand

Changeons maintenant de variable stratégique : au lieu de choisir des quantités, les firmes choisissent leur prix, pour un produit parfaitement homogène, c''est-à-dire identique du point de vue du client. C''est le modèle de Bertrand.

Le résultat théorique est saisissant, et je veux que vous le reteniez précisément : avec seulement deux firmes, un produit homogène, et des coûts marginaux identiques, la concurrence en prix conduit le prix d''équilibre au niveau du coût marginal, exactement comme en concurrence parfaite, et cela avec seulement deux concurrents. C''est ce qu''on appelle le paradoxe de Bertrand.

Pourquoi ce résultat ? Parce que si une firme fixe un prix supérieur au coût marginal, l''autre a toujours intérêt à fixer un prix légèrement inférieur pour capter toute la demande du marché, et ce processus se répète jusqu''à ce que le prix atteigne le coût marginal, où plus aucune marge positive n''est possible pour inciter à baisser davantage.

Dans notre exemple fictif, si Firme A et Firme B vendaient un service de télécommunication strictement identique avec un coût marginal de 10, le modèle de Bertrand prédirait un prix d''équilibre de 10 — bien inférieur au prix de Cournot que nous avons calculé, qui était de 40. C''est une différence considérable, et elle explique un comportement stratégique essentiel des entreprises dans la réalité : pourquoi, à votre avis, les entreprises évitent-elles généralement de vendre un produit parfaitement homogène face à leurs concurrents ? Réfléchissez trente secondes.

La réponse, bien sûr : pour échapper au paradoxe de Bertrand et à l''anéantissement de leurs marges, les entreprises différencient leur offre.

## 35:00 – 50:00 · Différenciation de produit et pouvoir de marché

Lorsque les produits ne sont pas parfaitement substituables — par la marque, la qualité perçue, le réseau de distribution, le service après-vente — chaque firme conserve un pouvoir de marché même en présence de concurrents directs, car une partie de sa clientèle reste fidèle malgré un prix légèrement supérieur à celui du concurrent.

Reprenons notre exemple : si Firme A différencie son offre par une meilleure couverture réseau dans certaines zones rurales, elle peut maintenir un prix plus élevé que Firme B sans perdre immédiatement tous ses clients dans ces zones, parce que ces clients valorisent la qualité de couverture au-delà du simple prix. La différenciation atténue donc mécaniquement la pression concurrentielle sur les prix.

Du point de vue du bien-être économique, cet effet est ambigu : il profite aux marges des entreprises, ce qui peut financer l''innovation et l''investissement, mais il peut aussi, si la différenciation devient excessive ou artificielle, réduire le pouvoir d''achat des consommateurs par rapport à une situation de concurrence plus frontale. C''est un arbitrage que les économistes et les régulateurs doivent évaluer au cas par cas.

## 50:00 – 55:00 · Pause et quiz interactif

Prenons une pause de cinq minutes avec un quiz. Premièrement : dans le modèle de Cournot avec n firmes symétriques, la formule générale est qi étoile égale a moins c, divisé par n plus un. Si n passe de 2 à 10, que devient le prix d''équilibre, intuitivement ? Deuxièmement : pourquoi le paradoxe de Bertrand ne se vérifie-t-il presque jamais exactement dans la réalité ? Troisièmement : citez un exemple fictif de différenciation de produit dans un secteur de votre choix.

Correction : premièrement, quand n augmente, le prix d''équilibre de Cournot se rapproche progressivement du coût marginal, convergeant vers la concurrence pure — c''est une propriété importante du modèle. Deuxièmement, en réalité, les produits sont presque toujours différenciés d''une manière ou d''une autre, et l''information des consommateurs n''est jamais parfaite, ce qui atténue la pression extrême du paradoxe de Bertrand. Troisièmement, toute réponse pertinente est acceptée, par exemple une enseigne de distribution qui se différencie par la proximité de ses points de vente plutôt que par le prix.

## 55:00 – 1:10:00 · Collusion, cartels et instabilité

Étudions maintenant la collusion : une situation où des firmes concurrentes s''entendent, explicitement ou tacitement, pour limiter la concurrence entre elles — en fixant des prix communs, en se répartissant des marchés, ou en limitant la production — afin d''augmenter leurs profits conjoints, au détriment des consommateurs. Un cartel est une collusion organisée explicitement.

Calculons l''incitation à la collusion dans notre exemple. Si Firme A et Firme B s''entendaient pour se comporter comme un monopole conjoint, elles produiraient ensemble la quantité de monopole, soit 45, au prix de 55, pour un profit joint de 55 moins 10, soit 45, multiplié par 45, soit 2025. Comparons ce chiffre au profit joint obtenu en situation de Cournot : 900 plus 900, soit 1800. La collusion est donc plus profitable pour les deux firmes réunies : 2025 est supérieur à 1800.

Mais, et c''est un point fondamental de la théorie des jeux, cet accord reste fragile sans mécanisme de surveillance, car chaque firme a individuellement intérêt à produire davantage que sa part convenue, pour capter un profit immédiat encore supérieur, tant que l''autre firme respecte l''accord. C''est l''incitation à « tricher ». Dans un jeu répété, cette tentation peut être contenue par la menace crédible d''une rétorsion future, comme une guerre des prix ; mais dans un jeu à un seul coup, la tentation de tricher l''emporte systématiquement.

## 1:10:00 – 1:25:00 · Le rôle de la régulation économique

Face à ces risques de pouvoir de marché excessif et de collusion, la régulation économique poursuit deux objectifs principaux. Premièrement, préserver une concurrence suffisante sur les marchés où elle est possible, en sanctionnant les pratiques anticoncurrentielles — ententes, abus de position dominante — par des autorités nationales et régionales de la concurrence. Deuxièmement, encadrer les secteurs où la concurrence pure n''est pas naturellement possible, notamment les monopoles naturels, où les coûts fixes très élevés rendent la duplication des infrastructures économiquement inefficace, comme certains réseaux d''énergie ou de transport.

En Afrique de l''Ouest, des régulateurs sectoriels interviennent dans les télécommunications, l''énergie, les transports, pour encadrer les tarifs et les conditions d''accès aux infrastructures. Je dois insister sur un point de méthode important : les règles précises, les seuils, les taux de sanction diffèrent selon les pays et évoluent dans le temps. Dans un examen ou un mémoire, ne citez jamais un seuil réglementaire précis sans l''avoir vérifié dans le texte officiel en vigueur ; expliquez plutôt le mécanisme économique général, ce qui est toujours valorisé par un correcteur.

## 1:25:00 – 1:30:00 · Évaluation finale

Cinq questions pour clore cette séance.

Question 1 : Dans un duopole de Cournot avec demande P = a - Q et coût marginal c, quelle est la formule de la quantité individuelle d''équilibre ?
Réponse : qi* = (a - c) / 3.

Question 2 : Que prédit le modèle de Bertrand avec un produit homogène et deux firmes aux coûts identiques ?
Réponse : un prix d''équilibre égal au coût marginal, comme en concurrence parfaite.

Question 3 : Pourquoi la différenciation de produit permet-elle à une firme de conserver un pouvoir de marché ?
Réponse : parce qu''elle réduit la substituabilité parfaite entre les offres, fidélisant une partie de la clientèle malgré un prix plus élevé.

Question 4 : Pourquoi un accord de collusion reste-t-il souvent instable sans mécanisme de surveillance ?
Réponse : parce que chaque firme a individuellement intérêt à produire davantage que sa part convenue pour un gain immédiat supérieur, ce qui rompt l''accord.

Question 5 : Quels sont les deux objectifs principaux de la régulation économique face au pouvoir de marché ?
Réponse : préserver une concurrence suffisante en sanctionnant les pratiques anticoncurrentielles, et encadrer les secteurs de monopole naturel où la concurrence pure n''est pas réaliste.

Merci de votre attention. La semaine prochaine, nous passerons aux politiques économiques en économie ouverte.', 'video', 90, false, 70
from public.courses c where c.slug = 'mas-eco-m1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Économie industrielle et organisation des marchés');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Politiques économiques et macroéconomie ouverte avancée', '## Fiche du cours vidéo

Durée : 1h30 (90 minutes). Sujet : Politiques économiques et macroéconomie ouverte avancée — trilemme de Mundell, politique budgétaire en union monétaire, soutenabilité de la dette.
Objectifs : comprendre le trilemme de Mundell et son application à une union monétaire à change fixe, analyser le rôle renforcé de la politique budgétaire, calculer et interpréter la variation du ratio dette/PIB.
Matériel : tableau ou diaporama, calculatrice.
Prérequis : modèle IS-LM en économie fermée (Licence).

## Déroulé minuté

## 00:00 – 05:00 · Accueil et plan de la séance

Bonjour et bienvenue dans ce troisième cours vidéo de votre Master 1 en Économie. Nous allons aujourd''hui passer de l''économie fermée, étudiée en Licence avec le modèle IS-LM, à l''économie ouverte, où le compte extérieur — exportations, importations, taux de change, mobilité des capitaux — joue un rôle central. Nous verrons le trilemme de Mundell, son application à une union monétaire comme l''UEMOA, le rôle renforcé de la politique budgétaire quand la politique monétaire est commune, et enfin la question cruciale de la soutenabilité de la dette publique, avec des calculs que nous vérifierons ensemble.

## 05:00 – 20:00 · Le trilemme de Mundell

Le résultat central de cette séance est ce qu''on appelle le trilemme, ou triangle des incompatibilités de Mundell. Il énonce qu''un pays ne peut pas avoir simultanément trois choses : un taux de change fixe, une parfaite mobilité des capitaux, et une politique monétaire nationale pleinement autonome. Il doit nécessairement renoncer à l''un des trois sommets de ce triangle.

Réfléchissons ensemble à pourquoi. Si un pays fixe son taux de change et autorise les capitaux à circuler librement, alors son taux d''intérêt domestique est contraint de s''aligner sur le taux d''intérêt international, sous peine de provoquer des flux de capitaux massifs qui déstabiliseraient la parité fixe. Si les investisseurs anticipent un taux d''intérêt plus élevé chez lui, les capitaux afflueraient et menaceraient la parité à la hausse ; si le taux est plus bas, les capitaux fuiraient et menaceraient la parité à la baisse. La banque centrale perd donc la liberté de fixer son taux d''intérêt en fonction des seuls besoins de l''économie nationale.

Appliquons ce trilemme à l''UEMOA, en restant en termes généraux, sans invoquer de taux ou de texte précis non vérifié. Les pays membres de l''UEMOA partagent une monnaie commune avec une parité fixe historique à l''euro, et une relative ouverture aux mouvements de capitaux régionaux et internationaux. La conséquence directe du trilemme est que chaque État membre renonce à une politique monétaire nationale autonome : les décisions de taux d''intérêt et de masse monétaire sont prises au niveau de la banque centrale commune pour l''ensemble de la zone, pas au niveau de chaque État. C''est le prix à payer pour la stabilité du taux de change que procure l''union monétaire — un choix institutionnel avec des avantages, comme la crédibilité anti-inflationniste, et des coûts, comme la perte d''un instrument d''ajustement national face à un choc spécifique.

## 20:00 – 35:00 · Politique budgétaire renforcée en change fixe

Puisque la politique monétaire n''est plus un levier national disponible, que reste-t-il à un État membre d''une union monétaire pour agir sur son activité économique en cas de choc ? La réponse : la politique budgétaire, c''est-à-dire les dépenses publiques et la fiscalité, devient l''instrument principal de stabilisation nationale.

Il y a une subtilité théorique importante à connaître : en change fixe, une relance budgétaire a, en théorie, un effet multiplicateur plus important que dans un cadre de change flexible. Pourquoi ? Parce qu''en change flexible, une relance budgétaire tend à faire monter les taux d''intérêt domestiques, ce qui attire des capitaux étrangers et fait apprécier la monnaie nationale, ce qui pénalise à son tour les exportations et vient partiellement compenser, ou « absorber », l''effet expansionniste initial de la relance. En change fixe, ce mécanisme de compensation automatique disparaît, puisqu''il n''y a pas de monnaie nationale distincte qui s''apprécie ou se déprécie librement : l''effet multiplicateur de la politique budgétaire est donc potentiellement plus fort.

Cette dépendance renforcée à la politique budgétaire explique pourquoi la discipline budgétaire est un sujet particulièrement sensible dans une union monétaire : un déficit mal maîtrisé dans un État membre peut peser sur la perception de solidité financière de l''ensemble de la zone monétaire partagée, même si, en principe, chaque État conserve la responsabilité individuelle de ses propres finances publiques. C''est un sujet de gouvernance économique régionale central dans l''actualité de l''UEMOA.

## 35:00 – 50:00 · La soutenabilité de la dette publique : la méthode

Un concept central de cette séance : la dette publique est dite soutenable si l''État peut, dans la durée, honorer ses engagements sans ajustement brutal — défaut de paiement, restructuration forcée, ou inflation non maîtrisée pour éroder la dette réelle. Une approche simplifiée, à utiliser avec prudence car la réalité comporte davantage de nuances, consiste à comparer le taux de croissance économique, noté g, et le taux d''intérêt réel moyen de la dette, noté r.

Voici la règle simplifiée que je veux que vous reteniez : si g est supérieur à r, et que le solde primaire — c''est-à-dire les recettes moins les dépenses hors charge d''intérêt — n''est pas trop négatif, le ratio dette sur PIB tend à se stabiliser ou à diminuer dans le temps. En revanche, si r est durablement supérieur à g, le ratio dette sur PIB tend à augmenter mécaniquement, même sans nouveau déficit primaire, par un effet qu''on appelle « boule de neige » : la charge d''intérêt croît alors plus vite que la capacité de l''économie à la rembourser.

La formule simplifiée que nous utiliserons est : variation du ratio dette sur PIB est environ égale à, r moins g, multiplié par le ratio dette sur PIB de départ, moins le solde primaire en pourcentage du PIB.

## 50:00 – 55:00 · Pause et quiz interactif

Avant de passer au calcul guidé, un quiz de cinq minutes. Première question : si g est supérieur à r, le ratio dette sur PIB tend-il à augmenter ou à diminuer, toutes choses égales par ailleurs ? Deuxième question : qu''est-ce que le solde primaire, précisément ? Troisième question : pourquoi dit-on que l''effet boule de neige est « mécanique » ?

Correction : premièrement, si g est supérieur à r, le terme (r moins g) est négatif, donc le ratio dette sur PIB tend à diminuer, toutes choses égales par ailleurs sur le solde primaire. Deuxièmement, le solde primaire est la différence entre les recettes publiques et les dépenses publiques hors charge d''intérêt de la dette — il exclut donc le service de la dette elle-même. Troisièmement, l''effet est dit mécanique parce qu''il se produit même sans nouveau déficit primaire : la seule accumulation des intérêts sur une dette dont le coût réel dépasse la croissance de l''économie suffit à faire grossir le ratio.

## 55:00 – 1:25:00 · Calcul guidé complet et discussion

Reprenons notre exemple numérique fictif, dont les calculs ont été vérifiés. Un pays fictif a un ratio dette sur PIB de 60 % en début de période, une croissance réelle de 5 % par an, un taux d''intérêt réel moyen de 3 % par an, et un solde primaire nul.

Calculons ensemble, étape par étape. D''abord, r moins g : 0,03 moins 0,05, égal moins 0,02. Ensuite, multiplions par le ratio dette sur PIB de départ : moins 0,02 multiplié par 0,60, égal moins 0,012. Enfin, soustrayons le solde primaire, qui est nul ici : moins 0,012 moins 0, égal moins 0,012. Résultat : une baisse d''environ 1,2 point de pourcentage du ratio dette sur PIB sur l''année, uniquement grâce à une croissance supérieure au taux d''intérêt réel, même sans excédent budgétaire primaire.

Maintenant, un contre-exemple pour bien ancrer la logique. Supposons que ce même pays subisse un choc externe et voie sa croissance réelle tomber à 1 % par an, le taux d''intérêt réel restant inchangé à 3 %. Recalculons : r moins g égale 0,03 moins 0,01, égal 0,02. Multiplié par 0,60, égal 0,012. Moins le solde primaire nul : 0,012. Résultat : une hausse d''environ 1,2 point de pourcentage du ratio dette sur PIB — l''exact opposé du cas précédent, uniquement parce que la croissance a chuté.

Cet exemple illustre un point fondamental pour votre compréhension des politiques économiques : la croissance économique est une variable aussi déterminante que le niveau du déficit pour la soutenabilité de la dette publique. Un gouvernement qui néglige les politiques favorisant la croissance de long terme, même en maintenant une discipline budgétaire apparente, peut voir sa trajectoire de dette se détériorer simplement parce que la croissance ralentit.

Un point de méthode essentiel pour vos examens et votre mémoire : cette formule est une approximation pédagogique simplifiée. Les niveaux de taux d''intérêt, de croissance, et les seuils d''alerte réellement utilisés par les institutions, notamment les critères de convergence de l''UEMOA, sont des valeurs officielles précises qui évoluent dans le temps et doivent être vérifiées auprès des textes et publications officiels en vigueur. N''affirmez jamais un seuil officiel précis sans l''avoir vérifié récemment.

## 1:25:00 – 1:30:00 · Évaluation finale

Cinq questions pour conclure.

Question 1 : Énoncez le trilemme de Mundell.
Réponse : un pays ne peut pas avoir simultanément un taux de change fixe, une parfaite mobilité des capitaux, et une politique monétaire nationale pleinement autonome.

Question 2 : Pourquoi la politique budgétaire a-t-elle un rôle renforcé dans une union monétaire à change fixe ?
Réponse : parce que la politique monétaire nationale n''est plus disponible, la politique budgétaire devient le principal instrument national de stabilisation de l''activité économique.

Question 3 : Donnez la formule simplifiée de la variation du ratio dette sur PIB.
Réponse : variation ≈ (r - g) × (dette/PIB) - solde primaire/PIB.

Question 4 : Qu''est-ce que l''effet boule de neige de la dette ?
Réponse : lorsque le taux d''intérêt réel dépasse durablement la croissance, la charge d''intérêt croît plus vite que la capacité de l''économie à la rembourser, augmentant mécaniquement le ratio dette sur PIB.

Question 5 : Pourquoi faut-il être prudent avant d''affirmer un seuil officiel précis de dette ou de déficit ?
Réponse : parce que ces seuils sont fixés par des textes officiels précis, révisables dans le temps ; il faut toujours vérifier le texte en vigueur plutôt que de se fier à une valeur non vérifiée récemment.

Merci pour votre attention. Notre quatrième et dernière vidéo de ce semestre sera un atelier transversal combinant les trois matières sur un cas d''entreprise complet.', 'video', 90, false, 80
from public.courses c where c.slug = 'mas-eco-m1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Politiques économiques et macroéconomie ouverte avancée');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Atelier transversal — cas pratique filé', '## Fiche du cours vidéo

Durée : 1h30 (90 minutes). Sujet : Atelier transversal — cas pratique filé combinant économétrie appliquée, économie industrielle et politiques économiques.
Objectifs : mobiliser conjointement les trois matières du semestre sur un cas d''entreprise et de politique économique complet, comme à l''examen.
Matériel : tableau ou diaporama, calculatrice, vos notes des trois précédentes vidéos.
Prérequis : les trois cours vidéo précédents de ce semestre.

## Déroulé minuté

## 00:00 – 05:00 · Présentation du cas filé

Bonjour et bienvenue dans cette quatrième et dernière vidéo de votre semestre de Master 1 en Économie. Contrairement aux trois précédentes, cette séance ne porte pas sur une matière unique : nous allons suivre un cas d''entreprise fictif complet, du début à la fin, et mobiliser successivement l''économétrie appliquée, l''économie industrielle, puis les politiques économiques, exactement comme un sujet d''examen transversal pourrait vous le demander.

Notre cas fictif : une entreprise de transformation agroalimentaire, que nous appellerons « Groupe Fictif Sahel », opère dans un pays membre fictif d''une union monétaire régionale, en situation de duopole avec un concurrent direct sur son marché domestique, et exporte une partie de sa production vers les pays voisins de la zone.

## 05:00 – 25:00 · Partie économétrie : estimer la demande

Première étape : le service d''études du Groupe Fictif Sahel veut comprendre ce qui détermine ses ventes mensuelles dans ses dix zones de distribution. Nous reprenons exactement le jeu de données déjà vu dans notre première vidéo : investissement productif cumulé par zone (X1, de 5 à 14 milliards FCFA), taux d''ouverture commerciale de la zone (X2, de 2 à 6 %), et exportations ou ventes (Y, de 20 à 53 milliards FCFA).

Rappel du modèle estimé, vérifié par le calcul : Y égale 2,00, plus 3,60 fois X1, plus 0,05 fois X2. Le test de Student donne t1 environ égal à 17,39 pour l''investissement, largement significatif, et t2 environ égal à 0,12 pour le taux d''ouverture, non significatif sur cet échantillon. Le R² est d''environ 0,999.

Question d''examen typique : la direction de l''entreprise doit-elle, sur la base de ce modèle, continuer à investir dans l''ouverture commerciale de ses zones de distribution ? Discutons-en. La réponse économétrique rigoureuse est la suivante : le modèle, sur cet échantillon précis, ne montre pas d''effet statistiquement significatif du taux d''ouverture sur les ventes, une fois l''investissement pris en compte. Cela ne signifie pas que l''ouverture commerciale n''a aucun intérêt stratégique — elle peut avoir des effets à plus long terme, non captés par ce modèle statique et cet échantillon réduit — mais la direction ne peut pas s''appuyer sur ce modèle précis pour justifier un investissement massif dans l''ouverture commerciale au nom d''un effet statistique démontré, puisque cet effet n''est pas significatif ici. C''est exactement le type de nuance qu''un correcteur attend dans une copie de Master.

## 25:00 – 50:00 · Partie économie industrielle : la stratégie face au concurrent

Deuxième étape : le Groupe Fictif Sahel fait face à un concurrent direct, « Rival Fictif Teranga », sur son marché domestique. Les deux entreprises sont en situation d''oligopole. Reprenons les paramètres déjà étudiés : demande inverse P égale 100 moins Q, coût marginal commun c égal 10.

À l''équilibre de Cournot : chaque firme produit 30 unités, le prix est de 40, et chaque firme réalise un profit de 900. Supposons maintenant que le Groupe Fictif Sahel envisage une stratégie de différenciation : en investissant dans une marque perçue comme plus qualitative, il pourrait réduire la sensibilité de ses clients au prix de son concurrent.

Discutons des implications stratégiques. Si le Groupe Fictif Sahel parvient à différencier suffisamment son offre, il échappe partiellement à la pression concurrentielle qui se rapprocherait du paradoxe de Bertrand si les deux entreprises vendaient un produit strictement identique et se livraient à une concurrence frontale par les prix — rappelez-vous, dans ce cas, le prix tendrait vers le coût marginal, soit 10, bien inférieur au prix de Cournot de 40. La différenciation permet donc, en théorie, de préserver des marges plus proches, voire supérieures, à celles de l''équilibre de Cournot.

Mais il existe une autre option stratégique, risquée : la collusion tacite avec « Rival Fictif Teranga ». Rappelons le calcul : en monopole conjoint, les deux entreprises produiraient 45 unités au prix de 55, pour un profit joint de 2025, contre 1800 en situation de Cournot non coopérative. La tentation de collusion est donc réelle sur le plan du profit. Mais attention, et c''est une question d''examen classique : quels sont les risques d''une telle stratégie pour le Groupe Fictif Sahel ? Premièrement, un risque juridique et réputationnel, puisque la collusion est en principe sanctionnée par les autorités de la concurrence. Deuxièmement, un risque économique intrinsèque : l''accord reste instable, car chaque firme a individuellement intérêt à tricher en produisant davantage, ce qui peut faire s''effondrer l''accord et déclencher une guerre des prix dommageable pour les deux parties.

## 50:00 – 55:00 · Pause et quiz interactif

Pause de cinq minutes avec un quiz transversal. Première question : pourquoi la différenciation de produit est-elle une stratégie généralement plus robuste juridiquement que la collusion, même si les deux visent à préserver des marges ? Deuxième question : dans notre modèle économétrique, pourquoi ne peut-on pas conclure que « l''ouverture commerciale n''a jamais d''effet sur les ventes » ? Troisième question : à l''équilibre de Cournot calculé, quel est le profit total du secteur (les deux firmes réunies) ?

Correction : premièrement, la différenciation de produit est une stratégie légale et même souhaitable du point de vue de l''innovation et de la qualité, alors que la collusion est une pratique anticoncurrentielle sanctionnable, bien que les deux puissent chercher à limiter la pression sur les prix. Deuxièmement, parce qu''une non-significativité statistique sur un échantillon précis et réduit ne prouve pas une absence d''effet économique réel, elle montre seulement que cet effet n''est pas mesurable avec confiance sur ces données précises. Troisièmement, le profit total du secteur à l''équilibre de Cournot est 900 plus 900, soit 1800.

## 55:00 – 1:25:00 · Partie politiques économiques : le contexte macroéconomique

Troisième étape, celle des politiques économiques : le Groupe Fictif Sahel exporte une partie de sa production vers les pays voisins de son union monétaire régionale. Le gouvernement de son pays d''origine envisage une politique de soutien au secteur agro-industriel, dans un contexte où le pays, membre d''une union monétaire à change fixe, a un ratio dette sur PIB de 55 % en début d''année, une croissance réelle anticipée de 4 %, un taux d''intérêt réel moyen de 2 %, et un solde primaire de plus 0,5 % du PIB.

Rappelons d''abord le trilemme de Mundell : ce pays, en adhérant à une union monétaire à change fixe avec une certaine ouverture financière, a renoncé à une politique monétaire nationale autonome. S''il veut soutenir le secteur agro-industriel, il ne peut pas le faire par une baisse de son taux d''intérêt national ou une dévaluation ciblée : il doit utiliser la politique budgétaire, par exemple des subventions, des investissements publics dans les infrastructures de transport reliant les zones de production aux ports d''exportation, ou des incitations fiscales.

Calculons la trajectoire de la dette avant toute nouvelle dépense : variation du ratio dette sur PIB est environ égale à, r moins g, multiplié par le ratio de départ, moins le solde primaire. Soit : 0,02 moins 0,04, multiplié par 0,55, moins 0,005, égal moins 0,02 multiplié par 0,55, moins 0,005, égal moins 0,011 moins 0,005, égal moins 0,016. Le ratio dette sur PIB baisse donc d''environ 1,6 point sur l''année, avant toute nouvelle politique de soutien.

Question d''examen : si le gouvernement finance un programme de soutien au secteur agro-industriel en augmentant ses dépenses publiques, par exemple en réduisant son solde primaire de 0,5 % à 0 % du PIB, quel est l''impact sur la trajectoire de la dette, toutes choses égales par ailleurs sur r et g ? Recalculons : moins 0,011, moins 0 (le nouveau solde primaire), égal moins 0,011. Le ratio dette sur PIB continuerait de baisser, mais plus modestement qu''avant, d''environ 1,1 point au lieu de 1,6 point. La politique de soutien reste donc compatible avec une trajectoire de dette toujours orientée à la baisse dans ce scénario précis, tant que la croissance reste nettement supérieure au taux d''intérêt réel.

Cette conclusion illustre bien l''intérêt de l''approche transversale : une décision de politique industrielle ou sectorielle (soutenir un secteur) doit toujours être évaluée en tenant compte de ses implications macroéconomiques et budgétaires, dans le cadre institutionnel spécifique de l''union monétaire à laquelle le pays appartient.

## 1:25:00 – 1:30:00 · Synthèse finale et évaluation

Pour conclure ce semestre, retenez la démarche méthodologique que nous venons d''appliquer : face à un cas d''entreprise ou de politique économique complexe, identifiez d''abord les données et la question économétrique sous-jacente, puis analysez la structure de marché et les choix stratégiques des acteurs, enfin replacez l''ensemble dans le cadre macroéconomique et institutionnel pertinent. C''est cette capacité à combiner les trois niveaux d''analyse qui sera évaluée dans vos examens de fin de semestre.

Question 1 : Dans notre cas filé, pourquoi la non-significativité du coefficient du taux d''ouverture ne doit-elle pas être utilisée seule pour décider d''arrêter tout investissement dans l''ouverture commerciale ?
Réponse : parce qu''elle reflète seulement l''absence d''effet statistiquement démontré sur cet échantillon précis, pas une preuve d''absence d''effet économique réel à plus long terme.

Question 2 : Pourquoi la différenciation de produit est-elle juridiquement préférable à la collusion pour préserver des marges ?
Réponse : parce que la différenciation est une stratégie légale fondée sur l''innovation et la qualité, alors que la collusion est anticoncurrentielle et sanctionnable.

Question 3 : Pourquoi ce pays fictif ne peut-il pas utiliser une baisse de son taux d''intérêt national pour soutenir son secteur agro-industriel ?
Réponse : parce qu''il a renoncé à une politique monétaire nationale autonome en adhérant à une union monétaire à change fixe, conformément au trilemme de Mundell.

Question 4 : Quel est l''effet d''une réduction du solde primaire sur la trajectoire de la dette, toutes choses égales par ailleurs sur r et g ?
Réponse : elle détériore (rend moins favorable) la trajectoire du ratio dette sur PIB, même si celui-ci peut rester orienté à la baisse si la croissance reste nettement supérieure au taux d''intérêt réel.

Question 5 : Quelle est la démarche méthodologique transversale à retenir pour un sujet d''examen combinant plusieurs matières de Master ?
Réponse : identifier d''abord la question économétrique et les données, analyser ensuite la structure de marché et les choix stratégiques, puis replacer l''ensemble dans le cadre macroéconomique et institutionnel pertinent, en reliant toujours les trois niveaux d''analyse entre eux.

Bon courage à toutes et à tous pour la suite de votre préparation et vos examens de Master 1.', 'video', 90, false, 90
from public.courses c where c.slug = 'mas-eco-m1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Atelier transversal — cas pratique filé');

-- Cours : Économie Master 2 : réussir ses examens
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'mas-eco-m2', (select id from public.levels where name = 'Master 2'), null, 'Économie', 'Économie Master 2 : réussir ses examens', 'Préparation aux examens de Master 2 en Économie : économie internationale et intégration régionale africaine (UEMOA/CEDEAO), finance du développement et politiques publiques (évaluation d''impact), méthodologie du mémoire de recherche et soutenance. Pour étudiants ayant validé le Master 1 en Économie. Fiches avancées, cas fictifs sénégalais/africains, exercices corrigés, sujet type d''examen et quatre cours vidéo de 1h30 dont un atelier méthodologie.', true, 762
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Réussir ses examens de Master 2 en Économie', 'Objectifs de la leçon

Cette leçon ouvre votre année de Master 2 en Économie, la dernière année de votre cursus avant l''entrée dans la vie professionnelle ou la poursuite en doctorat. Elle présente les spécificités de cette année : la préparation du mémoire de recherche ou professionnel, les trois matières avancées du semestre, et un plan de révision sur six semaines. Elle ne répète aucune matière déjà vue en Licence ni en Master 1.

Ce qui change en Master 2

Le Master 2 est l''année de la spécialisation et de la production personnelle. Contrairement au Master 1, où vous consolidiez encore des méthodes, le Master 2 vous demande de produire un travail original : un mémoire de recherche ou un mémoire professionnel, souvent adossé à un stage, qui mobilise l''ensemble de vos acquis pour traiter une question économique précise. L''évaluation finale combine généralement des examens de connaissances sur les matières avancées et une soutenance orale de votre mémoire devant un jury.

Les trois matières de ce semestre

1. Économie internationale et intégration régionale africaine. Cette matière approfondit les théories du commerce international (avantage comparatif, théories plus modernes du commerce) et les mécanismes concrets de l''intégration régionale ouest-africaine : l''union douanière de l''UEMOA, les enjeux de la zone de libre-échange continentale africaine et de la convergence avec la CEDEAO, les effets de création et de détournement de commerce.

2. Finance du développement et politiques publiques. Cette matière porte sur les instruments de financement du développement (financement public, aide au développement, financement privé et partenariats), et sur les principes méthodologiques de l''évaluation d''impact des politiques publiques et des projets de développement, utilisés pour juger si un programme atteint réellement ses objectifs.

3. Méthodologie du mémoire de recherche et soutenance. Cette matière, transversale, vous accompagne dans la construction méthodologique de votre mémoire : formulation d''une question de recherche, revue de littérature rigoureuse, choix et justification d''une méthode, présentation honnête des résultats, et préparation de la soutenance orale devant un jury.

Le mémoire de fin de Master

Que votre mémoire soit à dominante recherche ou à dominante professionnelle, la logique est la même : vous devez répondre à une question précise et utile, en mobilisant une méthode adaptée aux données ou au terrain dont vous disposez, et en argumentant honnêtement, y compris sur les limites de votre travail. Un bon mémoire de Master 2 ne prétend jamais résoudre un problème économique majeur à lui seul ; il apporte une contribution modeste mais rigoureuse, clairement délimitée.

Règle d''or sur les sources : ne citez jamais un auteur, une institution, un chiffre officiel ou une étude empirique que vous n''avez pas vérifiés vous-même dans une source fiable. En cas de doute sur un chiffre précis (taux de croissance d''un pays, montant d''un programme, date d''un accord régional), formulez le constat en termes généraux plutôt que d''inventer une précision que vous ne maîtrisez pas. Un correcteur ou un jury détecte très vite une référence fabriquée, et cela discrédite immédiatement l''ensemble du travail.

Méthode de travail en Master 2

- Construisez un calendrier de mémoire dès le début du semestre : question de recherche d''ici deux semaines, revue de littérature d''ici un mois, collecte ou analyse des données ensuite, rédaction continue plutôt que tout en fin de parcours.
- Pour les matières d''examen, privilégiez les cas transversaux : un sujet de Master 2 combine souvent intégration régionale, financement du développement et parfois une dimension méthodologique.
- Préparez votre soutenance comme un exercice de communication professionnelle : dix minutes pour présenter l''essentiel de votre travail à un public qui ne l''a pas lu en détail, puis des réponses construites aux questions du jury.

Plan de révision sur six semaines

Semaine 1 : consolidation des prérequis de Licence et Master 1 utiles (avantage comparatif, politiques économiques en économie ouverte, trilemme de Mundell) et cadrage de votre sujet de mémoire.

Semaine 2 : économie internationale et intégration régionale, partie théorique (avantage comparatif ricardien, théories modernes du commerce).

Semaine 3 : économie internationale et intégration régionale, partie appliquée (union douanière, création et détournement de commerce, CEDEAO/UEMOA en termes généraux).

Semaine 4 : finance du développement et politiques publiques, partie instruments de financement, puis partie évaluation d''impact (principes, méthode de la différence de différences en exemple simple).

Semaine 5 : méthodologie du mémoire, revue de littérature de votre propre sujet, préparation d''un plan détaillé.

Semaine 6 : révision croisée, sujets types, et répétition orale de votre présentation de soutenance devant un camarade ou un miroir, chronométrée à dix minutes.

Points clés à retenir
- Le Master 2 est l''année de la production personnelle : le mémoire mobilise l''ensemble de vos acquis.
- L''économie internationale avancée porte sur les théories du commerce et l''intégration régionale ouest-africaine concrète.
- La finance du développement combine instruments de financement et méthodes d''évaluation d''impact des politiques publiques.
- La méthodologie du mémoire et la préparation à la soutenance sont une matière à part entière, à ne pas négliger.
- Aucune référence, chiffre ou étude ne doit être inventé dans un mémoire ; en cas de doute, restez en termes généraux.

## Exercices pratiques

1. Citez les trois matières avancées de ce semestre de Master 2 et expliquez en une phrase ce que chacune apporte par rapport au Master 1.
2. Pourquoi un mémoire de Master 2 doit-il se limiter à une contribution modeste et clairement délimitée plutôt que viser à résoudre un problème économique majeur ?
3. Que risque un étudiant qui cite, dans son mémoire, un chiffre officiel qu''il n''a pas vérifié et qui se révèle faux ?
4. Construisez un calendrier personnel de rédaction de mémoire sur les six semaines de cette séquence, en l''adaptant à votre propre sujet.
5. Pourquoi la préparation de la soutenance orale est-elle considérée comme une compétence professionnelle à part entière, au-delà du contenu du mémoire lui-même ?

## Corrigé

1. Économie internationale et intégration régionale africaine : approfondit les théories du commerce et les mécanismes concrets de l''intégration régionale ouest-africaine. Finance du développement et politiques publiques : instruments de financement du développement et méthodes d''évaluation d''impact. Méthodologie du mémoire et soutenance : accompagne la construction méthodologique et la communication orale du travail de fin d''études.
2. Parce qu''un sujet de mémoire trop large ou trop ambitieux dépasse généralement les moyens méthodologiques et le temps disponibles d''un étudiant de Master, ce qui conduit à un travail superficiel sur tous les points plutôt qu''à une contribution rigoureuse sur un point précis ; les jurys valorisent davantage la rigueur sur un périmètre restreint que l''ambition mal maîtrisée.
3. Il risque de voir la crédibilité de l''ensemble de son travail remise en cause par le jury, au-delà du seul chiffre erroné : une erreur factuelle vérifiable fait douter de la rigueur générale du mémoire et peut affecter sérieusement la note, en plus de poser un problème d''intégrité académique si l''erreur relève d''une invention plutôt que d''une simple imprécision involontaire.
4. Réponse libre : l''essentiel est d''inclure un cadrage du sujet en semaine 1, une revue de littérature en semaines 2 à 3, puis une phase d''analyse et de rédaction continue, avec un temps dédié à la répétition de la soutenance en fin de parcours.
5. Parce que, dans la vie professionnelle, savoir présenter clairement et convaincre un public qui n''a pas le temps de lire un document complet est une compétence aussi précieuse que la capacité à produire une analyse rigoureuse ; la soutenance est souvent la première occasion pour un étudiant de s''exercer formellement à cet exercice devant un jury exigeant.', 'texte', 45, true, 10
from public.courses c where c.slug = 'mas-eco-m2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Réussir ses examens de Master 2 en Économie');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Économie internationale et intégration régionale africaine : l''essentiel pour l''examen', 'Objectifs de la leçon

Cette leçon approfondit l''économie internationale et l''intégration régionale africaine : les théories du commerce international au-delà de l''avantage comparatif simple, et les mécanismes concrets d''une union douanière comme l''UEMOA, avec les notions de création et de détournement de commerce. Tous les calculs numériques ont été vérifiés.

Rappel et approfondissement : l''avantage comparatif ricardien

En Licence, vous avez vu que chaque pays a intérêt à se spécialiser dans la production où son coût d''opportunité est le plus faible. Reprenons un exemple fictif vérifié : au Sénégal fictif, produire une unité de tissu nécessite 4 heures de travail, et une unité de riz 8 heures. En Côte d''Ivoire fictive, tissu et riz nécessitent chacun 6 heures. Le coût d''opportunité du tissu, exprimé en riz sacrifié, est de 4/8 = 0,5 au Sénégal fictif, contre 6/6 = 1,0 en Côte d''Ivoire fictive. Le Sénégal fictif a donc un avantage comparatif dans le tissu (coût d''opportunité plus faible), et la Côte d''Ivoire fictive dans le riz (coût d''opportunité du riz, en tissu, de 1,0 contre 2,0 au Sénégal fictif). Chaque pays gagne à se spécialiser et à échanger, même si l''un des deux pays (ici la Côte d''Ivoire fictive) n''a d''avantage absolu dans aucun des deux biens dans cet exemple particulier.

Au-delà de Ricardo : les théories modernes du commerce

Le modèle ricardien explique la spécialisation par les différences de productivité du travail entre pays. Les théories plus modernes enrichissent ce cadre : le modèle de Heckscher-Ohlin explique la spécialisation par les différences de dotations en facteurs de production (travail, capital, terre) entre pays ; les théories de la concurrence imparfaite et des économies d''échelle expliquent pourquoi des pays aux structures économiques proches échangent quand même beaucoup entre eux (commerce intra-branche, différenciation de produit) ; enfin, les théories plus récentes insistent sur l''hétérogénéité des entreprises au sein d''un même secteur, où seules les entreprises les plus productives parviennent à exporter, ce qui explique pourquoi l''ouverture commerciale peut accroître la productivité moyenne d''un secteur sans que chaque entreprise individuelle change de technologie.

L''intégration régionale ouest-africaine : mécanismes

L''UEMOA constitue une union douanière : les pays membres appliquent un tarif extérieur commun face aux pays tiers, et suppriment les droits de douane entre eux (tarif nul pour le commerce intra-régional). C''est une étape plus poussée qu''une simple zone de libre-échange, où chaque pays garde son propre tarif extérieur. La Communauté économique des États de l''Afrique de l''Ouest (CEDEAO), plus large géographiquement, poursuit également des objectifs d''intégration économique régionale, avec des enjeux de convergence entre les différents cadres institutionnels de la région. La zone de libre-échange continentale africaine (ZLECAf) vise, à une échelle encore plus large, à réduire les barrières commerciales entre pays africains. Ces architectures se complètent et se chevauchent partiellement, ce qui pose des défis pratiques de cohérence des règles commerciales.

Création et détournement de commerce : un exemple numérique vérifié

Une union douanière peut avoir deux effets opposés sur le bien-être économique, qu''il faut savoir distinguer avec un exemple chiffré.

Avant l''union, un pays fictif importe un bien du reste du monde au prix mondial de 100 FCFA (en unité fictive), avec un tarif national de 30 %, soit un prix domestique payé par le consommateur de 100 × 1,30 = 130 FCFA.

Après l''union douanière, ce pays importe désormais sans tarif (tarif nul intra-régional) auprès d''un partenaire régional dont le coût de production est de 105 FCFA — un partenaire moins efficace que le reste du monde (dont le prix restait à 100 FCFA), mais dont l''accès est désormais exonéré de tarif.

Le consommateur paie maintenant 105 FCFA au lieu de 130 FCFA : c''est un gain de pouvoir d''achat de 25 FCFA par unité, lié à la suppression du tarif. Mais comparé au prix mondial hors tarif de référence, 100 FCFA, le partenaire régional reste 5 FCFA plus cher : c''est un coût de détournement de commerce, car les échanges se sont réorientés vers un fournisseur moins efficace (le partenaire régional) au détriment du fournisseur le plus efficace au niveau mondial, uniquement en raison de la structure tarifaire de l''union.

Ce cas illustre le détournement de commerce : les échanges se détournent d''un fournisseur mondial plus efficace vers un partenaire régional moins efficace, simplement parce que ce dernier bénéficie d''une exonération tarifaire. À l''inverse, on parle de création de commerce lorsque l''union douanière permet des échanges nouveaux, bénéfiques, qui n''existaient pas auparavant, par exemple si le partenaire régional avait été plus efficace que le reste du monde (un coût de production inférieur à 100 FCFA dans notre exemple) : dans ce cas, l''union n''aurait fait que révéler et exploiter un avantage comparatif réel, sans coût de détournement.

L''enjeu pour les décideurs de politique commerciale régionale est donc de concevoir des règles d''origine et des tarifs extérieurs communs qui maximisent la création de commerce (échanges avec les partenaires les plus efficaces) et limitent le détournement de commerce (échanges biaisés vers des partenaires moins efficaces mais favorisés tarifairement).

Points clés à retenir
- L''avantage comparatif ricardien reste la base, mais les théories modernes (Heckscher-Ohlin, concurrence imparfaite, hétérogénéité des entreprises) enrichissent l''analyse du commerce international.
- L''UEMOA est une union douanière : tarif extérieur commun et suppression des tarifs intra-régionaux, une étape plus intégrée qu''une simple zone de libre-échange.
- La création de commerce est un gain net lorsque l''union révèle un avantage comparatif réel ; le détournement de commerce est une perte d''efficacité lorsque l''union réoriente les échanges vers un partenaire moins efficace que le reste du monde.
- Un exemple numérique simple permet de quantifier ces effets : comparer le prix domestique avant l''union, le prix du partenaire régional après l''union, et le prix mondial de référence.

## Exercices pratiques

1. Expliquez la différence entre une zone de libre-échange et une union douanière.
2. Si le coût du partenaire régional était de 98 FCFA (prix mondial 100 FCFA), s''agirait-il de création ou de détournement de commerce ? Justifiez.
3. Pourquoi les théories modernes du commerce expliquent-elles mieux que le modèle ricardien le fait que deux pays proches commercent beaucoup entre eux ?
4. Cas pratique : un pays fictif a un tarif national de 40 % sur un bien au prix mondial de 200 FCFA. Son partenaire régional le produit à 230 FCFA. Calculez le prix avant/après union, et qualifiez l''effet.
5. Pourquoi la coexistence de plusieurs cadres d''intégration (UEMOA, CEDEAO, ZLECAf) pose-t-elle des défis de cohérence ?
6. Si le coût du travail pour le riz passait à 10 heures en Côte d''Ivoire fictive (au lieu de 6), les avantages comparatifs changeraient-ils ? Recalculez.
7. Pourquoi un décideur doit-il se préoccuper à la fois de création et de détournement de commerce lors de la conception d''un tarif extérieur commun ?

## Corrigé

1. Zone de libre-échange : suppression des tarifs entre membres, chacun garde son tarif extérieur propre. Union douanière : suppression des tarifs entre membres ET tarif extérieur commun face aux tiers — une intégration plus poussée.
2. Création de commerce : à 98 FCFA, le partenaire régional est moins cher que le prix mondial (100 FCFA). L''union révèle alors un avantage comparatif réel, sans réorienter les échanges vers un fournisseur moins efficace.
3. Le modèle ricardien explique le commerce par des différences de productivité ; or une grande partie du commerce mondial se fait entre pays aux structures proches, mieux expliquée par la concurrence imparfaite et la différenciation de produit (diversité des préférences, économies d''échelle).
4. Avant : 200×1,40 = 280 FCFA. Après : 230 FCFA. Gain consommateur : 50 FCFA, mais le partenaire (230) reste plus cher que le monde (200) : détournement de commerce, coût d''inefficacité de 30 FCFA/unité.
5. Des règles d''origine, tarifs ou calendriers différents entre cadres créent des incohérences pour les entreprises exportant dans plusieurs cadres, complexifient les formalités, et ralentissent la convergence vers un marché régional unifié.
6. Oui, partiellement. Coût d''opportunité du tissu en Côte d''Ivoire fictive : 6/10 = 0,6 (contre 0,5 au Sénégal, inchangé) : le Sénégal garde l''avantage. Coût d''opportunité du riz : 10/6 ≈ 1,67 (contre 2,0 au Sénégal) : la Côte d''Ivoire garde aussi son avantage, mais l''écart se resserre.
7. Un tarif mal calibré peut maximiser le détournement (partenaires moins efficaces favorisés) plutôt que la création (échanges avec les partenaires réellement les plus efficaces) ; l''objectif est de maximiser les gains nets d''efficacité pour la zone, pas seulement de protéger les producteurs existants.', 'texte', 50, false, 20
from public.courses c where c.slug = 'mas-eco-m2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Économie internationale et intégration régionale africaine : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Finance du développement et politiques publiques : l''essentiel pour l''examen', 'Objectifs de la leçon

Cette leçon traite de la finance du développement et des politiques publiques : les principaux instruments de financement du développement, et les principes méthodologiques de l''évaluation d''impact, utilisés pour juger si un programme ou une politique publique atteint réellement ses objectifs. Les calculs numériques sont vérifiés et les données fictives.

Les instruments de financement du développement

Le financement du développement mobilise plusieurs grandes catégories de ressources, qu''il convient de connaître en termes généraux. Le financement public domestique provient des recettes fiscales et non fiscales de l''État, et de l''emprunt public (marchés financiers nationaux ou régionaux, institutions internationales). Le financement extérieur public comprend l''aide au développement (dons et prêts concessionnels d''institutions bilatérales ou multilatérales) et les prêts non concessionnels. Le financement privé comprend les investissements directs étrangers, les investissements de portefeuille, le crédit bancaire privé, et des montages plus récents comme les partenariats public-privé, qui associent financement et gestion privés à des infrastructures ou services d''intérêt public.

Chaque instrument a ses avantages et ses limites. L''aide au développement concessionnelle peut financer des investissements à fort impact social mais à faible rentabilité financière directe (santé, éducation de base), mais elle dépend de la volonté des bailleurs et peut être volatile. L''emprunt sur les marchés financiers offre davantage d''autonomie mais à un coût financier plus élevé et avec un risque de change si la dette est libellée en devise étrangère. Les partenariats public-privé peuvent mobiliser l''expertise et le capital privés pour des infrastructures, mais nécessitent des contrats complexes et un partage rigoureux des risques entre les parties, sous peine de coûts cachés pour les finances publiques à long terme.

L''évaluation d''impact : principes méthodologiques

Une politique publique ou un programme de développement (par exemple un programme de microcrédit, une subvention agricole, un programme de formation professionnelle) a-t-il réellement produit l''effet escompté ? Répondre correctement à cette question nécessite une méthode rigoureuse, car il ne suffit pas d''observer que la situation des bénéficiaires s''est améliorée après le programme : cette amélioration aurait pu se produire même sans le programme, pour d''autres raisons (tendance générale de l''économie, saison agricole favorable, etc.).

Le principe central de l''évaluation d''impact est la comparaison à un contrefactuel : que serait-il arrivé aux bénéficiaires SANS le programme ? Puisque l''on ne peut observer directement ce contrefactuel, les méthodes d''évaluation construisent une approximation crédible, le plus souvent à l''aide d''un groupe témoin (ou groupe de comparaison) qui n''a pas bénéficié du programme mais qui lui est similaire par ailleurs.

La méthode de la différence de différences (DID)

Une méthode simple et très utilisée consiste à comparer l''évolution dans le temps du groupe bénéficiaire (groupe « traité ») à celle d''un groupe témoin comparable, avant et après la mise en place du programme. L''idée : si les deux groupes auraient évolué de façon similaire sans le programme, alors tout écart d''évolution entre les deux groupes après le programme peut être attribué à l''effet du programme.

Exemple numérique fictif vérifié : un programme de microcrédit fictif est mis en place dans une région test. Le revenu mensuel moyen des ménages, en milliers de FCFA, est mesuré avant et après le programme, dans la région test (bénéficiaire) et dans une région témoin comparable (non bénéficiaire) :

Région test (traitée) : avant = 85, après = 112. Région témoin : avant = 83, après = 92.

Différence dans le groupe traité : 112 - 85 = 27 milliers de FCFA. Différence dans le groupe témoin : 92 - 83 = 9 milliers de FCFA. L''effet DID, c''est-à-dire l''impact net attribuable au programme, est la différence de ces deux différences : 27 - 9 = 18 milliers de FCFA par mois.

Interprétation : sans le programme, on aurait pu s''attendre à ce que le revenu de la région test augmente d''environ 9 milliers de FCFA, comme dans la région témoin (évolution de fond commune aux deux régions, due par exemple à la conjoncture économique générale). L''augmentation effective de 27 milliers de FCFA dans la région traitée dépasse donc cette évolution de fond de 18 milliers de FCFA, ce supplément étant attribué à l''effet net du programme de microcrédit.

Hypothèse clé et limites de la méthode

La différence de différences repose sur une hypothèse cruciale appelée « hypothèse des tendances parallèles » : en l''absence du programme, les deux groupes auraient évolué de façon similaire dans le temps. Cette hypothèse n''est jamais directement vérifiable après le fait, mais elle peut être rendue plus ou moins crédible en choisissant un groupe témoin réellement comparable (mêmes caractéristiques socio-économiques, même zone géographique, même exposition aux chocs économiques généraux), et en vérifiant si possible que les deux groupes évoluaient déjà de façon parallèle avant le programme.

Un décideur public ou un bailleur de fonds qui doit juger de l''efficacité d''un programme de développement doit toujours se poser trois questions : le groupe témoin est-il réellement comparable au groupe traité ? L''hypothèse des tendances parallèles est-elle plausible dans ce contexte ? L''effet mesuré est-il suffisamment important, au regard du coût du programme, pour justifier sa généralisation à plus grande échelle ?

Points clés à retenir
- Le financement du développement combine ressources publiques domestiques, financement extérieur (aide, emprunt), et financement privé (investissement direct, partenariats public-privé).
- L''évaluation d''impact répond à la question : que serait-il arrivé sans le programme ? en construisant un contrefactuel crédible, souvent via un groupe témoin.
- La méthode de la différence de différences compare l''évolution du groupe traité à celle du groupe témoin, avant et après le programme.
- L''hypothèse des tendances parallèles est la condition de validité centrale de cette méthode, à toujours discuter dans une analyse rigoureuse.
- Aucun chiffre officiel de financement ou de résultat d''évaluation réelle ne doit être inventé ; les exemples numériques de cette leçon sont fictifs et construits pour l''exercice.

## Exercices pratiques

1. Citez trois instruments de financement du développement et une limite de chacun.
2. Pourquoi ne suffit-il pas d''observer une amélioration après un programme pour conclure qu''il a été efficace ?
3. Si le revenu du groupe témoin était resté parfaitement stable (avant = après = 83), quel serait l''effet DID calculé ?
4. Qu''est-ce que l''hypothèse des tendances parallèles, et pourquoi est-elle difficile à vérifier directement ?
5. Cas pratique : un programme fictif de formation est évalué. Taux d''emploi des bénéficiaires avant = 40 %, après = 58 %. Groupe témoin avant = 42 %, après = 48 %. Calculez l''effet DID et interprétez.
6. Pourquoi un partenariat public-privé mal structuré peut-il générer des coûts cachés pour les finances publiques ?
7. Un décideur compare un programme à effet DID de 2 points à coût élevé, et un autre à effet de 1,5 point à coût bien plus faible. Quels éléments doivent entrer dans sa décision ?

## Corrigé

1. Aide concessionnelle : fort impact social possible mais dépend des bailleurs, volatile. Emprunt sur les marchés : autonomie mais coût plus élevé et risque de change si en devise étrangère. Partenariat public-privé : mobilise expertise et capital privés mais contrats complexes, risque de coûts cachés si le partage des risques est mal défini.
2. Parce que cette amélioration aurait pu survenir même sans le programme (tendance générale, facteurs saisonniers) : sans contrefactuel crédible, on ne peut isoler l''effet propre du programme.
3. Différence traité : 112-85=27. Différence témoin : 0. Effet DID = 27, plus élevé que les 18 du cours, car l''absence totale d''évolution du témoin attribue davantage au programme.
4. C''est l''hypothèse que, sans le programme, les deux groupes auraient évolué de façon similaire. Difficile à vérifier car le contrefactuel réel est inobservable ; on évalue sa plausibilité en comparant les tendances avant le programme.
5. Différence traité : 58-40=18 points. Différence témoin : 48-42=6 points. Effet DID = 18-6 = 12 points. Le programme est associé à une amélioration nette d''environ 12 points du taux d''emploi, au-delà de la tendance générale.
6. Les contrats peuvent sous-estimer des risques futurs (maintenance, demande, coûts), les transférer implicitement à l''État en cas de défaillance du partenaire, ou inclure des garanties publiques coûteuses révélées bien après la signature.
7. Comparer le rapport effet/coût (rentabilité sociale par FCFA investi), vérifier la robustesse méthodologique de chaque évaluation (échantillon, qualité du témoin, plausibilité des tendances parallèles), et envisager de combiner les programmes selon les contraintes budgétaires et priorités.', 'texte', 50, false, 30
from public.courses c where c.slug = 'mas-eco-m2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Finance du développement et politiques publiques : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Méthodologie du mémoire de recherche et soutenance : l''essentiel pour l''examen', 'Objectifs de la leçon

Cette leçon traite de la méthodologie du mémoire de recherche ou professionnel et de la préparation à la soutenance orale, dernière matière avancée de ce semestre. Elle s''applique aussi bien à un mémoire académique qu''à un mémoire professionnel adossé à un stage.

Formuler une question de recherche

Un bon mémoire commence par une question précise, pas par un sujet vague. Une question vague du type « l''intégration régionale en Afrique de l''Ouest » ne permet pas de structurer un travail rigoureux. Une question précise, par exemple « dans quelle mesure l''ouverture tarifaire intra-UEMOA a-t-elle affecté la compétitivité d''un secteur donné dans un pays donné sur une période donnée », permet de délimiter le travail, de choisir une méthode adaptée, et de conclure clairement.

Une bonne question de recherche doit être : précise (délimitée dans le temps, l''espace, le secteur), pertinente (elle intéresse un public économique ou professionnel réel), faisable (vous disposez ou pouvez obtenir les données ou les informations nécessaires dans le temps imparti), et honnête (vous ne savez pas déjà la réponse avant de commencer le travail : c''est une vraie question, pas une démonstration a priori).

La revue de littérature

La revue de littérature situe votre travail par rapport à ce qui a déjà été écrit sur le sujet ou sur des sujets proches. Elle poursuit trois objectifs : montrer que vous connaissez le champ de votre question, identifier ce qui a déjà été établi (pour ne pas refaire un travail déjà fait) et ce qui reste incertain ou débattu (c''est souvent là que se loge votre contribution), et construire le cadre théorique ou conceptuel que vous allez utiliser dans votre propre analyse.

Règle absolue sur les sources : chaque référence citée dans votre revue de littérature doit avoir été réellement lue ou au minimum son résumé vérifié par vous-même, auprès d''une source fiable (ouvrage, article académique, rapport institutionnel). N''inventez jamais un auteur, un titre, une date de publication ou un résultat empirique précis que vous n''avez pas vérifié. Si vous avez un doute sur un chiffre ou une référence, il est toujours préférable d''écrire une phrase plus générale et honnête (« plusieurs études ont montré un effet positif de ce type de programme dans des contextes comparables », sans citer précisément une étude non vérifiée) que d''inventer une précision non maîtrisée. Une référence fabriquée, si elle est détectée par le jury, peut gravement compromettre la crédibilité de l''ensemble du mémoire.

Choisir et justifier une méthode

Une fois la question posée et la littérature maîtrisée, vous devez choisir une méthode adaptée aux données ou au terrain réellement disponibles, et non une méthode « idéale » que vous ne pourrez pas mettre en œuvre. Un petit échantillon de données qualitatives (entretiens, études de cas) appelle une méthode d''analyse qualitative rigoureuse ; des données chiffrées suffisantes peuvent justifier une analyse économétrique ; l''absence de groupe témoin crédible limite les méthodes d''évaluation d''impact disponibles. La méthode doit toujours être justifiée explicitement dans le mémoire : pourquoi cette méthode, et pas une autre, est-elle adaptée à votre question et à vos données ?

Présenter des résultats honnêtes

Un résultat statistiquement non significatif, un résultat partiel, ou un résultat qui contredit votre hypothèse initiale, ne doivent jamais être cachés ou maquillés : ils doivent être présentés et discutés honnêtement, avec leurs limites. Un jury valorise beaucoup plus un travail qui présente honnêtement des résultats modestes mais bien analysés, qu''un travail qui prétend à des conclusions plus fortes que ce que les données permettent réellement d''établir. La section « limites de l''étude », loin d''être une faiblesse, est un signe de maturité méthodologique : elle montre que vous comprenez la portée réelle de votre travail.

Préparer la soutenance orale

La soutenance est un exercice de communication professionnelle, distinct de la rédaction écrite. Quelques principes à appliquer : préparez une présentation d''environ dix minutes qui résume l''essentiel (question, méthode, résultat principal, limite principale) sans entrer dans tous les détails techniques du mémoire écrit ; anticipez les questions attendues du jury (pourquoi cette méthode, pourquoi ce choix de données, quelle est la limite principale de votre travail, quelle serait la suite possible de cette recherche) et préparez des réponses construites ; entraînez-vous à voix haute, chronométré, devant un public même informel (camarade, membre de la famille), car la fluidité orale ne s''acquiert pas en lisant ses notes en silence ; enfin, montrez que vous savez prendre du recul sur votre propre travail en acceptant les critiques du jury sans vous braquer ni sur-défendre un point faible identifié à juste titre.

Points clés à retenir
- Une question de recherche doit être précise, pertinente, faisable et honnête.
- La revue de littérature situe le travail et construit le cadre théorique ; aucune référence ne doit être inventée.
- La méthode choisie doit être justifiée par rapport aux données et au terrain réellement disponibles, pas par rapport à une méthode idéale inaccessible.
- Les résultats, même modestes ou partiels, doivent être présentés honnêtement, avec leurs limites clairement assumées.
- La soutenance est un exercice de communication à préparer spécifiquement : présentation courte et claire, anticipation des questions, entraînement oral chronométré.

## Exercices pratiques

1. Transformez le sujet vague « le financement des petites entreprises au Sénégal » en une question de recherche précise, pertinente et faisable.
2. Pourquoi une revue de littérature ne doit-elle pas se limiter à résumer ce que d''autres ont déjà écrit, sans identifier ce qui reste incertain ou débattu ?
3. Un étudiant trouve un résultat statistiquement non significatif après plusieurs semaines de travail. Que doit-il faire, et que ne doit-il surtout pas faire ?
4. Pourquoi la justification explicite de la méthode choisie est-elle un élément attendu par un jury de mémoire ?
5. Préparez, en cinq phrases maximum, le squelette d''une présentation orale de dix minutes pour un mémoire fictif sur un sujet de votre choix.
6. Pourquoi une référence bibliographique fabriquée ou non vérifiée est-elle particulièrement risquée pour la crédibilité d''un mémoire ?
7. Quelles sont les quatre questions que le jury pose presque systématiquement à un candidat, et comment s''y préparer ?

## Corrigé

1. Exemple de question précise : « Dans quelle mesure l''accès au microcrédit a-t-il affecté la survie à trois ans des petites entreprises commerciales dans une zone urbaine donnée du Sénégal, sur la période récente ? » Elle est précise (secteur, zone, horizon temporel), pertinente (enjeu réel de politique économique), potentiellement faisable (données d''enquête ou administratives mobilisables), et honnête (la réponse n''est pas connue à l''avance).
2. Parce que l''objectif d''un mémoire est d''apporter une contribution, même modeste ; si la revue de littérature se limite à résumer l''existant sans identifier une zone d''incertitude ou de débat, le mémoire n''a alors aucun espace propre pour apporter quoi que ce soit de nouveau, même à petite échelle.
3. Il doit présenter ce résultat honnêtement, en discutant ses causes possibles (échantillon limité, variable manquante, effet réellement faible dans ce contexte) et ses implications. Il ne doit surtout pas maquiller le résultat, choisir arbitrairement une autre spécification du modèle jusqu''à obtenir un résultat « significatif » sans justification théorique, ni cacher ce résultat en ne présentant que les résultats qui confirment son hypothèse initiale.
4. Parce que la rigueur méthodologique, et non seulement le résultat final, est au cœur de l''évaluation d''un mémoire de Master : un jury veut vérifier que l''étudiant comprend pourquoi sa méthode est adaptée à sa question et à ses données, et pas seulement qu''il sait appliquer une technique de façon mécanique.
5. Réponse libre, exemple de structure : présenter la question de recherche et sa pertinence ; situer brièvement le contexte et la littérature existante ; présenter la méthode choisie et pourquoi elle est adaptée ; présenter le résultat principal ; conclure sur la limite principale et une piste de recherche future.
6. Parce qu''une référence fabriquée, si elle est détectée, remet en cause non seulement cette référence précise mais la fiabilité de l''ensemble du travail aux yeux du jury, posant un problème de rigueur académique qui dépasse largement l''erreur ponctuelle elle-même.
7. Pourquoi ce terrain ? pourquoi cette méthode ? quelle est la principale limite ? quelle suite de recherche ? S''y préparer consiste à anticiper des réponses construites et honnêtes, appuyées sur les choix réellement faits, plutôt qu''à improviser le jour de la soutenance.', 'texte', 50, false, 40
from public.courses c where c.slug = 'mas-eco-m2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Méthodologie du mémoire de recherche et soutenance : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Sujet type d''examen de Master 2 Économie (entraînement, corrigé détaillé)', '## Fiche du sujet type

Ce sujet type d''examen de Master 2 en Économie couvre les trois matières avancées du semestre : économie internationale et intégration régionale africaine, finance du développement et politiques publiques, et méthodologie de recherche. Sujet NON OFFICIEL construit pour l''entraînement, barème indicatif sur 20 points. Durée indicative : 3 heures.

## Sujet

Partie 1 — Économie internationale et intégration régionale (7 points)

Un pays fictif membre d''une union douanière régionale importe un bien dont le prix mondial est de 150 FCFA (unité fictive). Son tarif national avant l''union était de 20 %. Après l''union, il importe ce bien sans tarif auprès d''un partenaire régional dont le coût de production est de 160 FCFA.

1.1. (2 points) Calculez le prix payé par le consommateur avant l''union, et après l''union.
1.2. (2 points) Qualifiez l''effet de cette union sur ce marché (création ou détournement de commerce) et justifiez par le calcul.
1.3. (3 points) Expliquez, en mobilisant la théorie de l''avantage comparatif, pourquoi un pays peut avoir intérêt à participer à une union régionale même si celle-ci génère, sur certains biens précis, un détournement de commerce.

Partie 2 — Finance du développement et évaluation d''impact (7 points)

Un programme fictif de subvention agricole est évalué par la méthode de la différence de différences. Le rendement moyen (en sacs de 50 kg par hectare) est mesuré avant et après le programme, dans une zone bénéficiaire et une zone témoin comparable : zone bénéficiaire avant = 18, après = 27 ; zone témoin avant = 17, après = 20.

2.1. (3 points) Calculez l''effet DID du programme sur le rendement agricole.
2.2. (2 points) Citez l''hypothèse clé de validité de cette méthode et expliquez pourquoi elle est difficile à vérifier directement.
2.3. (2 points) Citez deux instruments de financement qui pourraient avoir permis de financer ce programme, avec une limite de chacun.

Partie 3 — Méthodologie de recherche (6 points)

Un étudiant de Master 2 souhaite rédiger son mémoire sur le sujet suivant, tel qu''il l''a formulé initialement : « l''impact du commerce régional sur le développement en Afrique de l''Ouest ».

3.1. (2 points) Expliquez pourquoi ce sujet, formulé ainsi, n''est pas encore une question de recherche satisfaisante, et reformulez-le en une question précise, pertinente et faisable.
3.2. (2 points) L''étudiant trouve, après son analyse, un résultat statistiquement non significatif sur sa variable principale d''intérêt. Que doit-il faire dans la rédaction de son mémoire ?
3.3. (2 points) Citez deux questions que le jury est susceptible de poser à cet étudiant lors de sa soutenance, et expliquez comment il devrait s''y préparer.

## Corrigé détaillé

1.1. Avant l''union : 150 × 1,20 = 180 FCFA. Après l''union : 160 FCFA (prix du partenaire régional, sans tarif).

1.2. Le consommateur gagne (180-160 = 20 FCFA de baisse de prix), mais le partenaire régional (160 FCFA) reste plus cher que le prix mondial de référence (150 FCFA) : il s''agit donc de détournement de commerce, avec un coût d''inefficacité de 160-150 = 10 FCFA par unité par rapport au fournisseur mondial le plus efficace.

1.3. Même en présence d''un détournement de commerce sur certains biens précis, un pays peut avoir intérêt global à l''union régionale pour plusieurs raisons : la baisse de prix pour les consommateurs reste positive par rapport à la situation pré-union (gain net de 20 FCFA dans cet exemple, même si ce n''est pas optimal au niveau mondial) ; l''union peut générer une création de commerce nette sur d''autres biens où le partenaire régional est réellement plus efficace que le reste du monde, conformément à la théorie de l''avantage comparatif ; enfin, l''intégration régionale peut apporter des bénéfices dynamiques plus larges (économies d''échelle de marché, attractivité pour l''investissement, stabilité politique et institutionnelle régionale) qui dépassent le cadre étroit d''un seul bien analysé isolément.

2.1. Différence zone bénéficiaire : 27-18 = 9 sacs/ha. Différence zone témoin : 20-17 = 3 sacs/ha. Effet DID = 9-3 = 6 sacs de 50 kg par hectare, attribuable au programme de subvention agricole.

2.2. L''hypothèse des tendances parallèles : en l''absence du programme, les deux zones auraient évolué de façon similaire dans le temps. Elle est difficile à vérifier directement car le contrefactuel réel (ce qui serait arrivé à la zone bénéficiaire sans le programme) n''est jamais observable ; on ne peut qu''évaluer la plausibilité de cette hypothèse, par exemple en comparant les tendances des deux zones avant la mise en place du programme.

2.3. Aide au développement concessionnelle : peut financer ce type de programme à fort impact social, mais dépend de la volonté et de la disponibilité des bailleurs, une source potentiellement volatile. Financement public domestique (budget national) : offre davantage d''autonomie et de pérennité, mais est contraint par les capacités fiscales de l''État et peut être mis en concurrence avec d''autres priorités budgétaires.

3.1. Ce sujet est trop vague : il ne précise ni le secteur, ni la période, ni le pays, ni l''indicateur de développement retenu, ce qui rend le travail difficile à délimiter et à mener à bien dans le temps imparti. Reformulation possible : « Dans quelle mesure la suppression des tarifs intra-régionaux sur les produits agricoles transformés a-t-elle affecté le revenu des producteurs d''une filière donnée dans un pays donné, sur la période récente ? » Cette question est précise (secteur, pays, période), pertinente, et potentiellement faisable si des données sont mobilisables.

3.2. Il doit présenter ce résultat honnêtement dans son mémoire, en discutant les causes possibles (échantillon limité, variable omise, effet réellement faible dans ce contexte précis) et en évitant deux pièges : ne pas maquiller le résultat pour le faire apparaître plus favorable qu''il ne l''est, et ne pas chercher arbitrairement une autre spécification statistique jusqu''à obtenir un résultat significatif sans justification théorique solide (une pratique appelée recherche de significativité, à proscrire).

3.3. Exemples de questions possibles : pourquoi avoir choisi ce secteur et cette période précise plutôt qu''un autre cadre d''analyse ? Quelle est la principale limite méthodologique de votre travail, notamment liée à la non-significativité du résultat principal ? Pour s''y préparer, l''étudiant doit anticiper des réponses construites et honnêtes, fondées sur les choix réellement faits dans son mémoire (disponibilité des données, contraintes de temps), et s''entraîner à voix haute à les formuler clairement avant le jour de la soutenance.

## Exercices pratiques

1. Dans la partie 1, si le coût du partenaire régional était de 140 FCFA au lieu de 160 FCFA, l''effet serait-il toujours un détournement de commerce ?
2. Dans la partie 2, si la zone témoin avait connu une baisse de rendement (avant = 17, après = 15), recalculez l''effet DID et commentez.
3. Pourquoi la reformulation d''une question de recherche vague en question précise est-elle presque toujours nécessaire avant de commencer un mémoire ?

## Corrigé

1. Non : à 140 FCFA, le partenaire régional serait moins cher que le prix mondial de référence (150 FCFA). Il s''agirait alors de création de commerce, l''union révélant un avantage comparatif réel du partenaire régional plutôt que de détourner les échanges vers un fournisseur moins efficace.
2. Différence zone témoin : 15-17 = -2 sacs/ha. Effet DID = 9 - (-2) = 11 sacs/ha, un effet net plus élevé que les 6 sacs calculés initialement, car la zone témoin a connu une évolution défavorable que la zone bénéficiaire n''a pas connue, accentuant l''écart attribué au programme.
3. Parce qu''une question vague ne permet pas de délimiter les données nécessaires, la méthode adaptée, ni le temps de travail requis ; elle rend le mémoire difficile à structurer et expose l''étudiant au risque de dériver vers un travail trop large et superficiel, insatisfaisant pour un jury qui attend une contribution rigoureuse sur un périmètre clairement défini.', 'texte', 60, false, 50
from public.courses c where c.slug = 'mas-eco-m2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Sujet type d''examen de Master 2 Économie (entraînement, corrigé détaillé)');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Économie internationale et intégration régionale africaine', '## Fiche du cours vidéo

Durée : 1h30 (90 minutes). Sujet : Économie internationale et intégration régionale africaine — théories du commerce, union douanière, création et détournement de commerce.
Objectifs : maîtriser l''avantage comparatif et les théories modernes du commerce, comprendre les mécanismes de l''UEMOA et de la CEDEAO, savoir calculer et interpréter la création et le détournement de commerce.
Matériel : tableau ou diaporama, calculatrice.
Prérequis : économie monétaire et internationale (Licence 3).

## Déroulé minuté

## 00:00 – 05:00 · Accueil

Bonjour et bienvenue dans ce premier cours vidéo de votre semestre de Master 2. Nous allons approfondir l''économie internationale et l''intégration régionale africaine, un sujet central pour comprendre les choix de politique commerciale de nos pays. Au programme : les théories du commerce international au-delà de l''avantage comparatif simple, le fonctionnement concret d''une union douanière, et les notions de création et de détournement de commerce, avec des calculs vérifiés.

## 05:00 – 20:00 · L''avantage comparatif, rappel et approfondissement

Reprenons notre exemple fictif vérifié. Au Sénégal fictif, produire une unité de tissu nécessite 4 heures de travail, une unité de riz 8 heures. En Côte d''Ivoire fictive, chaque bien nécessite 6 heures. Calculons le coût d''opportunité du tissu, en riz sacrifié : au Sénégal fictif, 4 divisé par 8, égal 0,5 ; en Côte d''Ivoire fictive, 6 divisé par 6, égal 1,0. Le Sénégal fictif a donc un coût d''opportunité plus faible dans le tissu : il détient l''avantage comparatif dans ce bien. Symétriquement, le coût d''opportunité du riz, en tissu, est de 8 divisé par 4, égal 2,0 au Sénégal fictif, et de 6 divisé par 6, égal 1,0 en Côte d''Ivoire fictive : c''est la Côte d''Ivoire fictive qui détient l''avantage comparatif dans le riz. Chaque pays gagne à se spécialiser et à échanger, même si, dans cet exemple, la Côte d''Ivoire fictive n''a d''avantage absolu dans aucun des deux biens : c''est tout l''intérêt pédagogique du modèle ricardien, qui montre que le commerce profite aux deux parties indépendamment des niveaux absolus de productivité.

Mais ce modèle, aussi élégant soit-il, laisse de côté une grande partie du commerce mondial réel. Les théories modernes l''enrichissent : le modèle de Heckscher-Ohlin explique la spécialisation par les différences de dotations en facteurs de production, travail, capital, terre, entre pays. Les théories de la concurrence imparfaite et des économies d''échelle expliquent pourquoi des pays aux structures économiques très proches échangent quand même énormément entre eux, ce qu''on appelle le commerce intra-branche, par la différenciation de produit et la diversité des préférences des consommateurs. Enfin, les théories plus récentes sur l''hétérogénéité des entreprises montrent que, au sein d''un même secteur, seules les entreprises les plus productives parviennent à exporter, ce qui explique pourquoi l''ouverture commerciale peut augmenter la productivité moyenne d''un secteur par un effet de sélection, sans que chaque entreprise individuelle ait changé de technologie.

## 20:00 – 35:00 · L''architecture de l''intégration régionale ouest-africaine

Parlons maintenant des mécanismes concrets de l''intégration régionale en Afrique de l''Ouest, toujours en termes généraux. L''UEMOA constitue une union douanière : ses pays membres appliquent un tarif extérieur commun face aux pays tiers, et suppriment les droits de douane entre eux. C''est une étape plus intégrée qu''une simple zone de libre-échange, où chaque pays garde son propre tarif extérieur face au reste du monde. La Communauté économique des États de l''Afrique de l''Ouest, la CEDEAO, plus large géographiquement, poursuit également des objectifs d''intégration économique régionale, avec des enjeux de convergence entre les différents cadres institutionnels présents dans la région. À une échelle encore plus large, la zone de libre-échange continentale africaine vise à réduire les barrières commerciales entre l''ensemble des pays africains.

Ces architectures se complètent, mais se chevauchent aussi partiellement, ce qui pose de véritables défis pratiques : des règles d''origine différentes, des calendriers de libéralisation différents, des formalités douanières parfois redondantes pour une entreprise qui exporte dans plusieurs de ces cadres à la fois. Un des grands enjeux de la gouvernance économique régionale actuelle est précisément de renforcer la cohérence entre ces différents niveaux d''intégration.

## 35:00 – 50:00 · Création et détournement de commerce : construction de l''exemple

Passons maintenant à l''outil analytique central de cette séance : la distinction entre création et détournement de commerce, que nous allons construire pas à pas avec un exemple numérique vérifié.

Imaginons un pays fictif qui importe un bien dont le prix mondial est de 100 FCFA, en unité fictive. Avant l''union douanière, ce pays applique un tarif national de 30 % sur ce bien : le prix payé par le consommateur domestique est donc de 100 multiplié par 1,30, soit 130 FCFA.

Après l''union douanière, ce pays importe désormais ce bien sans tarif auprès d''un partenaire régional, dont le coût de production est de 105 FCFA — un partenaire moins efficace que le reste du monde, dont le prix restait à 100 FCFA, mais dont l''accès est désormais exonéré de tarif grâce à l''union.

Calculons l''effet sur le consommateur : il paie maintenant 105 FCFA au lieu de 130 FCFA, soit un gain de pouvoir d''achat de 25 FCFA par unité. Mais comparons ce nouveau prix au prix mondial de référence, 100 FCFA : le partenaire régional reste 5 FCFA plus cher. C''est le coût du détournement de commerce : les échanges se sont réorientés vers un fournisseur moins efficace au niveau mondial, uniquement parce que la structure tarifaire de l''union l''avantage artificiellement.

## 50:00 – 55:00 · Pause et quiz interactif

Pause de cinq minutes avec un quiz. Première question : dans l''exemple précédent, si le coût du partenaire régional avait été de 95 FCFA au lieu de 105 FCFA, s''agirait-il de création ou de détournement de commerce ? Deuxième question : pourquoi dit-on que l''UEMOA est une union douanière et pas seulement une zone de libre-échange ? Troisième question : citez un défi pratique posé par la coexistence de l''UEMOA, de la CEDEAO et de la ZLECAf.

Correction : premièrement, à 95 FCFA, le partenaire régional serait moins cher que le prix mondial de référence de 100 FCFA : il s''agirait de création de commerce, l''union révélant un avantage comparatif réel du partenaire. Deuxièmement, parce que l''UEMOA combine suppression des tarifs intra-régionaux ET adoption d''un tarif extérieur commun face aux pays tiers, alors qu''une simple zone de libre-échange ne supprime que les tarifs internes, chaque pays gardant son propre tarif extérieur. Troisièmement, par exemple des règles d''origine ou des calendriers de libéralisation différents entre les cadres, compliquant les formalités pour les entreprises qui exportent dans plusieurs d''entre eux.

## 55:00 – 1:25:00 · Application guidée et discussion des implications de politique commerciale

Reprenons un cas guidé complet. Un gouvernement fictif, membre d''une union douanière régionale, doit décider s''il maintient ou révise son tarif extérieur commun sur un bien stratégique, par exemple un intrant industriel. Le prix mondial de cet intrant est de 80 FCFA. Le tarif extérieur commun actuel est de 25 %, donnant un prix domestique, pour les importations hors zone, de 80 multiplié par 1,25, soit 100 FCFA. Un partenaire régional produit cet intrant à 90 FCFA, sans tarif intra-régional.

Calculons : le prix payé actuellement pour l''intrant importé du partenaire régional est de 90 FCFA, contre 100 FCFA s''il venait du reste du monde avec le tarif actuel, et 80 FCFA au prix mondial hors tout tarif. Le partenaire régional, à 90 FCFA, reste 10 FCFA plus cher que le prix mondial : nous sommes dans une situation de détournement de commerce sur ce bien précis.

Question de politique économique : ce gouvernement doit-il pour autant chercher à réduire le tarif extérieur commun pour limiter ce détournement de commerce ? La réponse nécessite de mettre en balance plusieurs éléments : l''intérêt des consommateurs et des entreprises utilisatrices de cet intrant à payer un prix plus proche du prix mondial, face à l''intérêt de préserver un espace de production régional pour cet intrant, susceptible de générer des emplois et une capacité industrielle régionale, même si celle-ci n''est pas immédiatement la plus compétitive au niveau mondial. C''est précisément ce type d''arbitrage, entre efficacité économique de court terme et objectifs plus larges de développement industriel régional, qui anime les débats de politique commerciale dans les instances régionales ouest-africaines.

## 1:25:00 – 1:30:00 · Évaluation finale

Question 1 : Donnez la formule du coût d''opportunité du tissu, en riz sacrifié, dans le modèle ricardien.
Réponse : heures de travail nécessaires pour une unité de tissu, divisées par les heures nécessaires pour une unité de riz.

Question 2 : Quelle théorie moderne explique le commerce intra-branche entre pays aux structures économiques proches ?
Réponse : les théories de la concurrence imparfaite et des économies d''échelle, via la différenciation de produit.

Question 3 : Quelle est la différence structurelle entre une union douanière et une zone de libre-échange ?
Réponse : l''union douanière ajoute un tarif extérieur commun face aux pays tiers, en plus de la suppression des tarifs internes.

Question 4 : Qu''est-ce que le détournement de commerce ?
Réponse : une réorientation des échanges vers un partenaire régional moins efficace que le reste du monde, uniquement en raison d''une exonération tarifaire intra-régionale.

Question 5 : Pourquoi un décideur de politique commerciale doit-il mettre en balance l''efficacité de court terme et des objectifs de développement industriel régional ?
Réponse : parce qu''un tarif extérieur commun qui génère un détournement de commerce pénalise les consommateurs à court terme, mais peut aussi soutenir une capacité industrielle régionale jugée stratégique à plus long terme, un arbitrage politique et économique qui dépasse le seul calcul d''efficacité statique.

Merci pour votre attention. La prochaine vidéo portera sur la finance du développement et l''évaluation d''impact des politiques publiques.', 'video', 90, false, 60
from public.courses c where c.slug = 'mas-eco-m2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Économie internationale et intégration régionale africaine');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Finance du développement et politiques publiques', '## Fiche du cours vidéo

Durée : 1h30 (90 minutes). Sujet : Finance du développement et politiques publiques — instruments de financement et évaluation d''impact par la différence de différences.
Objectifs : connaître les principaux instruments de financement du développement, maîtriser la logique du contrefactuel et calculer un effet DID.
Matériel : tableau ou diaporama, calculatrice.
Prérequis : économie publique (Licence 3), statistiques de base.

## Déroulé minuté

## 00:00 – 05:00 · Accueil

Bonjour et bienvenue dans ce deuxième cours vidéo de votre semestre de Master 2. Nous allons aujourd''hui parler de finance du développement et d''évaluation des politiques publiques, deux sujets au cœur du travail de nombreux économistes dans les administrations, les institutions internationales, ou les organisations de développement. Nous verrons les grands instruments de financement, puis nous nous concentrerons sur une méthode d''évaluation d''impact simple et puissante, la différence de différences, avec un calcul entièrement vérifié.

## 05:00 – 20:00 · Les instruments de financement du développement

Commençons par une cartographie générale des instruments de financement du développement. Premièrement, le financement public domestique : les recettes fiscales et non fiscales de l''État, et l''emprunt public sur les marchés financiers nationaux ou régionaux. Deuxièmement, le financement extérieur public : l''aide au développement, sous forme de dons ou de prêts concessionnels accordés par des institutions bilatérales ou multilatérales, et les prêts non concessionnels. Troisièmement, le financement privé : les investissements directs étrangers, les investissements de portefeuille, le crédit bancaire privé, et des montages comme les partenariats public-privé, qui associent financement et gestion privés à des infrastructures ou services d''intérêt public.

Chaque instrument a ses avantages et ses limites, qu''un futur économiste doit savoir discuter. L''aide concessionnelle peut financer des investissements à fort impact social, en santé ou en éducation de base par exemple, mais elle dépend de la volonté et de la disponibilité des bailleurs, une source potentiellement volatile d''une année sur l''autre. L''emprunt sur les marchés financiers offre davantage d''autonomie de décision à l''État emprunteur, mais à un coût financier plus élevé, et avec un risque de change si la dette est libellée en devise étrangère alors que les recettes de l''État sont en monnaie locale. Les partenariats public-privé peuvent mobiliser l''expertise technique et le capital du secteur privé pour construire des infrastructures, mais nécessitent des contrats complexes et un partage rigoureux des risques entre les parties : mal négociés, ils peuvent générer des coûts cachés pour les finances publiques, révélés seulement plusieurs années après la signature du contrat.

## 20:00 – 35:00 · Le problème du contrefactuel

Passons maintenant au cœur méthodologique de cette séance : comment savoir si une politique publique ou un programme de développement a réellement fonctionné ? Il ne suffit pas d''observer que la situation des bénéficiaires s''est améliorée après le programme, car cette amélioration aurait pu se produire même sans le programme, pour d''autres raisons : une tendance générale de l''économie, une saison agricole favorable, une autre politique mise en œuvre en parallèle.

Le principe central de toute évaluation d''impact rigoureuse est la comparaison à un contrefactuel : que serait-il arrivé aux bénéficiaires SANS le programme ? Ce contrefactuel n''est jamais directement observable — on ne peut pas observer le même individu, à la fois avec et sans le programme, au même moment. Les méthodes d''évaluation d''impact construisent donc une approximation crédible de ce contrefactuel, le plus souvent à l''aide d''un groupe témoin, c''est-à-dire un groupe similaire au groupe bénéficiaire par ailleurs, mais qui n''a pas bénéficié du programme.

## 35:00 – 50:00 · La méthode de la différence de différences, calcul guidé

La méthode de la différence de différences, souvent abrégée DID, compare l''évolution dans le temps du groupe bénéficiaire, dit groupe traité, à celle d''un groupe témoin comparable, avant et après la mise en place du programme. L''idée centrale : si les deux groupes auraient évolué de façon similaire sans le programme, alors tout écart d''évolution entre les deux groupes après le programme peut être attribué à l''effet du programme lui-même.

Reprenons notre exemple numérique fictif, entièrement vérifié. Un programme de microcrédit fictif est mis en place dans une région test. Le revenu mensuel moyen des ménages, en milliers de FCFA, est mesuré avant et après le programme, dans la région test et dans une région témoin comparable. Région test : avant = 85, après = 112. Région témoin : avant = 83, après = 92.

Calculons ensemble, étape par étape. D''abord, la différence dans le groupe traité : 112 moins 85, égal 27 milliers de FCFA. Ensuite, la différence dans le groupe témoin : 92 moins 83, égal 9 milliers de FCFA. Enfin, l''effet DID, c''est-à-dire l''impact net attribuable au programme : 27 moins 9, égal 18 milliers de FCFA par mois.

Interprétons ce résultat avec précision, car c''est exactement ce qui est attendu de vous à l''examen : sans le programme, on aurait pu s''attendre à ce que le revenu de la région test augmente d''environ 9 milliers de FCFA, comme dans la région témoin — c''est l''évolution de fond commune aux deux régions, due par exemple à la conjoncture économique générale. L''augmentation effective de 27 milliers de FCFA dans la région traitée dépasse cette évolution de fond de 18 milliers de FCFA, ce supplément étant attribué à l''effet net du programme de microcrédit.

## 50:00 – 55:00 · Pause et quiz interactif

Pause de cinq minutes avec un quiz. Première question : pourquoi ne peut-on pas se contenter de regarder uniquement l''évolution du groupe traité (27 milliers de FCFA) pour mesurer l''effet du programme ? Deuxième question : qu''est-ce qu''un groupe témoin, et quelle est sa fonction méthodologique ? Troisième question : si le groupe témoin avait connu une évolution de 15 milliers de FCFA au lieu de 9, quel serait le nouvel effet DID ?

Correction : premièrement, parce que cette évolution de 27 milliers de FCFA inclut à la fois l''effet propre du programme ET l''évolution de fond qui se serait produite de toute façon (conjoncture générale, saison) ; sans comparaison à un groupe témoin, on surestimerait l''effet réel du programme. Deuxièmement, le groupe témoin sert à approximer le contrefactuel : ce qui serait arrivé au groupe traité sans le programme, en observant un groupe similaire mais non bénéficiaire. Troisièmement, le nouvel effet DID serait 27 moins 15, égal 12 milliers de FCFA, plus faible que les 18 calculés initialement, car une plus grande partie de l''évolution du groupe traité serait alors attribuée à la tendance générale plutôt qu''au programme.

## 55:00 – 1:25:00 · L''hypothèse des tendances parallèles et discussion critique

La différence de différences repose sur une hypothèse cruciale, appelée hypothèse des tendances parallèles : en l''absence du programme, les deux groupes auraient évolué de façon similaire dans le temps. Cette hypothèse n''est jamais directement vérifiable après le fait — on ne peut jamais observer ce qui se serait réellement passé sans le programme — mais elle peut être rendue plus ou moins crédible selon la qualité du choix du groupe témoin.

Un bon groupe témoin partage des caractéristiques socio-économiques comparables avec le groupe traité, une exposition similaire aux chocs économiques généraux, et, idéalement, une évolution déjà parallèle à celle du groupe traité avant la mise en place du programme — ce qu''on peut vérifier si des données antérieures au programme sont disponibles sur plusieurs périodes.

Un décideur public ou un bailleur de fonds qui doit juger de l''efficacité d''un programme de développement doit se poser systématiquement trois questions avant d''accepter les conclusions d''une évaluation DID : le groupe témoin est-il réellement comparable au groupe traité, au-delà des apparences ? L''hypothèse des tendances parallèles est-elle plausible dans ce contexte précis, ou existe-t-il des raisons de penser que les deux groupes auraient évolué différemment même sans le programme ? Enfin, l''effet mesuré est-il suffisamment important, au regard du coût du programme, pour justifier sa généralisation à plus grande échelle, par exemple à l''ensemble d''un pays plutôt qu''à une seule région test ?

Ces trois questions doivent devenir des réflexes automatiques chaque fois que vous lisez ou produisez une évaluation d''impact, qu''il s''agisse d''un examen, d''un mémoire, ou plus tard d''un rapport professionnel.

## 1:25:00 – 1:30:00 · Évaluation finale

Question 1 : Citez trois grandes catégories d''instruments de financement du développement.
Réponse : financement public domestique, financement extérieur public (aide, emprunt), financement privé (investissement direct, partenariats public-privé).

Question 2 : Qu''est-ce qu''un contrefactuel en évaluation d''impact ?
Réponse : ce qui serait arrivé aux bénéficiaires en l''absence du programme, jamais directement observable, et approximé par des méthodes comme le groupe témoin.

Question 3 : Donnez la formule de l''effet DID.
Réponse : (après - avant) du groupe traité, moins (après - avant) du groupe témoin.

Question 4 : Qu''est-ce que l''hypothèse des tendances parallèles ?
Réponse : l''hypothèse que, sans le programme, le groupe traité et le groupe témoin auraient évolué de façon similaire dans le temps.

Question 5 : Citez les trois questions à se poser systématiquement avant d''accepter les conclusions d''une évaluation DID.
Réponse : le groupe témoin est-il réellement comparable ? l''hypothèse des tendances parallèles est-elle plausible ? l''effet mesuré justifie-t-il, au regard du coût, une généralisation à plus grande échelle ?

Merci de votre attention. La prochaine et dernière vidéo de ce semestre sera un atelier consacré à la méthodologie du mémoire et à la préparation de votre soutenance.', 'video', 90, false, 70
from public.courses c where c.slug = 'mas-eco-m2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Finance du développement et politiques publiques');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Méthodologie du mémoire de recherche et soutenance', '## Fiche du cours vidéo

Durée : 1h30 (90 minutes). Sujet : Méthodologie du mémoire de recherche et préparation de la soutenance.
Objectifs : savoir formuler une question de recherche, construire une revue de littérature rigoureuse, choisir et justifier une méthode, présenter des résultats honnêtes, préparer une soutenance orale.
Matériel : tableau ou diaporama, votre propre projet de mémoire si vous en avez déjà un.
Prérequis : aucun prérequis technique spécifique, mais une idée même approximative de votre futur sujet de mémoire est utile.

## Déroulé minuté

## 00:00 – 05:00 · Accueil et enjeux

Bonjour et bienvenue dans ce troisième cours vidéo de votre semestre de Master 2, consacré à la méthodologie du mémoire de recherche et à la préparation de la soutenance. Cette matière est différente des deux précédentes : elle ne porte pas sur un contenu économique précis, mais sur la méthode de travail qui va structurer votre dernier semestre d''études, qu''il s''agisse d''un mémoire académique ou d''un mémoire professionnel adossé à un stage.

## 05:00 – 20:00 · Formuler une question de recherche précise

Tout commence par la question de recherche. Un sujet vague, par exemple « l''intégration régionale en Afrique de l''Ouest », ne permet pas de structurer un travail rigoureux : il est trop large, ne précise ni le secteur, ni la période, ni le pays, ni l''angle d''analyse retenu. Une bonne question de recherche doit remplir quatre critères : être précise, délimitée dans le temps, l''espace et le secteur ; être pertinente, c''est-à-dire intéresser un public économique ou professionnel réel ; être faisable, c''est-à-dire que vous disposez ou pouvez obtenir les données ou les informations nécessaires dans le temps qui vous est imparti ; et être honnête, c''est-à-dire que vous ne connaissez pas déjà la réponse avant de commencer votre travail — c''est une vraie question, pas une démonstration décidée à l''avance.

Exercice pratique immédiat : prenons le sujet vague cité plus haut, et transformons-le ensemble. Une reformulation possible : « Dans quelle mesure la suppression des tarifs intra-régionaux sur les produits agricoles transformés a-t-elle affecté le revenu des producteurs d''une filière donnée, dans un pays donné, sur la période récente ? » Observez comment cette reformulation ajoute une délimitation sectorielle, géographique et temporelle précise, tout en restant une vraie question ouverte.

## 20:00 – 35:00 · La revue de littérature et la règle d''or des sources

La revue de littérature situe votre travail par rapport à ce qui a déjà été écrit. Elle poursuit trois objectifs : montrer votre maîtrise du champ de votre question, identifier ce qui est déjà établi pour ne pas refaire un travail déjà fait, et repérer ce qui reste incertain ou débattu — c''est souvent là que se loge votre propre contribution, même modeste.

J''insiste maintenant sur une règle absolue, que je veux que vous reteniez durablement : chaque référence citée dans votre mémoire doit avoir été réellement lue, ou au minimum son résumé vérifié par vous-même, auprès d''une source fiable. N''inventez jamais un auteur, un titre, une date de publication, ou un résultat empirique précis que vous n''avez pas vérifié. Si vous avez un doute sur un chiffre ou une référence exacte, il est toujours préférable d''écrire une phrase plus générale et honnête, du type « plusieurs études ont montré un effet positif de ce type de programme dans des contextes comparables », plutôt que d''inventer une précision que vous ne maîtrisez pas. Une référence fabriquée, si elle est détectée par le jury — et elle l''est souvent, car les jurys connaissent bien leur champ — peut compromettre gravement la crédibilité de l''ensemble de votre mémoire, bien au-delà de cette seule référence.

## 35:00 – 50:00 · Choisir et justifier sa méthode

Une fois la question posée et la littérature maîtrisée, vous devez choisir une méthode adaptée aux données ou au terrain réellement disponibles, et non une méthode idéale que vous ne pourrez jamais mettre en œuvre dans le temps imparti. Un petit nombre d''entretiens qualitatifs appelle une méthode d''analyse qualitative rigoureuse, pas une tentative de régression statistique sur trop peu d''observations. Des données chiffrées suffisantes peuvent justifier une analyse économétrique. L''absence d''un groupe témoin crédible limite les méthodes d''évaluation d''impact réellement disponibles pour vous.

Point essentiel : la méthode doit toujours être justifiée explicitement dans votre mémoire. Pourquoi cette méthode, et pas une autre, est-elle adaptée à votre question précise et aux données dont vous disposez réellement ? Un jury valorise énormément cette justification explicite, bien plus que la seule sophistication technique de la méthode employée.

## 50:00 – 55:00 · Pause et quiz interactif

Pause de cinq minutes avec un quiz. Première question : citez les quatre critères d''une bonne question de recherche. Deuxième question : pourquoi une référence bibliographique non vérifiée est-elle particulièrement risquée ? Troisième question : pourquoi la méthode choisie doit-elle être justifiée par rapport aux données disponibles, et non par rapport à une méthode jugée « idéale » en théorie ?

Correction : premièrement, précise, pertinente, faisable, honnête. Deuxièmement, parce qu''elle peut être détectée par le jury et compromettre la crédibilité de l''ensemble du travail, pas seulement celle de cette référence précise. Troisièmement, parce qu''une méthode inaccessible avec les données ou le temps réellement disponibles ne pourra pas être menée à bien rigoureusement, produisant un travail bâclé ou incomplet, alors qu''une méthode plus modeste mais bien exécutée est toujours préférable à l''examen comme en soutenance.

## 55:00 – 1:25:00 · Résultats honnêtes et préparation de la soutenance

Un résultat statistiquement non significatif, un résultat partiel, ou un résultat qui contredit votre hypothèse de départ, ne doivent jamais être cachés ou maquillés : présentez-les et discutez-les honnêtement, avec leurs limites. Un jury valorise beaucoup plus un travail qui présente honnêtement des résultats modestes mais bien analysés qu''un travail qui prétend à des conclusions plus fortes que ce que les données permettent réellement d''établir. La section « limites de l''étude » est un signe de maturité méthodologique, pas une faiblesse à minimiser.

Passons à la préparation de la soutenance orale elle-même, un exercice de communication professionnelle distinct de la rédaction écrite. Préparez une présentation d''environ dix minutes qui résume l''essentiel : la question, la méthode, le résultat principal, la limite principale, sans entrer dans tous les détails techniques du mémoire écrit. Anticipez les questions attendues du jury : pourquoi cette méthode, pourquoi ce choix de données, quelle est la limite principale de votre travail, quelle serait la suite possible de cette recherche. Préparez des réponses construites à chacune. Entraînez-vous à voix haute, chronométré, devant un public même informel : la fluidité orale ne s''acquiert jamais en lisant simplement ses notes en silence. Enfin, montrez que vous savez prendre du recul sur votre propre travail en acceptant les critiques du jury sans vous braquer, ni sur-défendre un point faible identifié à juste titre : un jury valorise davantage un candidat qui reconnaît intelligemment les limites de son travail qu''un candidat qui refuse toute critique.

## 1:25:00 – 1:30:00 · Évaluation finale

Question 1 : Citez les quatre critères d''une bonne question de recherche.
Réponse : précise, pertinente, faisable, honnête.

Question 2 : Quels sont les trois objectifs d''une revue de littérature ?
Réponse : montrer la maîtrise du champ, identifier ce qui est déjà établi, repérer ce qui reste incertain ou débattu pour situer sa propre contribution.

Question 3 : Que doit faire un étudiant face à un résultat non significatif ?
Réponse : le présenter honnêtement, en discutant ses causes possibles et ses implications, sans le maquiller ni chercher arbitrairement une autre spécification pour obtenir un résultat significatif.

Question 4 : Citez trois questions fréquemment posées par un jury en soutenance.
Réponse : pourquoi cette méthode plutôt qu''une autre ? quelle est la principale limite de votre travail ? quelle suite donneriez-vous à cette recherche ?

Question 5 : Pourquoi l''entraînement oral chronométré est-il indispensable avant une soutenance ?
Réponse : parce que la fluidité et la clarté de l''expression orale, sous contrainte de temps, ne s''acquièrent pas en lisant silencieusement ses notes, mais par la répétition active devant un public, même informel.

Un dernier mot avant de conclure cette séance : beaucoup d''étudiants sous-estiment le temps nécessaire à la préparation de la soutenance, pensant qu''il suffit de bien connaître son mémoire écrit pour improviser une présentation convaincante le jour venu. C''est une erreur fréquente. La capacité à résumer dix pages de méthode et de résultats en dix minutes orales, de façon claire pour un jury qui n''a peut-être lu votre travail que partiellement avant la soutenance, est une compétence qui se travaille spécifiquement, indépendamment de la qualité du mémoire écrit lui-même. Un excellent mémoire mal présenté oralement peut laisser une impression de confusion ; un mémoire plus modeste mais présenté avec clarté, structure et honnêteté intellectuelle peut au contraire convaincre pleinement un jury. Ne négligez donc jamais cette dimension de votre travail de fin d''études, qui compte généralement pour une part significative de votre note finale.

Merci pour votre attention. La prochaine et dernière vidéo de ce semestre sera un atelier pratique où nous construirons ensemble, étape par étape, le squelette méthodologique d''un mémoire fictif complet, de la question de recherche jusqu''à la préparation concrète de la soutenance.', 'video', 90, false, 80
from public.courses c where c.slug = 'mas-eco-m2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Méthodologie du mémoire de recherche et soutenance');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Atelier méthodologie — construire son mémoire pas à pas', '## Fiche du cours vidéo

Durée : 1h30 (90 minutes). Sujet : Atelier méthodologie — construire pas à pas le squelette d''un mémoire de Master 2 en Économie, de la question de recherche à la préparation de la soutenance.
Objectifs : appliquer concrètement, sur un exemple fictif complet, les étapes méthodologiques vues dans les trois vidéos précédentes du semestre.
Matériel : tableau ou diaporama, une feuille pour noter votre propre plan de mémoire en parallèle.
Prérequis : les trois vidéos précédentes de ce semestre (économie internationale, finance du développement, méthodologie du mémoire).

## Déroulé minuté

## 00:00 – 05:00 · Présentation de l''atelier

Bonjour et bienvenue dans cette quatrième et dernière vidéo de votre semestre de Master 2. Contrairement aux trois précédentes, cette séance est un atelier pratique : nous allons construire ensemble, étape par étape, le squelette méthodologique complet d''un mémoire fictif, en mobilisant à la fois la méthodologie de recherche et les deux matières économiques du semestre, l''économie internationale et la finance du développement. Munissez-vous d''une feuille pour noter, en parallèle, les étapes équivalentes de votre propre projet de mémoire.

## 05:00 – 20:00 · Étape 1 : du sujet vague à la question de recherche

Notre étudiant fictif, que nous appellerons Awa, part d''une idée vague : « je voudrais travailler sur le financement de l''agriculture dans mon pays ». Suivons ensemble la démarche de transformation de cette idée en question de recherche exploitable.

Première sous-étape : délimiter le secteur. Awa choisit de se concentrer sur une filière précise, par exemple la filière maraîchère, plutôt que « l''agriculture » en général, trop vaste pour un mémoire de Master.

Deuxième sous-étape : délimiter la zone géographique et la période. Awa choisit une zone de production précise et une période récente de quelques années, pour laquelle elle pourra raisonnablement espérer obtenir des données ou réaliser des entretiens.

Troisième sous-étape : préciser l''angle économique. Plutôt que de rester sur « le financement », trop général, Awa se demande ce qui l''intéresse vraiment dans ce thème. En repensant à ce qu''elle a appris sur la finance du développement, elle choisit de s''orienter vers l''évaluation de l''effet d''un instrument de financement précis, par exemple un programme de subvention ou de microcrédit agricole, sur un indicateur mesurable, par exemple le rendement ou le revenu des producteurs.

Résultat de cette étape : la question de recherche d''Awa devient : « Dans quelle mesure un programme de subvention agricole a-t-il affecté le rendement des producteurs maraîchers dans une zone de production donnée, sur la période récente ? » Vérifions les quatre critères : précise (filière, zone, période, indicateur), pertinente (enjeu réel de politique agricole), faisable (si des données de rendement avant et après le programme sont mobilisables), honnête (Awa ne connaît pas encore la réponse).

## 20:00 – 35:00 · Étape 2 : la revue de littérature et le cadrage théorique

Awa doit maintenant situer sa question par rapport à ce qui existe déjà. Elle mobilise deux champs théoriques vus ce semestre : d''une part, les instruments de financement du développement, pour situer la subvention agricole parmi les autres outils possibles, comme l''aide concessionnelle ou le crédit bancaire ; d''autre part, et surtout, les méthodes d''évaluation d''impact, pour comprendre comment la littérature économique évalue habituellement ce type de programme.

Rappel de la règle d''or : chaque référence que mentionnerait Awa dans sa revue de littérature doit avoir été réellement vérifiée par elle. Si elle n''a pas accès à une étude précise sur un programme comparable, elle doit rester prudente dans sa formulation, par exemple « des évaluations de programmes agricoles comparables, dans d''autres contextes, suggèrent souvent des effets positifs mais variables selon la conception du programme », plutôt que d''inventer un auteur ou un chiffre précis qu''elle ne maîtrise pas.

## 35:00 – 50:00 · Étape 3 : choisir et justifier la méthode

Awa a accès à des données de rendement avant et après le programme, à la fois dans la zone bénéficiaire du programme et dans une zone témoin comparable qui n''en a pas bénéficié. Cette situation de données correspond exactement à ce que nous avons étudié : la méthode de la différence de différences est donc adaptée à son cas, et elle doit le justifier explicitement dans son mémoire, en expliquant pourquoi elle dispose des deux groupes nécessaires (traité et témoin) et des deux périodes nécessaires (avant et après).

Simulons le calcul qu''Awa pourrait obtenir, avec des chiffres fictifs pour l''exercice : rendement moyen dans la zone bénéficiaire, avant = 20 sacs par hectare, après = 29 sacs par hectare ; rendement moyen dans la zone témoin, avant = 19, après = 23. Calculons ensemble : différence zone bénéficiaire, 29 moins 20, égal 9. Différence zone témoin, 23 moins 19, égal 4. Effet DID : 9 moins 4, égal 5 sacs par hectare, un effet net attribuable au programme.

## 50:00 – 55:00 · Pause et quiz interactif

Pause de cinq minutes. Premier exercice : si la zone témoin d''Awa avait connu une différence de 6 sacs par hectare au lieu de 4, quel serait le nouvel effet DID ? Deuxième exercice : pourquoi Awa doit-elle vérifier que sa zone témoin est réellement comparable à sa zone bénéficiaire, au-delà de la simple disponibilité des données ?

Correction : premièrement, nouvel effet DID égal 9 moins 6, égal 3 sacs par hectare, un effet plus faible, car une plus grande part de l''évolution de la zone bénéficiaire serait attribuée à une tendance générale partagée avec la zone témoin. Deuxièmement, parce que l''hypothèse des tendances parallèles, condition de validité de la méthode, n''est crédible que si les deux zones sont réellement similaires par ailleurs ; une zone témoin disponible mais peu comparable rendrait les résultats peu fiables, même si le calcul lui-même reste correct.

## 55:00 – 1:25:00 · Étape 4 : présenter honnêtement et préparer l''oral

Supposons maintenant qu''Awa obtienne, après analyse statistique complète, un effet DID qui reste faible et proche de la limite de significativité statistique sur son échantillon réel. Comment doit-elle présenter ce résultat dans son mémoire ? Elle doit l''annoncer clairement, discuter les raisons possibles de cette faible significativité, par exemple un échantillon de zones limité ou une forte variabilité climatique d''une année à l''autre, et éviter absolument de présenter son résultat comme plus solide qu''il ne l''est réellement.

Préparons maintenant, ensemble, le squelette de sa présentation orale de dix minutes. Minute 1 à 2 : présentation de la question de recherche et de sa pertinence pour la politique agricole régionale. Minute 2 à 4 : cadrage théorique rapide, instruments de financement et méthodes d''évaluation d''impact. Minute 4 à 6 : présentation de la méthode choisie et justification par rapport aux données disponibles. Minute 6 à 8 : présentation du résultat principal, avec ses limites assumées. Minute 8 à 10 : conclusion, implications pour la politique agricole, et pistes de recherche future.

Anticipons les questions du jury pour Awa : pourquoi cette filière et cette zone précises ? Pourquoi la méthode DID plutôt qu''une autre approche d''évaluation ? Quelle est la principale limite de son travail ? Que recommanderait-elle à un décideur public sur la base de ce résultat, en tenant compte de son incertitude ? Awa doit préparer des réponses construites à chacune, ancrées dans les choix réels de son mémoire.

## 1:25:00 – 1:30:00 · Synthèse finale et évaluation

Cet atelier a parcouru l''ensemble du processus méthodologique : de la question vague à la question précise, de la revue de littérature prudente au choix de méthode justifié, de la présentation honnête des résultats à la préparation structurée de la soutenance. C''est exactement cette démarche que vous devez appliquer à votre propre projet de mémoire dans les semaines qui viennent.

Question 1 : Quelles sont les trois sous-étapes pour transformer un sujet vague en question de recherche précise ?
Réponse : délimiter le secteur, délimiter la zone géographique et la période, préciser l''angle économique de l''analyse.

Question 2 : Pourquoi Awa choisit-elle la méthode de la différence de différences pour son mémoire ?
Réponse : parce qu''elle dispose de données avant et après le programme, à la fois pour une zone bénéficiaire et pour une zone témoin comparable, exactement la configuration de données requise par cette méthode.

Question 3 : Si l''effet DID recalculé avec une zone témoin différente passe de 5 à 3, que doit en conclure Awa sur la robustesse de son résultat ?
Réponse : que le résultat est sensible au choix du groupe témoin, ce qui doit l''inciter à discuter cette sensibilité comme une limite explicite de son travail plutôt qu''à la cacher.

Question 4 : Comment Awa doit-elle traiter un résultat statistiquement fragile dans son mémoire ?
Réponse : le présenter honnêtement, en discutant ses causes possibles, sans le présenter comme plus solide qu''il ne l''est réellement.

Question 5 : Citez deux questions que le jury pourrait poser à Awa lors de sa soutenance.
Réponse : pourquoi cette méthode plutôt qu''une autre approche d''évaluation ? quelle est la principale limite de son travail ? (toute reformulation pertinente de ces deux questions, ou d''autres questions cohérentes avec le cours, est acceptée).

Merci à toutes et à tous pour votre travail ce semestre, et bon courage pour la construction et la soutenance de votre propre mémoire de Master 2.', 'video', 90, false, 90
from public.courses c where c.slug = 'mas-eco-m2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Atelier méthodologie — construire son mémoire pas à pas');

-- Cours : Droit des affaires Master 1 : réussir ses examens
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'mas-droit-m1', (select id from public.levels where name = 'Master 1'), null, 'Droit des affaires', 'Droit des affaires Master 1 : réussir ses examens', 'Préparation aux examens de Master 1 en droit des affaires : gouvernance et groupes de sociétés, contrats d''affaires et concurrence, arbitrage et modes alternatifs de résolution des litiges. Public : étudiants de Master 1 ayant validé une Licence en droit des affaires (introduction au droit, obligations, sociétés OHADA, droit du travail de base).', true, 771
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Réussir ses examens de Master 1 en droit des affaires', '## Objectifs de la leçon

Le Master 1 en droit des affaires marque un changement de registre par rapport à la Licence. Vous ne vous contentez plus de restituer des mécanismes juridiques : on attend de vous une analyse critique, la capacité à qualifier des montages complexes (groupes de sociétés, contrats d''affaires sophistiqués, clauses de résolution des litiges) et à argumenter en incertitude, c''est-à-dire lorsque plusieurs qualifications juridiques sont défendables. Cette leçon pose le cadre de l''année : les attentes des examinateurs, les matières au programme, la méthode de travail adaptée au Master, et un plan de révision réaliste sur six semaines.

## Ce qui change par rapport à la Licence

En Licence 3, vous avez étudié le droit des sociétés commerciales OHADA dans sa dimension statutaire (constitution, organes, dissolution) et le droit des sûretés et des procédures collectives. En Master 1, l''approche se déplace vers la gouvernance et les groupes de sociétés : comment une société mère pilote ses filiales, comment se contrôlent les conventions passées entre une société et ses dirigeants ou actionnaires significatifs (les conventions dites réglementées), et comment les contrats d''affaires organisent des relations économiques durables plutôt que de simples échanges ponctuels. On y ajoute les modes alternatifs de résolution des litiges, en particulier l''arbitrage, essentiel dans les relations d''affaires internationales et régionales.

L''examinateur de Master ne demande plus seulement « quelle est la règle ? » mais « quelle qualification retenir face à des faits ambigus, et avec quelles conséquences pratiques pour l''entreprise ? ». Un cas pratique de Master mêle souvent plusieurs branches du droit (sociétés, contrats, concurrence, arbitrage) dans une même situation d''entreprise, et exige une hiérarchisation des arguments plutôt qu''une récitation.

## Les matières de l''année

Le programme de Master 1 en droit des affaires, tel que couvert par ce cours, s''organise autour de trois axes :

- Droit des sociétés approfondi et gouvernance : groupes de sociétés, notion de contrôle, conventions réglementées, responsabilité des dirigeants dans les montages complexes.
- Droit des contrats d''affaires et de la concurrence : clauses complexes (exclusivité, non-concurrence, earn-out, hardship, limitation de responsabilité) et principes du droit de la concurrence applicables aux pratiques anticoncurrentielles.
- Arbitrage et modes alternatifs de résolution des litiges : logique de la clause compromissoire, déroulement d''un arbitrage, rôle de la Cour commune de justice et d''arbitrage (CCJA) de l''OHADA dans le paysage régional, médiation et conciliation.

Ces trois matières ne sont pas étanches : un contrat d''affaires entre deux sociétés d''un même groupe peut relever à la fois du droit des conventions réglementées, du droit de la concurrence s''il restreint l''accès au marché, et contenir une clause d''arbitrage. C''est précisément cette transversalité que les examens de Master évaluent.

## Méthode de travail avancée

Trois outils structurent le travail en Master :

- L''étude de cas complexe : partir d''un scénario d''entreprise (souvent sénégalais ou ouest-africain, fictif) comportant plusieurs acteurs, plusieurs contrats et un ou plusieurs litiges potentiels. La méthode consiste à cartographier les parties, les actes juridiques en cause, puis à qualifier chaque élément avant de répondre à la question posée.
- Le business case : analyse d''une décision d''entreprise (restructuration de groupe, négociation d''un contrat-cadre, choix d''un mode de résolution des litiges) en croisant l''angle juridique et l''angle économique. Il ne s''agit pas seulement de dire ce qui est licite, mais ce qui est opportun pour l''entreprise, compte tenu des risques.
- La revue de littérature ciblée : savoir situer une question dans les débats doctrinaux (sans inventer de référence précise), reconnaître les tendances d''évolution du droit des affaires OHADA, et construire un raisonnement nuancé plutôt qu''une réponse binaire.

Pour chaque matière, construisez une fiche de synthèse avec : définitions clés, conditions d''application, effets juridiques, et un exemple d''entreprise type. Complétez-la par une liste de points de vigilance (erreurs fréquentes de qualification).

## Plan de révision sur six semaines

- Semaines 1 et 2 : droit des sociétés approfondi et gouvernance. Reprendre les bases de Licence 3 (sociétés commerciales OHADA) puis construire les fiches sur les groupes et les conventions réglementées.
- Semaines 3 et 4 : droit des contrats d''affaires et de la concurrence. Travailler les clauses complexes à partir de modèles de contrats commentés, puis les principes de la concurrence.
- Semaine 5 : arbitrage et modes alternatifs de résolution des litiges. Comprendre la logique de la clause compromissoire et le rôle de la CCJA en général, sans entrer dans le détail procédural précis qui relève d''un cours spécialisé.
- Semaine 6 : entraînement sur sujets types, cas transversaux, et relecture des fiches. Prévoir au moins deux simulations d''examen en temps limité (3 heures), avec autocorrection stricte.

Chaque semaine doit se terminer par un exercice écrit complet (pas seulement une lecture), car la compétence évaluée en Master est la rédaction argumentée, pas la seule connaissance.

## Points clés à retenir

- Le Master exige une analyse transversale et critique, pas une récitation de règles.
- Les trois matières de l''année (sociétés/gouvernance, contrats d''affaires/concurrence, arbitrage/MARL) s''articulent souvent dans un même cas pratique d''examen.
- La méthode de l''étude de cas complexe et du business case doit être pratiquée dès le début de la révision, pas seulement la veille de l''examen.
- Aucune donnée chiffrée officielle (taux, seuils, numéros d''articles) ne doit être mémorisée comme certaine sans vérification du texte en vigueur : utilisez les valeurs de ce cours comme illustrations pédagogiques.

## Exercices pratiques

1. Listez les trois matières avancées du programme de M1 en droit des affaires et, pour chacune, indiquez une notion de Licence 3 sur laquelle elle s''appuie directement.
2. Expliquez en cinq lignes la différence entre une approche « récitation de la règle » et une approche « qualification en incertitude », à partir d''un exemple au choix.
3. Construisez le squelette d''une fiche de synthèse (rubriques, sans contenu) que vous utiliserez pour la matière « gouvernance et groupes de sociétés ».
4. Proposez un planning hebdomadaire personnel sur six semaines, en adaptant celui proposé ci-dessus à vos contraintes (travail, stage, autres matières).
5. Citez deux raisons pour lesquelles un même cas pratique d''examen de Master peut mobiliser à la fois le droit des sociétés, le droit des contrats et l''arbitrage.

## Corrigé

1. Gouvernance et groupes de sociétés s''appuie sur le droit des sociétés commerciales OHADA (L3) ; contrats d''affaires et concurrence s''appuie sur le droit des obligations (contrat, L1/L2) et le droit commercial général OHADA (L2) ; arbitrage et MARL s''appuie sur les institutions et les bases de la procédure vues en introduction au droit (L1) ainsi que sur le droit commercial.
2. La récitation de la règle consiste à énoncer une condition ou une définition sans la rattacher aux faits (« l''article prévoit que... »). La qualification en incertitude consiste à confronter des faits ambigus à plusieurs qualifications possibles et à argumenter le choix retenu, par exemple déterminer si un accord entre deux filiales constitue une convention réglementée ou un contrat de droit commun selon la qualité des parties signataires.
3. Exemple de squelette : définition de la notion, conditions d''application, procédure ou formalisme associé, sanctions en cas de non-respect, exemple d''entreprise type, points de vigilance.
4. Le planning doit respecter la logique progressive (sociétés d''abord, puis contrats/concurrence, puis arbitrage, puis entraînement) mais peut être compressé ou étendu selon le temps disponible ; l''essentiel est de conserver une semaine complète d''entraînement en fin de parcours.
5. D''une part, les opérations d''affaires réelles combinent rarement une seule branche du droit : un contrat entre sociétés d''un même groupe touche à la fois à la gouvernance et au droit des contrats. D''autre part, les examens de Master visent à vérifier la capacité à transférer des connaissances d''une matière à l''autre, ce qui est précisément ce que travaille l''étude de cas transversale.', 'texte', 40, true, 10
from public.courses c where c.slug = 'mas-droit-m1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Réussir ses examens de Master 1 en droit des affaires');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Droit des sociétés approfondi et gouvernance : groupes de sociétés et conventions réglementées', '## Objectifs de la leçon

Cette leçon approfondit le droit des sociétés au-delà du cadre statutaire vu en Licence : elle traite des groupes de sociétés et de la gouvernance, c''est-à-dire des règles qui encadrent le pouvoir au sein d''une société et entre sociétés liées. Deux notions structurent la matière : le contrôle (qui permet de qualifier un ensemble de sociétés comme un groupe) et les conventions réglementées (les contrats passés entre une société et des personnes qui y exercent une influence, qui font l''objet d''un contrôle renforcé pour éviter les conflits d''intérêts).

## La notion de groupe de sociétés

Un groupe de sociétés n''est pas, en droit OHADA, une personne morale unique : chaque société conserve sa personnalité juridique propre, son patrimoine et sa responsabilité. Le groupe est une réalité économique organisée autour d''un lien de contrôle, que le droit encadre plutôt que de créer un sujet de droit nouveau.

Le contrôle est le pouvoir de déterminer en fait les décisions en assemblée générale, que ce pouvoir résulte d''une détention majoritaire du capital, d''un accord entre associés, ou de la capacité à nommer ou révoquer la majorité des dirigeants. On distingue :

- Le contrôle de droit, qui résulte de la détention d''une majorité des droits de vote.
- Le contrôle de fait, qui résulte d''une influence déterminante sans détention majoritaire, par exemple lorsqu''un actionnaire minoritaire dispose en pratique de la majorité dans les assemblées en raison de la dispersion du capital des autres actionnaires.
- Le contrôle conjoint, lorsque plusieurs associés exercent ensemble le pouvoir de décision en vertu d''un accord.

Illustration (cas fictif pour l''exemple) : la société Teranga Industries SA détient 55 % du capital de sa filiale Sahel Logistique SARL. Elle exerce un contrôle de droit. Si elle ne détenait que 30 % du capital, mais que les 70 % restants étaient répartis entre douze actionnaires dispersés n''agissant jamais ensemble, elle pourrait néanmoins exercer un contrôle de fait si elle obtient systématiquement la majorité en assemblée.

## Les conséquences juridiques du contrôle

Le contrôle emporte plusieurs conséquences pratiques qu''il faut savoir repérer dans un cas pratique :

- Comptes consolidés : une société mère qui contrôle des filiales peut devoir établir des comptes consolidés présentant le groupe comme une seule entité économique, sans remettre en cause l''autonomie juridique de chaque société.
- Obligations d''information renforcées entre sociétés liées, notamment lors d''opérations significatives (cessions d''actifs importants, garanties données par une filiale au profit de sa mère).
- Vigilance accrue sur les conventions entre sociétés liées, qui peuvent dissimuler un transfert de valeur au détriment d''une filiale minoritaire (prix de transfert non justifiés économiquement).

## Les conventions réglementées

Une convention réglementée est un contrat conclu entre une société et une personne qui exerce une influence sur elle : un dirigeant, un actionnaire significatif, ou une société avec laquelle ces personnes ont elles-mêmes des liens. L''idée directrice est simple : lorsque la même personne se trouve de part et d''autre d''un contrat, le risque de conflit d''intérêts justifie un contrôle procédural renforcé, sans pour autant interdire la convention, qui peut être parfaitement légitime économiquement.

La logique procédurale, de façon générale, repose sur trois temps :

- L''information préalable des organes compétents (conseil d''administration ou organe équivalent) avant ou dès la conclusion de la convention, lorsque la personne intéressée ne peut prendre seule la décision.
- L''autorisation ou, selon les cas, la ratification par l''organe compétent, la personne intéressée ne participant pas au vote sur sa propre convention.
- L''information de l''assemblée générale des associés, qui peut statuer sur les conventions et, le cas échéant, en tirer les conséquences si elles se révèlent défavorables à la société.

Les conventions dites « courantes », conclues à des conditions normales (c''est-à-dire comparables à celles pratiquées avec des tiers indépendants), échappent en principe à ce formalisme renforcé, car le risque de conflit d''intérêts y est réputé faible. La qualification « courante et à conditions normales » est souvent au cœur des cas pratiques : il s''agit de comparer les conditions du contrat litigieux à celles du marché.

Illustration chiffrée (fictive pour l''exemple) : le directeur général de Sahel Logistique SARL est également propriétaire à titre personnel d''un entrepôt qu''il loue à la société pour 3 000 000 FCFA par mois. Si le prix de marché pour un entrepôt comparable dans la même zone est de 1 800 000 FCFA par mois, l''écart de 1 200 000 FCFA par mois (soit 14 400 000 FCFA sur l''année) constitue un indice fort que la convention n''est pas conclue à des conditions normales, ce qui justifie son traitement comme convention réglementée, avec les conséquences en cas d''absence d''autorisation (responsabilité éventuelle du dirigeant, voire nullité dans certains cas).

## Sanctions en cas de non-respect du formalisme

Les conséquences générales à envisager, selon les circonstances et sans préjudice du texte applicable qu''il faut toujours vérifier, sont les suivantes :

- La responsabilité civile du dirigeant qui a conclu la convention sans l''autorisation requise, s''il en résulte un préjudice pour la société.
- La possibilité, selon la gravité, que la convention soit annulée si elle a causé un préjudice imputable à l''absence d''autorisation.
- Un risque réputationnel et de gouvernance, notamment vis-à-vis des partenaires financiers.

## Cas d''entreprise : groupe Baobab Négoce

La société Baobab Négoce SA, basée à Dakar, contrôle à 70 % sa filiale Baobab Transit SARL, spécialisée dans le transport de marchandises. Le président de Baobab Négoce SA, M. Ndiaye, est également actionnaire à 40 % d''une société tierce, Rapid Fret SARL, qui fournit des prestations de transport sous-traité à Baobab Transit SARL pour un montant annuel de 45 000 000 FCFA. Les tarifs pratiqués par Rapid Fret SARL sont supérieurs de 20 % à ceux du marché constatés chez deux autres sous-traitants comparables.

Analyse : le contrat constitue potentiellement une convention réglementée, car M. Ndiaye, dirigeant de la société mère, a un intérêt personnel significatif (40 %) dans le cocontractant. Le prix de marché théorique est de 45 000 000 ÷ 1,20 = 37 500 000 FCFA, soit un surcoût de 7 500 000 FCFA, ce qui écarte la qualification de convention courante. L''autorisation préalable de l''organe compétent aurait dû être respectée ; à défaut, la responsabilité de M. Ndiaye pourrait être recherchée pour ce préjudice.

## Points clés à retenir

- Le groupe n''a pas de personnalité juridique propre ; chaque société reste autonome, mais le contrôle emporte des obligations spécifiques.
- Le contrôle peut être de droit, de fait, ou conjoint ; il se caractérise en fait, pas seulement en pourcentage de capital.
- Une convention réglementée se définit par la qualité des parties (lien d''influence), pas par son objet.
- Les conventions courantes à conditions normales échappent au formalisme renforcé ; la comparaison au prix de marché est l''outil clé.
- Vérifiez toujours le texte en vigueur pour les règles précises de majorité, de délai et de sanction : les mécanismes exposés ici sont généraux et pédagogiques.

## Exercices pratiques

1. Définissez le contrôle de droit et le contrôle de fait, et donnez un exemple distinct pour chacun.
2. Pourquoi une convention « courante et à conditions normales » échappe-t-elle en principe au formalisme renforcé des conventions réglementées ?
3. Un administrateur d''une société vend à celle-ci un véhicule professionnel à un prix identique à celui pratiqué par un concessionnaire pour un véhicule comparable. Cette convention doit-elle être qualifiée de réglementée ? Justifiez.
4. Cas pratique : la société Fouta Agro SA contrôle à 60 % sa filiale Fouta Semences SARL. Le directeur général de Fouta Agro SA, actionnaire à 25 % d''une société de transport Express Nord SARL, fait conclure par Fouta Semences SARL un contrat de transport annuel de 30 000 000 FCFA avec Express Nord SARL, alors que le prix de marché pour une prestation comparable serait de 24 000 000 FCFA. Qualifiez la situation et chiffrez l''écart par rapport au marché.
5. Quelles sont, de façon générale, les trois étapes procédurales associées au contrôle d''une convention réglementée ?
6. En reprenant le cas Baobab Négoce ci-dessus, indiquez quel organe aurait dû autoriser préalablement le contrat avec Rapid Fret SARL.

## Corrigé

1. Le contrôle de droit résulte de la majorité des droits de vote (ex. 55 % du capital). Le contrôle de fait résulte d''une influence déterminante sans majorité, par exemple un actionnaire à 30 % obtenant systématiquement la majorité en assemblée du fait de la dispersion du capital restant.
2. Parce que le risque de conflit d''intérêts est réputé faible lorsque les conditions sont identiques à celles négociées avec un tiers indépendant : l''intérêt personnel ne se traduit alors par aucun avantage anormal.
3. Non, en principe : si le prix est identique au marché, la convention est courante et à conditions normales, même si l''administrateur a un intérêt personnel dans l''opération.
4. L''écart de prix est de 30 000 000 − 24 000 000 = 6 000 000 FCFA, soit 25 % au-dessus du marché. Le lien (directeur général actionnaire à 25 %) et cet écart écartent la qualification de convention courante : autorisation préalable requise.
5. Information préalable de l''organe compétent, autorisation sans participation au vote de l''intéressé, puis information de l''assemblée générale.
6. Le conseil d''administration de Baobab Transit SARL aurait dû autoriser le contrat. À défaut, et si le préjudice (7 500 000 FCFA) est démontré, la responsabilité de M. Ndiaye pourrait être engagée.', 'texte', 45, false, 20
from public.courses c where c.slug = 'mas-droit-m1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Droit des sociétés approfondi et gouvernance : groupes de sociétés et conventions réglementées');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Droit des contrats d''affaires et de la concurrence : clauses complexes et pratiques anticoncurrentielles', '## Objectifs de la leçon

Cette leçon traite des contrats d''affaires sophistiqués, c''est-à-dire des contrats qui organisent une relation économique durable entre entreprises (distribution, approvisionnement, partenariat industriel, cession de participations) et qui comportent des clauses complexes dont la rédaction et l''interprétation exigent une maîtrise fine. Elle introduit ensuite les principes généraux du droit de la concurrence applicables aux pratiques anticoncurrentielles, sans entrer dans le détail procédural d''une autorité de concurrence précise.

## Les clauses complexes des contrats d''affaires

### La clause d''exclusivité

La clause d''exclusivité engage une partie (souvent un fournisseur ou un distributeur) à ne pas contracter avec des concurrents de son partenaire, en contrepartie d''avantages (garantie de débouchés, investissement commercial). Elle doit être distinguée selon qu''elle est unilatérale (seule une partie est liée) ou réciproque. Sa validité dépend généralement de sa durée, de son champ géographique et de la proportionnalité entre la contrainte imposée et la contrepartie obtenue : une exclusivité trop large, trop longue, ou sans contrepartie réelle, peut être requalifiée ou jugée abusive, en particulier si elle a pour effet de restreindre significativement la concurrence sur un marché.

### La clause de non-concurrence

Elle interdit à une partie (souvent le cédant d''un fonds de commerce ou d''actions, ou un ancien partenaire) d''exercer une activité concurrente pendant une durée et sur un territoire déterminés après la fin du contrat. Pour être valable, elle doit généralement être limitée dans le temps, dans l''espace, et proportionnée à l''intérêt légitime qu''elle protège (éviter que le cédant ne récupère immédiatement la clientèle qu''il vient de céder, par exemple). Une clause de non-concurrence de dix ans sur l''ensemble du territoire national, sans lien avec l''activité réellement cédée, serait un exemple d''excès susceptible d''être sanctionné.

### La clause d''earn-out

Fréquente dans les cessions d''entreprises, la clause d''earn-out prévoit qu''une partie du prix de cession n''est payée qu''après la réalisation d''objectifs futurs (chiffre d''affaires, résultat) sur une période définie après la cession. Elle permet de concilier les attentes d''un cédant optimiste sur l''avenir de son entreprise et la prudence d''un acquéreur qui veut limiter son risque.

Illustration chiffrée (fictive pour l''exemple) : la cession des actions de Teranga Agro-Transformation SARL est fixée à un prix de base de 200 000 000 FCFA, complété par un earn-out égal à 10 % du chiffre d''affaires additionnel réalisé au-delà de 150 000 000 FCFA sur les deux exercices suivant la cession, plafonné à 40 000 000 FCFA. Si le chiffre d''affaires cumulé des deux exercices atteint 230 000 000 FCFA, l''earn-out théorique serait de 10 % × (230 000 000 − 150 000 000) = 10 % × 80 000 000 = 8 000 000 FCFA, bien en-deçà du plafond ; le prix total payé serait donc de 208 000 000 FCFA.

### La clause de hardship (imprévision)

Elle permet à une partie de demander une renégociation du contrat lorsque survient un changement de circonstances imprévisible lors de la conclusion, qui rend l''exécution excessivement onéreuse, sans pour autant rendre l''exécution impossible (ce qui relèverait de la force majeure). La clause de hardship organise par avance la procédure de renégociation (délai, méthode, recours à un tiers en cas d''échec), évitant que les parties ne restent bloquées sur l''alternative brutale entre exécuter à perte ou rompre le contrat.

Illustration : un contrat d''approvisionnement agricole fixe un prix pour trois ans. Une sécheresse exceptionnelle double le coût d''achat pour le fournisseur. Avec une clause de hardship, il peut demander une renégociation ; sans elle, il doit en principe exécuter aux conditions initiales, sauf à démontrer une impossibilité (force majeure), plus difficile à établir qu''une simple aggravation du coût.

### La clause limitative de responsabilité

Elle plafonne, par avance, le montant des dommages-intérêts dus en cas de manquement contractuel, souvent en pourcentage du prix du contrat. Valable entre professionnels, elle perd son effet en cas de faute particulièrement grave, et ne peut vider l''obligation essentielle de toute portée réelle.

## Principes généraux du droit de la concurrence

Le droit de la concurrence vise à protéger le fonctionnement concurrentiel des marchés, dans l''intérêt des entreprises et des consommateurs. En Master 1, il convient de connaître les grandes catégories de pratiques anticoncurrentielles, sans entrer dans le détail procédural d''une autorité déterminée (national ou communautaire), qui relève d''un enseignement spécialisé.

- Les ententes anticoncurrentielles : accords ou pratiques concertées entre entreprises concurrentes qui ont pour objet ou pour effet de restreindre la concurrence, par exemple une fixation concertée des prix, une répartition des marchés ou des clients, ou une limitation concertée de la production.
- L''abus de position dominante : le fait, pour une entreprise qui détient une position dominante sur un marché (c''est-à-dire la capacité de s''y comporter indépendamment de ses concurrents et de ses clients dans une mesure appréciable), d''exploiter cette position de façon abusive, par exemple en imposant des prix excessifs, en pratiquant des prix d''éviction destinés à exclure un concurrent, ou en imposant des conditions commerciales discriminatoires sans justification objective.
- Les pratiques restrictives dans les relations contractuelles verticales (entre un fournisseur et un distributeur, par exemple), qui peuvent être anticoncurrentielles lorsqu''elles ont pour effet de cloisonner les marchés de façon excessive, au-delà de ce qui est nécessaire pour organiser légitimement un réseau de distribution.

Le lien avec les clauses complexes étudiées plus haut est direct : une clause d''exclusivité très large entre un fournisseur dominant et l''ensemble de ses distributeurs peut, selon son ampleur et ses effets, être analysée comme une pratique restrictive de concurrence, alors que la même clause entre deux acteurs de taille modeste, sur un marché très concurrentiel, pose beaucoup moins de difficulté.

## Cas d''entreprise : réseau de distribution Sahel Boissons

Sahel Boissons SA, producteur de boissons basé à Thiès, conclut avec quinze distributeurs régionaux des contrats comportant une clause d''exclusivité réciproque de dix ans, interdisant à chaque distributeur de vendre des boissons concurrentes et à Sahel Boissons SA de vendre à d''autres distributeurs dans la même zone. Sahel Boissons SA détient 65 % du marché national des boissons gazeuses.

Analyse : la durée de dix ans et la position de Sahel Boissons SA sur le marché (65 %, ce qui peut constituer une position dominante selon les critères du marché pertinent) sont des facteurs de risque. Une clause d''exclusivité de cette ampleur, appliquée à l''ensemble d''un réseau de distribution par une entreprise en position dominante, peut avoir pour effet de verrouiller durablement l''accès au marché pour des concurrents potentiels, ce qui est caractéristique d''une pratique susceptible d''être qualifiée d''abus si elle ne répond à aucune justification objective suffisante (investissements spécifiques des distributeurs à amortir, par exemple). Une analyse rigoureuse comparerait la durée et l''ampleur de l''exclusivité aux standards du secteur et à la justification économique avancée par Sahel Boissons SA.

## Points clés à retenir

- Chaque clause complexe (exclusivité, non-concurrence, earn-out, hardship, limitation de responsabilité) répond à une logique économique propre qu''il faut identifier avant de juger de sa validité.
- La validité des clauses restrictives de liberté (exclusivité, non-concurrence) dépend généralement de leur proportionnalité : durée, champ géographique, contrepartie.
- Les pratiques anticoncurrentielles se répartissent en ententes, abus de position dominante, et pratiques restrictives verticales ; une même clause contractuelle peut, selon son contexte et son ampleur, basculer d''une clause licite à une pratique anticoncurrentielle.
- Aucun seuil précis de part de marché ou de durée maximale ne doit être mémorisé comme règle absolue sans vérification du texte en vigueur ; ce cours donne la méthode d''analyse, pas des seuils officiels.

## Exercices pratiques

1. Distinguez la clause d''exclusivité et la clause de non-concurrence par leur objet et par leur moment d''application dans la vie du contrat.
2. Expliquez l''intérêt économique d''une clause d''earn-out pour un acquéreur et pour un cédant, respectivement.
3. Un contrat d''approvisionnement de cinq ans à prix fixe ne comporte aucune clause de hardship. Un choc exogène fait tripler le coût de la matière première pour le fournisseur. Quelles sont ses options juridiques, en principe ?
4. Cas pratique chiffré : la cession des parts de Casamance Pêche SARL est fixée à 90 000 000 FCFA, avec un earn-out de 15 % du chiffre d''affaires additionnel au-delà de 60 000 000 FCFA sur l''exercice suivant, plafonné à 20 000 000 FCFA. Le chiffre d''affaires de l''exercice suivant atteint 95 000 000 FCFA. Calculez le prix total payé.
5. Qu''est-ce qui distingue une entente anticoncurrentielle d''un abus de position dominante quant au nombre d''entreprises impliquées ?
6. Pourquoi une clause d''exclusivité identique peut-elle être licite entre deux petites entreprises et poser un problème de concurrence lorsqu''elle est imposée par une entreprise en position dominante ?

## Corrigé

1. La clause d''exclusivité organise l''exécution du contrat (interdiction de contracter avec des concurrents pendant la durée du contrat), alors que la clause de non-concurrence s''applique en principe après la fin du contrat, pour protéger un intérêt légitime (clientèle cédée, savoir-faire) une fois la relation terminée.
2. Pour l''acquéreur, l''earn-out limite le risque : il ne paie la part variable que si les performances futures confirment la valeur de l''entreprise. Pour le cédant, elle permet de capter une partie de la valeur future qu''il estime probable, sans l''imposer intégralement à l''acquéreur dès la cession.
3. En principe, sans clause de hardship, le fournisseur reste tenu d''exécuter le contrat aux conditions initiales fixées, l''aggravation du coût n''étant pas, en elle-même, un cas de force majeure (qui suppose une impossibilité d''exécuter, pas seulement une difficulté économique). Il pourrait tenter une négociation amiable, mais n''a pas de droit automatique à une révision du prix en l''absence de clause ou de disposition légale spécifique applicable.
4. L''earn-out théorique est de 15 % × (95 000 000 − 60 000 000) = 15 % × 35 000 000 = 5 250 000 FCFA, inférieur au plafond de 20 000 000 FCFA. Le prix total payé est donc de 90 000 000 + 5 250 000 = 95 250 000 FCFA.
5. Une entente suppose un accord ou une pratique concertée entre au moins deux entreprises (généralement concurrentes) ; un abus de position dominante est le fait d''une seule entreprise qui détient individuellement (ou parfois collectivement) une position dominante sur un marché.
6. Parce que l''analyse concurrentielle s''intéresse à l''effet réel sur le marché : une exclusivité entre deux petits acteurs a un effet négligeable, alors que la même clause imposée par un acteur dominant à l''ensemble de son réseau peut verrouiller l''accès au marché pour des concurrents.', 'texte', 45, false, 30
from public.courses c where c.slug = 'mas-droit-m1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Droit des contrats d''affaires et de la concurrence : clauses complexes et pratiques anticoncurrentielles');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Arbitrage et modes alternatifs de résolution des litiges : clause compromissoire et rôle de la CCJA', '## Objectifs de la leçon

Cette leçon présente l''arbitrage et les modes alternatifs de résolution des litiges (MARL) dans les relations d''affaires, avec une attention particulière à la logique de la clause compromissoire et au rôle de la Cour commune de justice et d''arbitrage (CCJA) de l''OHADA dans le paysage régional. L''objectif du Master 1 est de comprendre la logique d''ensemble et les avantages comparés de ces modes de résolution des litiges, non de maîtriser le détail procédural fin, qui relève d''un enseignement spécialisé d''arbitrage.

## Pourquoi recourir à l''arbitrage et aux MARL dans les affaires

Les entreprises qui contractent, en particulier dans un cadre régional ou international, préfèrent souvent éviter la juridiction étatique de l''une ou l''autre des parties, pour plusieurs raisons :

- La neutralité : aucune des parties ne souhaite être jugée devant les tribunaux du pays de son cocontractant.
- La confidentialité : l''arbitrage se déroule, en principe, de façon confidentielle, contrairement à une procédure judiciaire généralement publique.
- La spécialisation : les parties choisissent des arbitres ayant une expertise technique ou sectorielle précise.
- La rapidité relative et la flexibilité procédurale.
- L''exécution transfrontalière généralement facilitée des sentences arbitrales, grâce à des conventions internationales de reconnaissance et d''exécution.

Les modes alternatifs de résolution des litiges comprennent, au-delà de l''arbitrage proprement dit :

- La médiation : un tiers neutre (le médiateur) aide les parties à trouver elles-mêmes une solution amiable, sans trancher le litige à leur place.
- La conciliation : proche de la médiation, le conciliateur peut être plus actif dans la proposition de solutions, selon les traditions et les textes applicables.
- L''arbitrage : à la différence de la médiation et de la conciliation, l''arbitre tranche le litige par une décision (la sentence arbitrale), qui a, en principe, une force obligatoire comparable à un jugement, mais rendue par un tribunal privé choisi par les parties plutôt que par une juridiction étatique.

## La clause compromissoire

La clause compromissoire est la clause, insérée dans un contrat avant la survenance d''un litige, par laquelle les parties conviennent de soumettre à l''arbitrage les différends qui pourraient naître de ce contrat. Elle se distingue du compromis d''arbitrage, qui est l''accord conclu après la naissance du litige pour le soumettre à l''arbitrage.

Une clause compromissoire bien rédigée précise généralement :

- Le siège de l''arbitrage (le lieu juridique de référence pour la procédure, qui n''est pas nécessairement le lieu où se tiennent les audiences).
- Le règlement d''arbitrage applicable (celui d''une institution d''arbitrage déterminée, ou un arbitrage ad hoc sans institution).
- La langue de la procédure.
- Le nombre d''arbitres (souvent un ou trois) et la méthode de leur désignation.
- Le droit applicable au fond du litige, qui peut être distinct de la loi du siège de l''arbitrage.

L''absence de précision sur ces points n''empêche pas nécessairement l''arbitrage, les règlements institutionnels prévoyant des mécanismes de désignation par défaut, mais elle crée un risque de contestation et de retard.

L''effet essentiel de la clause compromissoire est de dessaisir, en principe, les juridictions étatiques du litige : si une partie saisit malgré tout un tribunal étatique en violation de la clause, l''autre partie peut en principe soulever l''incompétence de ce tribunal au profit de l''arbitrage convenu. On parle de l''effet négatif de la clause (elle écarte la compétence étatique) et de son effet positif (elle fonde la compétence du tribunal arbitral).

## La CCJA de l''OHADA : rôle en général

La Cour commune de justice et d''arbitrage (CCJA) est l''organe juridictionnel commun aux États membres de l''OHADA. Elle exerce, en matière d''arbitrage, un double rôle qu''il convient de connaître en général, sans entrer dans le détail procédural fin :

- Un rôle d''appui à l''arbitrage institutionnel : la CCJA peut administrer des arbitrages selon son propre règlement, en particulier pour les litiges relatifs aux contrats exécutés ou à exécuter dans l''espace OHADA, lorsque les parties ont choisi ce cadre.
- Un rôle juridictionnel vis-à-vis des sentences arbitrales rendues sous son égide, notamment pour leur reconnaissance et leur exécution dans l''espace OHADA, ainsi qu''un contrôle limité de leur régularité, sans réexaminer le fond du litige déjà tranché par les arbitres.

Au-delà de l''arbitrage, la CCJA joue également un rôle de juridiction de cassation commune pour l''interprétation et l''application des actes uniformes OHADA (droit des sociétés, droit commercial général, sûretés, etc.), ce qui favorise une interprétation harmonisée du droit des affaires dans l''ensemble de la zone, limitant les divergences entre juridictions nationales.

Pour un cas pratique de Master 1, il suffit en général de savoir identifier qu''un litige entrant dans le champ de l''OHADA, assorti d''une clause d''arbitrage faisant référence à la CCJA ou à son règlement, peut être porté devant cette institution, sans qu''il soit demandé de détailler précisément les délais ou les voies de recours internes à la procédure, qui relèvent d''un enseignement spécialisé.

## Choisir entre arbitrage, médiation et juridiction étatique

Le choix du mode de résolution des litiges dépend de plusieurs facteurs que l''on doit savoir mettre en balance dans un cas pratique :

- La nature de la relation : une relation d''affaires que les parties souhaitent préserver à long terme s''oriente plutôt vers la médiation, plus propice à une solution négociée que l''arbitrage, procédure contradictoire qui tranche en faveur d''une partie.
- Le montant et la complexité du litige : un litige technique de montant élevé justifie souvent le coût et la durée d''un arbitrage avec des arbitres spécialisés, alors qu''un litige de faible montant peut être disproportionné par rapport au coût d''un arbitrage.
- Le besoin d''exécution transfrontalière : lorsque les parties ou leurs actifs sont situés dans des pays différents, l''arbitrage offre souvent de meilleures perspectives d''exécution qu''un jugement étatique.
- Le besoin de confidentialité : particulièrement important lorsque le litige touche à des secrets d''affaires ou pourrait nuire à la réputation d''une partie si rendu public.

## Cas d''entreprise : litige Delta Cacao

La société Delta Cacao SA, basée en Côte d''Ivoire, a conclu avec Sahel Négoce SA, basée au Sénégal, un contrat de fourniture de fèves de cacao sur trois ans, comportant une clause compromissoire désignant un arbitrage à trois arbitres, sous un règlement d''arbitrage faisant référence à la CCJA, siège à Abidjan, droit applicable au fond : droit ivoirien. Un désaccord survient sur la qualité des livraisons de la deuxième année, Sahel Négoce SA estimant avoir subi un préjudice de 60 000 000 FCFA du fait de fèves non conformes.

Analyse : la clause compromissoire dessaisit en principe les juridictions étatiques sénégalaises et ivoiriennes du litige ; Sahel Négoce SA ne pourrait donc pas saisir directement un tribunal sénégalais sans que Delta Cacao SA ne puisse soulever l''incompétence de ce tribunal au profit de l''arbitrage convenu. Le litige relève du champ de l''OHADA (contrat de fourniture entre entreprises ayant une activité dans l''espace OHADA) et peut être porté devant un arbitrage administré selon le règlement visé, le siège fixé à Abidjan déterminant le cadre juridique de référence pour la procédure, sans préjudice du droit ivoirien choisi pour trancher le fond du différend sur la conformité des livraisons.

## Points clés à retenir

- L''arbitrage tranche le litige par une sentence obligatoire ; la médiation et la conciliation aident les parties à trouver elles-mêmes une solution, sans l''imposer.
- La clause compromissoire, insérée avant le litige, a pour effet d''écarter la compétence des juridictions étatiques au profit de l''arbitrage convenu.
- Une clause compromissoire bien rédigée précise le siège, le règlement applicable, la langue, le nombre d''arbitres et le droit applicable au fond.
- La CCJA de l''OHADA joue un rôle d''appui à l''arbitrage institutionnel et un rôle juridictionnel de reconnaissance et d''exécution des sentences, ainsi qu''un rôle de cassation commune pour le droit uniforme OHADA ; les détails procéduraux fins ne sont pas exigés en Master 1 et relèvent d''un enseignement spécialisé.
- Le choix entre arbitrage, médiation et juridiction étatique dépend de la nature de la relation, du montant du litige, du besoin d''exécution transfrontalière et du besoin de confidentialité.

## Exercices pratiques

1. Distinguez la clause compromissoire du compromis d''arbitrage par leur moment de conclusion.
2. Citez trois éléments qu''une clause compromissoire bien rédigée devrait préciser.
3. Expliquez la différence entre l''effet négatif et l''effet positif de la clause compromissoire.
4. Pourquoi une entreprise souhaitant préserver une relation commerciale durable avec son partenaire pourrait-elle préférer la médiation à l''arbitrage en cas de différend ?
5. Dans le cas Delta Cacao ci-dessus, le tribunal de commerce de Dakar peut-il, en principe, trancher directement le litige si Sahel Négoce SA le saisit malgré la clause compromissoire ? Justifiez.
6. Citez deux rôles généraux de la CCJA de l''OHADA en matière d''arbitrage.

## Corrigé

1. La clause compromissoire est conclue avant la naissance du litige, au sein du contrat initial, pour les différends futurs et éventuels ; le compromis d''arbitrage est conclu après la naissance du litige, pour ce litige précisément identifié.
2. Par exemple : le siège de l''arbitrage, le règlement d''arbitrage applicable, et le nombre d''arbitres (on pouvait aussi citer la langue de la procédure ou le droit applicable au fond).
3. L''effet négatif écarte la compétence des juridictions étatiques pour le litige couvert par la clause ; l''effet positif fonde, à l''inverse, la compétence du tribunal arbitral pour statuer sur ce même litige.
4. Parce que la médiation vise une solution négociée et consensuelle qui préserve la relation entre les parties, alors que l''arbitrage, comme une procédure judiciaire, tranche en faveur d''une partie contre l''autre, ce qui peut davantage détériorer la relation commerciale future.
5. En principe non, ou plus précisément le tribunal de commerce de Dakar devrait se déclarer incompétent si Delta Cacao SA soulève l''exception d''incompétence fondée sur la clause compromissoire, puisque celle-ci a dessaisi les juridictions étatiques du litige au profit de l''arbitrage convenu.
6. Un rôle d''appui à l''arbitrage institutionnel (administration d''arbitrages selon son propre règlement) et un rôle juridictionnel de reconnaissance et d''exécution des sentences arbitrales rendues sous son égide (on pouvait aussi citer son rôle de cassation commune pour le droit uniforme OHADA).', 'texte', 45, false, 40
from public.courses c where c.slug = 'mas-droit-m1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Arbitrage et modes alternatifs de résolution des litiges : clause compromissoire et rôle de la CCJA');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Sujet type d''examen de Master 1 en droit des affaires (entraînement, corrigé détaillé)', '## Sujet type d''examen de Master 1 en droit des affaires (entraînement non officiel, barème indicatif)

Durée indicative : 3 heures. Ce sujet est un entraînement pédagogique, non un sujet officiel ; le barème proposé est indicatif et peut être adapté par votre enseignant.

### Énoncé

La société Jolof Industries SA, basée à Dakar, est la société mère d''un groupe comprenant deux filiales : Jolof Emballages SARL (détenue à 80 %) et Jolof Distribution SARL (détenue à 45 %, les 55 % restants étant détenus par neuf actionnaires minoritaires n''agissant jamais ensemble, ce qui permet en pratique à Jolof Industries SA d''obtenir systématiquement la majorité en assemblée générale).

Premier fait : le directeur général de Jolof Industries SA, M. Faye, est également actionnaire majoritaire (70 %) d''une société de transport, Rapid Cargo SARL, qui fournit à Jolof Distribution SARL l''intégralité de ses prestations de transport pour un montant annuel de 54 000 000 FCFA. Le prix de marché pour des prestations comparables, selon deux devis obtenus auprès de transporteurs concurrents, serait de 42 000 000 FCFA par an. Le contrat a été conclu par le directeur général de Jolof Distribution SARL sans consultation préalable du conseil d''administration.

Deuxième fait : Jolof Emballages SARL, qui détient 58 % du marché régional de l''emballage plastique alimentaire, impose à l''ensemble de ses douze distributeurs un contrat d''exclusivité réciproque de huit ans, leur interdisant de distribuer des emballages concurrents, sans contrepartie financière spécifique autre que les conditions commerciales habituelles.

Troisième fait : le contrat entre Jolof Emballages SARL et l''un de ses distributeurs, Teranga Pack SARL, comporte une clause compromissoire désignant un arbitrage à arbitre unique, siège à Dakar, règlement de la CCJA, droit sénégalais applicable au fond. Un litige survient sur une rupture anticipée du contrat par Jolof Emballages SARL, Teranga Pack SARL réclamant 15 000 000 FCFA de dommages-intérêts. Jolof Emballages SARL saisit directement le tribunal de commerce de Dakar sans mentionner la clause compromissoire, espérant une procédure plus rapide.

### Questions

1. (6 points) Qualifiez le lien de contrôle entre Jolof Industries SA et chacune de ses deux filiales, en précisant le type de contrôle en cause pour Jolof Distribution SARL.
2. (8 points) Analysez le premier fait : le contrat entre Jolof Distribution SARL et Rapid Cargo SARL constitue-t-il une convention réglementée ? Chiffrez l''écart par rapport au prix de marché et indiquez les conséquences possibles de l''absence de consultation du conseil d''administration.
3. (8 points) Analysez le deuxième fait au regard des principes généraux du droit de la concurrence : la clause d''exclusivité réciproque de huit ans imposée par Jolof Emballages SARL pose-t-elle un risque de qualification comme pratique anticoncurrentielle ? Justifiez en identifiant les éléments pertinents.
4. (8 points) Analysez le troisième fait : la saisine du tribunal de commerce de Dakar par Jolof Emballages SARL est-elle conforme à la clause compromissoire ? Quelle réaction procédurale Teranga Pack SARL pourrait-elle opposer, et quel rôle la CCJA pourrait-elle jouer dans la suite du dossier ?

### Corrigé détaillé

1. Jolof Industries SA exerce un contrôle de droit sur Jolof Emballages SARL (détention de 80 % du capital, majorité évidente des droits de vote). Sur Jolof Distribution SARL, elle détient seulement 45 % du capital, ce qui est minoritaire en droit, mais la dispersion des 55 % restants entre neuf actionnaires n''agissant jamais ensemble lui permet d''obtenir systématiquement la majorité en assemblée : il s''agit donc d''un contrôle de fait, et non d''un contrôle de droit, bien que les conséquences pratiques du contrôle (vigilance sur les conventions, information renforcée) soient similaires.

2. Le contrat entre Jolof Distribution SARL et Rapid Cargo SARL présente les caractéristiques d''une convention réglementée : M. Faye, directeur général de la société mère Jolof Industries SA, est également actionnaire majoritaire (70 %) du cocontractant Rapid Cargo SARL, ce qui crée un lien d''influence pertinent même s''il n''est pas formellement dirigeant de Jolof Distribution SARL (une analyse complète devrait vérifier s''il exerce également une fonction ou une influence directe sur cette filiale, ce qui est cohérent avec son rôle de dirigeant du groupe). L''écart de prix est de 54 000 000 − 42 000 000 = 12 000 000 FCFA par an, soit environ 28,6 % au-dessus du marché (12 000 000 / 42 000 000 ≈ 0,286), ce qui écarte la qualification de convention courante à conditions normales. L''absence de consultation préalable du conseil d''administration de Jolof Distribution SARL constitue un manquement au formalisme applicable aux conventions réglementées ; les conséquences possibles sont, selon les circonstances, la responsabilité civile du dirigeant ayant conclu le contrat pour le préjudice correspondant au surcoût (12 000 000 FCFA par an), et un risque de contestation de la convention par les actionnaires minoritaires de Jolof Distribution SARL.

3. La clause d''exclusivité réciproque de huit ans, imposée par Jolof Emballages SARL à l''ensemble de son réseau de douze distributeurs, pose un risque réel de qualification anticoncurrentielle pour plusieurs raisons convergentes : premièrement, Jolof Emballages SARL détient 58 % du marché régional de l''emballage plastique alimentaire, ce qui peut constituer une position dominante selon la définition du marché pertinent ; deuxièmement, la durée de huit ans est longue et l''exclusivité est appliquée systématiquement à l''ensemble du réseau, ce qui peut avoir un effet cumulatif de verrouillage du marché pour les concurrents de Jolof Emballages SARL qui chercheraient à accéder aux mêmes distributeurs ; troisièmement, l''absence de contrepartie financière spécifique (au-delà des conditions commerciales habituelles) affaiblit la justification économique de cette contrainte. L''ensemble de ces éléments (position dominante probable, durée longue, absence de contrepartie spécifique, effet cumulatif sur l''ensemble du réseau) est caractéristique d''une pratique susceptible d''être analysée comme un abus de position dominante, sous réserve d''une analyse plus fine du marché pertinent et des justifications économiques que pourrait avancer Jolof Emballages SARL (investissements spécifiques à amortir, par exemple).

4. La saisine directe du tribunal de commerce de Dakar par Jolof Emballages SARL n''est pas conforme à la clause compromissoire, qui a pour effet de dessaisir en principe les juridictions étatiques du litige couvert par le contrat. Teranga Pack SARL peut soulever l''exception d''incompétence du tribunal de commerce de Dakar en se fondant sur la clause compromissoire, ce qui devrait conduire le tribunal à se déclarer incompétent au profit de l''arbitrage convenu (arbitre unique, règlement CCJA, siège Dakar, droit sénégalais au fond). Le litige, relatif à un contrat de distribution exécuté dans l''espace OHADA, pourrait ensuite être porté devant un arbitrage administré selon le règlement de la CCJA, qui jouerait son rôle d''appui institutionnel à la procédure arbitrale, puis, le cas échéant, un rôle de reconnaissance et d''exécution de la sentence arbitrale qui serait rendue sur la demande de dommages-intérêts de 15 000 000 FCFA formulée par Teranga Pack SARL.

## Exercices pratiques (questions complémentaires)

1. Dans le sujet ci-dessus, si Jolof Industries SA ne détenait que 20 % de Jolof Distribution SARL, sans lien particulier avec les autres actionnaires, la qualification de contrôle de fait serait-elle encore pertinente ? Justifiez.
2. Proposez une contrepartie financière spécifique que Jolof Emballages SARL pourrait négocier avec ses distributeurs pour renforcer la justification économique de la clause d''exclusivité, tout en réduisant le risque concurrentiel.
3. Si le conseil d''administration de Jolof Distribution SARL avait autorisé préalablement le contrat avec Rapid Cargo SARL, en toute connaissance de l''écart de prix constaté, la qualification de convention réglementée changerait-elle les conséquences juridiques ? Expliquez.
4. Si la clause compromissoire du troisième fait avait désigné un arbitrage ad hoc (sans institution), quel aurait été l''impact sur l''intervention éventuelle de la CCJA ?
5. Résumez, en cinq lignes, le fil conducteur transversal reliant les trois faits du sujet (gouvernance de groupe, concurrence, résolution des litiges) dans la gestion des risques juridiques d''un groupe de sociétés.

## Corrigé

1. La qualification de contrôle de fait dépendrait de la réalité du pouvoir de décision en assemblée, pas seulement du pourcentage détenu : à 20 % sans lien particulier avec les autres actionnaires (qui pourraient, par exemple, agir de façon coordonnée ou être eux-mêmes majoritaires de fait), il serait plus difficile de démontrer que Jolof Industries SA obtient systématiquement la majorité ; une analyse des résultats effectifs des assemblées précédentes serait nécessaire pour trancher, et en l''absence d''une telle démonstration, la qualification de contrôle ne serait pas retenue.
2. Par exemple, un financement ou une subvention des investissements commerciaux spécifiques des distributeurs (présentoirs, formation, garantie de volumes minimums d''achat par Jolof Emballages SARL), qui constituerait une contrepartie réelle et proportionnée à la contrainte d''exclusivité, renforçant sa justification économique et réduisant le risque de qualification abusive.
3. L''autorisation préalable par le conseil d''administration ne change pas la qualification de convention réglementée (qui dépend de la qualité des parties, pas du respect de la procédure), mais elle change les conséquences pratiques : le respect du formalisme réduit significativement le risque de responsabilité du dirigeant ayant conclu le contrat, car la décision a été prise collectivement, en connaissance de l''écart de prix, par l''organe compétent, même si les actionnaires minoritaires pourraient encore contester l''opportunité économique de la décision par d''autres voies.
4. Un arbitrage ad hoc, sans institution, ne ferait en principe pas intervenir la CCJA dans l''administration de la procédure elle-même (désignation des arbitres selon le règlement institutionnel, par exemple) ; toutefois, la CCJA pourrait encore intervenir en aval pour la reconnaissance et l''exécution de la sentence arbitrale dans l''espace OHADA, ce rôle juridictionnel n''étant pas conditionné au caractère institutionnel ou ad hoc de l''arbitrage initial.
5. Les trois faits illustrent qu''un groupe de sociétés doit gérer simultanément plusieurs familles de risques juridiques liés à ses choix d''organisation : les conflits d''intérêts internes entre dirigeants et sociétés liées (gouvernance), les effets externes de sa puissance économique sur le marché (concurrence), et la sécurisation contractuelle du règlement des différends avec ses partenaires (arbitrage). Une gestion rigoureuse de ces trois dimensions, en amont de la signature des contrats plutôt qu''au moment du litige, réduit fortement l''exposition juridique et financière du groupe.', 'texte', 50, false, 50
from public.courses c where c.slug = 'mas-droit-m1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Sujet type d''examen de Master 1 en droit des affaires (entraînement, corrigé détaillé)');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Droit des sociétés approfondi et gouvernance', '## Fiche du cours vidéo

Durée : 1h30. Objectif : permettre à l''étudiant de maîtriser la notion de contrôle entre sociétés et le régime des conventions réglementées, en étant capable de qualifier une situation d''entreprise complexe et d''en tirer les conséquences pratiques. Matériel recommandé : tableau ou diaporama avec un organigramme de groupe vierge à compléter, calculatrice pour les exemples chiffrés. Prérequis : droit des sociétés commerciales OHADA (notions de capital, d''organes sociaux, d''assemblée générale) vu en Licence 3.

## Déroulé minuté

## 00:00 – 05:00 · Introduction et enjeux

Bonjour à toutes et à tous. Dans cette séance, nous allons travailler une notion centrale du droit des sociétés approfondi : la gouvernance des groupes, à travers deux piliers, le contrôle et les conventions réglementées. Pourquoi cette matière est-elle si importante en pratique ? Parce qu''une très grande partie des grandes entreprises africaines fonctionnent aujourd''hui sous forme de groupes : une société holding qui détient des participations dans plusieurs filiales, parfois dans des secteurs différents. Cette organisation présente des avantages économiques réels — mutualisation des ressources, diversification des risques, optimisation de la gestion — mais elle crée aussi des risques juridiques spécifiques, en particulier le risque que les dirigeants ou les actionnaires significatifs utilisent leur position pour favoriser une société du groupe au détriment d''une autre, ou au détriment des actionnaires minoritaires. C''est ce risque que le droit des conventions réglementées cherche à encadrer. Gardez cette idée directrice en tête tout au long de la séance : le droit ne cherche pas à empêcher les relations entre sociétés liées, qui sont souvent légitimes et nécessaires, mais à s''assurer qu''elles ne dissimulent pas un transfert de valeur injustifié.

## 05:00 – 15:00 · La notion de contrôle

Commençons par la notion de contrôle, qui est le fondement même de la notion de groupe. Je vous rappelle qu''en droit OHADA, le groupe n''est pas un sujet de droit : chaque société du groupe garde sa personnalité juridique propre. Ce qui unit les sociétés du groupe, c''est un lien de fait et de droit : le contrôle. On distingue trois formes de contrôle qu''il faut absolument savoir reconnaître dans un cas pratique. D''abord, le contrôle de droit : une société détient la majorité des droits de vote d''une autre, et peut donc, mathématiquement, imposer ses décisions en assemblée. Ensuite, le contrôle de fait : une société ne détient pas la majorité du capital, mais obtient, en pratique, la majorité des voix exprimées en assemblée, parce que les autres actionnaires sont dispersés et n''agissent jamais ensemble. Prenons un exemple au tableau : une société détient 35 % du capital d''une autre société, le reste étant détenu par vingt actionnaires individuels qui ne se coordonnent jamais. Si, lors des trois dernières assemblées générales, cette société a systématiquement obtenu plus de 50 % des voix exprimées parce que les petits actionnaires ne se déplacent pas tous, on est en présence d''un contrôle de fait. Enfin, le contrôle conjoint : plusieurs associés exercent ensemble le pouvoir de décision en vertu d''un accord explicite, par exemple un pacte d''actionnaires qui prévoit un vote commun. Cette distinction n''est pas un exercice théorique : elle détermine le périmètre du groupe, l''obligation éventuelle de comptes consolidés, et surtout la vigilance à exercer sur les conventions entre sociétés liées, que nous allons étudier maintenant.

## 15:00 – 30:00 · Les conventions réglementées : logique et procédure

Passons au cœur de la séance : les conventions réglementées. Je vous propose la définition suivante, que vous devez pouvoir reformuler avec vos propres mots à l''examen : une convention réglementée est un contrat conclu entre une société et une personne qui exerce une influence sur elle — un dirigeant, un actionnaire significatif, ou une société liée à ces personnes. L''idée est simple : quand la même personne négocie des deux côtés de la table, implicitement ou explicitement, le risque de conflit d''intérêts justifie un contrôle procédural renforcé. Attention : ce contrôle renforcé ne signifie pas interdiction. Beaucoup de conventions réglementées sont parfaitement légitimes et bonnes pour l''entreprise — par exemple, un dirigeant qui met à disposition de sa société un bien personnel à un prix juste. Le droit organise une procédure en trois temps que vous devez connaître par cœur : premièrement, l''information préalable de l''organe compétent, généralement le conseil d''administration ; deuxièmement, l''autorisation ou la ratification par cet organe, la personne intéressée ne participant pas au vote sur sa propre convention — c''est un point très souvent oublié par les étudiants et qui vaut des points à l''examen ; troisièmement, l''information de l''assemblée générale des associés. Il existe une exception importante : les conventions dites courantes, conclues à des conditions normales, c''est-à-dire comparables à ce qu''un tiers indépendant aurait négocié. Ces conventions échappent au formalisme renforcé. C''est là que se trouve la vraie difficulté pratique des cas d''examen : comment déterminer si une convention est courante et à conditions normales ? La méthode est la comparaison avec le prix de marché. Prenons un exemple chiffré au tableau : un directeur général loue à sa société un entrepôt qu''il possède personnellement, pour 3 000 000 FCFA par mois. Le prix de marché pour un bien comparable est de 1 800 000 FCFA par mois. L''écart est de 1 200 000 FCFA par mois, soit 14 400 000 FCFA par an. Cet écart très significatif écarte la qualification de convention courante : c''est une convention réglementée qui devait suivre la procédure en trois temps.

## 30:00 – 35:00 · Pause active et question au groupe

Je vous propose une courte pause active de cinq minutes. Avant de reprendre, réfléchissez individuellement à cette question, que nous corrigerons ensemble à l''oral : si le même directeur général avait loué l''entrepôt au prix exact de 1 800 000 FCFA par mois, identique au marché, la convention devrait-elle encore suivre la procédure en trois temps ? Notez votre réponse et votre justification, nous en discuterons au retour de la pause. (Réponse attendue : non, en principe, car il s''agirait alors d''une convention courante conclue à des conditions normales, échappant au formalisme renforcé, même si le dirigeant a un intérêt personnel dans l''opération — l''important est l''absence d''avantage anormal, pas l''existence du lien d''intérêt en lui-même.)

## 35:00 – 50:00 · Cas d''entreprise filé : groupe Baobab Négoce

Reprenons avec un cas d''entreprise complet, que nous allons résoudre ensemble étape par étape, exactement selon la méthode que vous devrez appliquer à l''examen. Baobab Négoce SA, basée à Dakar, contrôle à 70 % sa filiale Baobab Transit SARL. Le président de Baobab Négoce SA, M. Ndiaye, est actionnaire à 40 % d''une société tierce, Rapid Fret SARL, qui fournit des prestations de transport sous-traité à Baobab Transit SARL pour 45 000 000 FCFA par an. Les tarifs de Rapid Fret SARL sont supérieurs de 20 % aux tarifs du marché constatés chez deux concurrents comparables. Première étape de la méthode : identifier le lien de contrôle. Baobab Négoce SA détient 70 % de Baobab Transit SARL : c''est un contrôle de droit, sans ambiguïté. Deuxième étape : identifier les parties au contrat litigieux et leurs liens d''intérêt. Le contrat est conclu entre Baobab Transit SARL (la filiale) et Rapid Fret SARL. M. Ndiaye, qui est président de la société mère Baobab Négoce SA, détient 40 % de Rapid Fret SARL : c''est un lien d''intérêt significatif qui justifie d''examiner la qualification de convention réglementée, même s''il n''est pas formellement dirigeant de la filiale elle-même — en pratique, son influence sur le groupe rend cette vigilance pertinente. Troisième étape : chiffrer l''écart par rapport au marché. Le prix de marché théorique, si le tarif pratiqué (45 000 000 FCFA) représente 120 % du prix de marché (c''est-à-dire 100 % plus 20 % de majoration), se calcule ainsi : prix de marché = 45 000 000 ÷ 1,20 = 37 500 000 FCFA. Le surcoût est donc de 45 000 000 − 37 500 000 = 7 500 000 FCFA. Quatrième étape : conclure sur la qualification et les conséquences. L''écart significatif écarte la qualification de convention courante. La procédure d''autorisation préalable aurait dû être respectée. À défaut, la responsabilité de M. Ndiaye pourrait être recherchée par les actionnaires minoritaires de Baobab Transit SARL pour le préjudice correspondant au surcoût de 7 500 000 FCFA.

## 50:00 – 65:00 · Approfondissement : sanctions et vigilance pratique

Allons plus loin sur les conséquences du non-respect du formalisme, question fréquente à l''examen, en gardant à l''esprit qu''il faut toujours vérifier le texte précis en vigueur : je vous donne ici la logique générale, pédagogique, pas des références d''articles. Premièrement, la responsabilité civile du dirigeant qui a conclu la convention sans l''autorisation requise, s''il en résulte un préjudice — c''est la conséquence la plus fréquemment retenue à l''examen, celle que nous avons appliquée dans le cas Baobab Négoce. Deuxièmement, selon la gravité, la possibilité que la convention soit remise en cause si elle a causé un préjudice imputable à l''absence d''autorisation. Troisièmement, un risque réputationnel et de gouvernance vis-à-vis des partenaires financiers. Pour une entreprise, la vigilance se traduit par une cartographie des conventions intra-groupe et une vérification systématique du prix de marché avant tout contrat avec une personne liée.

## 65:00 – 75:00 · Quiz interactif

Je vous propose maintenant un quiz de cinq questions, à choix de réponse courte, pour vérifier votre compréhension avant la synthèse finale. Première question : le contrôle de fait suppose-t-il la détention de la majorité du capital ? Réponse : non, il suppose une influence déterminante en pratique sans détention majoritaire. Deuxième question : une convention courante à conditions normales doit-elle suivre la procédure d''autorisation préalable renforcée ? Réponse : non, en principe, elle en est dispensée. Troisième question : qui ne doit pas participer au vote d''autorisation d''une convention réglementée au sein de l''organe compétent ? Réponse : la personne intéressée elle-même. Quatrième question : le groupe de sociétés a-t-il, en droit OHADA, une personnalité juridique propre distincte de ses sociétés membres ? Réponse : non, chaque société du groupe garde sa personnalité juridique propre. Cinquième question : dans le cas Baobab Négoce, quel est le montant du surcoût annuel identifié ? Réponse : 7 500 000 FCFA. Si vous avez eu des difficultés sur l''une de ces questions, reprenez la section correspondante de vos fiches avant l''examen.

## 75:00 – 85:00 · Synthèse et mise en perspective

Pour conclure cette séance, reprenons les points essentiels. Premièrement, le contrôle se définit par le pouvoir de fait sur les décisions en assemblée, pas seulement par un pourcentage de capital : il peut être de droit, de fait, ou conjoint. Deuxièmement, une convention réglementée se caractérise par la qualité des parties — l''existence d''un lien d''influence — et non par son objet : n''importe quel type de contrat peut être une convention réglementée s''il est conclu avec une personne liée. Troisièmement, la procédure en trois temps (information, autorisation sans le vote de l''intéressé, information de l''assemblée) est la colonne vertébrale du régime, et son non-respect ouvre la voie à la responsabilité du dirigeant. Quatrièmement, la comparaison avec le prix de marché est l''outil méthodologique central pour qualifier ou écarter le caractère « courant et à conditions normales » d''une convention — c''est la compétence la plus directement transférable à vos examens et à votre future pratique professionnelle. Pensez toujours, face à un cas pratique, à appliquer la méthode en quatre étapes que nous avons utilisée : identifier le contrôle, identifier les parties et leurs liens d''intérêt, chiffrer l''écart par rapport au marché, conclure sur la qualification et les conséquences.

## 85:00 – 90:00 · Évaluation finale

Pour terminer, voici cinq questions d''évaluation finale avec leurs réponses, que je vous invite à retravailler par écrit avant la prochaine séance. Question 1 : qu''est-ce qui distingue le contrôle de droit du contrôle de fait ? Réponse : le contrôle de droit résulte de la détention de la majorité des droits de vote ; le contrôle de fait résulte d''une influence déterminante en pratique, en l''absence de majorité, du fait de la dispersion des autres actionnaires. Question 2 : citez les trois étapes de la procédure applicable aux conventions réglementées. Réponse : information préalable de l''organe compétent, autorisation ou ratification sans participation au vote de la personne intéressée, information de l''assemblée générale des associés. Question 3 : quelle est la conséquence générale en cas d''absence d''autorisation d''une convention réglementée qui cause un préjudice à la société ? Réponse : la responsabilité civile du dirigeant qui a conclu la convention peut être engagée pour ce préjudice. Question 4 : comment qualifier une convention dont le prix est identique au prix de marché pour un bien ou un service comparable ? Réponse : convention courante conclue à des conditions normales, échappant en principe au formalisme renforcé. Question 5 : dans un groupe où la société mère détient 30 % du capital d''une filiale, le reste étant détenu par quinze actionnaires dispersés n''agissant jamais ensemble, et où la société mère obtient systématiquement la majorité en assemblée, quel type de contrôle est caractérisé ? Réponse : un contrôle de fait. Merci à toutes et à tous pour votre attention ; la prochaine séance portera sur les contrats d''affaires et la concurrence.', 'video', 90, false, 60
from public.courses c where c.slug = 'mas-droit-m1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Droit des sociétés approfondi et gouvernance');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Droit des contrats d''affaires et de la concurrence', '## Fiche du cours vidéo

Durée : 1h30. Objectif : savoir identifier, rédiger et apprécier la validité des clauses complexes des contrats d''affaires (exclusivité, non-concurrence, earn-out, hardship, limitation de responsabilité), et reconnaître les principes généraux du droit de la concurrence applicables aux pratiques anticoncurrentielles. Matériel recommandé : tableau ou diaporama, extraits de modèles de clauses contractuelles, calculatrice. Prérequis : droit des obligations (le contrat) et droit commercial général OHADA vus en Licence.

## Déroulé minuté

## 00:00 – 05:00 · Introduction

Bonjour à toutes et à tous. Après avoir travaillé la gouvernance des groupes dans la séance précédente, nous abordons aujourd''hui les contrats d''affaires sophistiqués et le droit de la concurrence. Ces deux thèmes sont liés par un fil conducteur que je veux que vous ayez en tête dès le départ : une clause contractuelle qui est parfaitement licite entre deux petites entreprises peut devenir problématique, au regard du droit de la concurrence, lorsqu''elle est imposée par une entreprise puissante sur un marché. C''est cette bascule, de la liberté contractuelle à la régulation concurrentielle, que nous allons apprendre à repérer.

## 05:00 – 20:00 · Les clauses complexes : exclusivité et non-concurrence

Commençons par la clause d''exclusivité. Elle engage une partie à ne pas contracter avec des concurrents de son partenaire. Elle peut être unilatérale ou réciproque. Sa validité dépend de trois critères que vous devez systématiquement examiner dans un cas pratique : la durée, le champ géographique, et la proportionnalité par rapport à la contrepartie obtenue. Une exclusivité de deux ans sur une zone limitée, en contrepartie d''un investissement commercial réel du bénéficiaire, est généralement acceptable. Une exclusivité de quinze ans sur tout le territoire national, sans contrepartie spécifique, est un signal d''alerte. Passons à la clause de non-concurrence, qui s''applique en principe après la fin du contrat, souvent lors de la cession d''un fonds de commerce ou de titres sociaux. Elle doit être limitée dans le temps, dans l''espace, et proportionnée à l''intérêt légitime qu''elle protège — typiquement, empêcher le cédant de récupérer immédiatement la clientèle qu''il vient de céder. Exemple au tableau : une clause de non-concurrence de dix ans sur l''ensemble du territoire national, pour la cession d''un commerce de quartier qui ne rayonnait que sur sa ville, serait manifestement disproportionnée par rapport à l''intérêt légitime à protéger, qui se limite à la zone de chalandise réelle du commerce cédé.

## 20:00 – 35:00 · Earn-out et hardship : deux outils de gestion du risque dans le temps

Abordons maintenant deux clauses qui organisent la relation entre les parties dans la durée, face à l''incertitude de l''avenir. La clause d''earn-out, d''abord : elle est utilisée dans les cessions d''entreprises pour concilier les attentes du cédant, souvent optimiste sur l''avenir de son entreprise, et la prudence de l''acquéreur, qui veut limiter son risque. Une partie du prix n''est payée qu''après la réalisation d''objectifs futurs. Travaillons un exemple chiffré ensemble : la cession des actions d''une société de transformation agroalimentaire est fixée à un prix de base de 200 000 000 FCFA, complété par un earn-out égal à 10 % du chiffre d''affaires additionnel réalisé au-delà de 150 000 000 FCFA sur les deux exercices suivant la cession, plafonné à 40 000 000 FCFA. Si le chiffre d''affaires cumulé des deux exercices atteint 230 000 000 FCFA, calculons : l''earn-out théorique est de 10 % multiplié par (230 000 000 moins 150 000 000), soit 10 % multiplié par 80 000 000, soit 8 000 000 FCFA. Ce montant est bien en-deçà du plafond de 40 000 000 FCFA, donc l''earn-out effectivement dû est de 8 000 000 FCFA, et le prix total payé par l''acquéreur est de 200 000 000 plus 8 000 000, soit 208 000 000 FCFA. Retenez bien cette méthode de calcul en deux temps : calculer l''earn-out théorique selon la formule contractuelle, puis le comparer au plafond pour déterminer le montant effectivement dû. Passons à la clause de hardship, ou clause d''imprévision : elle permet à une partie de demander une renégociation du contrat lorsque survient un changement de circonstances imprévisible qui rend l''exécution excessivement onéreuse, sans la rendre impossible — ce qui la distingue nettement de la force majeure. Exemple : un contrat d''approvisionnement en matières premières agricoles à prix fixe sur trois ans ; une sécheresse exceptionnelle double le coût d''achat pour le fournisseur. Avec une clause de hardship, le fournisseur peut demander une renégociation organisée du prix ; sans elle, il reste en principe tenu d''exécuter aux conditions initiales, sauf à démontrer une impossibilité, ce qui est beaucoup plus difficile à établir qu''une simple aggravation du coût.

## 35:00 – 40:00 · Pause active et question au groupe

Prenons cinq minutes de pause active. Question à préparer pour notre retour : pourquoi une clause de hardship est-elle particulièrement utile dans un contrat de longue durée portant sur des matières premières agricoles, plutôt que dans un contrat ponctuel de courte durée ? Réfléchissez-y et nous en discuterons au retour. (Réponse attendue : parce que les contrats de longue durée sont davantage exposés à des changements de circonstances imprévisibles sur leur durée d''exécution — climatiques, économiques — et que, sans mécanisme de renégociation organisée, les parties seraient contraintes à l''alternative brutale entre exécuter à perte ou chercher une rupture, souvent plus coûteuse et conflictuelle qu''une renégociation encadrée.)

## 40:00 – 50:00 · La clause limitative de responsabilité

Terminons les clauses complexes avec la clause limitative de responsabilité, qui plafonne par avance le montant des dommages-intérêts qu''une partie pourra devoir à l''autre en cas de manquement contractuel, souvent exprimé en pourcentage du prix du contrat ou en multiple d''un montant annuel. Ces clauses sont généralement valables entre professionnels, mais deux limites doivent être retenues : d''une part, elles perdent leur effet en cas de faute particulièrement grave de la partie qui chercherait à s''en prévaloir ; d''autre part, un plafond fixé à un niveau si bas qu''il viderait l''obligation essentielle du contrat de toute portée réelle peut être remis en cause, car une partie ne peut pas s''engager tout en se protégeant d''avance contre toute conséquence réelle de son inexécution.

## 50:00 – 65:00 · Principes généraux du droit de la concurrence

Passons maintenant au droit de la concurrence, dont la logique est différente : il ne s''agit plus seulement de protéger l''équilibre entre deux contractants, mais de protéger le fonctionnement concurrentiel du marché dans son ensemble, dans l''intérêt de toutes les entreprises et des consommateurs. Trois catégories de pratiques sont à connaître. Premièrement, les ententes anticoncurrentielles : des accords entre entreprises concurrentes qui restreignent la concurrence — fixation concertée des prix, répartition des marchés ou des clients, limitation concertée de la production. Deuxièmement, l''abus de position dominante : une entreprise qui détient une position dominante — c''est-à-dire la capacité de se comporter indépendamment de ses concurrents et de ses clients dans une mesure appréciable — exploite cette position de façon abusive, par exemple par des prix d''éviction destinés à exclure un concurrent, ou des conditions discriminatoires sans justification. Troisièmement, les pratiques restrictives verticales, entre un fournisseur et un distributeur, qui peuvent devenir anticoncurrentielles lorsqu''elles cloisonnent excessivement les marchés. Travaillons maintenant le cas d''entreprise filé : Sahel Boissons SA, producteur basé à Thiès, conclut avec quinze distributeurs régionaux des contrats d''exclusivité réciproque de dix ans, et détient 65 % du marché national des boissons gazeuses. Analysons ensemble, selon la méthode à appliquer dans un cas pratique : d''abord, la position de marché — 65 % est un indice fort de position dominante, à confirmer par la définition précise du marché pertinent ; ensuite, l''ampleur de la pratique — une exclusivité systématique sur l''ensemble du réseau de quinze distributeurs a un effet cumulatif bien plus fort qu''une exclusivité isolée avec un seul distributeur ; enfin, la durée — dix ans est une durée longue qui prolonge l''effet de verrouillage du marché pour les concurrents potentiels. La combinaison de ces trois éléments (position dominante probable, ampleur systématique, durée longue) est caractéristique d''un risque de qualification d''abus de position dominante, sous réserve de l''analyse du marché pertinent et des justifications économiques avancées par l''entreprise.

## 65:00 – 75:00 · Quiz interactif

Voici cinq questions pour vérifier votre compréhension. Première question : qu''est-ce qui distingue la force majeure de la situation visée par une clause de hardship ? Réponse : la force majeure rend l''exécution impossible, alors que la clause de hardship vise une exécution devenue seulement excessivement onéreuse, sans impossibilité. Deuxième question : dans l''exemple d''earn-out travaillé, pourquoi le montant effectivement dû est-il de 8 000 000 FCFA et non de 40 000 000 FCFA ? Réponse : parce que le plafond de 40 000 000 FCFA n''est qu''un maximum ; le montant effectivement dû résulte du calcul selon la formule contractuelle (10 % du chiffre d''affaires additionnel), qui donne ici 8 000 000 FCFA, inférieur au plafond. Troisième question : une entente anticoncurrentielle suppose-t-elle qu''une entreprise détienne une position dominante ? Réponse : non, l''entente suppose un accord entre plusieurs entreprises, indépendamment de leur taille respective, alors que l''abus suppose qu''une entreprise détienne individuellement une position dominante. Quatrième question : une clause limitative de responsabilité produit-elle son effet en cas de faute particulièrement grave ? Réponse : non, en principe, une faute particulièrement grave prive la clause de son effet. Cinquième question : dans le cas Sahel Boissons, quels sont les trois éléments qui convergent pour caractériser un risque de qualification anticoncurrentielle ? Réponse : la position dominante probable (65 % du marché), l''ampleur systématique de l''exclusivité sur l''ensemble du réseau, et la durée longue de dix ans.

## 75:00 – 85:00 · Synthèse et mise en perspective

Pour synthétiser cette séance : chaque clause complexe répond à une logique économique précise qu''il faut identifier avant d''en juger la validité — l''exclusivité et la non-concurrence restreignent la liberté d''une partie et doivent être proportionnées ; l''earn-out et le hardship organisent la gestion du risque dans le temps ; la limitation de responsabilité plafonne les conséquences financières d''un manquement, sous réserve des fautes graves. Sur le droit de la concurrence, retenez la méthode d''analyse en trois temps que nous avons appliquée au cas Sahel Boissons : évaluer la position de marché de l''entreprise, évaluer l''ampleur et la systématicité de la pratique contractuelle en cause, évaluer sa durée et sa justification économique. C''est la combinaison de ces facteurs, et non un seul critère isolé, qui permet de qualifier un risque de pratique anticoncurrentielle. Cette méthode de pondération multi-critères est exactement ce qu''un examinateur de Master attend de vous : pas une réponse binaire, mais une analyse nuancée des facteurs en présence.

## 85:00 – 90:00 · Évaluation finale

Cinq questions d''évaluation à retravailler par écrit. Question 1 : citez les trois critères de validité d''une clause d''exclusivité ou de non-concurrence. Réponse : la durée, le champ géographique, et la proportionnalité par rapport à la contrepartie ou à l''intérêt légitime protégé. Question 2 : dans une cession à 90 000 000 FCFA avec un earn-out de 15 % du chiffre d''affaires additionnel au-delà de 60 000 000 FCFA, plafonné à 20 000 000 FCFA, quel est le prix total si le chiffre d''affaires de l''exercice suivant atteint 95 000 000 FCFA ? Réponse : earn-out théorique = 15 % × (95 000 000 − 60 000 000) = 15 % × 35 000 000 = 5 250 000 FCFA, inférieur au plafond ; prix total = 90 000 000 + 5 250 000 = 95 250 000 FCFA. Question 3 : quelle est la différence essentielle entre une entente et un abus de position dominante quant au nombre d''acteurs impliqués ? Réponse : l''entente implique au moins deux entreprises en accord ; l''abus implique une seule entreprise qui détient individuellement une position dominante. Question 4 : une clause de hardship permet-elle d''obtenir automatiquement une révision du prix ? Réponse : non, elle organise seulement une procédure de renégociation ; elle ne garantit pas un résultat déterminé à l''avance. Question 5 : pourquoi la même clause d''exclusivité peut-elle être licite entre deux petites entreprises et poser un problème de concurrence entre un acteur dominant et son réseau ? Réponse : parce que l''analyse concurrentielle s''intéresse à l''effet réel sur la structure du marché, qui dépend du pouvoir de marché de l''entreprise qui impose la clause, pas seulement du contenu littéral de la clause. Merci pour votre attention ; la prochaine séance portera sur l''arbitrage et les modes alternatifs de résolution des litiges.', 'video', 90, false, 70
from public.courses c where c.slug = 'mas-droit-m1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Droit des contrats d''affaires et de la concurrence');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Arbitrage et modes alternatifs de résolution des litiges', '## Fiche du cours vidéo

Durée : 1h30. Objectif : comprendre la logique de la clause compromissoire, les avantages comparés des modes alternatifs de résolution des litiges, et le rôle général de la CCJA de l''OHADA en matière d''arbitrage. Matériel recommandé : tableau ou diaporama, exemple de clause compromissoire type à annoter. Prérequis : institutions et bases de la procédure vues en Licence 1, droit commercial général OHADA vu en Licence 2.

## Déroulé minuté

## 00:00 – 05:00 · Introduction

Bonjour à toutes et à tous. Nous terminons aujourd''hui le cycle des trois matières de Master 1 avec l''arbitrage et les modes alternatifs de résolution des litiges. C''est une matière différente des deux précédentes : il ne s''agit plus de qualifier une opération d''affaires, mais de comprendre comment les entreprises choisissent, par avance, la façon dont elles régleront leurs désaccords futurs. Gardez à l''esprit, pendant toute la séance, que l''objectif du Master 1 est de comprendre la logique d''ensemble et les grands mécanismes, pas de maîtriser le détail procédural fin d''un arbitrage, qui relève d''un enseignement spécialisé que certains d''entre vous approfondiront peut-être en Master 2 ou en formation professionnelle.

## 05:00 – 15:00 · Pourquoi choisir l''arbitrage et les MARL dans les affaires

Pourquoi des entreprises, en particulier dans un cadre régional, préfèrent-elles souvent éviter la juridiction étatique de leur cocontractant ? Cinq raisons structurent la réponse. La neutralité, d''abord : aucune partie ne souhaite être jugée devant les tribunaux du pays de l''autre, par crainte d''un traitement moins favorable, même si cette crainte n''est pas toujours justifiée en pratique. La confidentialité, ensuite : l''arbitrage se déroule en principe de façon confidentielle, contrairement à une procédure judiciaire généralement publique, ce qui protège les secrets d''affaires des parties. La spécialisation : les parties choisissent des arbitres ayant une expertise sectorielle précise, alors qu''un juge étatique traite des litiges de toute nature. La flexibilité procédurale et la rapidité relative, les parties pouvant organiser elles-mêmes certains aspects de la procédure. Enfin, l''exécution transfrontalière généralement facilitée des sentences arbitrales, grâce à des conventions internationales de reconnaissance et d''exécution, ce qui est essentiel lorsque les parties ou leurs actifs sont situés dans des pays différents. Au-delà de l''arbitrage, rappelons les autres modes alternatifs : la médiation, où un tiers neutre aide les parties à trouver elles-mêmes une solution sans trancher le litige, et la conciliation, proche de la médiation mais où le conciliateur peut être plus actif dans la proposition de solutions.

## 15:00 – 30:00 · La clause compromissoire : rédaction et effets

Entrons maintenant dans le détail de la clause compromissoire, qui est l''outil juridique central de cette matière. Définition à retenir : c''est la clause insérée dans un contrat avant la survenance d''un litige, par laquelle les parties conviennent de soumettre à l''arbitrage les différends qui pourraient naître de ce contrat. Distinguez-la bien du compromis d''arbitrage, conclu après la naissance du litige pour ce litige précisément identifié — cette distinction de vocabulaire est souvent demandée à l''examen. Une clause compromissoire bien rédigée doit préciser cinq éléments que je vous demande de mémoriser : le siège de l''arbitrage, qui est le lieu juridique de référence pour la procédure, et qui n''est pas nécessairement le lieu où se tiennent physiquement les audiences ; le règlement d''arbitrage applicable, celui d''une institution déterminée, ou un arbitrage ad hoc sans institution ; la langue de la procédure ; le nombre d''arbitres, souvent un ou trois, et la méthode de leur désignation ; et le droit applicable au fond du litige, qui peut être différent de la loi du siège. L''absence de précision sur ces points n''empêche pas nécessairement l''arbitrage, car les règlements institutionnels prévoient des mécanismes de désignation par défaut, mais elle crée un risque de contestation et de retard. Venons-en maintenant à l''effet essentiel de la clause : elle dessaisit, en principe, les juridictions étatiques du litige couvert. On parle d''effet négatif (elle écarte la compétence étatique) et d''effet positif (elle fonde la compétence du tribunal arbitral). Si une partie saisit malgré tout un tribunal étatique en violation de la clause, l''autre partie peut soulever l''exception d''incompétence au profit de l''arbitrage convenu — retenez bien ce mécanisme, car il est systématiquement testé dans les cas pratiques de ce chapitre.

## 30:00 – 35:00 · Pause active et question au groupe

Prenons cinq minutes de pause active. Question à préparer : une entreprise qui a signé une clause compromissoire peut-elle, si elle le souhaite au moment du litige, décider unilatéralement de saisir plutôt un tribunal étatique parce qu''elle estime que ce sera plus rapide ? Réfléchissez à la réponse et à sa justification. (Réponse attendue : non, en principe, elle ne peut pas décider unilatéralement d''écarter la clause compromissoire qu''elle a signée ; si elle saisit malgré tout un tribunal étatique, l''autre partie peut soulever l''exception d''incompétence fondée sur la clause, ce qui devrait conduire le tribunal à se déclarer incompétent au profit de l''arbitrage convenu.)

## 35:00 – 50:00 · Le rôle de la CCJA de l''OHADA en matière d''arbitrage

Abordons maintenant la Cour commune de justice et d''arbitrage, la CCJA, organe juridictionnel commun aux États membres de l''OHADA. Son rôle en matière d''arbitrage se décompose en deux fonctions que vous devez pouvoir citer et distinguer. Premièrement, un rôle d''appui à l''arbitrage institutionnel : la CCJA peut administrer des arbitrages selon son propre règlement, en particulier pour des litiges relatifs à des contrats exécutés ou à exécuter dans l''espace OHADA, lorsque les parties ont choisi ce cadre dans leur clause compromissoire. Deuxièmement, un rôle juridictionnel vis-à-vis des sentences rendues sous son égide : reconnaissance et exécution de ces sentences dans l''espace OHADA, avec un contrôle limité de leur régularité, sans réexamen du fond du litige déjà tranché par les arbitres — ce point est important, la CCJA ne rejuge pas l''affaire, elle vérifie la régularité de la sentence. Au-delà de l''arbitrage, j''ajoute, pour la culture générale du droit des affaires OHADA, que la CCJA joue également un rôle de juridiction de cassation commune pour l''interprétation des actes uniformes — droit des sociétés, droit commercial général, sûretés — ce qui favorise une interprétation harmonisée du droit dans toute la zone et limite les divergences entre juridictions nationales. Pour un cas pratique de Master 1, il vous suffit de savoir identifier qu''un litige entrant dans le champ de l''OHADA, assorti d''une clause de référence à la CCJA, peut être porté devant cette institution, sans qu''on vous demande de détailler les délais précis ou les voies de recours internes à la procédure, qui relèvent d''un enseignement spécialisé d''arbitrage. Travaillons maintenant le cas filé : Delta Cacao SA, basée en Côte d''Ivoire, et Sahel Négoce SA, basée au Sénégal, ont un contrat de fourniture de fèves de cacao sur trois ans avec une clause compromissoire : arbitrage à trois arbitres, règlement CCJA, siège à Abidjan, droit ivoirien au fond. Un désaccord survient sur la qualité des livraisons, Sahel Négoce SA réclamant 60 000 000 FCFA. Analysons : la clause dessaisit en principe les juridictions étatiques sénégalaises et ivoiriennes ; le litige relève du champ OHADA et peut être porté devant un arbitrage administré selon le règlement visé ; le siège à Abidjan fixe le cadre juridique de référence pour la procédure, sans préjudice du droit ivoirien choisi pour trancher le fond sur la conformité des livraisons.

## 50:00 – 65:00 · Choisir entre arbitrage, médiation et juridiction étatique

Terminons la partie théorique par les critères de choix entre ces différents modes, qui est une question fréquente de business case. Quatre facteurs à mettre en balance systématiquement. La nature de la relation : une relation d''affaires que les parties veulent préserver à long terme s''oriente plutôt vers la médiation, plus propice à une solution négociée que l''arbitrage, qui tranche en faveur d''une partie. Le montant et la complexité du litige : un litige technique et élevé justifie souvent le coût d''un arbitrage spécialisé, alors qu''un litige de faible montant rendrait ce coût disproportionné — nous avons vu un exemple de ce type dans le cours précédent, avec un contrat de 2 000 000 FCFA assorti d''une clause d''arbitrage à trois arbitres sous règlement complexe, manifestement disproportionnée. Le besoin d''exécution transfrontalière : lorsque les parties ou leurs actifs sont dans des pays différents, l''arbitrage offre souvent de meilleures perspectives d''exécution. Le besoin de confidentialité : important lorsque le litige touche à des secrets d''affaires. Un bon candidat au Master doit, face à un cas pratique, mettre en balance ces quatre facteurs plutôt que de recommander systématiquement l''arbitrage, qui n''est pas toujours la meilleure option.

## 65:00 – 75:00 · Quiz interactif

Cinq questions pour vérifier votre compréhension. Première question : la clause compromissoire est-elle conclue avant ou après la naissance du litige ? Réponse : avant, ce qui la distingue du compromis d''arbitrage, conclu après. Deuxième question : que se passe-t-il, en principe, si une partie saisit un tribunal étatique en violation d''une clause compromissoire ? Réponse : l''autre partie peut soulever l''exception d''incompétence, et le tribunal devrait se déclarer incompétent au profit de l''arbitrage convenu. Troisième question : citez deux rôles généraux de la CCJA en matière d''arbitrage. Réponse : un rôle d''appui à l''arbitrage institutionnel et un rôle juridictionnel de reconnaissance et d''exécution des sentences. Quatrième question : pourquoi la médiation peut-elle être préférable à l''arbitrage pour préserver une relation commerciale durable ? Réponse : parce qu''elle vise une solution négociée et consensuelle, alors que l''arbitrage tranche en faveur d''une partie contre l''autre. Cinquième question : dans le cas Delta Cacao, quel est le droit applicable au fond du litige, distinct du siège de l''arbitrage ? Réponse : le droit ivoirien, alors que le siège de l''arbitrage est fixé à Abidjan — ces deux éléments coïncident ici, mais auraient pu être différents.

## 75:00 – 85:00 · Synthèse et mise en perspective

Synthétisons cette séance, qui clôt le cycle des trois matières de Master 1. L''arbitrage se distingue de la médiation et de la conciliation par son caractère tranchant : une sentence obligatoire, alors que les autres modes aident seulement les parties à trouver elles-mêmes une solution. La clause compromissoire, insérée avant le litige, a pour effet d''écarter la compétence étatique au profit de l''arbitrage convenu, et doit être rédigée avec soin sur cinq points : siège, règlement, langue, nombre d''arbitres, droit applicable au fond. La CCJA de l''OHADA joue un double rôle en matière d''arbitrage, d''appui institutionnel et de reconnaissance-exécution des sentences, en plus de son rôle de cassation commune pour le droit uniforme — rôle qu''il faut savoir situer sans en détailler la procédure fine. Enfin, le choix entre les modes de résolution des litiges doit toujours résulter d''une mise en balance de plusieurs facteurs (nature de la relation, montant, exécution transfrontalière, confidentialité), jamais d''un réflexe automatique. Cette approche en facteurs multiples, que nous avons retrouvée dans les trois matières de l''année, est exactement la compétence d''analyse que le Master 1 cherche à développer chez vous.

## 85:00 – 90:00 · Évaluation finale

Cinq questions d''évaluation à retravailler par écrit avant la synthèse générale de fin d''année. Question 1 : définissez la clause compromissoire et distinguez-la du compromis d''arbitrage. Réponse : la clause compromissoire est conclue avant le litige, dans le contrat initial, pour les différends futurs ; le compromis d''arbitrage est conclu après la naissance du litige, pour ce litige précisément identifié. Question 2 : citez les cinq éléments qu''une clause compromissoire bien rédigée doit préciser. Réponse : le siège, le règlement applicable, la langue, le nombre d''arbitres et leur méthode de désignation, et le droit applicable au fond. Question 3 : quels sont les deux rôles généraux de la CCJA en matière d''arbitrage ? Réponse : appui à l''arbitrage institutionnel et rôle juridictionnel de reconnaissance et d''exécution des sentences rendues sous son égide. Question 4 : citez trois des cinq raisons pour lesquelles les entreprises préfèrent souvent l''arbitrage à la juridiction étatique dans les relations d''affaires internationales. Réponse : par exemple la neutralité, la confidentialité, et l''exécution transfrontalière facilitée (on pouvait aussi citer la spécialisation des arbitres ou la flexibilité procédurale). Question 5 : pourquoi un litige de faible montant assorti d''une clause d''arbitrage institutionnel complexe à trois arbitres pose-t-il un problème d''opportunité économique ? Réponse : parce que le coût et la durée de cette procédure risquent de dépasser, ou d''être disproportionnés par rapport à, l''enjeu financier réel du litige, ce qui rend ce choix économiquement inadapté pour des montants modestes. Merci à toutes et à tous : nous nous retrouvons pour la séance de synthèse transversale qui clôturera l''année de Master 1.', 'video', 90, false, 80
from public.courses c where c.slug = 'mas-droit-m1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Arbitrage et modes alternatifs de résolution des litiges');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Synthèse transversale et atelier cas pratique (groupe Sine Agro)', '## Fiche du cours vidéo

Durée : 1h30. Objectif : synthèse transversale de l''année de Master 1 à travers un cas pratique d''entreprise filé mêlant gouvernance de groupe, contrats d''affaires et concurrence, arbitrage ; entraînement à la méthode de résolution d''un cas pratique complexe en temps limité. Matériel recommandé : tableau ou diaporama avec l''organigramme du groupe étudié, chronomètre pour simuler les conditions d''examen. Prérequis : les trois séances vidéo précédentes de Master 1.

## Déroulé minuté

## 00:00 – 05:00 · Introduction à l''atelier de synthèse

Bonjour à toutes et à tous. Cette séance clôt le cycle de Master 1 : ce n''est pas un cours nouveau, mais un atelier de synthèse transversale, construit autour d''un cas pratique d''entreprise unique qui va mobiliser, successivement, les trois matières que nous avons étudiées — gouvernance et groupes de sociétés, contrats d''affaires et concurrence, arbitrage et modes alternatifs de résolution des litiges. L''objectif est double : consolider vos connaissances en les reliant entre elles, et vous entraîner à la méthode de résolution d''un cas complexe en conditions proches de l''examen, avec gestion du temps.

## 05:00 – 15:00 · Présentation du cas d''entreprise filé : groupe Sine Agro

Voici le cas que nous allons résoudre ensemble pendant toute la séance. Le groupe Sine Agro, basé à Kaolack, est structuré autour d''une société holding, Sine Agro Holding SA, qui détient 75 % de Sine Agro Production SARL (activité de transformation de céréales) et 40 % de Sine Agro Export SARL (activité d''exportation), les 60 % restants de cette dernière étant détenus par onze actionnaires individuels qui, historiquement, n''ont jamais voté ensemble contre les propositions de la holding lors des cinq dernières assemblées générales. Premier fait à traiter : le directeur général de Sine Agro Holding SA, Mme Diallo, est actionnaire à 50 % d''une société d''emballage, Pack Sine SARL, qui fournit à Sine Agro Production SARL l''intégralité de ses emballages pour 36 000 000 FCFA par an, alors que deux devis concurrents indépendants situent le prix de marché à 27 000 000 FCFA par an pour une prestation comparable. Le contrat a été signé par le directeur général de Sine Agro Production SARL sans consultation préalable de son conseil d''administration. Deuxième fait : Sine Agro Export SARL, qui détient 52 % du marché régional de l''exportation de céréales transformées vers les pays voisins, impose à ses neuf partenaires logistiques locaux une clause d''exclusivité réciproque de sept ans, sans contrepartie financière spécifique. Troisième fait : le contrat entre Sine Agro Export SARL et l''un de ses partenaires logistiques, Express Sine SARL, comporte une clause compromissoire (arbitre unique, règlement CCJA, siège Dakar, droit sénégalais au fond). Un litige survient sur une rupture anticipée, Express Sine SARL réclamant 18 000 000 FCFA ; Sine Agro Export SARL saisit directement le tribunal de commerce de Kaolack sans mentionner la clause.

## 15:00 – 30:00 · Résolution guidée : la gouvernance du groupe

Prenons le premier bloc de questions, exactement comme à l''examen, chronomètre en main — comptez-vous quinze minutes pour cette partie si vous étiez en conditions réelles. Première sous-question : qualifiez le lien de contrôle entre la holding et chacune de ses deux filiales. Pour Sine Agro Production SARL, 75 % du capital : contrôle de droit, sans ambiguïté. Pour Sine Agro Export SARL, 40 % du capital, mais majorité systématique obtenue en assemblée depuis cinq ans face à des actionnaires dispersés n''ayant jamais voté ensemble : c''est un contrôle de fait. Deuxième sous-question : le contrat entre Sine Agro Production SARL et Pack Sine SARL constitue-t-il une convention réglementée ? Mme Diallo, directrice générale de la holding, détient 50 % de Pack Sine SARL : lien d''intérêt significatif. Calculons l''écart : 36 000 000 moins 27 000 000 égale 9 000 000 FCFA, soit un taux de majoration de 9 000 000 divisé par 27 000 000, soit environ 33,3 % au-dessus du marché. Cet écart très significatif écarte la qualification de convention courante : c''est une convention réglementée, et l''absence de consultation préalable du conseil d''administration de Sine Agro Production SARL constitue un manquement procédural, ouvrant la voie à la responsabilité civile de la personne ayant engagé la société sans autorisation, pour un préjudice correspondant au surcoût de 9 000 000 FCFA par an.

## 30:00 – 35:00 · Pause active et question au groupe

Cinq minutes de pause active. Question à préparer : si Mme Diallo n''était que directrice générale de Sine Agro Holding SA, sans aucune participation au capital de Pack Sine SARL, le contrat entre Sine Agro Production SARL et Pack Sine SARL poserait-il encore un risque de qualification de convention réglementée du simple fait de l''appartenance au même groupe ? Réfléchissez-y. (Réponse attendue : pas automatiquement du seul fait de l''appartenance au groupe ; la qualification de convention réglementée dépend de l''existence d''un lien d''influence identifié entre une personne physique ou morale liée et l''une des sociétés concernées, pas de la seule structure de groupe en elle-même ; en l''absence de tout lien d''intérêt personnel de Mme Diallo dans Pack Sine SARL, l''opération resterait une relation commerciale ordinaire entre deux sociétés, à apprécier sous l''angle du droit commun des contrats plutôt que sous celui des conventions réglementées.)

## 35:00 – 55:00 · Résolution guidée : concurrence et arbitrage

Continuons avec le deuxième bloc. Troisième sous-question : la clause d''exclusivité réciproque de sept ans imposée par Sine Agro Export SARL à ses neuf partenaires logistiques pose-t-elle un risque de qualification anticoncurrentielle ? Reprenons la méthode en trois facteurs étudiée précédemment. Position de marché : 52 % du marché régional de l''exportation, indice fort de position dominante possible, sous réserve de la définition précise du marché pertinent. Ampleur : l''exclusivité est appliquée systématiquement à l''ensemble des neuf partenaires, ce qui crée un effet cumulatif de verrouillage pour des concurrents qui chercheraient à accéder aux mêmes partenaires logistiques. Durée et justification : sept ans est une durée longue, et l''absence de contrepartie financière spécifique affaiblit la justification économique de la contrainte. La combinaison de ces trois facteurs constitue un risque réel de qualification d''abus de position dominante, sous réserve d''une analyse plus fine du marché pertinent. Quatrième sous-question : la saisine directe du tribunal de commerce de Kaolack par Sine Agro Export SARL est-elle conforme à la clause compromissoire ? Non : la clause dessaisit en principe les juridictions étatiques du litige couvert ; Express Sine SARL peut soulever l''exception d''incompétence fondée sur la clause, ce qui devrait conduire le tribunal à se déclarer incompétent au profit de l''arbitrage convenu — arbitre unique, règlement CCJA, siège Dakar, droit sénégalais au fond — pour la demande de 18 000 000 FCFA. La CCJA jouerait alors son rôle d''appui institutionnel à la procédure arbitrale, puis, le cas échéant, un rôle de reconnaissance et d''exécution de la sentence qui serait rendue.

## 55:00 – 65:00 · Quiz interactif transversal

Cinq questions qui mobilisent les trois matières ensemble. Première question : dans le cas Sine Agro, quel est le montant du surcoût annuel identifié dans le contrat d''emballage ? Réponse : 9 000 000 FCFA. Deuxième question : quel type de contrôle caractérise le lien entre la holding et Sine Agro Export SARL ? Réponse : un contrôle de fait. Troisième question : quels sont les trois facteurs qui convergent pour caractériser un risque d''abus de position dominante dans le cas de l''exclusivité logistique ? Réponse : la position de marché (52 %), l''ampleur systématique sur les neuf partenaires, et la durée longue (sept ans) sans contrepartie spécifique. Quatrième question : la saisine du tribunal de commerce de Kaolack est-elle valable malgré la clause compromissoire ? Réponse : non, en principe, sous réserve que l''autre partie soulève l''exception d''incompétence. Cinquième question : quel est le point commun méthodologique entre l''analyse de la convention réglementée et l''analyse de la clause d''exclusivité anticoncurrentielle ? Réponse : dans les deux cas, la méthode consiste à comparer la situation litigieuse à une référence objective (le prix de marché pour la convention réglementée, les standards de proportionnalité et de justification économique pour l''exclusivité) plutôt qu''à juger sur la seule base du lien d''intérêt ou de la puissance économique en eux-mêmes.

## 65:00 – 80:00 · Rédaction guidée en temps limité

Je vous propose maintenant un exercice de rédaction en temps limité, pour vous entraîner aux conditions réelles d''examen. Vous avez quinze minutes, chronomètre en main, pour rédiger une réponse structurée à la question suivante : « En reprenant le cas Sine Agro, rédigez une recommandation destinée au conseil d''administration de Sine Agro Holding SA, identifiant les trois principaux risques juridiques du groupe et une mesure corrective pour chacun. » Pendant que vous rédigez, je vous rappelle la structure attendue : une phrase d''introduction qui annonce les trois risques, puis, pour chacun, un paragraphe qui qualifie juridiquement le risque, chiffre son impact lorsque c''est possible, et propose une mesure corrective concrète. À la fin des quinze minutes, voici une proposition de corrigé que vous pourrez comparer à votre rédaction : premier risque, la convention réglementée non autorisée avec Pack Sine SARL, exposant Mme Diallo et la société à un risque de responsabilité civile pour le surcoût de 9 000 000 FCFA par an ; mesure corrective : soumettre rétroactivement la convention à l''autorisation du conseil d''administration de Sine Agro Production SARL et renégocier le tarif au niveau du marché. Deuxième risque, l''exposition à une qualification d''abus de position dominante pour la clause d''exclusivité logistique ; mesure corrective : réduire la durée de l''exclusivité et introduire une contrepartie financière spécifique (par exemple un financement des investissements logistiques des partenaires) pour renforcer sa justification économique. Troisième risque, le non-respect de la clause compromissoire dans le litige avec Express Sine SARL, qui expose le groupe à une perte de temps procédurale si le tribunal de commerce se déclare incompétent ; mesure corrective : retirer la saisine du tribunal de commerce et engager directement la procédure d''arbitrage convenue, pour éviter un double contentieux.

## 80:00 – 85:00 · Synthèse générale de l''année de Master 1

Pour conclure cette année de Master 1 en droit des affaires, retenez la méthode transversale que nous avons appliquée tout au long de ce cas filé : face à un ensemble de faits d''entreprise, il faut systématiquement cartographier les structures de contrôle, identifier les parties liées et leurs intérêts, comparer les éléments chiffrés à une référence objective de marché, puis vérifier la cohérence des choix contractuels de résolution des litiges avec le comportement effectif des parties. Cette méthode, applicable à la gouvernance, à la concurrence et à l''arbitrage, est exactement ce qui distingue une copie de Master d''une copie de Licence : la capacité à faire dialoguer plusieurs branches du droit sur un même ensemble de faits, plutôt qu''à traiter chaque question de façon isolée.

## 85:00 – 90:00 · Évaluation finale

Cinq questions d''évaluation finale pour clore l''année. Question 1 : quelle est la différence entre un contrôle de droit et un contrôle de fait, illustrée par le cas Sine Agro ? Réponse : le contrôle de droit (75 % sur Sine Agro Production SARL) résulte de la majorité du capital ; le contrôle de fait (40 % sur Sine Agro Export SARL avec majorité systématique en assemblée) résulte d''une influence déterminante sans majorité formelle. Question 2 : quel est le taux de majoration du contrat d''emballage par rapport au prix de marché dans le cas Sine Agro ? Réponse : environ 33,3 %, calculé comme 9 000 000 divisé par 27 000 000. Question 3 : citez les trois facteurs d''analyse d''un risque anticoncurrentiel appliqués au cas de l''exclusivité logistique. Réponse : la position de marché, l''ampleur et la systématicité de la pratique, et la durée associée à la justification économique. Question 4 : quelle est la conséquence procédurale générale d''une saisine d''un tribunal étatique en violation d''une clause compromissoire, si l''autre partie soulève l''exception d''incompétence ? Réponse : le tribunal étatique devrait se déclarer incompétent au profit de l''arbitrage convenu. Question 5 : quelle est la compétence transversale centrale que ce cycle de Master 1 a cherché à développer ? Réponse : la capacité à analyser un ensemble de faits d''entreprise en mobilisant simultanément plusieurs branches du droit des affaires (gouvernance, contrats et concurrence, résolution des litiges), avec une méthode fondée sur la comparaison à des références objectives plutôt que sur des réponses automatiques. Merci à toutes et à tous pour votre travail cette année ; bon courage pour vos examens de Master 1.', 'video', 90, false, 90
from public.courses c where c.slug = 'mas-droit-m1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Synthèse transversale et atelier cas pratique (groupe Sine Agro)');
