-- Fichier généré par tools/generate-seed.mjs — ne pas modifier à la main.
-- Cours (partie 15/16). À exécuter après seed.sql.

-- Cours : Master 1 Comptabilité : réussir ses examens
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'mas-compta-m1', (select id from public.levels where name = 'Master 1'), null, 'Comptabilité', 'Master 1 Comptabilité : réussir ses examens', 'Préparation aux examens de Master 1 en Comptabilité : consolidation approfondie des comptes de groupe, normes IFRS et comparaison avec le SYSCOHADA révisé, fiscalité internationale et prix de transfert. Études de cas d''entreprises sénégalaises fictives, exercices corrigés et sujet type d''examen. Public : étudiants de Master 1 ayant validé une Licence en Comptabilité (SYSCOHADA, droit OHADA, sociétés, fiscalité, états financiers, consolidation simple, audit).', true, 741
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Réussir ses examens de Master 1 en Comptabilité', '## Objectifs de la leçon

- Comprendre les spécificités du Master en Comptabilité par rapport à la Licence : analyse critique, cas complexes, recherche appliquée, décisions en incertitude.
- Identifier les trois matières avancées de l''année de Master 1 et leur articulation avec le mémoire et le stage.
- Mettre en place une méthode de travail de niveau Master : étude de cas complexe, business case, revue de littérature.
- Construire un plan de révision réaliste sur six semaines avant les examens.

Ce cours de Master 1 en Comptabilité prolonge la Licence (comptabilité générale 1 et 2, mathématiques financières, droit des affaires OHADA, droit des sociétés, fiscalité des entreprises, états financiers SYSCOHADA, consolidation simple, audit et contrôle interne). Il ne reprend pas ces bases : il suppose qu''elles sont acquises et vous demande de les mobiliser dans des situations plus complexes, avec davantage d''incertitude et de jugement professionnel.

## 1. Ce qui change entre la Licence et le Master

En Licence, l''examen vérifie surtout que vous savez appliquer une méthode à un cas relativement balisé : enregistrer une opération, calculer un impôt, consolider deux sociétés avec un seul écart. En Master, l''exercice change de nature. On vous donne un dossier d''entreprise incomplet, parfois contradictoire, et on attend que vous posiez un diagnostic, que vous choisissiez une méthode parmi plusieurs possibles en justifiant ce choix, et que vous discutiez les limites de votre propre solution. La comptabilité n''est plus seulement une technique d''enregistrement : elle devient un outil d''aide à la décision, mobilisé dans des contextes de groupes de sociétés, d''opérations internationales, de restructurations.

Trois conséquences pratiques pour vos révisions :

- Apprenez les mécanismes, pas seulement les formules. Un correcteur de Master pénalise une formule appliquée sans comprendre pourquoi elle s''applique à ce cas précis.
- Entraînez-vous à argumenter par écrit. Beaucoup de questions demandent de justifier un choix (méthode de consolidation, méthode de valorisation, type d''opinion d''audit) en une dizaine de lignes structurées.
- Croisez les matières. Un même cas d''entreprise peut mobiliser consolidation, IFRS et fiscalité internationale dans une seule copie, exactement comme la leçon « Sujet type d''examen » de ce cours vous y entraînera.

## 2. Les trois matières avancées de l''année

Le Master 1 en Comptabilité approfondit trois domaines qui n''étaient qu''esquissés en Licence :

- La consolidation approfondie des comptes de groupe : retraitements d''homogénéisation, écarts d''évaluation et d''acquisition, variations de pourcentage de détention, traitement des minoritaires.
- Les normes IFRS, en complément du référentiel SYSCOHADA révisé : principes généraux, comparaison point par point avec les règles OHADA, cas où les deux référentiels convergent ou divergent.
- La fiscalité internationale et les prix de transfert : résidence fiscale, établissement stable, conventions de non double imposition, méthodes de détermination d''un prix de transfert.

Ces trois matières ne sont pas indépendantes. Un groupe sénégalais qui consolide une filiale installée dans un autre pays de l''UEMOA doit à la fois homogénéiser les comptes (consolidation), s''interroger sur le référentiel comptable applicable aux entités cotées ou à certaines filiales (IFRS) et documenter les prix pratiqués entre les sociétés du groupe (prix de transfert). C''est pourquoi les sujets d''examen de Master aiment construire un même cas d''entreprise filé sur plusieurs questions.

## 3. Le mémoire et le stage, en toile de fond

Selon l''établissement, le Master 1 peut comporter un stage et une initiation au mémoire, dont la rédaction complète et la soutenance interviennent le plus souvent en Master 2 (voir le cours de Master 2 pour la méthodologie détaillée). Dès le Master 1, repérez un terrain d''observation : une entreprise, un secteur, une problématique qui vous intéresse. Les cas traités en consolidation, IFRS ou fiscalité internationale peuvent devenir le point de départ d''une courte revue de littérature : ce que disent les textes, confronté à un cas concret, même fictif pour l''entraînement.

## 4. Une méthode de travail de niveau Master

Quatre habitudes à prendre dès le début de l''année :

- L''étude de cas complexe : face à un dossier de plusieurs pages, commencez par un tableau de synthèse des faits (dates, montants, pourcentages), avant les calculs. La moitié des erreurs viennent d''une lecture trop rapide de l''énoncé.
- Le business case : au-delà du calcul juste, demandez « et alors ? ». Un écart d''acquisition de 34 125 000 FCFA n''est qu''un chiffre si vous ne dites pas ce qu''il implique pour les comptes du groupe ou pour un test de dépréciation.
- La revue de littérature courte : une fiche d''une page par matière avancée, résumant le référentiel (SYSCOHADA, IFRS, convention fiscale type) avec vos propres mots.
- La vérification systématique des calculs : reprenez chaque calcul avec une calculatrice avant de le considérer comme acquis.

## 5. Plan de révision sur six semaines

- Semaine 1 : relire les bases de Licence indispensables (consolidation simple, méthodes de consolidation, calcul d''un impôt sur les sociétés) sans s''y attarder ; ficher les notions nouvelles de consolidation approfondie (écarts d''évaluation, retraitements).
- Semaine 2 : travailler la consolidation approfondie à travers des cas complets, du périmètre jusqu''aux écritures de consolidation, variations de pourcentage incluses.
- Semaine 3 : construire les fiches IFRS/SYSCOHADA, norme par norme ; faire le tableau comparatif pour chaque thème (juste valeur, location, reconnaissance du revenu, dépréciation, consolidation).
- Semaine 4 : fiscalité internationale et prix de transfert, avec au moins deux cas pratiques chiffrés (méthode du prix comparable, méthode du coût majoré).
- Semaine 5 : traiter un sujet type complet dans les conditions de l''examen (temps limité), puis corriger soi-même avant de regarder le corrigé.
- Semaine 6 : reprendre uniquement ses points faibles identifiés en semaine 5, refaire les exercices ratés, relire les fiches de synthèse une dernière fois, se reposer la veille de l''examen.

## Points clés à retenir

- Le Master demande d''argumenter un choix de méthode, pas seulement de l''appliquer.
- Les trois matières avancées de l''année (consolidation approfondie, IFRS, fiscalité internationale) se recoupent souvent dans un même cas d''entreprise.
- Une fiche de synthèse par norme ou par méthode, rédigée avec ses propres mots, vaut mieux qu''un résumé copié.
- Le plan de six semaines réserve toujours une semaine finale consacrée aux points faibles, pas à relire ce qu''on maîtrise déjà.

## Exercices pratiques

1. Listez, pour chacune des trois matières avancées du Master 1, un exemple de situation d''entreprise sénégalaise ou africaine où elle s''appliquerait concrètement.
2. Expliquez en cinq lignes la différence entre « appliquer une méthode » et « justifier le choix d''une méthode », avec un exemple tiré de la consolidation.
3. Construisez votre propre calendrier de révision sur six semaines en indiquant, pour chaque semaine, la matière et l''objectif précis (ex. « semaine 2 : savoir calculer un écart d''évaluation net d''impôt différé »).
4. Citez deux raisons pour lesquelles un correcteur de Master peut refuser une bonne réponse numérique si le raisonnement n''est pas expliqué.
5. Donnez un exemple de problématique de mémoire, même provisoire, que l''une des trois matières avancées pourrait inspirer.

## Corrigé

1. Consolidation approfondie : un groupe dakarois à participations croisées dans plusieurs filiales ouest-africaines, qui doit déterminer qui contrôle qui. IFRS : une société sénégalaise cotée sur une place régionale, qui doit présenter des comptes IFRS en plus de ses comptes SYSCOHADA. Fiscalité internationale : une filiale sénégalaise qui vend des produits semi-finis à sa mère installée ailleurs et doit documenter le prix pratiqué.
2. Appliquer une méthode, c''est suivre une procédure connue (intégrer globalement une filiale contrôlée à plus de 50 %). Justifier, c''est expliquer pourquoi cette méthode convient au cas précis : démontrer un contrôle exclusif (majorité des droits de vote, pas seulement du capital) avant de choisir l''intégration globale plutôt que la mise en équivalence.
3. Réponse libre ; six lignes datées, chacune avec une matière et un objectif mesurable, la sixième semaine étant réservée aux points faibles identifiés en semaine 5.
4. Un résultat juste obtenu par une méthode inadaptée (mise en équivalence appliquée à une filiale contrôlée à 80 %) révèle une mauvaise compréhension, même si le chiffre est correct par coïncidence ; et le barème de Master valorise explicitement la démonstration, pas seulement le résultat.
5. Exemples : « Comment les groupes sénégalais cotés articulent-ils comptes SYSCOHADA et IFRS lorsqu''ils lèvent des capitaux sur une place régionale ? » ou « Quelles méthodes de prix de transfert les PME exportatrices sénégalaises mobilisent-elles pour leurs transactions avec un pays voisin ? » Toute problématique précise et vérifiable est acceptée.', 'texte', 45, true, 10
from public.courses c where c.slug = 'mas-compta-m1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Réussir ses examens de Master 1 en Comptabilité');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Consolidation approfondie des comptes de groupe : l''essentiel pour l''examen', '## Objectifs de la leçon

- Distinguer l''écart d''évaluation et l''écart d''acquisition (goodwill) lors d''une première consolidation.
- Mener les retraitements d''homogénéisation avant de cumuler les comptes d''un groupe.
- Traiter une variation de pourcentage de détention et son effet sur le goodwill et les minoritaires.
- Appliquer ces mécanismes à un cas de groupe sénégalais fictif complexe.

Numéros de comptes : à vérifier dans le plan de comptes officiel du SYSCOHADA révisé.

En Licence 3, vous avez appris à déterminer un périmètre de consolidation, choisir une méthode et éliminer les titres d''une filiale simple. Cette leçon va plus loin : retraitements qui précèdent le cumul des comptes, et décomposition fine de l''écart de première consolidation entre sous-évaluation d''actifs identifiables (écart d''évaluation) et reste non affecté à un actif précis (écart d''acquisition, ou goodwill).

## 1. Retraitements d''homogénéisation : la condition préalable

Avant tout cumul, chaque société du groupe doit présenter des comptes établis selon les mêmes méthodes, à la même date, dans la même monnaie. Les retraitements les plus courants :

- Harmonisation des méthodes d''amortissement et d''évaluation des stocks entre filiales.
- Neutralisation des écritures à seul objectif fiscal (provisions réglementées, amortissements dérogatoires), remplacées, le cas échéant, par un impôt différé.
- Retraitement du crédit-bail : hors bilan selon la méthode de base du SYSCOHADA, il est réintégré à l''actif consolidé avec une dette financière, selon la méthode préférentielle.
- Conversion des comptes d''une filiale tenue dans une autre monnaie que le franc CFA.

Ces retraitements modifient les capitaux propres de départ. Un oubli fausse tous les calculs qui suivent.

## 2. Écart d''évaluation et écart d''acquisition : bien distinguer les deux

Lors de la première consolidation, on compare le coût d''acquisition des titres à la quote-part acquise de l''actif net de la filiale. Mais cet actif net doit d''abord être réestimé à sa juste valeur à la date d''acquisition, et non laissé à sa valeur comptable d''origine : c''est l''écart d''évaluation. Ce qui reste entre le coût d''acquisition et la quote-part de l''actif net réévalué est l''écart d''acquisition (goodwill), qui rémunère des éléments non identifiables séparément (clientèle, synergies, réputation).

Cas d''entreprise : le groupe Baobab Industries acquiert 70 % du capital de sa filiale Casamance Agro-Transformation (CAT) pour 91 000 000 FCFA. À l''acquisition, les capitaux propres comptables de CAT sont de 70 000 000 FCFA (capital 50 000 000, réserves 20 000 000). Un bâtiment industriel, inscrit à 10 000 000 FCFA, a une juste valeur de 25 000 000 FCFA, soit une plus-value latente de 15 000 000 FCFA.

- Effet d''impôt différé (taux fictif pour l''exemple de 25 %) : 15 000 000 × 25 % = 3 750 000 FCFA.
- Écart d''évaluation net d''impôt différé : 15 000 000 − 3 750 000 = 11 250 000 FCFA.
- Actif net de CAT à la juste valeur : 70 000 000 + 11 250 000 = 81 250 000 FCFA.
- Quote-part acquise (70 %) : 70 % × 81 250 000 = 56 875 000 FCFA.
- Écart d''acquisition (goodwill) : 91 000 000 − 56 875 000 = 34 125 000 FCFA.
- Intérêts minoritaires à l''acquisition (30 %, approche de base OHADA) : 30 % × 81 250 000 = 24 375 000 FCFA.

Vérification de cohérence : la quote-part du groupe (56 875 000) plus les intérêts minoritaires (24 375 000) reconstituent l''actif net réévalué total, soit 81 250 000 FCFA. Le goodwill de 34 125 000 FCFA s''ajoute, à l''actif du bilan consolidé, à cet actif net réévalué.

Le goodwill, une fois comptabilisé, est soumis selon le référentiel appliqué soit à un amortissement sur une durée justifiée, soit à un test de dépréciation périodique (voir la leçon IFRS de ce cours).

## 3. Variation de pourcentage de détention

Un groupe modifie souvent sa participation dans une filiale déjà consolidée : achat de titres complémentaires, cession partielle sans perte de contrôle. Chaque opération est retraitée selon la valeur de l''actif net de la filiale au moment de l''opération, et non au moment de la première consolidation.

Suite du cas : un an plus tard, les capitaux propres réévalués de CAT atteignent 95 000 000 FCFA. Baobab Industries acquiert 10 % complémentaires pour 15 000 000 FCFA, portant sa participation à 80 %.

- Quote-part des 10 % complémentaires : 10 % × 95 000 000 = 9 500 000 FCFA.
- Écart complémentaire : 15 000 000 − 9 500 000 = 5 500 000 FCFA, ajouté au goodwill déjà comptabilisé.
- Goodwill cumulé après l''opération : 34 125 000 + 5 500 000 = 39 625 000 FCFA.
- Minoritaires après l''opération (20 % restants) : 20 % × 95 000 000 = 19 000 000 FCFA, contre 24 375 000 FCFA avant (reclassement vers le groupe, sans mouvement de résultat).

Point de méthode : une acquisition complémentaire sans changement de méthode ne génère ni plus-value ni perte dans le résultat consolidé ; c''est une opération entre actionnaires, traitée dans les capitaux propres, hormis l''écart complémentaire qui ajuste le goodwill.

## 4. Présentation au bilan consolidé

Après la seconde opération : le goodwill de 39 625 000 FCFA figure à l''actif immobilisé ; les actifs et passifs de CAT sont intégrés à 100 % (intégration globale) ; les minoritaires de 19 000 000 FCFA figurent en capitaux propres, distincts de la part du groupe.

## Points clés à retenir

- L''écart de première consolidation se décompose en écart d''évaluation (nette d''impôt différé) et écart d''acquisition résiduel (goodwill).
- Les retraitements d''homogénéisation précèdent toujours le cumul des comptes.
- Une acquisition complémentaire sans changement de méthode ajuste le goodwill et les minoritaires, sans transiter par le résultat consolidé.
- Toute réévaluation d''actif identifiable intègre son effet d''impôt différé avant d''entrer dans l''actif net de la filiale.

## Exercices pratiques

1. Expliquez en quoi l''écart d''évaluation diffère de l''écart d''acquisition, avec un autre exemple que celui du cours.
2. Pourquoi tenir compte d''un impôt différé sur une plus-value latente identifiée lors d''une acquisition ?
3. Téranga Finances acquiert 60 % d''une filiale aux capitaux propres comptables de 40 000 000 FCFA. Un terrain est sous-évalué de 8 000 000 FCFA (pas d''impôt différé ici). Coût d''acquisition : 35 000 000 FCFA. Calculez l''actif net à la juste valeur, la quote-part acquise, le goodwill et les minoritaires.
4. Un an plus tard, les capitaux propres réévalués atteignent 52 000 000 FCFA ; Téranga acquiert 15 % complémentaires pour 9 000 000 FCFA. Calculez l''écart complémentaire et le nouveau goodwill cumulé.
5. Citez deux retraitements d''homogénéisation fréquents et leur effet s''ils sont omis.
6. Un groupe cède 15 % des titres d''une filiale intégrée globalement, sans perdre le contrôle (55 % restants). Cette cession transite-t-elle par le résultat consolidé ? Justifiez.
7. Cas pratique complet : reprenez Baobab Industries / CAT et présentez en tableau l''évolution du goodwill, des minoritaires et de la quote-part du groupe entre 70 % et 80 %.

## Corrigé

1. Écart d''évaluation : différence entre valeur comptable et juste valeur d''un actif identifiable. Écart d''acquisition : le reste, sans actif identifiable précis. Exemple : un brevet non valorisé au bilan, de juste valeur 6 000 000 FCFA, est un écart d''évaluation ; le solde payé au-delà reste un goodwill.
2. La plus-value latente deviendra imposable à la cession ou à l''amortissement ; sans impôt différé, l''actif net serait surévalué et le goodwill sous-évalué.
3. Actif net à la juste valeur : 48 000 000 FCFA. Quote-part acquise (60 %) : 28 800 000 FCFA. Goodwill : 35 000 000 − 28 800 000 = 6 200 000 FCFA. Minoritaires (40 %) : 19 200 000 FCFA.
4. Quote-part des 15 % : 7 800 000 FCFA. Écart complémentaire : 9 000 000 − 7 800 000 = 1 200 000 FCFA. Goodwill cumulé : 7 400 000 FCFA.
5. Harmonisation des amortissements (sinon des résultats diffèrent par simple choix comptable) et neutralisation des provisions réglementées (sinon des éléments fiscaux polluent les capitaux propres consolidés).
6. Non : contrôle exclusif subsistant, l''opération reste entre actionnaires, imputée sur les capitaux propres consolidés, sans effet sur le résultat.
7. Ligne 1 (70 %) : actif net 81 250 000, quote-part groupe 56 875 000, goodwill 34 125 000, minoritaires 24 375 000. Ligne 2 (80 %) : actif net 95 000 000, quote-part des 10 % 9 500 000, écart complémentaire 5 500 000, goodwill cumulé 39 625 000, minoritaires 19 000 000.', 'texte', 45, false, 20
from public.courses c where c.slug = 'mas-compta-m1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Consolidation approfondie des comptes de groupe : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Normes IFRS et comparaison avec le SYSCOHADA : l''essentiel pour l''examen', '## Objectifs de la leçon

- Situer le référentiel IFRS par rapport au SYSCOHADA révisé : origine, logique, destinataires.
- Comparer, thème par thème, les traitements IFRS et SYSCOHADA : juste valeur, location, reconnaissance du revenu, dépréciation des actifs, consolidation.
- Appliquer le mécanisme du test de dépréciation (impairment) à un cas chiffré.
- Identifier les situations où une entreprise sénégalaise peut être concernée par les IFRS en plus du SYSCOHADA.

Cette leçon ne demande pas de mémoriser le numéro de chaque norme IFRS : elle vise une compréhension des principes et une capacité à comparer, sur un thème donné, la logique IFRS et la logique SYSCOHADA. En cas de doute sur un numéro de norme ou un seuil précis, indiquez-le comme « à vérifier » plutôt que de l''inventer.

## 1. Deux référentiels, deux logiques de départ

Le SYSCOHADA révisé, élaboré par l''Organisation pour l''Harmonisation du Droit des Affaires en Afrique, retient une approche largement fondée sur le coût historique, avec des règles détaillées et uniformes pour l''ensemble des entreprises de la zone, quelle que soit leur taille. L''objectif est la fiabilité, la comparabilité entre entreprises de la zone et la simplicité d''application, y compris pour les petites entreprises.

Les normes IFRS (International Financial Reporting Standards), élaborées par l''IASB (International Accounting Standards Board), s''adressent avant tout aux groupes et sociétés cotés qui informent des investisseurs internationaux. Leur logique privilégie la substance économique sur la forme juridique, et recourt davantage à la juste valeur et au jugement professionnel. Une société sénégalaise peut être concernée par les IFRS si elle est cotée sur une place qui l''exige, si elle appartient à un groupe qui doit consolider en IFRS, ou si un bailleur de fonds l''exige contractuellement : vérifiez toujours le cadre applicable au cas précis.

## 2. Comparaison thème par thème

- Juste valeur : les IFRS autorisent, pour certaines catégories d''actifs (immeubles de placement, certains instruments financiers), une réévaluation régulière à la juste valeur. Le SYSCOHADA reste par principe au coût historique diminué des amortissements et dépréciations, avec des réévaluations plus encadrées.
- Reconnaissance du revenu : les IFRS appliquent un modèle en cinq étapes (contrat, obligations de prestation, prix de la transaction, affectation, puis reconnaissance quand chaque obligation est satisfaite). Le SYSCOHADA retient des règles plus simples, proches de la méthode de l''avancement pour les prestations continues et de la livraison pour la vente de biens.
- Location : les IFRS imposent, pour le preneur, de comptabiliser quasiment tous les contrats de location à l''actif (droit d''utilisation) avec une dette en contrepartie. Le SYSCOHADA distingue, dans les comptes individuels, crédit-bail (méthode de base, retraitement possible en consolidation) et location simple (charge de l''exercice).
- Dépréciation : les deux référentiels imposent un test dès qu''un indice de perte de valeur apparaît, mais les IFRS détaillent précisément la valeur recouvrable (exemple ci-dessous), alors que le SYSCOHADA raisonne en termes plus généraux de valeur actuelle.
- Consolidation : les deux référentiels distinguent contrôle exclusif, contrôle conjoint et influence notable, avec des méthodes voisines, mais les textes IFRS sont plus détaillés sur la définition du contrôle dans des montages complexes (droits de vote potentiels, entités structurées).

## 3. Le test de dépréciation : un mécanisme à maîtriser

Le principe, commun aux deux référentiels dans son esprit, est le suivant : un actif ne doit jamais être maintenu au bilan pour une valeur supérieure à ce que l''entreprise peut en attendre économiquement. La valeur recouvrable d''un actif est le montant le plus élevé entre sa juste valeur diminuée des coûts de la vente et sa valeur d''utilité (valeur actualisée des flux de trésorerie futurs attendus de l''utilisation de l''actif).

Exemple : une unité de production de l''entreprise fictive Thiès Industries présente une valeur nette comptable de 120 000 000 FCFA. Un indice de perte de valeur apparaît (baisse durable d''activité). L''estimation donne une juste valeur nette des coûts de sortie de 95 000 000 FCFA, et une valeur d''utilité, calculée par actualisation des flux futurs attendus, de 105 000 000 FCFA.

- Valeur recouvrable : le montant le plus élevé entre 95 000 000 et 105 000 000, soit 105 000 000 FCFA.
- Comparaison à la valeur nette comptable : 120 000 000 FCFA.
- Dépréciation à comptabiliser : 120 000 000 − 105 000 000 = 15 000 000 FCFA.

Cette dépréciation s''enregistre en charge, par exemple au compte de dotations aux dépréciations (numéro de compte à vérifier dans le plan de comptes officiel du SYSCOHADA révisé, et dans la norme IFRS applicable pour une entité qui présente des comptes IFRS), et réduit la valeur de l''actif au bilan à 105 000 000 FCFA. Le même mécanisme s''applique à un goodwill issu d''une consolidation (voir la leçon précédente) : il est testé au moins annuellement, sans amortissement systématique dans de nombreux cadres IFRS, alors que le SYSCOHADA laisse davantage de place à un amortissement sur une durée justifiée en plus du test.

## 4. Pourquoi cette comparaison compte pour un professionnel sénégalais

Un comptable ou un contrôleur de gestion qui travaille dans un groupe régional, une filiale de multinationale ou une entreprise qui cherche à se faire coter doit savoir dialoguer avec les deux référentiels : produire les comptes individuels en SYSCOHADA tout en comprenant les retraitements qu''exigera une consolidation IFRS au niveau du groupe. La comparaison n''est pas un exercice académique : c''est une compétence directement mobilisée dans les cabinets d''audit, les directions financières de groupe et les missions de conseil.

## Points clés à retenir

- Le SYSCOHADA privilégie le coût historique et l''uniformité ; les IFRS privilégient la substance économique et la juste valeur, avec davantage de jugement professionnel.
- La valeur recouvrable d''un actif est le plus élevé entre sa juste valeur nette des coûts de sortie et sa valeur d''utilité ; une dépréciation s''impose dès que la valeur nette comptable la dépasse.
- Les deux référentiels distinguent contrôle exclusif, contrôle conjoint et influence notable en consolidation, avec des méthodes voisines mais des règles de détail différentes.
- Toujours vérifier, au cas par cas, si une entité sénégalaise est effectivement soumise aux IFRS avant de lui appliquer ce référentiel.

## Exercices pratiques

1. Expliquez en trois phrases la différence de logique générale entre SYSCOHADA et IFRS.
2. Donnez un exemple de situation où une société sénégalaise pourrait devoir produire des comptes IFRS en plus de ses comptes SYSCOHADA.
3. Une machine a une valeur nette comptable de 60 000 000 FCFA. Sa juste valeur nette des coûts de sortie est estimée à 38 000 000 FCFA, sa valeur d''utilité à 45 000 000 FCFA. Calculez la valeur recouvrable et la dépréciation à comptabiliser, le cas échéant.
4. Expliquez, pour la reconnaissance du revenu, la différence entre l''approche SYSCOHADA fondée sur la méthode de l''avancement et l''approche IFRS en cinq étapes.
5. Pourquoi les IFRS imposent-elles, pour le preneur, de comptabiliser la plupart des contrats de location à l''actif, alors que le SYSCOHADA distingue encore crédit-bail et location simple dans les comptes individuels ?
6. Un goodwill de consolidation est-il traité de la même façon en matière d''amortissement selon qu''on applique le SYSCOHADA ou un cadre IFRS ? Expliquez la nuance.

## Corrigé

1. Le SYSCOHADA retient le coût historique et des règles détaillées et uniformes, pour la fiabilité et la simplicité. Les IFRS privilégient la substance économique et la juste valeur, pour informer des investisseurs internationaux.
2. Par exemple une société sénégalaise cotée sur une place régionale qui exige des comptes IFRS, ou une filiale d''un groupe qui doit consolider en IFRS.
3. Valeur recouvrable : le plus élevé entre 38 000 000 et 45 000 000, soit 45 000 000 FCFA. Dépréciation : 60 000 000 − 45 000 000 = 15 000 000 FCFA.
4. La méthode de l''avancement reconnaît le revenu au fur et à mesure d''une prestation continue, en proportion du degré d''avancement. L''approche IFRS en cinq étapes identifie d''abord chaque obligation distincte, puis affecte le prix à chacune avant de reconnaître le revenu obligation par obligation.
5. Parce que la logique IFRS privilégie la substance : un contrat de location crée, dès sa signature, un droit d''usage et une obligation de payer des loyers, proches économiquement d''un actif financé par emprunt. Le SYSCOHADA reste plus proche de la forme juridique du contrat.
6. Oui : plusieurs cadres IFRS ne prévoient pas d''amortissement systématique du goodwill, seulement un test annuel, alors que le SYSCOHADA laisse la possibilité d''un amortissement en plus du test. Vérifiez toujours la règle précise en vigueur.', 'texte', 45, false, 30
from public.courses c where c.slug = 'mas-compta-m1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Normes IFRS et comparaison avec le SYSCOHADA : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Fiscalité internationale et prix de transfert : l''essentiel pour l''examen', '## Objectifs de la leçon

- Comprendre les notions de résidence fiscale et d''établissement stable dans un contexte international.
- Expliquer le rôle général des conventions de non double imposition, sans en détailler les clauses précises d''une convention particulière.
- Présenter les méthodes usuelles de détermination d''un prix de transfert entre entreprises liées.
- Appliquer la méthode du prix comparable sur le marché libre et la méthode du coût majoré à un cas chiffré.

Rappel important : cette leçon explique des mécanismes généraux. Aucun taux d''impôt, aucun seuil de documentation et aucune clause conventionnelle précise n''est donné comme officiel ; tout chiffre utilisé dans un exemple est explicitement qualifié de fictif, et vous devez vérifier le texte en vigueur (code général des impôts, conventions fiscales applicables) avant toute application réelle.

## 1. Résidence fiscale et établissement stable

Une entreprise est en principe imposée sur ses bénéfices dans l''État où elle a sa résidence fiscale (siège de direction effective, lieu d''immatriculation selon le droit interne). Lorsqu''elle exerce une activité dans un autre État sans y être résidente, ce second État peut néanmoins l''imposer sur les bénéfices rattachables à un établissement stable qu''elle y maintient : une installation fixe d''affaires (succursale, chantier au-delà d''une certaine durée, agent dépendant qui conclut des contrats au nom de l''entreprise). Cette notion détermine quel État a le droit d''imposer quelle part des bénéfices d''une activité transfrontalière.

Exemple : une société sénégalaise qui ouvre un chantier de construction dans un pays voisin peut, selon la durée du chantier et les règles applicables, être considérée comme disposant d''un établissement stable dans ce pays, ce qui ouvre un droit d''imposition à cet État sur les bénéfices rattachables au chantier.

## 2. Le rôle des conventions de non double imposition

Lorsque deux États pourraient chacun revendiquer un droit d''imposer le même revenu, une convention fiscale bilatérale répartit en principe ce droit entre eux et prévoit des mécanismes pour éliminer la double imposition qui en résulterait sinon (exonération dans un État, ou crédit d''impôt imputable dans l''autre). Les pays de l''UEMOA ont, pour certains, conclu de telles conventions entre eux ou avec des pays tiers. Le contenu précis d''une convention (revenus visés, taux de retenue à la source, procédures) varie d''un texte à l''autre : à vérifier convention par convention, jamais à généraliser.

## 3. Les prix de transfert : principe général

Quand deux entreprises liées (une mère et sa filiale, deux filiales sœurs) effectuent des transactions entre elles, le prix qu''elles se facturent peut, en l''absence de contrôle, être fixé pour déplacer artificiellement du bénéfice vers le pays le plus avantageux fiscalement. Le principe de pleine concurrence (arm''s length) impose que ce prix intragroupe soit celui qu''auraient fixé des entreprises indépendantes dans des conditions comparables. Les administrations fiscales demandent aux groupes de documenter la cohérence de leurs prix intragroupe avec ce principe.

Les méthodes les plus courantes pour déterminer ou justifier un prix de transfert :

- La méthode du prix comparable sur le marché libre : comparer directement le prix intragroupe à celui pratiqué entre entreprises indépendantes pour une transaction similaire.
- La méthode du prix de revente : partir du prix auquel le produit est revendu à un client indépendant, et en déduire une marge brute comparable à celle d''un revendeur indépendant, pour en déduire le prix d''achat intragroupe acceptable.
- La méthode du coût majoré (cost plus) : partir du coût de production supporté par l''entité qui fabrique ou fournit le bien ou le service, et y ajouter une marge comparable à celle observée chez des producteurs indépendants comparables.
- Les méthodes transactionnelles fondées sur les bénéfices (partage des bénéfices, marge nette transactionnelle) : utilisées quand les transactions sont trop imbriquées pour isoler un prix par transaction.

## 4. Cas d''entreprise : application de la méthode du coût majoré

La filiale sénégalaise Niayes Composants fabrique des pièces semi-finies qu''elle vend exclusivement à sa société mère installée dans un autre pays. Son coût de production unitaire est de 8 000 FCFA. Une étude de comparables indépendants dans le même secteur fait apparaître une marge sur coûts de 20 %, un taux fictif pour l''exemple.

- Prix de pleine concurrence attendu : 8 000 × (1 + 20 %) = 9 600 FCFA par unité.
- Prix effectivement facturé par Niayes Composants à sa mère : 7 500 FCFA par unité.
- Écart par unité par rapport au prix de pleine concurrence : 9 600 − 7 500 = 2 100 FCFA.
- Pour un volume annuel de 50 000 unités, l''écart total s''élève à 2 100 × 50 000 = 105 000 000 FCFA.

Ce résultat signifie que Niayes Composants a facturé un prix inférieur à ce qu''aurait obtenu une entreprise indépendante comparable, ce qui réduit artificiellement son bénéfice imposable au Sénégal au profit du pays de la mère. Une administration fiscale pourrait, sur la base de comparables documentés, réintégrer cet écart dans le bénéfice imposable de la filiale. L''ampleur exacte d''un tel redressement dépend du droit interne et doit être vérifiée au cas par cas ; ce calcul n''illustre que le principe économique, pas une procédure officielle.

## 5. Documentation des prix de transfert

Au-delà du calcul, les groupes sont généralement tenus de documenter leur politique de prix de transfert : description du groupe et des fonctions de chaque entité, analyse des transactions intragroupe, choix et justification de la méthode retenue par catégorie de transaction. Les seuils de documentation formelle et les sanctions en cas de manquement relèvent du droit interne de chaque État et doivent être vérifiés dans les textes en vigueur, jamais mémorisés comme universels.

## Points clés à retenir

- L''établissement stable détermine quel État peut imposer les bénéfices d''une activité transfrontalière sans résidence fiscale dans cet État.
- Une convention de non double imposition répartit le droit d''imposer entre deux États et prévoit un mécanisme pour éliminer la double imposition ; son contenu précis varie et doit être vérifié convention par convention.
- Le principe de pleine concurrence exige que les prix intragroupe correspondent à ce qu''auraient fixé des entreprises indépendantes comparables.
- Les méthodes de prix de transfert (prix comparable, prix de revente, coût majoré, méthodes fondées sur les bénéfices) se choisissent selon la nature de la transaction et la disponibilité de comparables fiables.

## Exercices pratiques

1. Expliquez la différence entre résidence fiscale et établissement stable, avec un exemple.
2. À quoi sert une convention de non double imposition, en principe général ?
3. Une filiale fabrique un composant à un coût de 5 000 FCFA l''unité. La marge sur coûts observée chez des comparables indépendants est de 15 % (taux fictif pour l''exemple). Calculez le prix de pleine concurrence attendu.
4. Dans le cas précédent, la filiale facture en réalité 5 400 FCFA l''unité à sa société mère, pour un volume de 20 000 unités par an. Calculez l''écart unitaire et l''écart total par rapport au prix de pleine concurrence.
5. Expliquez la différence entre la méthode du prix de revente et la méthode du coût majoré : laquelle se place du point de vue du vendeur, laquelle du point de vue de l''acheteur revendeur ?
6. Pourquoi une administration fiscale s''intéresse-t-elle particulièrement aux transactions entre une filiale locale et sa société mère étrangère, plutôt qu''aux transactions avec des clients indépendants ?

## Corrigé

1. La résidence fiscale dépend du lieu où l''entreprise est établie ou dirigée ; elle entraîne une imposition sur l''ensemble des bénéfices dans cet État. L''établissement stable est une installation fixe d''affaires qu''une entreprise non-résidente maintient dans un autre État (succursale, chantier durable, agent dépendant), qui ouvre à cet État un droit d''imposer les bénéfices rattachables à cette installation.
2. Elle répartit, entre les deux États signataires, le droit d''imposer un même revenu transfrontalier et prévoit un mécanisme (exonération ou crédit d''impôt) pour éviter une double imposition.
3. Prix de pleine concurrence : 5 000 × (1 + 15 %) = 5 750 FCFA.
4. Écart unitaire : 5 750 − 5 400 = 350 FCFA. Écart total pour 20 000 unités : 350 × 20 000 = 7 000 000 FCFA.
5. La méthode du prix de revente part du prix de revente à un client indépendant et en déduit une marge de revendeur comparable, pour vérifier ou fixer le prix d''achat intragroupe : elle se place du point de vue de l''acheteur revendeur. La méthode du coût majoré part du coût de production du fournisseur et y ajoute une marge comparable, en se plaçant du point de vue du vendeur producteur.
6. Parce que la filiale et sa mère ne négocient pas en indépendance réciproque : un lien de contrôle permet, en théorie, de fixer un prix qui déplace le bénéfice vers l''État le plus avantageux fiscalement, ce qu''empêche la logique d''un client réellement indépendant qui défend ses propres intérêts.', 'texte', 45, false, 40
from public.courses c where c.slug = 'mas-compta-m1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Fiscalité internationale et prix de transfert : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Sujet type d''examen de Master 1 (entraînement)', '## Présentation du sujet

Sujet type non officiel, à titre d''entraînement, barème indicatif sur 20 points. Durée conseillée : 3 heures. Il mobilise les trois matières avancées du Master 1 : consolidation approfondie, normes IFRS et comparaison avec le SYSCOHADA, fiscalité internationale et prix de transfert, à partir d''un même groupe fictif.

Le groupe sénégalais Teranga Agro-Industries (TAI) détient 75 % du capital de sa filiale de transformation Louga Semences (LS) et possède une seconde filiale, Dakar Export (DE), dont elle vend les produits finis à un distributeur du groupe installé à l''étranger.

## Partie 1 — Consolidation approfondie (8 points)

TAI a acquis ses 75 % de LS pour 84 000 000 FCFA. À cette date, les capitaux propres comptables de LS sont de 60 000 000 FCFA (capital 40 000 000, réserves 20 000 000). Un entrepôt inscrit au bilan de LS pour 12 000 000 FCFA a une juste valeur de 22 000 000 FCFA.

1. (3 points) Calculez l''écart d''évaluation net d''impôt différé (taux fictif pour l''exemple de 25 %), puis l''actif net de LS à la juste valeur.
2. (3 points) Calculez la quote-part acquise par TAI, l''écart d''acquisition (goodwill) et les intérêts minoritaires à la date d''acquisition.
3. (2 points) Un an plus tard, LS a réalisé un résultat de 6 000 000 FCFA (capitaux propres réévalués atteignant 71 000 000 FCFA, écart d''évaluation inclus). Répartissez ce résultat entre le groupe et les minoritaires.

## Partie 2 — Normes IFRS et comparaison SYSCOHADA (6 points)

4. (2 points) Expliquez, en quelques lignes, la différence de logique générale entre le SYSCOHADA révisé et les normes IFRS.
5. (4 points) Un entrepôt de Dakar Export présente une valeur nette comptable de 50 000 000 FCFA. Un indice de perte de valeur apparaît. La juste valeur nette des coûts de sortie est estimée à 30 000 000 FCFA, la valeur d''utilité à 36 000 000 FCFA. Déterminez la valeur recouvrable et la dépréciation éventuelle à comptabiliser.

## Partie 3 — Fiscalité internationale et prix de transfert (6 points)

Dakar Export vend des produits finis à un distributeur du groupe installé à l''étranger. Son coût de production unitaire est de 12 000 FCFA. Une étude de comparables indépendants fait apparaître une marge sur coûts de 18 %, taux fictif pour l''exemple.

6. (2 points) Calculez le prix de pleine concurrence attendu par la méthode du coût majoré.
7. (2 points) Dakar Export facture en réalité 13 000 FCFA l''unité, pour un volume annuel de 30 000 unités. Calculez l''écart unitaire et l''écart total par rapport au prix de pleine concurrence.
8. (2 points) Expliquez en deux ou trois phrases pourquoi une administration fiscale pourrait s''intéresser à cet écart.

## Corrigé détaillé

1. Plus-value latente sur l''entrepôt : 22 000 000 − 12 000 000 = 10 000 000 FCFA. Effet d''impôt différé (25 %) : 2 500 000 FCFA. Écart d''évaluation net : 7 500 000 FCFA. Actif net de LS à la juste valeur : 60 000 000 + 7 500 000 = 67 500 000 FCFA.
2. Quote-part acquise (75 %) : 75 % × 67 500 000 = 50 625 000 FCFA. Écart d''acquisition (goodwill) : 84 000 000 − 50 625 000 = 33 375 000 FCFA. Intérêts minoritaires à l''acquisition (25 %) : 25 % × 67 500 000 = 16 875 000 FCFA.
3. Résultat de l''exercice : 6 000 000 FCFA, réparti selon les pourcentages d''intérêt : quote-part du groupe (75 %) : 4 500 000 FCFA ; quote-part des minoritaires (25 %) : 1 500 000 FCFA. Vérification des capitaux propres après un an : part groupe 50 625 000 + 4 500 000 = 55 125 000 FCFA ; part minoritaires 16 875 000 + 1 500 000 = 18 375 000 FCFA ; total 73 500 000 FCFA, cohérent avec 75 % + 25 % de 71 000 000 FCFA de capitaux propres réévalués plus la quote-part de résultat déjà incluse ou non selon la présentation retenue — l''essentiel attendu est la répartition correcte 75 % / 25 % du résultat de l''exercice.
4. Le SYSCOHADA retient le coût historique et des règles détaillées et uniformes, dans un objectif de fiabilité et de simplicité pour toutes les entreprises de la zone. Les IFRS privilégient la substance économique et un usage plus large de la juste valeur, pour informer des investisseurs internationaux, avec davantage de jugement professionnel laissé aux préparateurs des comptes.
5. Valeur recouvrable : le montant le plus élevé entre 30 000 000 et 36 000 000, soit 36 000 000 FCFA. Valeur nette comptable 50 000 000 FCFA supérieure à la valeur recouvrable : dépréciation à comptabiliser de 50 000 000 − 36 000 000 = 14 000 000 FCFA.
6. Prix de pleine concurrence : 12 000 × (1 + 18 %) = 14 160 FCFA par unité.
7. Écart unitaire : 14 160 − 13 000 = 1 160 FCFA. Écart total pour 30 000 unités : 1 160 × 30 000 = 34 800 000 FCFA.
8. Parce que le prix facturé est inférieur au prix de pleine concurrence estimé, ce qui réduit le bénéfice imposable de Dakar Export au Sénégal au profit du pays du distributeur ; une administration fiscale pourrait, sur la base d''une analyse de comparables documentée, chercher à réintégrer cet écart dans le bénéfice imposable de la filiale sénégalaise.

## Exercices pratiques

1. Reprenez la partie 1 du sujet en supposant que TAI n''acquiert que 55 % de LS pour 62 000 000 FCFA (mêmes capitaux propres et même entrepôt sous-évalué). Calculez l''écart d''acquisition et les intérêts minoritaires à l''acquisition.
2. Expliquez pourquoi la méthode de mise en équivalence ne serait pas appropriée pour LS dans l''hypothèse initiale du sujet (détention de 75 %).
3. Un bâtiment d''une autre filiale du groupe a une valeur nette comptable de 40 000 000 FCFA, une juste valeur nette des coûts de sortie de 28 000 000 FCFA et une valeur d''utilité de 25 000 000 FCFA. Calculez la valeur recouvrable et la dépréciation éventuelle.
4. Une troisième filiale du groupe vend un service à sa société mère pour 4 000 FCFA l''unité ; son coût de production est de 3 200 FCFA et la marge comparable observée chez des indépendants est de 10 % (taux fictif). Le prix facturé respecte-t-il le principe de pleine concurrence ? Justifiez par le calcul.
5. Citez une raison pour laquelle un groupe pourrait, de bonne foi et sans intention de fraude fiscale, fixer des prix de transfert éloignés du prix de pleine concurrence (par exemple une stratégie commerciale de pénétration de marché).

## Corrigé (exercices complémentaires)

1. Quote-part acquise (55 %) : 55 % × 67 500 000 = 37 125 000 FCFA. Écart d''acquisition : 62 000 000 − 37 125 000 = 24 875 000 FCFA. Intérêts minoritaires (45 %) : 45 % × 67 500 000 = 30 375 000 FCFA.
2. La mise en équivalence s''applique en cas d''influence notable, généralement présumée à partir de 20 % des droits de vote mais sans contrôle. Avec 75 % du capital et, sauf indication contraire, des droits de vote proportionnels, TAI dispose d''un contrôle exclusif présumé sur LS, ce qui impose l''intégration globale et non la mise en équivalence.
3. Valeur recouvrable : le plus élevé entre 28 000 000 et 25 000 000, soit 28 000 000 FCFA. Valeur nette comptable 40 000 000 FCFA supérieure à la valeur recouvrable : dépréciation de 40 000 000 − 28 000 000 = 12 000 000 FCFA.
4. Prix de pleine concurrence attendu : 3 200 × (1 + 10 %) = 3 520 FCFA. Le prix facturé de 4 000 FCFA est supérieur au prix de pleine concurrence attendu : dans cet exemple, la filiale facture plus cher que ne le ferait un indépendant comparable, ce qui n''est pas défavorable au fisc sénégalais si la filiale est celle qui vend (cela augmenterait son bénéfice imposable local plutôt que de le réduire), mais devrait être justifié par une analyse de comparables si contesté.
5. Par exemple une stratégie de pénétration d''un nouveau marché, où une filiale facture volontairement en dessous du prix de marché pendant une période limitée pour gagner des parts de marché, indépendamment de toute considération fiscale ; une documentation adéquate doit alors justifier cette politique commerciale pour la distinguer d''un transfert artificiel de bénéfice.', 'texte', 45, false, 50
from public.courses c where c.slug = 'mas-compta-m1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Sujet type d''examen de Master 1 (entraînement)');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Consolidation approfondie des comptes de groupe', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : étudiants de Master 1 en Comptabilité.
- Objectifs : décomposer un écart de première consolidation entre écart d''évaluation et écart d''acquisition ; mener les retraitements d''homogénéisation ; traiter une variation de pourcentage de détention.
- Matériel : diaporama avec organigramme de groupe, calculatrice, plan de comptes SYSCOHADA révisé.
- Prérequis : consolidation simple de Licence 3 ; leçon « Consolidation approfondie des comptes de groupe » de ce cours.
- Précaution : numéros de comptes à vérifier dans le plan de comptes officiel du SYSCOHADA révisé.

## Déroulé minuté

## 00:00 – 05:00 · Ouverture

Bonjour à toutes et à tous. En Licence, vous avez consolidé des groupes relativement simples, avec un seul écart d''acquisition facile à isoler. En Master, les sujets d''examen vous donneront des dossiers plus riches : un actif sous-évalué à retraiter, un impôt différé à calculer, une participation qui augmente d''une année sur l''autre. Cette séance suit le fil rouge du groupe fictif Baobab Industries, qui détient 70 %, puis 80 %, de sa filiale Casamance Agro-Transformation.

## 05:00 – 15:00 · Pourquoi retraiter avant de consolider

Avant tout cumul de comptes, chaque filiale doit parler le même langage comptable que sa société mère. Je vous montre trois retraitements fréquents. Premièrement, l''harmonisation des durées d''amortissement : si une filiale amortit ses véhicules sur quatre ans et une autre sur cinq ans, le groupe retient une méthode unique et ajuste les comptes de celle qui s''écarte. Deuxièmement, la neutralisation des provisions réglementées, qui n''ont qu''un objectif fiscal individuel et n''ont pas leur place dans une image économique du groupe : elles sont annulées, et un impôt différé est constaté si nécessaire. Troisièmement, le retraitement du crédit-bail : un bien financé par crédit-bail, resté hors bilan dans les comptes individuels selon la méthode de base du SYSCOHADA, est réintégré à l''actif consolidé avec sa dette financière, dès que le groupe retient la méthode préférentielle.

Question à la salle : pourquoi ces retraitements doivent-ils intervenir avant le cumul, et non après ? Réponse attendue : parce qu''ils modifient les capitaux propres et le résultat de départ de chaque filiale ; les appliquer après aurait fait l''économie de leur effet sur les écritures de consolidation elles-mêmes, notamment sur l''écart d''évaluation que nous allons calculer.

## 15:00 – 30:00 · Écart d''évaluation et écart d''acquisition : le cas Baobab Industries

Voici l''énoncé. Baobab Industries acquiert 70 % de Casamance Agro-Transformation (CAT) pour 91 000 000 FCFA. Les capitaux propres comptables de CAT sont de 70 000 000 FCFA (capital 50 000 000, réserves 20 000 000). Un bâtiment industriel, inscrit pour 10 000 000 FCFA, a une juste valeur de 25 000 000 FCFA.

Premier calcul : la plus-value latente sur le bâtiment, 25 000 000 moins 10 000 000, soit 15 000 000 FCFA. Deuxième calcul, l''effet d''impôt différé, à un taux fictif pour l''exemple de 25 % : 15 000 000 multiplié par 25 %, soit 3 750 000 FCFA. L''écart d''évaluation net s''élève donc à 15 000 000 moins 3 750 000, soit 11 250 000 FCFA. Nous ajoutons cet écart aux capitaux propres comptables : 70 000 000 plus 11 250 000, soit un actif net à la juste valeur de 81 250 000 FCFA.

Nous calculons maintenant la quote-part acquise par Baobab Industries : 70 % de 81 250 000, soit 56 875 000 FCFA. L''écart d''acquisition, ou goodwill, est la différence entre le coût d''acquisition et cette quote-part : 91 000 000 moins 56 875 000, soit 34 125 000 FCFA. Enfin, les intérêts minoritaires à la date d''acquisition, pour les 30 % restants : 30 % de 81 250 000, soit 24 375 000 FCFA.

Vérifions la cohérence : la quote-part du groupe, 56 875 000, plus les intérêts minoritaires, 24 375 000, doivent redonner l''actif net réévalué total. 56 875 000 plus 24 375 000 égale 81 250 000. Le calcul est cohérent.

## 30:00 – 35:00 · Pause active

Prenez votre calculatrice. Un groupe acquiert 65 % d''une filiale dont les capitaux propres comptables sont de 50 000 000 FCFA, avec un terrain sous-évalué de 6 000 000 FCFA sans impôt différé dans cet exemple. Le coût d''acquisition est de 45 000 000 FCFA. Calculez l''actif net à la juste valeur, la quote-part acquise, le goodwill et les intérêts minoritaires. Je vous laisse deux minutes, puis nous corrigeons ensemble à l''oral.

Correction : actif net à la juste valeur, 50 000 000 plus 6 000 000, soit 56 000 000 FCFA. Quote-part acquise, 65 % de 56 000 000, soit 36 400 000 FCFA. Goodwill, 45 000 000 moins 36 400 000, soit 8 600 000 FCFA. Intérêts minoritaires, 35 % de 56 000 000, soit 19 600 000 FCFA.

## 35:00 – 50:00 · Quiz interactif à mi-parcours

Cinq questions rapides, à main levée ou sur votre application de vote si vous en disposez.

Question 1. L''écart d''évaluation correspond-il à un élément identifiable de l''actif de la filiale, ou à un élément non identifiable comme la réputation ? Réponse : un élément identifiable.

Question 2. Si l''on omet l''effet d''impôt différé sur une plus-value latente, le goodwill calculé sera-t-il surestimé ou sous-estimé ? Réponse : sous-estimé, puisque l''actif net réévalué sera surestimé.

Question 3. Avec 70 % du capital et des droits de vote proportionnels, quelle méthode de consolidation s''applique en principe ? Réponse : l''intégration globale, puisque le contrôle exclusif est présumé au-delà de 50 % des droits de vote.

Question 4. Les intérêts minoritaires figurent-ils en dettes ou en capitaux propres du bilan consolidé ? Réponse : en capitaux propres, distincts de la part du groupe.

Question 5. Le goodwill est-il nécessairement amorti, quel que soit le référentiel appliqué ? Réponse : non, cela dépend du référentiel ; certains cadres IFRS imposent seulement un test de dépréciation annuel, sans amortissement systématique, alors que le SYSCOHADA laisse la possibilité d''un amortissement en plus du test.

## 50:00 – 1:05:00 · Variation de pourcentage de détention

Un an plus tard, les capitaux propres réévalués de CAT atteignent 95 000 000 FCFA. Baobab Industries acquiert 10 % complémentaires pour 15 000 000 FCFA, portant sa participation à 80 %. Comment traiter cette opération ?

D''abord, calculons la quote-part de l''actif net correspondant aux 10 % acquis, à la valeur actuelle de la filiale et non à celle de la première acquisition : 10 % de 95 000 000, soit 9 500 000 FCFA. L''écart complémentaire est la différence entre le prix payé et cette quote-part : 15 000 000 moins 9 500 000, soit 5 500 000 FCFA. Cet écart s''ajoute au goodwill déjà comptabilisé : 34 125 000 plus 5 500 000, soit un goodwill cumulé de 39 625 000 FCFA.

Les intérêts minoritaires, pour les 20 % restants, se recalculent sur la base actuelle : 20 % de 95 000 000, soit 19 000 000 FCFA, contre 24 375 000 FCFA avant l''opération. Cette baisse ne traduit pas une perte : elle correspond simplement au reclassement, vers le groupe, de la part auparavant détenue par les minoritaires. Point de méthode essentiel pour l''examen : tant que le contrôle exclusif subsistait avant et après l''opération, cette acquisition complémentaire est un mouvement entre actionnaires, imputé sur les capitaux propres consolidés, sans transiter par le résultat consolidé du groupe.

## 1:05:00 – 1:20:00 · Application complète et discussion

Reprenons l''ensemble du cas sous forme de tableau récapitulatif, du moment de la première acquisition jusqu''à l''acquisition complémentaire : à 70 %, actif net réévalué 81 250 000 FCFA, quote-part groupe 56 875 000 FCFA, goodwill 34 125 000 FCFA, minoritaires 24 375 000 FCFA ; après passage à 80 %, actif net réévalué 95 000 000 FCFA, quote-part des 10 % acquis 9 500 000 FCFA, écart complémentaire 5 500 000 FCFA, goodwill cumulé 39 625 000 FCFA, minoritaires ramenés à 19 000 000 FCFA.

Discussion : que se passerait-il si, au lieu d''acquérir 10 % complémentaires, Baobab Industries avait cédé 20 % de sa participation tout en conservant le contrôle (passage de 70 % à 50 % plus une voix, par exemple) ? Le principe reste le même : on compare le prix de cession à la quote-part de l''actif net cédé, à la valeur actuelle de la filiale, et l''écart s''impute sur les capitaux propres consolidés, jamais sur le résultat, tant que le contrôle exclusif subsiste.

## 1:20:00 – 1:30:00 · Synthèse et évaluation finale

Synthèse : retenez la séquence en quatre temps — homogénéiser les comptes, réévaluer l''actif net identifiable à sa juste valeur nette d''impôt différé, calculer le goodwill par différence avec le coût d''acquisition, puis ajuster goodwill et intérêts minoritaires à chaque variation de pourcentage, en utilisant toujours la valeur actuelle de l''actif net au moment de l''opération.

Évaluation finale, cinq questions.

Question 1. Qu''est-ce qui distingue un écart d''évaluation d''un écart d''acquisition ? Réponse : l''écart d''évaluation correspond à la réévaluation d''un actif ou passif identifiable de la filiale ; l''écart d''acquisition est le solde non affecté à un actif précis.

Question 2. Pourquoi faut-il tenir compte d''un impôt différé sur une plus-value latente ? Réponse : parce que cette plus-value deviendra imposable à la cession ou à l''amortissement sur la nouvelle base, et l''ignorer surévaluerait l''actif net réel de la filiale.

Question 3. Un groupe détenant déjà le contrôle exclusif d''une filiale acquiert des titres complémentaires sans changer de méthode de consolidation. Cette opération transite-t-elle par le résultat consolidé ? Réponse : non, elle s''impute sur les capitaux propres consolidés, avec ajustement du goodwill et des intérêts minoritaires.

Question 4. Sur quelle valeur de l''actif net calcule-t-on l''écart complémentaire d''une acquisition de titres postérieure à la première consolidation ? Réponse : sur la valeur actuelle de l''actif net de la filiale à la date de cette nouvelle opération, et non sur la valeur retenue lors de la première acquisition.

Question 5. Citez deux retraitements d''homogénéisation à effectuer avant de cumuler les comptes d''un groupe. Réponse : par exemple l''harmonisation des durées d''amortissement et la neutralisation des provisions réglementées, remplacées le cas échéant par un impôt différé.

Merci pour votre attention. La prochaine séance portera sur les normes IFRS et leur comparaison avec le SYSCOHADA révisé.', 'video', 90, false, 60
from public.courses c where c.slug = 'mas-compta-m1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Consolidation approfondie des comptes de groupe');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Normes IFRS et comparaison avec le SYSCOHADA', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : étudiants de Master 1 en Comptabilité.
- Objectifs : comparer la logique SYSCOHADA et la logique IFRS sur plusieurs thèmes ; appliquer le mécanisme du test de dépréciation (valeur recouvrable).
- Matériel : diaporama comparatif, calculatrice.
- Prérequis : états financiers SYSCOHADA de Licence 3 ; leçon « Normes IFRS, notions avancées et comparaison avec le SYSCOHADA » de ce cours.
- Précaution : en cas de doute sur le numéro ou le détail d''une norme IFRS précise, dites-le explicitement plutôt que d''inventer une référence.

## Déroulé minuté

## 00:00 – 05:00 · Ouverture

Bonjour. Aujourd''hui, nous ne allons pas apprendre de nouvelles écritures, mais apprendre à comparer deux façons de voir la comptabilité : celle du SYSCOHADA révisé, que vous maîtrisez depuis la Licence, et celle des normes IFRS, que vous croiserez de plus en plus si vous travaillez dans un groupe régional, un cabinet d''audit ou une entreprise qui cherche des financements internationaux.

## 05:00 – 15:00 · Deux logiques de départ

Le SYSCOHADA a été construit pour l''ensemble des entreprises de l''espace OHADA, grandes et petites, avec un objectif de fiabilité, de comparabilité régionale et de simplicité d''application. Il reste attaché, par principe, au coût historique.

Les IFRS, élaborées par l''IASB, visent d''abord les groupes et sociétés cotées qui informent des investisseurs internationaux. Leur logique privilégie la substance économique sur la forme juridique, et recourt davantage à la juste valeur et au jugement professionnel. Retenez cette phrase simple : le SYSCOHADA cherche la règle qui s''applique de la même façon partout ; les IFRS cherchent la représentation la plus fidèle de la réalité économique, même si cela demande plus de jugement au cas par cas.

Question à la salle : une entreprise sénégalaise non cotée, sans filiale étrangère, est-elle concernée par les IFRS ? Réponse attendue : en principe non, directement ; mais elle peut l''être si elle appartient à un groupe qui doit consolider en IFRS, ou si un partenaire financier l''exige contractuellement. Toujours vérifier le cadre applicable au cas précis.

## 15:00 – 30:00 · Comparaison thème par thème

Quatre thèmes à retenir. Premièrement, la juste valeur : les IFRS autorisent, pour certains actifs comme les immeubles de placement, une réévaluation régulière à la juste valeur ; le SYSCOHADA reste par principe au coût historique diminué des amortissements, avec des réévaluations plus encadrées.

Deuxièmement, la reconnaissance du revenu : les IFRS appliquent un modèle en cinq étapes, du contrat à la reconnaissance du revenu obligation de prestation par obligation de prestation. Le SYSCOHADA retient des règles plus simples, proches de la méthode de l''avancement pour les prestations continues.

Troisièmement, la location : les IFRS imposent au preneur de comptabiliser quasiment tous les contrats de location à l''actif, comme un droit d''utilisation avec une dette en contrepartie. Le SYSCOHADA distingue encore, dans les comptes individuels, le crédit-bail et la location simple.

Quatrièmement, la consolidation : les deux référentiels distinguent contrôle exclusif, contrôle conjoint et influence notable, avec des méthodes voisines, mais les textes IFRS détaillent davantage la notion de contrôle dans des montages complexes.

## 30:00 – 35:00 · Pause active

Exercice rapide : pour chacune des quatre situations suivantes, dites si elle illustre plutôt la logique SYSCOHADA ou la logique IFRS. Un immeuble de placement réévalué chaque année à sa juste valeur, avec variation en résultat. Un contrat de crédit-bail laissé hors bilan dans les comptes individuels. Un contrat de service complexe découpé en plusieurs obligations de prestation distinctes pour reconnaître le revenu progressivement. Une règle unique et détaillée appliquée de la même façon à toutes les entreprises de la zone.

Correction : le premier exemple est IFRS (juste valeur, immeuble de placement) ; le deuxième est SYSCOHADA (crédit-bail hors bilan en comptes individuels) ; le troisième est IFRS (modèle en cinq étapes) ; le quatrième est SYSCOHADA (règle uniforme).

## 35:00 – 50:00 · Quiz interactif à mi-parcours

Question 1. Quel référentiel recourt le plus largement à la juste valeur ? Réponse : les IFRS.

Question 2. Quel référentiel vise en priorité les investisseurs internationaux ? Réponse : les IFRS.

Question 3. Dans les comptes individuels SYSCOHADA, un bien pris en crédit-bail figure-t-il systématiquement à l''actif ? Réponse : non, il reste le plus souvent hors bilan selon la méthode de base, sauf retraitement, notamment en consolidation.

Question 4. Le test de dépréciation compare la valeur nette comptable à quelle valeur ? Réponse : à la valeur recouvrable, c''est-à-dire le montant le plus élevé entre la juste valeur nette des coûts de sortie et la valeur d''utilité.

Question 5. Le goodwill de consolidation est-il systématiquement amorti dans tous les cadres IFRS ? Réponse : non, plusieurs cadres IFRS ne prévoient qu''un test de dépréciation annuel, sans amortissement systématique.

## 50:00 – 1:10:00 · Le test de dépréciation en pratique

Reprenons le cas de l''entreprise fictive Thiès Industries. Une unité de production présente une valeur nette comptable de 120 000 000 FCFA. Un indice de perte de valeur apparaît : baisse durable d''activité du secteur. L''estimation donne une juste valeur nette des coûts de sortie de 95 000 000 FCFA, et une valeur d''utilité, calculée par actualisation des flux futurs attendus, de 105 000 000 FCFA.

Premier calcul : la valeur recouvrable est le montant le plus élevé entre 95 000 000 et 105 000 000, soit 105 000 000 FCFA. Deuxième calcul : nous comparons cette valeur recouvrable à la valeur nette comptable de 120 000 000 FCFA. Comme la valeur recouvrable est inférieure, une dépréciation s''impose, pour un montant de 120 000 000 moins 105 000 000, soit 15 000 000 FCFA.

Cette dépréciation s''enregistre en charge, et réduit la valeur de l''actif au bilan à 105 000 000 FCFA. Retenez bien la logique : on ne retient jamais la valeur la plus basse entre juste valeur et valeur d''utilité, mais la plus élevée, car l''entreprise choisirait rationnellement la meilleure option disponible, vendre ou continuer à utiliser l''actif.

Deuxième exercice, à faire vous-même en deux minutes : une machine a une valeur nette comptable de 60 000 000 FCFA, une juste valeur nette des coûts de sortie de 38 000 000 FCFA, une valeur d''utilité de 45 000 000 FCFA. Calculez la valeur recouvrable et la dépréciation.

Correction : valeur recouvrable, le plus élevé entre 38 000 000 et 45 000 000, soit 45 000 000 FCFA. Dépréciation : 60 000 000 moins 45 000 000, soit 15 000 000 FCFA.

## 1:10:00 – 1:20:00 · Pourquoi cette comparaison compte pour votre carrière

Un comptable ou un contrôleur de gestion qui travaille pour un groupe régional ou une filiale de multinationale doit savoir dialoguer avec les deux référentiels, produire des comptes individuels en SYSCOHADA tout en comprenant les retraitements qu''exigera une consolidation IFRS au niveau du groupe. Ce n''est pas un exercice académique : c''est une compétence directement recherchée par les cabinets d''audit, les directions financières de groupe et les cabinets de conseil en Afrique francophone. Les recruteurs apprécient particulièrement les candidats capables d''expliquer, sans jargon, pourquoi un même événement économique peut produire deux chiffres différents selon le référentiel retenu, et de justifier calmement cette différence devant un client ou un investisseur qui s''en étonne.

## 1:20:00 – 1:30:00 · Synthèse et évaluation finale

Synthèse : le SYSCOHADA privilégie le coût historique et l''uniformité ; les IFRS privilégient la substance économique et la juste valeur, avec davantage de jugement professionnel. Le test de dépréciation compare toujours la valeur nette comptable à la valeur recouvrable, le plus élevé entre juste valeur nette des coûts de sortie et valeur d''utilité.

Évaluation finale, cinq questions.

Question 1. Quelle est la différence de logique générale entre SYSCOHADA et IFRS ? Réponse : le SYSCOHADA privilégie le coût historique et des règles uniformes pour la fiabilité et la simplicité ; les IFRS privilégient la substance économique et la juste valeur, pour informer des investisseurs internationaux.

Question 2. Comment calcule-t-on la valeur recouvrable d''un actif ? Réponse : c''est le montant le plus élevé entre sa juste valeur nette des coûts de sortie et sa valeur d''utilité.

Question 3. Une machine a une valeur nette comptable de 70 000 000 FCFA, une juste valeur nette des coûts de sortie de 50 000 000 FCFA et une valeur d''utilité de 55 000 000 FCFA. Quelle dépréciation faut-il comptabiliser ? Réponse : valeur recouvrable 55 000 000 FCFA ; dépréciation 70 000 000 moins 55 000 000, soit 15 000 000 FCFA.

Question 4. Le crédit-bail est-il traité de la même façon dans les comptes individuels SYSCOHADA et selon les IFRS côté preneur ? Réponse : non, les IFRS imposent la comptabilisation à l''actif d''un droit d''utilisation avec une dette, alors que le SYSCOHADA laisse le bien hors bilan dans les comptes individuels selon la méthode de base.

Question 5. Citez une situation où une entreprise sénégalaise non cotée pourrait tout de même devoir appliquer les IFRS. Réponse : si elle appartient à un groupe international qui doit consolider ses comptes en IFRS, ou si un partenaire financier l''exige contractuellement.

Merci de votre attention. La prochaine séance portera sur la fiscalité internationale et les prix de transfert.', 'video', 90, false, 70
from public.courses c where c.slug = 'mas-compta-m1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Normes IFRS et comparaison avec le SYSCOHADA');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Fiscalité internationale et prix de transfert', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : étudiants de Master 1 en Comptabilité.
- Objectifs : expliquer résidence fiscale, établissement stable et conventions de non double imposition ; appliquer les méthodes de prix de transfert à un cas chiffré.
- Matériel : diaporama, calculatrice.
- Prérequis : fiscalité des entreprises de Licence 2 ; leçon « Fiscalité internationale et prix de transfert » de ce cours.
- Précaution : tous les taux utilisés dans les exemples sont fictifs ; aucun seuil officiel n''est donné comme définitif, à vérifier dans les textes en vigueur.

## Déroulé minuté

## 00:00 – 05:00 · Ouverture

Bonjour. Nous terminons les trois matières avancées du Master 1 par la fiscalité internationale et les prix de transfert, un sujet de plus en plus central à mesure que les entreprises sénégalaises et africaines se développent au-delà de leurs frontières. Fil rouge de la séance : la filiale fictive Niayes Composants, qui fabrique des pièces vendues exclusivement à sa société mère installée dans un autre pays.

## 05:00 – 15:00 · Résidence fiscale et établissement stable

Une entreprise est imposée, en principe, dans l''État où elle a sa résidence fiscale. Lorsqu''elle exerce une activité dans un autre État sans y être résidente, cet État peut néanmoins l''imposer sur les bénéfices rattachables à un établissement stable qu''elle y maintient : une installation fixe d''affaires, comme une succursale, un chantier au-delà d''une certaine durée, ou un agent dépendant qui conclut des contrats au nom de l''entreprise.

Exemple : une société sénégalaise qui ouvre un chantier de construction dans un pays voisin peut, selon la durée du chantier et les règles applicables, être considérée comme disposant d''un établissement stable dans ce pays. Cela ouvre à cet État un droit d''imposer les bénéfices rattachables au chantier, sans que la société y soit résidente au sens général du terme.

Question à la salle : si le même chantier ne dure que deux semaines, pensez-vous qu''il constituerait un établissement stable ? Réponse attendue : probablement pas, car la notion d''établissement stable suppose une certaine permanence ou une durée minimale selon les règles applicables ; mais la durée précise exigée doit toujours être vérifiée dans le droit interne ou la convention applicable, jamais supposée universelle.

## 15:00 – 25:00 · Les conventions de non double imposition

Lorsque deux États pourraient chacun revendiquer un droit d''imposer le même revenu, une convention fiscale bilatérale répartit ce droit entre eux et prévoit un mécanisme pour éliminer la double imposition : exonération dans un État, ou crédit d''impôt imputable sur l''impôt dû dans l''autre. Les pays de l''UEMOA ont, pour certains, conclu de telles conventions entre eux ou avec des pays tiers. Retenez bien : le contenu précis d''une convention, les revenus visés, les taux de retenue à la source, les procédures à suivre, varie d''un texte à l''autre et doit toujours être vérifié convention par convention.

## 25:00 – 35:00 · Le principe de pleine concurrence et les méthodes de prix de transfert

Quand deux entreprises liées effectuent des transactions entre elles, le prix qu''elles se facturent peut être fixé pour déplacer artificiellement du bénéfice vers le pays le plus avantageux fiscalement. Le principe de pleine concurrence impose que ce prix intragroupe soit celui qu''auraient fixé des entreprises indépendantes dans des conditions comparables.

Quatre méthodes à connaître. La méthode du prix comparable sur le marché libre compare directement le prix intragroupe à celui pratiqué entre indépendants. La méthode du prix de revente part du prix de revente à un client indépendant et en déduit une marge de revendeur comparable. La méthode du coût majoré part du coût de production et y ajoute une marge comparable à celle de producteurs indépendants. Enfin, les méthodes transactionnelles fondées sur les bénéfices s''utilisent quand les transactions sont trop imbriquées pour isoler un prix par transaction.

## 35:00 – 50:00 · Quiz interactif à mi-parcours

Question 1. L''établissement stable permet-il à un État d''imposer une entreprise non résidente ? Réponse : oui, sur les bénéfices rattachables à cet établissement stable.

Question 2. Que prévoit en principe une convention de non double imposition ? Réponse : la répartition du droit d''imposer entre les deux États signataires, et un mécanisme pour éviter qu''un même revenu soit imposé deux fois.

Question 3. Quel principe impose que le prix intragroupe corresponde à celui que fixeraient des entreprises indépendantes ? Réponse : le principe de pleine concurrence.

Question 4. La méthode du coût majoré se place du point de vue de quel acteur de la transaction ? Réponse : du vendeur producteur, qui part de son coût de production et y ajoute une marge comparable.

Question 5. Pourquoi une administration fiscale s''intéresse-t-elle particulièrement aux transactions entre une filiale locale et sa société mère étrangère ? Réponse : parce qu''un lien de contrôle permet, en théorie, de fixer un prix qui déplace artificiellement le bénéfice, ce qu''empêche la logique d''un client indépendant.

## 50:00 – 1:10:00 · Application complète : le cas Niayes Composants

Reprenons le cas en détail. Niayes Composants fabrique des pièces semi-finies qu''elle vend exclusivement à sa société mère. Son coût de production unitaire est de 8 000 FCFA. Une étude de comparables indépendants fait apparaître une marge sur coûts de 20 %, un taux fictif pour l''exemple.

Premier calcul, le prix de pleine concurrence attendu : 8 000 multiplié par 1,20, soit 9 600 FCFA par unité. Deuxième donnée, le prix effectivement facturé par Niayes Composants à sa mère : 7 500 FCFA par unité. Troisième calcul, l''écart par unité : 9 600 moins 7 500, soit 2 100 FCFA. Pour un volume annuel de 50 000 unités, l''écart total s''élève à 2 100 multiplié par 50 000, soit 105 000 000 FCFA.

Ce résultat signifie que Niayes Composants a facturé un prix inférieur à ce qu''aurait obtenu une entreprise indépendante comparable, réduisant artificiellement son bénéfice imposable au Sénégal au profit du pays de la mère. Une administration fiscale pourrait, sur la base de comparables documentés, chercher à réintégrer cet écart dans le bénéfice imposable de la filiale sénégalaise.

Deuxième exercice, à vous de calculer : une autre filiale facture un service à sa mère pour 4 000 FCFA l''unité, alors que son coût de production est de 3 200 FCFA et que la marge comparable observée est de 10 %, taux fictif. Le prix respecte-t-il le principe de pleine concurrence ?

Correction : prix de pleine concurrence attendu, 3 200 multiplié par 1,10, soit 3 520 FCFA. Le prix facturé de 4 000 FCFA est supérieur à ce prix de pleine concurrence : dans ce cas précis, la filiale facture plus cher que ne le ferait un indépendant, ce qui n''est pas défavorable au fisc sénégalais si c''est elle qui vend, mais reste à justifier par une analyse de comparables documentée en cas de contrôle fiscal.

## 1:10:00 – 1:20:00 · Documentation et bonne foi

Au-delà du calcul, les groupes doivent généralement documenter leur politique de prix de transfert : description du groupe, analyse des transactions intragroupe, justification de la méthode retenue. Attention : un prix éloigné du prix de pleine concurrence n''est pas nécessairement frauduleux. Une filiale peut, de bonne foi, pratiquer un prix bas pendant une période limitée pour pénétrer un nouveau marché, sans intention fiscale. Une documentation adéquate doit alors expliquer cette politique commerciale, pour la distinguer d''un transfert artificiel de bénéfice.

## 1:20:00 – 1:30:00 · Synthèse et évaluation finale

Synthèse : l''établissement stable détermine qui peut imposer une activité transfrontalière ; une convention de non double imposition répartit ce droit et évite la double taxation ; le principe de pleine concurrence impose des prix intragroupe comparables à ceux d''entreprises indépendantes, vérifiables par plusieurs méthodes selon la nature de la transaction.

Évaluation finale, cinq questions.

Question 1. Qu''est-ce qu''un établissement stable ? Réponse : une installation fixe d''affaires qu''une entreprise non résidente maintient dans un autre État, qui ouvre à cet État un droit d''imposer les bénéfices rattachables à cette installation.

Question 2. Quel est le rôle principal d''une convention de non double imposition ? Réponse : répartir le droit d''imposer un même revenu entre deux États et prévoir un mécanisme pour éviter qu''il soit imposé deux fois.

Question 3. Une filiale fabrique un bien à 6 000 FCFA l''unité ; la marge comparable observée est de 12 %, taux fictif. Quel est le prix de pleine concurrence attendu ? Réponse : 6 000 multiplié par 1,12, soit 6 720 FCFA.

Question 4. Dans la question précédente, la filiale facture en réalité 6 200 FCFA l''unité pour 10 000 unités. Quel est l''écart total ? Réponse : écart unitaire 6 720 moins 6 200, soit 520 FCFA ; écart total 520 multiplié par 10 000, soit 5 200 000 FCFA.

Question 5. Un prix de transfert éloigné du prix de pleine concurrence est-il toujours la preuve d''une fraude fiscale ? Réponse : non, il peut résulter d''une stratégie commerciale légitime, à condition d''être documenté et justifié.

Merci de votre attention. La prochaine séance sera un atelier transversal qui rassemble les trois matières de l''année sur un même cas d''entreprise.', 'video', 90, false, 80
from public.courses c where c.slug = 'mas-compta-m1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Fiscalité internationale et prix de transfert');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Atelier de synthèse transversal (groupe Teranga Agro-Industries)', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : étudiants de Master 1 en Comptabilité, en fin d''année.
- Objectifs : mobiliser dans un même cas d''entreprise les trois matières avancées de l''année (consolidation approfondie, IFRS, fiscalité internationale et prix de transfert) ; s''entraîner dans les conditions proches de l''examen.
- Matériel : diaporama avec organigramme de groupe, calculatrice.
- Prérequis : les trois cours vidéo précédents de ce cours.
- Précaution : cas et chiffres fictifs, construits pour l''entraînement ; toujours vérifier les textes officiels avant une application réelle.

## Déroulé minuté

## 00:00 – 05:00 · Ouverture : pourquoi un atelier transversal

Bonjour. Cette dernière séance de l''année ne vous enseigne aucune notion nouvelle : elle vous entraîne à faire ce que l''examen vous demandera, c''est-à-dire mobiliser plusieurs matières sur un même dossier d''entreprise, exactement comme un professionnel doit le faire face à un cas réel. Nous reprenons le groupe fictif Teranga Agro-Industries, déjà rencontré dans le sujet type de ce cours, et nous le traitons pas à pas, comme en conditions d''examen.

## 05:00 – 10:00 · Présentation du dossier

Teranga Agro-Industries (TAI) détient 75 % du capital de sa filiale de transformation Louga Semences (LS), acquis pour 84 000 000 FCFA, alors que les capitaux propres comptables de LS étaient de 60 000 000 FCFA (capital 40 000 000, réserves 20 000 000), avec un entrepôt sous-évalué de 10 000 000 FCFA (valeur comptable 12 000 000 FCFA, juste valeur 22 000 000 FCFA). TAI possède également une seconde filiale, Dakar Export (DE), qui vend des produits finis à un distributeur du groupe installé à l''étranger, à un coût de production unitaire de 12 000 FCFA, pour un volume annuel de 30 000 unités.

## 10:00 – 30:00 · Bloc 1 : consolidation approfondie

Premier temps, la consolidation. Calculons l''effet d''impôt différé sur la plus-value latente de l''entrepôt, à un taux fictif de 25 % : 10 000 000 multiplié par 25 %, soit 2 500 000 FCFA. L''écart d''évaluation net s''élève donc à 10 000 000 moins 2 500 000, soit 7 500 000 FCFA. L''actif net de LS à la juste valeur devient 60 000 000 plus 7 500 000, soit 67 500 000 FCFA.

Nous calculons la quote-part acquise par TAI : 75 % de 67 500 000, soit 50 625 000 FCFA. L''écart d''acquisition, ou goodwill, est la différence avec le coût d''acquisition : 84 000 000 moins 50 625 000, soit 33 375 000 FCFA. Les intérêts minoritaires à l''acquisition, pour les 25 % restants, s''élèvent à 25 % de 67 500 000, soit 16 875 000 FCFA.

Question à la salle : si LS réalise, l''année suivante, un résultat de 6 000 000 FCFA, comment le répartir entre le groupe et les minoritaires ? Réponse attendue : selon les pourcentages d''intérêt, 75 % pour le groupe et 25 % pour les minoritaires, soit 4 500 000 FCFA pour le groupe et 1 500 000 FCFA pour les minoritaires.

## 30:00 – 35:00 · Pause active

Un petit calcul de vérification : si TAI n''avait acquis que 55 % de LS pour 62 000 000 FCFA, avec le même actif net réévalué de 67 500 000 FCFA, quel serait le nouveau goodwill ? Prenez deux minutes.

Correction : quote-part acquise, 55 % de 67 500 000, soit 37 125 000 FCFA. Goodwill : 62 000 000 moins 37 125 000, soit 24 875 000 FCFA. Vous remarquez que le même actif net réévalué donne un goodwill différent selon le pourcentage acquis et le prix payé : c''est exactement le type de variante qu''un sujet d''examen peut introduire pour tester votre compréhension, et non votre mémoire.

## 35:00 – 50:00 · Quiz interactif à mi-parcours

Question 1. Pourquoi calcule-t-on un impôt différé sur la plus-value latente d''un actif réévalué ? Réponse : parce que cette plus-value deviendra imposable à la cession ou à l''amortissement, et l''ignorer surévaluerait l''actif net réel.

Question 2. Avec 75 % du capital et des droits de vote proportionnels, quelle méthode de consolidation s''applique ? Réponse : l''intégration globale, le contrôle exclusif étant présumé au-delà de 50 % des droits de vote.

Question 3. Quelle est la différence de logique générale entre SYSCOHADA et IFRS ? Réponse : le SYSCOHADA privilégie le coût historique et des règles uniformes ; les IFRS privilégient la substance économique et la juste valeur, pour informer des investisseurs internationaux.

Question 4. Qu''est-ce que la valeur recouvrable d''un actif ? Réponse : le montant le plus élevé entre sa juste valeur nette des coûts de sortie et sa valeur d''utilité.

Question 5. Quel principe impose que le prix d''une transaction intragroupe corresponde à celui que fixeraient des entreprises indépendantes ? Réponse : le principe de pleine concurrence.

## 50:00 – 1:05:00 · Bloc 2 : IFRS et bloc 3 : prix de transfert

Deuxième temps, un entrepôt de Dakar Export présente une valeur nette comptable de 50 000 000 FCFA ; un indice de perte de valeur apparaît ; la juste valeur nette des coûts de sortie est de 30 000 000 FCFA, la valeur d''utilité de 36 000 000 FCFA. La valeur recouvrable est le montant le plus élevé entre les deux, soit 36 000 000 FCFA. La dépréciation à comptabiliser est donc de 50 000 000 moins 36 000 000, soit 14 000 000 FCFA.

Troisième temps, Dakar Export vend ses produits à un distributeur du groupe à l''étranger, pour un coût de production de 12 000 FCFA l''unité. Une étude de comparables indépendants indique une marge sur coûts de 18 %, taux fictif. Le prix de pleine concurrence attendu est de 12 000 multiplié par 1,18, soit 14 160 FCFA. Si Dakar Export facture en réalité 13 000 FCFA l''unité, pour 30 000 unités par an, l''écart unitaire est de 14 160 moins 13 000, soit 1 160 FCFA, et l''écart total de 1 160 multiplié par 30 000, soit 34 800 000 FCFA.

Discussion : pourquoi un même groupe, TAI, doit-il à la fois consolider LS, surveiller la dépréciation d''un actif de DE et documenter les prix facturés par DE à l''étranger ? Réponse attendue : parce que ces trois obligations relèvent de référentiels et d''objectifs différents, mais s''appliquent simultanément à la même réalité économique d''un groupe qui produit, transforme et exporte, et un bon professionnel doit savoir les articuler sans les confondre. Un sujet d''examen peut d''ailleurs vous demander explicitement d''expliquer, en une ou deux phrases, pourquoi un dirigeant non comptable a intérêt à comprendre ces trois résultats ensemble plutôt que séparément : parce qu''ils racontent, chacun à sa manière, la même trajectoire économique du groupe.

## 1:05:00 – 1:20:00 · Mise en situation : rédiger une synthèse pour la direction

Exercice final en petits groupes, puis restitution orale : rédigez, en cinq lignes maximum, une note de synthèse destinée à la direction de TAI, qui résume en langage non technique ce que révèlent ces trois calculs (goodwill de consolidation, dépréciation d''un actif, écart de prix de transfert) sur la situation du groupe. Nous écoutons deux ou trois restitutions et discutons ensemble de la clarté et de la pertinence de chacune, en insistant sur l''importance de traduire un résultat technique en une information utile à la décision, sans jargon excessif ni approximation trompeuse.

## 1:20:00 – 1:30:00 · Synthèse finale et évaluation

Synthèse de l''année : la consolidation approfondie exige de décomposer l''écart de première consolidation et de suivre les variations de pourcentage avec rigueur ; les IFRS complètent le SYSCOHADA par une logique de substance économique et de juste valeur, en particulier pour les tests de dépréciation ; la fiscalité internationale et les prix de transfert exigent de documenter des transactions intragroupe conformes au principe de pleine concurrence. Ces trois compétences se recoupent dans la réalité d''un groupe qui grandit au-delà de ses frontières.

Évaluation finale, cinq questions.

Question 1. Dans le cas TAI, quel est le goodwill calculé pour l''acquisition de 75 % de LS ? Réponse : 33 375 000 FCFA.

Question 2. Quelle est la dépréciation à comptabiliser sur l''entrepôt de DE ? Réponse : 14 000 000 FCFA.

Question 3. Quel est l''écart total de prix de transfert calculé pour les ventes de DE à l''étranger ? Réponse : 34 800 000 FCFA.

Question 4. Pourquoi ces trois résultats doivent-ils être présentés ensemble à la direction d''un groupe, et non comme trois sujets séparés ? Réponse : parce qu''ils décrivent la même réalité économique du groupe sous trois angles complémentaires, utiles à une décision cohérente.

Question 5. Quelle est la leçon méthodologique principale de cet atelier pour votre examen de Master 1 ? Réponse : savoir mobiliser plusieurs matières avancées sur un même dossier d''entreprise, en vérifiant chaque calcul et en reliant les résultats à une conclusion utile, pas seulement produire des chiffres isolés.

Merci à toutes et à tous pour votre travail cette année. Relisez vos trois fiches de synthèse avant l''examen, reprenez les exercices corrigés une dernière fois, et n''oubliez jamais d''écrire le raisonnement qui mène à chaque chiffre : c''est lui, bien plus que le résultat seul, qui sera noté. Bon courage pour vos examens de Master 1.', 'video', 90, false, 90
from public.courses c where c.slug = 'mas-compta-m1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Atelier de synthèse transversal (groupe Teranga Agro-Industries)');

-- Cours : Finance Master 1 : évaluation, ingénierie financière et gestion de portefeuille
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'mas-fin-m1', (select id from public.levels where name = 'Master 1'), null, 'Finance', 'Finance Master 1 : évaluation, ingénierie financière et gestion de portefeuille', 'Cours de préparation aux examens de Master 1 Finance : évaluation d''entreprise approfondie (DCF, multiples, approche patrimoniale), ingénierie financière et fusions-acquisitions, gestion de portefeuille et marchés financiers avancés. Pour étudiants de Master 1 ayant déjà validé les bases de la Licence Finance (analyse financière, VAN/TRI, CMPC). Cas d''entreprise sénégalais fictifs chiffrés et vérifiés.', true, 751
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Réussir ses examens de Master 1 en Finance', '## Objectifs de la leçon

- Comprendre ce que le Master 1 Finance exige de plus que la Licence : analyse critique, autonomie, rigueur méthodologique.
- Identifier les trois matières avancées de l''année et leur articulation avec le mémoire ou le stage.
- Construire un plan de révision réaliste sur six semaines avant les examens.

## Le Master 1 Finance : ce qui change par rapport à la Licence

En Licence, vous avez appris à calculer : VAN, TRI, coût moyen pondéré du capital, ratios d''analyse financière, bases des marchés financiers. Le Master 1 part du principe que ces outils sont maîtrisés et vous demande autre chose : les mobiliser dans des situations ambiguës, où plusieurs méthodes donnent des réponses différentes et où il faut argumenter un choix.

Trois évolutions marquent le passage en M1.

- Le raisonnement en incertitude plutôt qu''en certitude : on ne vous donne plus un taux d''actualisation unique à appliquer, on vous demande de le justifier, de tester sa sensibilité, de discuter une fourchette de valeurs.
- La convergence des méthodes : en évaluation d''entreprise par exemple, on attend que vous croisiez approche par les flux (DCF), approche par les comparables (multiples) et approche patrimoniale, puis que vous expliquiez les écarts plutôt que de choisir un seul chiffre.
- L''ouverture vers la décision d''entreprise réelle : fusion-acquisition, montage financier, gestion de portefeuille ne sont plus des exercices isolés mais des cas où une banque, un fonds ou une direction financière doit trancher avec des informations incomplètes.

Le Master 1 Finance prépare aussi, selon les établissements, à un mémoire de recherche appliquée ou professionnel et, souvent, à un stage en banque, en cabinet d''audit, en direction financière d''entreprise ou en société de gestion. Même quand le mémoire est soutenu en fin de M2, le M1 est le moment où l''on choisit son thème et où l''on commence la revue de littérature : un diagnostic financier approfondi, une opération de croissance externe observée en stage, ou une problématique de gestion de portefeuille sont des pistes classiques.

## Les trois matières avancées de l''année

Ce cours d''examen couvre les trois matières clés du M1 Finance, sans répéter ce qui a déjà été vu en Licence.

- Évaluation d''entreprise approfondie : la méthode des flux de trésorerie actualisés (DCF), les multiples de comparables boursiers et transactionnels, et l''approche patrimoniale avec goodwill. Vous saurez produire une fourchette de valeur argumentée pour une entreprise, pas un chiffre isolé.
- Ingénierie financière et fusions-acquisitions : comment structurer une opération de rachat, calculer une parité d''échange, mesurer l''effet dilutif ou relutif sur le bénéfice par action, et comprendre la mécanique d''un rachat par effet de levier (LBO).
- Gestion de portefeuille et marchés financiers avancés : diversification, construction d''un portefeuille de deux actifs, frontière efficiente simplifiée, et modèle d''évaluation des actifs financiers (CAPM) appliqué au calcul du rendement exigé d''une action.

Ces trois blocs ne sont pas cloisonnés : un même cas d''entreprise peut mobiliser l''évaluation pour fixer un prix de rachat, l''ingénierie financière pour structurer l''opération, et la gestion de portefeuille pour analyser l''impact sur un investisseur minoritaire. Les examens de M1 testent justement cette capacité à faire dialoguer les matières.

## Mémoire, stage et études de cas : la méthode de travail avancée

La méthode de travail change de nature en Master. Trois outils reviennent sans cesse, aussi bien dans les examens que dans le mémoire.

- Le cas d''entreprise complexe : un énoncé long, avec des informations parfois redondantes ou à trier, qui imite un dossier réel (états financiers, rapport annuel, communiqué de presse d''une opération). Le travail consiste à extraire les données utiles avant de calculer.
- La revue de littérature courte : avant de résoudre un cas, un bon candidat rappelle en deux ou trois phrases le cadre théorique mobilisé (par exemple, pourquoi le CAPM suppose des marchés efficients et ce que cela implique pour l''interprétation du bêta) ; cela montre la maîtrise conceptuelle, pas seulement le calcul.
- Le business case argumenté : conclure un exercice non par un chiffre seul, mais par une recommandation structurée (acheter, vendre, refuser l''offre, renégocier la parité), avec les limites de l''analyse clairement énoncées.

Pour le mémoire professionnel, cette méthode se prolonge sur plusieurs mois : poser une problématique précise, construire une méthodologie (étude de cas unique, comparaison d''entreprises, entretiens), collecter des données vérifiables, puis rédiger en citant ses sources. Un mémoire sur « l''évaluation des PME non cotées en zone UEMOA » par exemple devra justifier pourquoi le DCF est privilégié sur le marché par rapport aux multiples de marchés boursiers peu profonds.

## Plan de révision sur six semaines

Un plan de révision pour l''examen de M1 Finance doit équilibrer calcul, compréhension conceptuelle et entraînement sur cas complexes.

- Semaines 1 et 2 : reprise active de l''évaluation d''entreprise. Refaites un DCF complet à la main, un multiple de comparables, une approche patrimoniale avec goodwill, sur un même cas, et comparez les résultats.
- Semaines 3 et 4 : ingénierie financière et fusions-acquisitions. Entraînez-vous sur des parités d''échange, des calculs de dilution ou relution du bénéfice par action, et un montage LBO simple avec plan de remboursement de dette.
- Semaine 5 : gestion de portefeuille. Reprenez les formules de variance et de covariance d''un portefeuille à deux actifs, le calcul du bêta et du rendement attendu par le CAPM, et le ratio de Sharpe.
- Semaine 6 : entraînement croisé sur des sujets type combinant les trois matières, dans les conditions de l''examen (temps limité, calculatrice simple, pas de formulaire fourni dans la plupart des cas).

Chaque semaine, terminez par un exercice chronométré et un corrigé détaillé, en notant systématiquement les erreurs récurrentes : oubli de l''impôt sur une économie fiscale, confusion entre valeur d''entreprise et valeur des capitaux propres, erreur de signe dans un flux de trésorerie.

## Points clés

- Le Master 1 exige de croiser plusieurs méthodes et d''argumenter les écarts, pas de produire un chiffre unique.
- Trois matières structurent l''année : évaluation d''entreprise, ingénierie financière et fusions-acquisitions, gestion de portefeuille et marchés financiers avancés.
- Le mémoire démarre souvent en M1 par le choix du thème et une première revue de littérature.
- La révision doit combiner calcul rigoureux, rappel conceptuel et entraînement chronométré sur cas complexes.

## Exercices

1. Expliquez en trois phrases pourquoi un évaluateur sérieux calcule la valeur d''une entreprise par plusieurs méthodes plutôt qu''une seule.
2. Citez les trois matières avancées du programme de M1 Finance présentées dans cette leçon.
3. Pourquoi la distinction entre valeur d''entreprise et valeur des capitaux propres est-elle centrale en évaluation ?
4. Proposez un découpage de six semaines de révision adapté à votre propre emploi du temps, en gardant la logique de cette leçon.
5. Donnez un exemple de thème de mémoire professionnel en finance qui mobiliserait à la fois l''évaluation d''entreprise et la gestion de portefeuille.

## Corrigé

1. Chaque méthode repose sur des hypothèses différentes (flux futurs actualisés pour le DCF, comparaison de marché pour les multiples, patrimoine comptable corrigé pour l''approche patrimoniale) ; elles peuvent diverger fortement, et comparer les résultats permet de détecter une hypothèse trop optimiste ou un comparable mal choisi, puis de proposer une fourchette de valeur argumentée plutôt qu''un chiffre fragile.
2. Évaluation d''entreprise approfondie ; ingénierie financière et fusions-acquisitions ; gestion de portefeuille et marchés financiers avancés.
3. La valeur d''entreprise rémunère l''ensemble des financeurs (actionnaires et créanciers), alors que la valeur des capitaux propres ne rémunère que les actionnaires ; confondre les deux conduit à surestimer ou sous-estimer le prix réellement payé pour acquérir le contrôle d''une société, car il faut toujours retrancher la dette financière nette de la valeur d''entreprise pour obtenir la valeur des capitaux propres.
4. Réponse libre ; un bon plan conserve la progression proposée (évaluation, puis ingénierie financière, puis portefeuille, puis entraînement croisé) et prévoit un exercice chronométré chaque semaine.
5. Exemple possible : « L''évaluation des cibles de croissance externe par les fonds d''investissement actifs en zone UEMOA et son impact sur la composition des portefeuilles institutionnels », qui combine évaluation (comment chiffrer la cible), ingénierie financière (comment structurer le rachat) et gestion de portefeuille (comment le fonds pilote son risque global).', 'texte', 45, true, 10
from public.courses c where c.slug = 'mas-fin-m1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Réussir ses examens de Master 1 en Finance');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Évaluation d''entreprise approfondie : l''essentiel pour l''examen', '## Objectifs de la leçon

- Construire une évaluation par les flux de trésorerie actualisés (DCF) et en interpréter les résultats.
- Appliquer la méthode des multiples et comprendre ses limites.
- Mettre en œuvre l''approche patrimoniale avec goodwill.
- Croiser les trois méthodes pour une fourchette de valeur argumentée.

Tous les taux (actualisation, croissance, multiples, rémunération des capitaux) sont fictifs pour l''exemple.

## Fiche 1 : la méthode DCF (discounted cash flows)

Le DCF évalue une entreprise par la valeur actuelle des flux de trésorerie disponibles qu''elle générera, augmentée d''une valeur terminale qui capture ce qui se passe après l''horizon explicite de prévision.

- FCF = résultat d''exploitation après impôt + dotations aux amortissements − variation du BFR − investissements.
- On actualise chaque flux au coût moyen pondéré du capital (CMPC), taux reflétant le risque de l''activité.
- Valeur terminale par le modèle de Gordon-Shapiro : VT = FCF de la dernière année × (1 + g) / (CMPC − g), avec g strictement inférieur au CMPC.
- La valeur d''entreprise (VE) est la somme des flux actualisés et de la VT actualisée ; la valeur des capitaux propres s''obtient en retranchant la dette financière nette.

Cas : Teranga Agro-Transformation SA, entreprise fictive de Thiès transformant des céréales locales, est évaluée pour une prise de participation minoritaire. FCF prévisionnels sur 5 ans (millions de FCFA) : 420, 462, 498, 530, 556. CMPC retenu : 12 %. Croissance à long terme : 2,5 %.

- Flux actualisés : année 1 : 420 / 1,12 = 375,0 ; année 2 : 462 / 1,12² = 368,3 ; année 3 : 498 / 1,12³ = 354,5 ; année 4 : 530 / 1,12⁴ = 336,8 ; année 5 : 556 / 1,12⁵ = 315,5. Somme des flux actualisés : 1 750,1.
- Valeur terminale en fin d''année 5 : 556 × 1,025 / (0,12 − 0,025) = 5 998,9. Actualisée sur 5 ans : 5 998,9 / 1,12⁵ = 3 404,0.
- Valeur d''entreprise : 1 750,1 + 3 404,0 = 5 154,0 millions de FCFA.
- Dette financière nette au bilan : 650 millions. Valeur des capitaux propres : 5 154,0 − 650 = 4 504,0 millions de FCFA.
- Avec 2 000 000 d''actions en circulation, la valeur par action est de 4 504,0 × 1 000 000 / 2 000 000 = 2 252 FCFA.

Le DCF est sensible au CMPC et à la croissance à l''infini : un bon candidat teste toujours une fourchette de ces deux paramètres plutôt qu''un seul résultat.

## Fiche 2 : la méthode des multiples de comparables

Cette méthode évalue l''entreprise par comparaison avec des sociétés cotées ou des transactions récentes du même secteur, en appliquant un multiple de marché à un agrégat de l''entreprise à évaluer.

- Multiple d''EV/EBITDA : valeur d''entreprise rapportée à l''excédent brut d''exploitation, peu sensible aux politiques d''amortissement et à la structure financière.
- Multiple de PER : capitalisation rapportée au résultat net ; donne directement une valeur des capitaux propres.
- Choix des comparables : entreprises de secteur, taille et rentabilité proches ; en Afrique de l''Ouest, peu de sociétés cotées sont comparables, ce qui justifie de croiser cette méthode avec le DCF.

Cas (suite) : l''EBITDA de Teranga Agro-Transformation est de 650 millions de FCFA et le résultat net de 310 millions. Un échantillon de comparables agroalimentaires affiche un multiple moyen EV/EBITDA de 7,4 et un PER moyen de 15,2 (multiples fictifs pour l''exemple).

- Valeur d''entreprise par le multiple d''EBITDA : 650 × 7,4 = 4 810,0 millions. Valeur des capitaux propres : 4 810,0 − 650 = 4 160,0 millions.
- Valeur des capitaux propres par le PER : 310 × 15,2 = 4 712,0 millions.

Les deux approches par multiples donnent 4 160 et 4 712 millions, à comparer aux 4 504 millions du DCF : l''écart reste raisonnable (moins de 10 % autour du DCF), ce qui renforce la crédibilité de la fourchette.

## Fiche 3 : l''approche patrimoniale et le goodwill

L''approche patrimoniale part de l''actif net comptable corrigé (ANC corrigé), c''est-à-dire les capitaux propres comptables retraités des plus ou moins-values latentes sur les actifs et des éléments hors bilan significatifs.

Cette méthode valorise le patrimoine existant mais ignore la capacité de l''entreprise à créer de la valeur future ; on lui ajoute donc un goodwill (survaleur), estimé par la méthode des rentes abrégées.

- Rente annuelle du goodwill = résultat courant prévisionnel − (taux de rémunération normatif des capitaux × ANC corrigé). Ce taux représente ce qu''un investisseur exigerait pour un placement comparable sans l''avantage concurrentiel de l''entreprise.
- On actualise cette rente sur un horizon limité (3 à 8 ans), avec la formule de l''annuité : goodwill = rente × [1 − (1 + i)⁻ⁿ] / i.

Cas (suite) : l''ANC comptable de Teranga Agro-Transformation est de 2 800 millions de FCFA ; une plus-value latente nette de 380 millions est identifiée sur un terrain sous-évalué au bilan. ANC corrigé : 2 800 + 380 = 3 180 millions. Résultat courant prévisionnel : 400 millions, taux normatif retenu de 9 %, horizon d''actualisation de 5 ans à 12 %.

- Rente du goodwill : 400 − (0,09 × 3 180) = 400 − 286,2 = 113,8 millions par an.
- Facteur d''annuité sur 5 ans à 12 % : [1 − 1,12⁻⁵] / 0,12 = 3,6048.
- Goodwill : 113,8 × 3,6048 = 410,2 millions.
- Valeur globale de l''entreprise (patrimoniale + goodwill) : 3 180 + 410,2 = 3 590,2 millions de FCFA.

## Fiche 4 : synthèse et fourchette de valeur

Pour Teranga Agro-Transformation : DCF 4 504,0 ; multiple d''EBITDA 4 160,0 ; PER 4 712,0 ; patrimoniale avec goodwill 3 590,2 millions de FCFA. L''approche patrimoniale donne une valeur plus prudente car elle valorise peu la croissance future ; elle sert de plancher de négociation. La fourchette raisonnable, en excluant le cas le plus prudent, se situe entre 4 160 et 4 712 millions de FCFA, avec le DCF comme estimation centrale.

- Toujours indiquer les hypothèses retenues : une valeur sans hypothèses explicites n''a pas de valeur probante à l''examen.
- Expliquer les écarts entre méthodes plutôt que les ignorer : c''est ce qui distingue une copie de M1 d''une copie de Licence.

## Exercices pratiques

1. Flux disponibles de 300, 330 et 360 millions de FCFA sur 3 ans, CMPC de 10 %, croissance à l''infini de 3 %. Calculez la valeur d''entreprise.
2. Pourquoi l''EV/EBITDA est-il préféré au PER pour comparer des entreprises à structures financières différentes ?
3. ANC comptable de 1 500 millions, moins-value latente nette de 60 millions, résultat courant prévisionnel de 180 millions, taux normatif de 8 %, horizon de 4 ans à 10 %. Calculez l''ANC corrigé, la rente et le goodwill.
4. Pourquoi la valeur terminale pèse-t-elle souvent plus de 60 % d''un DCF, et quel risque cela pose-t-il ?
5. Cas pratique : Baobab Distribution SA, entreprise fictive dakaroise, prévoit des flux de 500, 540, 580, 610, 630 millions sur 5 ans, CMPC 13 %, croissance 2 %, dette nette 900 millions, 1 500 000 actions. Calculez la valeur d''entreprise, des capitaux propres, par action. Son EBITDA est de 720 millions, multiple sectoriel 6,8 : comparez au DCF.

## Corrigé

1. Flux actualisés : 272,7 + 272,7 + 270,5 = 815,9. Valeur terminale : 360×1,03/(0,07) = 5 297,1, actualisée : 3 979,4. Valeur d''entreprise : 4 795,3 millions.
2. L''EV/EBITDA compare la valeur d''entreprise, indépendante du financement, à un agrégat avant frais financiers et impôt ; il reste comparable entre entreprises diversement endettées, contrairement au PER qui dépend de la charge d''intérêts.
3. ANC corrigé : 1 440 millions. Rente : 180 − 115,2 = 64,8 millions. Goodwill : 64,8 × 3,1699 = 205,4 millions ; valeur globale : 1 645,4 millions.
4. Les flux explicites ne portent que sur quelques années alors que l''entreprise dure indéfiniment ; une petite variation du couple CMPC/croissance change radicalement le résultat, d''où l''importance d''une analyse de sensibilité.
5. Flux actualisés à 13 % : 1 983,5. Valeur terminale actualisée : 3 171,2. Valeur d''entreprise : 5 154,7 millions. Capitaux propres : 4 254,7 millions. Par action : environ 2 836,5 FCFA. Par comparables : 4 896,0 millions, proche du DCF (écart inférieur à 5 %).', 'texte', 50, false, 20
from public.courses c where c.slug = 'mas-fin-m1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Évaluation d''entreprise approfondie : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Ingénierie financière et fusions-acquisitions : l''essentiel pour l''examen', '## Objectifs de la leçon

- Calculer une parité d''échange et mesurer l''effet dilutif ou relutif d''une fusion sur le bénéfice par action.
- Comprendre la logique d''un rachat par effet de levier (LBO) et calculer le taux de rendement interne du fonds.
- Identifier les grandes étapes et les risques d''une opération de fusion-acquisition.

Tous les cours, primes et taux de cette leçon sont fictifs pour l''exemple.

## Fiche 1 : la parité d''échange et l''effet sur le bénéfice par action

Dans une fusion par échange d''actions, l''acquéreur rémunère les actionnaires de la cible en nouvelles actions plutôt qu''en numéraire. La parité d''échange fixe combien d''actions de l''acquéreur sont remises pour une action de la cible.

- Prix offert par action de la cible = cours de la cible × (1 + prime de contrôle). La prime rémunère la perte de l''autonomie et l''anticipation de synergies.
- Parité d''échange = prix offert par action de la cible / cours de l''acquéreur.
- Nouvelles actions émises = nombre d''actions de la cible × parité. Elles s''ajoutent aux actions existantes de l''acquéreur pour former le nouveau capital.
- Bénéfice par action (BPA) post-fusion = résultat net consolidé (résultats cumulés + synergies nettes d''impôt) / nombre d''actions total post-fusion. On parle de relution si ce BPA dépasse le BPA de l''acquéreur avant l''opération, de dilution dans le cas contraire.

Cas : Sahel Industries SA (acquéreur) souhaite racheter Delta Emballages SA (cible), deux entreprises fictives. Sahel Industries vaut 9 000 millions de FCFA de capitaux propres pour 3 000 000 d''actions, soit un cours de 3 000 FCFA. Delta Emballages vaut 2 400 millions pour 1 000 000 d''actions, soit un cours de 2 400 FCFA. Une prime de contrôle de 20 % est négociée.

- Prix offert par action de Delta Emballages : 2 400 × 1,20 = 2 880 FCFA.
- Parité d''échange : 2 880 / 3 000 = 0,96 action Sahel Industries pour 1 action Delta Emballages.
- Nouvelles actions émises : 1 000 000 × 0,96 = 960 000. Capital post-fusion : 3 000 000 + 960 000 = 3 960 000 actions.
- Résultat net consolidé : résultat de Sahel (620) + résultat de Delta (180) + synergies nettes d''impôt (45, fictives) = 845 millions de FCFA.
- BPA de Sahel avant l''opération : 620 × 1 000 000 / 3 000 000 = 206,7 FCFA. BPA post-fusion : 845 × 1 000 000 / 3 960 000 = 213,4 FCFA.
- Variation : (213,4 / 206,7 − 1) × 100 = +3,25 %. L''opération est relutive pour les actionnaires de Sahel Industries.

Une opération peut être relutive à court terme sans être créatrice de valeur réelle : si la prime payée est trop élevée ou les synergies surestimées, la relution comptable masque une destruction de valeur. L''examen attend que vous signaliez cette limite.

## Fiche 2 : le rachat par effet de levier (LBO)

Un LBO (leveraged buy-out) consiste à racheter une entreprise principalement par de la dette logée dans une société holding créée pour l''occasion, remboursée ensuite par les flux de trésorerie de la cible. L''effet de levier amplifie le rendement des fonds propres investis par le fonds acquéreur, à condition que la rentabilité économique de la cible dépasse le coût de la dette.

- Montage : le fonds apporte des fonds propres, la banque apporte une dette senior ; la holding achète les actions de la cible, puis la dette est remboursée par les dividendes remontés de la cible, alimentés par son flux de trésorerie disponible.
- Le risque principal est le risque de remboursement : si l''activité se dégrade, le service de la dette (intérêts + capital) peut dépasser le flux disponible.
- Le rendement du fonds se mesure par le taux de rendement interne (TRI) sur la durée de détention et par le multiple de l''investissement (valeur de sortie des fonds propres / apport initial).

Cas : un fonds rachète Logis-Services, PME fictive, pour une valeur d''entreprise de 1 000 millions de FCFA, financée par 650 millions de dette senior (taux fictif de 9 %) et 350 millions de fonds propres du fonds. L''EBITDA initial est de 220 millions, avec une croissance annuelle de 5 %, et le flux disponible avant service de la dette est approché à 80 % de l''EBITDA.

- Chaque année, le flux disponible rembourse en priorité les intérêts puis le capital restant dû. Sur 5 ans, la dette de 650 millions est intégralement remboursée (calcul détaillé en vidéo) grâce à la croissance de l''EBITDA.
- Sortie en année 5 : EBITDA de 267,4 millions × multiple de sortie de 6,0 = valeur d''entreprise de 1 604,5 millions. Dette résiduelle nulle, donc valeur des fonds propres à la sortie = 1 604,5 millions.
- Multiple de l''investissement : 1 604,5 / 350 = 4,58 fois l''apport initial.
- TRI sur 5 ans : (4,58)^(1/5) − 1 ≈ 35,6 % par an.

Ce rendement élevé illustre l''effet de levier : la valeur d''entreprise n''a progressé que de 1 000 à 1 604,5 millions (+60 %), mais grâce au remboursement intégral de la dette, les fonds propres du fonds sont passés de 350 à 1 604,5 millions. Ce résultat suppose une exécution sans accroc du plan de remboursement : toute dégradation de l''EBITDA réduit fortement le rendement.

## Fiche 3 : les grandes étapes d''une opération de fusion-acquisition

- Phase préparatoire : identification de la cible, lettre d''intention, audit d''acquisition (due diligence) financier, juridique, fiscal et social.
- Négociation : valorisation (voir la leçon précédente), structuration de l''offre (numéraire, échange d''actions, ou mixte), garanties d''actif et de passif protégeant l''acquéreur contre des passifs cachés.
- Financement : choix entre autofinancement, dette, augmentation de capital ou combinaison, en tenant compte de l''impact sur la structure financière et la notation de l''acquéreur.
- Intégration post-acquisition : réalisation effective des synergies annoncées, qui échoue fréquemment par sous-estimation des coûts d''intégration (systèmes d''information, culture d''entreprise, doublons).

## Exercices pratiques

1. Un acquéreur cote 4 000 FCFA, une cible cote 1 800 FCFA. Une prime de 25 % est offerte. Calculez le prix offert par action et la parité d''échange.
2. Expliquez pourquoi une opération relutive sur le BPA n''est pas automatiquement créatrice de valeur.
3. Dans un LBO, pourquoi la dette d''acquisition est-elle logée dans une holding plutôt que directement dans la cible ?
4. Un fonds investit 400 millions de fonds propres dans un LBO et revend sa participation 900 millions 4 ans plus tard. Calculez le multiple d''investissement et le TRI annuel.
5. Cas pratique : Fatick Energie SA (acquéreur, cours 5 000 FCFA, 2 000 000 actions, résultat net 900 millions) rachète Rufisque Solaire SA (cible, cours 3 200 FCFA, 600 000 actions, résultat net 210 millions) avec une prime de 15 % et des synergies nettes d''impôt de 30 millions. Calculez la parité d''échange, le nombre d''actions post-fusion, le BPA avant et après l''opération, et concluez sur la dilution ou la relution.

## Corrigé

1. Prix offert : 1 800 × 1,25 = 2 250 FCFA. Parité : 2 250 / 4 000 = 0,5625 action de l''acquéreur pour 1 action de la cible.
2. Le BPA post-fusion dépend du résultat comptable consolidé et du nombre d''actions, mais pas directement du prix payé ni du risque réellement transféré ; une prime excessive ou des synergies surestimées peuvent produire une relution comptable immédiate tout en détruisant de la valeur économique à moyen terme, notamment si le goodwill comptabilisé doit être déprécié plus tard.
3. Loger la dette dans la holding protège la cible elle-même de la faillite en cas de défaut de la holding, isole le risque financier de l''opération dans une structure dédiée, et permet de rembourser la dette grâce aux dividendes remontés de la cible sans fusionner juridiquement les deux entités.
4. Multiple : 900 / 400 = 2,25. TRI : 2,25^(1/4) − 1 ≈ 22,5 % par an.
5. Prix offert : 3 200 × 1,15 = 3 680 FCFA. Parité : 3 680 / 5 000 = 0,736. Nouvelles actions : 600 000 × 0,736 = 441 600. Actions post-fusion : 2 000 000 + 441 600 = 2 441 600. Résultat consolidé : 900 + 210 + 30 = 1 140 millions. BPA avant : 900 × 1 000 000 / 2 000 000 = 450 FCFA. BPA après : 1 140 × 1 000 000 / 2 441 600 ≈ 466,8 FCFA. L''opération est relutive (+3,7 %).', 'texte', 50, false, 30
from public.courses c where c.slug = 'mas-fin-m1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Ingénierie financière et fusions-acquisitions : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Gestion de portefeuille et marchés financiers avancés : l''essentiel pour l''examen', '## Objectifs de la leçon

- Calculer le rendement attendu et le risque (variance, écart-type) d''un portefeuille à deux actifs.
- Déterminer le portefeuille de variance minimale et comprendre la logique de la frontière efficiente.
- Appliquer le modèle d''évaluation des actifs financiers (CAPM) pour calculer un rendement exigé et un bêta.
- Calculer et interpréter le ratio de Sharpe.

Tous les rendements, volatilités et corrélations de cette leçon sont fictifs pour l''exemple.

## Fiche 1 : rendement et risque d''un portefeuille à deux actifs

La diversification repose sur un principe simple : combiner des actifs qui ne varient pas parfaitement ensemble réduit le risque total sans réduire proportionnellement le rendement attendu.

- Rendement attendu du portefeuille : E(rp) = wA × E(rA) + wB × E(rB), où wA et wB sont les poids investis dans chaque actif (wA + wB = 1).
- Variance du portefeuille : σp² = wA² × σA² + wB² × σB² + 2 × wA × wB × Cov(A,B), avec Cov(A,B) = corrélation(A,B) × σA × σB.
- Plus la corrélation entre les deux actifs est faible, plus le terme de covariance réduit la variance totale : une corrélation inférieure à 1 crée toujours un gain de diversification.

Cas : un portefeuille combine l''action fictive Sahel Ciments (rendement attendu 14 %, écart-type 22 %) et l''action fictive Teranga Telecom (rendement attendu 9 %, écart-type 12 %), avec une corrélation de 0,30. La covariance est Cov = 0,30 × 0,22 × 0,12 = 0,00792.

- Avec 60 % investis dans Sahel Ciments et 40 % dans Teranga Telecom : E(rp) = 0,6 × 14 % + 0,4 × 9 % = 12,0 %. Variance : 0,6² × 0,22² + 0,4² × 0,12² + 2 × 0,6 × 0,4 × 0,00792 = 0,02354, soit un écart-type de 15,3 %.
- À titre de comparaison, investir 100 % dans Sahel Ciments seul donne un rendement de 14 % pour un écart-type de 22 % : le portefeuille mixte réduit fortement le risque pour une baisse de rendement plus modérée.

## Fiche 2 : le portefeuille de variance minimale et la frontière efficiente

Pour deux actifs, il existe une pondération qui minimise la variance du portefeuille, obtenue en annulant la dérivée de σp² par rapport à wA :

- wA (variance minimale) = (σB² − Cov(A,B)) / (σA² + σB² − 2 × Cov(A,B)).
- En faisant varier wA de 0 % à 100 %, l''ensemble des couples (risque, rendement) obtenus dessine la frontière efficiente simplifiée à deux actifs : chaque point est le meilleur rendement possible pour un niveau de risque donné.

Cas (suite) : avec les données de Sahel Ciments et Teranga Telecom, wA (minimale) = (0,12² − 0,00792) / (0,22² + 0,12² − 2 × 0,00792) = 0,138, donc wB = 0,862. L''écart-type minimal atteint est de 11,6 %, pour un rendement attendu de 9,69 % : ce portefeuille est moins risqué que Teranga Telecom seul (12,0 %) tout en offrant un rendement légèrement supérieur (9,69 % contre 9,0 %), ce qui illustre concrètement le bénéfice de la diversification.

- Tout portefeuille situé sous le point de variance minimale sur la frontière n''est pas efficient : on peut obtenir le même risque ou moins pour un rendement supérieur ailleurs sur la courbe.
- Un investisseur rationnel ne choisit jamais un point inefficient ; son choix final dépend ensuite de son aversion au risque, parmi les portefeuilles efficients.

## Fiche 3 : le CAPM approfondi

Le modèle d''évaluation des actifs financiers relie le rendement exigé d''un actif à son risque non diversifiable, mesuré par le bêta.

- Bêta d''un actif = Cov(rActif, rMarché) / Var(rMarché). Il mesure la sensibilité du rendement de l''actif aux mouvements du marché ; un bêta de 1 signifie un risque de marché identique à la moyenne.
- Rendement exigé par le CAPM : E(r) = rf + β × (E(rm) − rf), où rf est le taux sans risque et E(rm) le rendement attendu du marché. Le terme (E(rm) − rf) est la prime de risque du marché.
- La droite de marché des titres (Security Market Line) représente cette relation linéaire entre bêta et rendement exigé ; un actif situé au-dessus de la droite (rendement attendu réel supérieur au rendement exigé par le CAPM) est jugé sous-évalué.

Cas (suite) : avec un taux sans risque fictif de 5,5 %, un rendement attendu du marché de 12 % et un écart-type du marché de 16 %, le bêta de Sahel Ciments, calculé à partir d''une covariance avec le marché de 0,028, est de 0,028 / 0,16² = 1,094. Le rendement exigé par le CAPM est donc 5,5 % + 1,094 × (12 % − 5,5 %) = 12,61 %. Le rendement attendu réellement estimé pour Sahel Ciments étant de 14 %, l''action apparaît sous-évaluée par rapport à son risque systématique (alpha positif de 1,39 point). Pour Teranga Telecom, avec un bêta de 0,55, le rendement exigé est de 5,5 % + 0,55 × 6,5 % = 9,07 %, très proche du rendement attendu de 9 % : l''action est jugée correctement valorisée.

## Fiche 4 : le ratio de Sharpe

Le ratio de Sharpe mesure le rendement excédentaire obtenu par unité de risque total supporté : Sharpe = (E(r) − rf) / σ. Il permet de comparer des actifs ou des portefeuilles de volatilités différentes.

- Sahel Ciments : (14 % − 5,5 %) / 22 % = 0,386.
- Teranga Telecom : (9 % − 5,5 %) / 12 % = 0,292.
- Sahel Ciments rémunère mieux le risque total malgré sa volatilité plus élevée ; le CAPM, qui ne regarde que le bêta, ignore le risque spécifique diversifiable, d''où l''intérêt de croiser les deux indicateurs.

## Exercices pratiques

1. Deux actifs ont des rendements attendus de 10 % et 6 %, des écart-types de 18 % et 9 %, et une corrélation de 0,2. Pour un portefeuille à 70 % dans le premier actif, calculez le rendement attendu et l''écart-type.
2. Expliquez pourquoi une corrélation négative entre deux actifs est particulièrement recherchée en diversification.
3. Un actif a un bêta de 1,3, le taux sans risque est de 5 % et le rendement attendu du marché de 11 %. Calculez le rendement exigé par le CAPM.
4. Pourquoi un point situé sous le portefeuille de variance minimale sur la frontière efficiente n''est-il jamais un choix rationnel ?
5. Un actif a un rendement attendu de 11 %, un écart-type de 20 % et un taux sans risque de 5 %. Calculez son ratio de Sharpe et comparez-le à celui de Sahel Ciments (0,386) de cette leçon.
6. Cas pratique : les actions fictives Kaolack Transport (rendement 12 %, écart-type 19 %) et Ziguinchor Agro (rendement 7 %, écart-type 10 %) ont une corrélation de 0,15. Calculez la covariance, le rendement et l''écart-type d''un portefeuille à 50/50, puis le poids du portefeuille de variance minimale.

## Corrigé

1. E(rp) = 0,7 × 10 % + 0,3 × 6 % = 8,8 %. Covariance = 0,2 × 0,18 × 0,09 = 0,00324. Variance = 0,7² × 0,18² + 0,3² × 0,09² + 2 × 0,7 × 0,3 × 0,00324 = 0,01797, soit un écart-type de 13,4 %.
2. Une corrélation négative signifie que lorsque le rendement d''un actif baisse, l''autre tend à monter ; la variance du portefeuille peut alors chuter très fortement, parfois en dessous de la variance de l''actif le moins risqué pris isolément, ce qui est le cas le plus favorable pour réduire le risque global.
3. E(r) = 5 % + 1,3 × (11 % − 5 %) = 12,8 %.
4. Parce que pour ce même niveau de risque, il existe toujours, plus haut sur la frontière efficiente, une combinaison des deux actifs offrant un rendement attendu supérieur ; choisir un point inefficient revient à accepter un rendement plus faible sans réduire le risque.
5. Sharpe = (11 % − 5 %) / 20 % = 0,300, inférieur à celui de Sahel Ciments (0,386) : Sahel Ciments rémunère mieux chaque unité de risque total supporté.
6. Covariance = 0,15 × 0,19 × 0,10 = 0,00285. À 50/50 : E(rp) = 9,5 %, variance = 0,5² × 0,19² + 0,5² × 0,10² + 2 × 0,5 × 0,5 × 0,00285 = 0,01295, écart-type ≈ 11,4 %. Poids de variance minimale pour Kaolack Transport : (0,10² − 0,00285) / (0,19² + 0,10² − 2 × 0,00285) ≈ 0,177.', 'texte', 50, false, 40
from public.courses c where c.slug = 'mas-fin-m1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Gestion de portefeuille et marchés financiers avancés : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Sujet type d''examen de Master 1 Finance (entraînement corrigé)', '## Avertissement

Ce sujet est un entraînement non officiel construit pour ce cours, avec un barème indicatif. Il ne remplace pas les annales de votre établissement mais mobilise les trois matières avancées du programme de Master 1 Finance.

## Sujet type d''examen de Master 1 Finance (3 heures, barème indicatif sur 20)

Cas d''entreprise : Casamance Agro-Industries SA (CAI), entreprise fictive de transformation de fruits implantée à Ziguinchor, envisage de racheter sa concurrente Niayes Fruits SA et d''ouvrir son capital à un fonds d''investissement régional.

Données de CAI (acquéreur) : cours de l''action 2 500 FCFA, 4 000 000 d''actions, résultat net 980 millions de FCFA, CMPC retenu 11 %.
Données de Niayes Fruits (cible) : cours de l''action 1 600 FCFA, 1 200 000 actions, résultat net 240 millions de FCFA, EBITDA 420 millions, flux de trésorerie disponibles prévisionnels sur 5 ans de 160, 175, 188, 198, 206 millions de FCFA, croissance à l''infini de 2 %, dette financière nette 280 millions.

## Partie 1 : évaluation de la cible (8 points)

1. Calculez la valeur d''entreprise et la valeur des capitaux propres de Niayes Fruits par la méthode DCF.
2. Un échantillon de comparables affiche un multiple moyen EV/EBITDA de 6,5 (fictif). Calculez la valeur des capitaux propres par cette méthode et comparez au résultat du DCF.
3. Proposez une fourchette de valeur argumentée pour Niayes Fruits.

## Partie 2 : montage de l''opération (7 points)

4. CAI propose une prime de contrôle de 20 % sur le cours de Niayes Fruits et un paiement en actions. Calculez le prix offert par action et la parité d''échange.
5. Calculez le nombre d''actions émises et le BPA de CAI avant et après l''opération, en supposant des synergies nettes d''impôt de 20 millions de FCFA et en retenant le résultat net comptable de la cible (sans retraitement de l''évaluation).
6. L''opération est-elle relutive ou dilutive pour les actionnaires actuels de CAI ? Commentez la limite de cet indicateur.

## Partie 3 : impact pour un investisseur minoritaire (5 points)

7. Un fonds régional envisage d''investir dans l''action CAI après l''opération. Le bêta estimé de CAI est de 1,15, le taux sans risque fictif de 6 % et le rendement attendu du marché régional de 13 %. Calculez le rendement exigé par le CAPM.
8. Si le rendement attendu réellement anticipé pour CAI est de 15 %, commentez la position de l''action par rapport à la droite de marché des titres.

## Exercices pratiques (entraînement complémentaire)

1. Pourquoi est-il recommandé de présenter une fourchette de valeur plutôt qu''un chiffre unique dans un rapport d''évaluation destiné à une négociation ?
2. Dans quel cas une prime de contrôle élevée peut-elle rendre une opération relutive à court terme mais risquée à moyen terme ?
3. Expliquez la différence entre le risque mesuré par le bêta (CAPM) et le risque total mesuré par l''écart-type (ratio de Sharpe).

## Corrigé

1. Flux actualisés à 11 % : 160/1,11=144,1 ; 175/1,11²=142,0 ; 188/1,11³=137,5 ; 198/1,11⁴=130,5 ; 206/1,11⁵=122,2 ; somme=676,3. Valeur terminale : 206×1,02/(0,11−0,02)=2 334,2, actualisée : 2 334,2/1,11⁵=1 385,6. Valeur d''entreprise : 676,3+1 385,6=2 061,9 millions. Capitaux propres : 2 061,9−280=1 781,9 millions.
2. Valeur d''entreprise par multiple : 420×6,5=2 730,0 millions. Capitaux propres : 2 730,0−280=2 450,0 millions, nettement supérieure au DCF (1 781,9 millions) : l''écart (environ 37 %) doit être questionné (prévisions de flux prudentes, ou multiple de comparables trop généreux).
3. Fourchette raisonnable entre 1 781,9 et 2 450,0 millions de FCFA, avec le DCF comme référence prudente si les prévisions sont jugées fiables, sachant que l''écart important appelle à vérifier les deux évaluations avant de conclure.
4. Prix offert : 1 600×1,20=1 920 FCFA. Parité : 1 920/2 500=0,768 action CAI pour 1 action Niayes Fruits.
5. Actions émises : 1 200 000×0,768=921 600. Actions post-fusion : 4 000 000+921 600=4 921 600. Résultat consolidé : 980+240+20=1 240 millions. BPA avant : 980×1 000 000/4 000 000=245 FCFA. BPA après : 1 240×1 000 000/4 921 600≈251,9 FCFA.
6. Variation : (251,9/245−1)×100≈+2,8 % : l''opération est relutive. Limite : cette relution comptable ne garantit pas la création de valeur si la prime de 20 % excède les synergies réellement réalisables, ou si l''intégration de Niayes Fruits échoue partiellement.
7. Rendement exigé CAPM : 6 %+1,15×(13 %−6 %)=14,05 %.
8. Le rendement attendu de 15 % est supérieur au rendement exigé de 14,05 % : l''action CAI se situe au-dessus de la droite de marché des titres, elle apparaît sous-évaluée par rapport à son risque systématique et constitue a priori une opportunité d''investissement pour le fonds, sous réserve que l''estimation de 15 % soit fiable et que le risque spécifique de l''opération de fusion soit correctement intégré par ailleurs.
Exercices complémentaires : 1. Une fourchette reflète l''incertitude réelle sur les hypothèses (taux, croissance, comparables) et laisse une marge de négociation entre acheteur et vendeur plutôt que d''ancrer la discussion sur un chiffre fragile. 2. Quand la prime dépasse la valeur actualisée des synergies réellement atteignables, ou quand elle est financée par une dette qui fragilise la structure financière de l''acquéreur après l''opération. 3. Le bêta ne capture que le risque non diversifiable, celui qui reste après diversification du portefeuille ; l''écart-type capture tout le risque, diversifiable et non diversifiable, ce qui explique qu''un actif très volatil mais peu corrélé au marché puisse avoir un bêta faible et pourtant un ratio de Sharpe informatif sur son risque propre.', 'texte', 55, false, 50
from public.courses c where c.slug = 'mas-fin-m1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Sujet type d''examen de Master 1 Finance (entraînement corrigé)');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Évaluation d''entreprise approfondie (DCF, multiples, approche patrimoniale)', '## Fiche du cours vidéo

Durée : 1h30. Niveau : Master 1 Finance.
Objectifs : construire une évaluation d''entreprise complète en croisant DCF, multiples et approche patrimoniale, et savoir argumenter une fourchette de valeur devant un jury ou un client.
Matériel : tableau ou diaporama, calculatrice financière ou tableur, le cas Teranga Agro-Transformation de la leçon écrite.
Prérequis : actualisation, notion de CMPC, lecture d''un bilan et d''un compte de résultat.

## 00:00 – 05:00 · Introduction et enjeux

Bonjour à toutes et à tous. Dans cette séance, nous allons évaluer ensemble une entreprise fictive, Teranga Agro-Transformation, en utilisant les trois grandes familles de méthodes que vous devez maîtriser en Master 1 : les flux de trésorerie actualisés, les multiples de comparables et l''approche patrimoniale. L''objectif n''est pas seulement de savoir calculer, mais de comprendre pourquoi un bon évaluateur ne se contente jamais d''un seul chiffre. En entreprise, en banque d''affaires ou en cabinet d''audit, une évaluation sert toujours une décision : fixer un prix de négociation, justifier une parité d''échange, ou documenter un dossier de financement. Si votre chiffre n''est pas défendable, la négociation s''effondre. Gardez votre support de la leçon écrite sous les yeux, nous allons reprendre le même cas en l''approfondissant.

Visuel : diapositive de titre avec les trois méthodes et une flèche vers « fourchette de valeur argumentée ».

## 05:00 – 20:00 · Partie 1 : le DCF pas à pas

Reprenons la logique du DCF. Une entreprise vaut la somme actualisée des flux de trésorerie disponibles qu''elle est capable de générer pour ses financeurs, plus une valeur terminale qui représente tout ce qui se passe après l''horizon de prévision explicite. Pourquoi actualiser ? Parce qu''un flux reçu dans cinq ans vaut moins qu''un flux reçu aujourd''hui, pour deux raisons : la valeur temps de l''argent, et le risque de ne jamais le recevoir.

Pour Teranga Agro-Transformation, nous avons des flux de 420, 462, 498, 530 et 556 millions de FCFA sur cinq ans, un CMPC de 12 % et une croissance à l''infini de 2,5 %. Calculons ensemble, année par année : 420 divisé par 1,12 à la puissance 1 donne 375,0. Je vous invite à mettre le calcul en pause et à refaire ce calcul vous-même avant de continuer. 462 divisé par 1,12 au carré donne 368,3. 498 divisé par 1,12 au cube donne 354,5. 530 divisé par 1,12 à la puissance 4 donne 336,8. Et 556 divisé par 1,12 à la puissance 5 donne 315,5. La somme de ces cinq flux actualisés est de 1 750,1 millions de FCFA.

Maintenant la valeur terminale, souvent le point le plus mal compris des étudiants. On prend le dernier flux, 556, on le fait croître une dernière fois au taux de croissance à l''infini de 2,5 %, puis on divise par l''écart entre le CMPC et cette croissance : 556 fois 1,025 divisé par (0,12 moins 0,025), soit 5 998,9 millions. C''est la valeur, en fin d''année 5, de tous les flux futurs au-delà de l''horizon explicite. Il faut encore l''actualiser sur cinq ans : 5 998,9 divisé par 1,12 à la puissance 5, soit 3 404,0 millions. La valeur d''entreprise totale est donc 1 750,1 plus 3 404,0, soit 5 154,0 millions de FCFA. En retranchant la dette financière nette de 650 millions, nous obtenons une valeur des capitaux propres de 4 504,0 millions, soit 2 252 FCFA par action sur 2 000 000 d''actions.

Visuel : tableau d''actualisation année par année projeté au tableau, avec la ligne de la valeur terminale isolée en couleur.

Point d''attention : notez que la valeur terminale représente 3 404,0 sur 5 154,0 millions, soit presque les deux tiers de la valeur totale. C''est pour cela que le couple CMPC et croissance à l''infini doit toujours être testé en sensibilité : une erreur d''un demi-point sur l''un ou l''autre change fortement le résultat final.

## 20:00 – 35:00 · Partie 2 : les multiples de comparables

Passons à la deuxième méthode. L''idée est différente : au lieu de projeter l''avenir de l''entreprise, on regarde combien le marché paie pour des entreprises comparables aujourd''hui, et on applique ce ratio à notre cible.

Le multiple le plus robuste est l''EV sur EBITDA, la valeur d''entreprise rapportée à l''excédent brut d''exploitation. Pourquoi ce multiple plutôt que le PER ? Parce que l''EBITDA est calculé avant charges financières, avant amortissements et avant impôt : il n''est donc pas déformé par le niveau d''endettement de chaque entreprise ni par ses choix comptables d''amortissement. Le PER, lui, part du résultat net, qui dépend directement de la structure financière de l''entreprise.

Pour Teranga Agro-Transformation, l''EBITDA est de 650 millions, et un échantillon de comparables du secteur agroalimentaire affiche un multiple moyen de 7,4, que je vous rappelle fictif pour l''exercice. La valeur d''entreprise obtenue est 650 fois 7,4, soit 4 810,0 millions. On retranche la même dette nette de 650 millions pour obtenir une valeur des capitaux propres de 4 160,0 millions. Avec le PER moyen de 15,2 appliqué au résultat net de 310 millions, nous obtenons directement une valeur des capitaux propres de 4 712,0 millions.

Visuel : tableau comparatif des trois résultats obtenus jusqu''ici : DCF 4 504,0, multiple EBITDA 4 160,0, PER 4 712,0.

Discussion importante : en Afrique de l''Ouest, trouvez-vous facilement dix entreprises cotées comparables dans un même secteur ? Non, la profondeur de marché est souvent limitée. C''est une vraie limite méthodologique à mentionner systématiquement dans vos copies : les multiples sont utiles comme méthode de recoupement, rarement comme méthode principale isolée.

## 35:00 – 50:00 · Partie 3 : l''approche patrimoniale et le goodwill

Troisième méthode, la plus ancienne historiquement : l''approche patrimoniale. On part des capitaux propres comptables, on les corrige des plus ou moins-values latentes, et on obtient l''actif net comptable corrigé, l''ANC corrigé.

Pour Teranga Agro-Transformation, l''ANC comptable est de 2 800 millions, avec une plus-value latente nette de 380 millions identifiée sur un terrain et des installations sous-évalués au bilan. L''ANC corrigé est donc de 3 180 millions. Mais cette valeur ignore la capacité de l''entreprise à créer de la valeur future au-delà de la rémunération normale de son patrimoine. On ajoute donc un goodwill, calculé ici par la méthode des rentes abrégées.

La rente annuelle du goodwill est égale au résultat courant prévisionnel, 400 millions, moins le taux de rémunération normatif des capitaux, 9 %, multiplié par l''ANC corrigé de 3 180 millions. Cela donne 400 moins 286,2, soit 113,8 millions par an. On actualise cette rente sur un horizon limité, ici cinq ans à 12 %, avec le facteur d''annuité de 3,6048. Le goodwill est donc 113,8 fois 3,6048, soit 410,2 millions. La valeur globale par l''approche patrimoniale est 3 180 plus 410,2, soit 3 590,2 millions de FCFA.

Visuel : schéma en deux blocs, ANC corrigé en bas, goodwill ajouté au-dessus, avec le total encadré.

Remarquez que ce résultat, 3 590,2 millions, est nettement plus prudent que les trois précédents. C''est normal et attendu : l''approche patrimoniale valorise peu la croissance future, elle sert souvent de plancher dans une négociation, pas de référence centrale pour une entreprise en croissance comme Teranga Agro-Transformation.

## 50:00 – 55:00 · Pause et quiz interactif

Prenons cinq minutes de pause active. Répondez à ces trois questions avant de reprendre.

- Question 1 : quelle méthode donne généralement la valeur la plus prudente pour une entreprise en croissance ? Réponse : l''approche patrimoniale, car elle ignore la croissance future non encore matérialisée dans le patrimoine.
- Question 2 : pourquoi l''EV/EBITDA est-il préféré au PER pour comparer deux entreprises diversement endettées ? Réponse : parce qu''il est calculé avant charges financières, donc indépendant de la structure de financement.
- Question 3 : que représente la valeur terminale dans un DCF ? Réponse : la valeur actualisée de tous les flux au-delà de l''horizon de prévision explicite.

## 55:00 – 70:00 · Partie 4 : synthétiser et argumenter la fourchette de valeur

Nous avons maintenant quatre résultats : 4 504,0 par DCF, 4 160,0 par le multiple d''EBITDA, 4 712,0 par le PER, et 3 590,2 par l''approche patrimoniale. Comment conclure devant un jury d''examen ou un client ?

Première étape : vérifier la cohérence. Les trois premières méthodes (DCF, EBITDA, PER) convergent dans un intervalle resserré, entre 4 160 et 4 712 millions, soit un écart inférieur à 15 % autour de la moyenne. C''est un bon signe de robustesse. La quatrième méthode, l''approche patrimoniale, s''écarte nettement vers le bas : c''est attendu et s''explique par sa nature conservatrice.

Deuxième étape : choisir une fourchette de restitution. Je recommande de présenter 4 160 à 4 712 millions comme fourchette principale, avec le DCF comme estimation centrale si vous jugez les prévisions de flux fiables, et de mentionner l''approche patrimoniale séparément comme un plancher de négociation utile, par exemple en cas de rachat où l''acheteur voudrait limiter le risque de surpayer.

Troisième étape : toujours expliciter vos hypothèses. Un correcteur de Master 1 pénalise sévèrement une valeur donnée sans rappel du CMPC, du taux de croissance, des multiples retenus et du taux normatif du goodwill. La valeur sans les hypothèses n''a aucune valeur probante.

Visuel : graphique en barres horizontales montrant les quatre résultats sur une même échelle, avec la fourchette retenue encadrée.

## 70:00 – 80:00 · Cas pratique approfondi : sensibilité et discussion

Testons maintenant la sensibilité du DCF. Si le CMPC passe de 12 % à 13 %, que se passe-t-il ? La valeur terminale, 556 fois 1,025 divisé par (0,13 moins 0,025), donne 5 129,5 millions, actualisée sur cinq ans à 13 % : 2 785,2 millions, contre 3 404,0 millions précédemment. La valeur d''entreprise chute mécaniquement. C''est exactement ce type de test que vous devez montrer à l''examen pour prouver votre maîtrise, pas seulement produire un chiffre figé.

Discutons aussi d''un biais fréquent chez les étudiants : vouloir faire converger artificiellement les méthodes en ajustant un paramètre après coup pour obtenir « le bon résultat ». C''est une erreur méthodologique grave. Les écarts entre méthodes sont des informations en soi : ils révèlent où se situe le désaccord entre la vision du marché (multiples), la vision patrimoniale (actif net) et la vision prospective (DCF).

## 80:00 – 85:00 · Synthèse générale

Pour résumer cette séance : le DCF valorise la capacité future à générer des flux, les multiples valorisent par comparaison de marché, l''approche patrimoniale valorise le patrimoine existant corrigé d''un goodwill. Aucune méthode n''est à elle seule suffisante en Master 1 : c''est la capacité à les croiser, à expliquer les écarts, et à conclure par une fourchette argumentée qui distingue une bonne copie.

## 85:00 – 90:00 · Évaluation finale

1. Dans un DCF, que représente le CMPC ? Réponse : le taux d''actualisation qui reflète le risque de l''activité et la structure de financement visée, utilisé pour ramener les flux futurs à leur valeur actuelle.
2. Pourquoi la valeur terminale doit-elle toujours être testée en sensibilité ? Réponse : parce qu''elle représente souvent plus de la moitié de la valeur totale et qu''elle est très sensible à de faibles variations du CMPC et de la croissance à l''infini.
3. Quel est l''avantage principal du multiple EV/EBITDA par rapport au PER ? Réponse : il est indépendant de la structure financière et des politiques d''amortissement, ce qui le rend plus comparable entre entreprises.
4. Comment calcule-t-on la rente annuelle du goodwill dans la méthode des rentes abrégées ? Réponse : résultat courant prévisionnel moins le produit du taux de rémunération normatif des capitaux et de l''actif net comptable corrigé.
5. Pourquoi un évaluateur sérieux présente-t-il une fourchette de valeur plutôt qu''un chiffre unique ? Réponse : parce que chaque méthode repose sur des hypothèses différentes et parfois fragiles, et qu''une fourchette reflète honnêtement l''incertitude tout en laissant une marge de négociation.', 'video', 90, false, 60
from public.courses c where c.slug = 'mas-fin-m1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Évaluation d''entreprise approfondie (DCF, multiples, approche patrimoniale)');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Ingénierie financière et fusions-acquisitions', '## Fiche du cours vidéo

Durée : 1h30. Niveau : Master 1 Finance.
Objectifs : calculer une parité d''échange et son effet sur le bénéfice par action, construire et interpréter un montage LBO, identifier les étapes et risques d''une fusion-acquisition.
Matériel : tableau ou diaporama, calculatrice financière ou tableur.
Prérequis : lecture d''un bilan, notion de résultat net, actualisation.

## 00:00 – 05:00 · Introduction et enjeux

Bonjour. Aujourd''hui, nous entrons dans l''ingénierie financière : comment structurer une opération de rachat d''entreprise, comment mesurer son impact sur les actionnaires existants, et comment fonctionne un montage par effet de levier, le fameux LBO. Ce sont des sujets qui apparaissent très régulièrement aux examens de Master 1 et qui sont au cœur du métier de banquier d''affaires, de directeur financier ou d''analyste en fonds d''investissement. Nous allons suivre deux cas fictifs tout au long de la séance : une fusion par échange d''actions entre Sahel Industries et Delta Emballages, puis un rachat par effet de levier de la PME Logis-Services.

Visuel : diapositive de titre avec les deux cas annoncés.

## 05:00 – 20:00 · Partie 1 : la parité d''échange

Quand un acquéreur paie une cible en actions plutôt qu''en numéraire, il faut déterminer combien de ses propres actions il remet pour une action de la cible : c''est la parité d''échange.

Première étape : fixer le prix offert par action de la cible. On part du cours de bourse ou de la valeur estimée de la cible, et on ajoute une prime de contrôle, qui rémunère la perte d''autonomie de la cible et anticipe les synergies de l''opération. Dans notre cas, Sahel Industries cote 3 000 FCFA avec 3 000 000 d''actions, soit une valeur de 9 000 millions. Delta Emballages cote 2 400 FCFA avec 1 000 000 d''actions, soit 2 400 millions. Une prime de 20 % est négociée.

Le prix offert par action de Delta Emballages est donc 2 400 fois 1,20, soit 2 880 FCFA. La parité d''échange est le prix offert divisé par le cours de l''acquéreur : 2 880 divisé par 3 000, soit 0,96. Cela signifie que pour chaque action Delta Emballages apportée, l''actionnaire reçoit 0,96 action Sahel Industries.

Visuel : schéma de l''échange, une action Delta Emballages transformée en 0,96 action Sahel Industries.

Mettez le calcul en pause et vérifiez vous-même : 1 000 000 actions Delta Emballages multipliées par 0,96 donnent 960 000 nouvelles actions Sahel Industries à émettre. Le capital de Sahel Industries passe donc de 3 000 000 à 3 960 000 actions.

## 20:00 – 35:00 · Partie 2 : l''effet sur le bénéfice par action

Maintenant, mesurons l''effet de cette opération sur le bénéfice par action, le BPA, de l''acquéreur. C''est l''indicateur que les analystes financiers regardent en premier après l''annonce d''une fusion.

Le résultat net consolidé additionne le résultat de l''acquéreur, celui de la cible, et les synergies nettes d''impôt attendues. Ici : 620 millions pour Sahel Industries, 180 millions pour Delta Emballages, et 45 millions de synergies fictives, soit un total de 845 millions.

Le BPA de Sahel Industries avant l''opération est 620 millions divisé par 3 000 000 actions, soit 206,7 FCFA. Le BPA après l''opération est 845 millions divisé par 3 960 000 actions, soit 213,4 FCFA. La variation est de plus 3,25 %. L''opération est donc relutive : elle augmente le bénéfice par action des actionnaires de Sahel Industries.

Visuel : graphique en barres comparant le BPA avant et après l''opération.

Attention, point crucial pour l''examen : une opération relutive comptablement n''est pas automatiquement créatrice de valeur économique. Si la prime de 20 % est trop généreuse par rapport aux synergies réellement atteignables, ou si le goodwill comptabilisé doit être déprécié plus tard parce que l''intégration échoue, la relution immédiate du BPA peut masquer une destruction de valeur à moyen terme. Un bon candidat signale toujours cette limite après avoir fait le calcul.

## 35:00 – 50:00 · Partie 3 : comprendre le montage LBO

Changeons de cas. Un LBO, rachat par effet de levier, consiste à racheter une entreprise principalement avec de la dette, logée dans une société holding créée pour l''opération. Pourquoi une holding et pas directement la cible ? Parce que cela isole le risque financier : si le remboursement de la dette se complique, c''est la holding qui est en difficulté, pas juridiquement la cible elle-même, même si en pratique les flux de la cible servent à rembourser la dette via les dividendes remontés.

Prenons Logis-Services, une PME fictive valorisée 1 000 millions de FCFA, financée par 650 millions de dette senior à un taux fictif de 9 % et 350 millions de fonds propres apportés par un fonds d''investissement. L''EBITDA initial est de 220 millions, avec une croissance annuelle de 5 %, et nous approchons le flux disponible avant service de la dette à 80 % de l''EBITDA, après un impôt simplifié.

Année après année, ce flux rembourse d''abord les intérêts sur le capital restant dû, puis le capital lui-même. En année 1 : EBITDA de 220, intérêts de 650 fois 9 % soit 58,5, flux disponible de 220 fois 0,8 moins 58,5 soit 117,5, qui rembourse intégralement ce montant de dette, ramenant le capital restant à 532,5 millions. Le mécanisme se répète chaque année avec un EBITDA croissant et des intérêts qui diminuent à mesure que la dette se réduit. Sur cinq ans, dans notre scénario, la dette de 650 millions est intégralement remboursée.

Visuel : tableau année par année avec quatre colonnes : EBITDA, intérêts, flux disponible, dette restante.

## 50:00 – 55:00 · Pause et quiz interactif

Trois questions pour vérifier votre compréhension avant de continuer.

- Question 1 : pourquoi la dette d''acquisition est-elle logée dans une holding plutôt que dans la cible directement ? Réponse : pour isoler le risque financier de l''opération dans une structure dédiée.
- Question 2 : qu''est-ce qu''une opération relutive sur le BPA ? Réponse : une opération où le bénéfice par action après l''opération est supérieur au bénéfice par action de l''acquéreur avant l''opération.
- Question 3 : d''où vient l''argent qui rembourse la dette d''un LBO ? Réponse : des flux de trésorerie disponibles de la cible, remontés à la holding sous forme de dividendes.

## 55:00 – 70:00 · Partie 4 : mesurer le rendement du fonds dans un LBO

Calculons maintenant le rendement obtenu par le fonds d''investissement. En année 5, l''EBITDA de Logis-Services atteint 267,4 millions grâce à la croissance de 5 % par an. Avec un multiple de sortie de 6,0, la valeur d''entreprise à la sortie est 267,4 fois 6,0, soit 1 604,5 millions. Comme la dette a été intégralement remboursée, la valeur des fonds propres à la sortie est également de 1 604,5 millions.

Le multiple de l''investissement pour le fonds est 1 604,5 divisé par l''apport initial de 350 millions, soit 4,58 fois. Le taux de rendement interne sur cinq ans est 4,58 élevé à la puissance un cinquième, moins un, soit environ 35,6 % par an.

Remarquez l''ampleur de l''effet de levier : la valeur d''entreprise n''a progressé que de 60 % en cinq ans, de 1 000 à 1 604,5 millions, mais les fonds propres du fonds, eux, ont été multipliés par 4,58 parce que la dette a servi de levier et a été intégralement remboursée par les flux de la cible elle-même. C''est tout le principe du LBO : faire payer la dette par l''entreprise rachetée, pas par l''investisseur.

Visuel : schéma en deux colonnes, évolution de la valeur d''entreprise à gauche, évolution des fonds propres du fonds à droite, avec les multiples associés.

Point d''attention pour l''examen : ce rendement élevé suppose une exécution sans accroc. Si l''EBITDA stagne ou recule, le flux disponible peut devenir insuffisant pour couvrir le service de la dette : c''est le risque principal d''un LBO, qu''il faut toujours mentionner en discussion.

## 70:00 – 80:00 · Cas pratique approfondi : les étapes d''une fusion-acquisition

Reprenons maintenant les grandes étapes d''une opération de fusion-acquisition dans l''ordre chronologique. D''abord la phase préparatoire : identification de la cible, signature d''une lettre d''intention, puis audit d''acquisition, qu''on appelle due diligence, portant sur les aspects financiers, juridiques, fiscaux et sociaux de la cible. Cet audit sert à vérifier que les chiffres annoncés sont fiables et à détecter des passifs cachés.

Ensuite la négociation : on fixe la valorisation avec les méthodes vues dans la leçon précédente, on structure l''offre, en numéraire, en actions ou en mixte, et on négocie des garanties d''actif et de passif qui protègent l''acquéreur si des passifs non révélés apparaissent après la signature.

Puis le financement de l''opération : autofinancement, dette, augmentation de capital, ou combinaison, en tenant compte de l''impact sur la structure financière et sur la notation de crédit de l''acquéreur si celui-ci est noté.

Enfin, l''intégration post-acquisition, souvent négligée dans les copies d''examen mais essentielle en pratique : c''est le moment où les synergies annoncées doivent se matérialiser réellement. C''est aussi la phase où le plus grand nombre d''opérations échouent, par sous-estimation des coûts d''intégration des systèmes d''information, des équipes et des cultures d''entreprise.

## 80:00 – 85:00 · Synthèse générale

Pour résumer : la parité d''échange traduit la prime de contrôle en nombre d''actions, et l''effet sur le BPA mesure l''impact comptable immédiat, mais ne garantit jamais la création de valeur réelle. Le LBO amplifie le rendement des fonds propres par un effet de levier, à condition que la rentabilité de la cible permette de rembourser la dette. Une opération de fusion-acquisition se joue autant dans la préparation et l''intégration que dans le calcul du prix.

## 85:00 – 90:00 · Évaluation finale

1. Comment calcule-t-on le prix offert par action dans une fusion par échange d''actions ? Réponse : cours de la cible multiplié par (1 plus la prime de contrôle).
2. Qu''est-ce que la parité d''échange ? Réponse : le nombre d''actions de l''acquéreur remises pour une action de la cible, égal au prix offert par action de la cible divisé par le cours de l''acquéreur.
3. Pourquoi une opération relutive sur le BPA n''est-elle pas automatiquement créatrice de valeur ? Réponse : parce que la relution comptable ne tient pas compte du risque réel transféré ni d''une prime ou de synergies potentiellement surestimées, qui peuvent conduire à une dépréciation future du goodwill.
4. Dans un LBO, pourquoi le rendement des fonds propres du fonds peut-il dépasser largement la progression de la valeur d''entreprise ? Réponse : parce que l''effet de levier de la dette, remboursée par les flux de la cible, amplifie le gain réalisé sur le capital réellement investi par le fonds.
5. Quelle est la phase la plus souvent sous-estimée dans une fusion-acquisition et pourquoi est-elle risquée ? Réponse : l''intégration post-acquisition, parce que les coûts d''intégration des systèmes, des équipes et des cultures d''entreprise sont fréquemment sous-estimés, ce qui peut empêcher la réalisation effective des synergies annoncées.', 'video', 90, false, 70
from public.courses c where c.slug = 'mas-fin-m1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Ingénierie financière et fusions-acquisitions');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Gestion de portefeuille et marchés financiers avancés', '## Fiche du cours vidéo

Durée : 1h30. Niveau : Master 1 Finance.
Objectifs : calculer le rendement et le risque d''un portefeuille à deux actifs, construire la frontière efficiente simplifiée, appliquer le CAPM et le ratio de Sharpe.
Matériel : tableau ou diaporama, calculatrice.
Prérequis : espérance et variance statistique, notion de corrélation.

## 00:00 – 05:00 · Introduction et enjeux

Bonjour. Cette séance porte sur la gestion de portefeuille et les marchés financiers avancés : comment un investisseur combine plusieurs actifs pour réduire son risque sans sacrifier excessivement son rendement, et comment le CAPM permet de juger si un actif est correctement valorisé par rapport à son risque. Nous allons travailler avec deux actions fictives, Sahel Ciments et Teranga Telecom, tout au long de la séance.

Visuel : diapositive de titre avec les deux actions et leurs caractéristiques.

## 05:00 – 20:00 · Partie 1 : rendement et risque d''un portefeuille à deux actifs

Le principe de la diversification est simple à énoncer mais puissant dans ses conséquences : combiner des actifs qui ne bougent pas parfaitement ensemble réduit le risque total du portefeuille sans réduire le rendement attendu dans la même proportion.

Le rendement attendu d''un portefeuille est simplement la moyenne pondérée des rendements attendus de chaque actif : E(rp) égale wA fois E(rA) plus wB fois E(rB). C''est intuitif, c''est additif.

La variance, en revanche, n''est pas simplement la moyenne pondérée des variances. Elle intègre un troisième terme, la covariance entre les deux actifs : sigma au carré du portefeuille égale wA au carré fois sigma A au carré, plus wB au carré fois sigma B au carré, plus deux fois wA fois wB fois la covariance entre A et B. Et la covariance elle-même s''obtient en multipliant la corrélation par les deux écart-types.

Prenons nos données : Sahel Ciments a un rendement attendu de 14 % et un écart-type de 22 %. Teranga Telecom a un rendement attendu de 9 % et un écart-type de 12 %. La corrélation entre les deux est de 0,30. La covariance est donc 0,30 fois 0,22 fois 0,12, soit 0,00792.

Testons un portefeuille à 60 % dans Sahel Ciments et 40 % dans Teranga Telecom. Le rendement attendu est 0,6 fois 14 % plus 0,4 fois 9 %, soit 12,0 %. La variance est 0,6 au carré fois 0,22 au carré, plus 0,4 au carré fois 0,12 au carré, plus deux fois 0,6 fois 0,4 fois 0,00792, soit 0,02354, ce qui donne un écart-type de 15,3 %. Comparez : investir seulement dans Sahel Ciments donnait 14 % de rendement pour 22 % de risque. Ici, on ne perd que 2 points de rendement mais on réduit le risque de près de 7 points. C''est le bénéfice concret de la diversification.

Visuel : graphique risque-rendement avec les deux actifs purs et le portefeuille 60-40 positionné entre eux, visiblement décalé vers la gauche.

## 20:00 – 35:00 · Partie 2 : la frontière efficiente et le portefeuille de variance minimale

Si on fait varier la pondération entre les deux actifs de 0 à 100 %, on obtient toute une courbe de combinaisons possibles de risque et de rendement : c''est la frontière efficiente, simplifiée ici au cas de deux actifs.

Il existe une pondération précise qui minimise la variance du portefeuille. On l''obtient par la formule : wA de variance minimale égale sigma B au carré moins la covariance, divisé par sigma A au carré plus sigma B au carré moins deux fois la covariance.

Pour nos deux actions : wA minimale égale 0,12 au carré moins 0,00792, divisé par 0,22 au carré plus 0,12 au carré moins deux fois 0,00792, ce qui donne 0,138. Donc wB égale 0,862. Mettez en pause et vérifiez ce calcul avec votre propre calculatrice.

Avec cette pondération, le rendement attendu est 9,69 % et l''écart-type tombe à 11,6 %, le minimum possible pour ce couple d''actifs. Comparons avec Teranga Telecom seul : 9,0 % de rendement pour 12,0 % de risque. Le portefeuille de variance minimale fait mieux sur les deux dimensions à la fois : plus de rendement, 9,69 % contre 9,0 %, et moins de risque, 11,6 % contre 12,0 %. C''est la démonstration la plus parlante de l''intérêt de la diversification.

Visuel : la frontière efficiente tracée point par point, avec le point de variance minimale repéré, et la zone sous ce point marquée comme inefficiente.

Un point essentiel pour l''examen : tout portefeuille situé sous le point de variance minimale sur cette courbe n''est jamais un choix rationnel, car on peut toujours obtenir, pour le même risque, un rendement supérieur ailleurs sur la frontière.

## 35:00 – 50:00 · Partie 3 : le CAPM approfondi

Changeons de perspective. Le CAPM ne cherche pas à construire un portefeuille optimal, il cherche à déterminer quel rendement un actif devrait offrir compte tenu de son risque non diversifiable, celui qui reste même après une diversification complète.

Ce risque non diversifiable se mesure par le bêta : bêta égale la covariance entre le rendement de l''actif et le rendement du marché, divisée par la variance du rendement du marché. Un bêta de 1 signifie un risque de marché moyen ; un bêta supérieur à 1 signifie un actif plus sensible que le marché, un bêta inférieur à 1 signifie un actif moins sensible.

Le rendement exigé par le CAPM est alors : E(r) égale le taux sans risque, plus bêta, fois la prime de risque du marché, c''est-à-dire la différence entre le rendement attendu du marché et le taux sans risque.

Pour Sahel Ciments, avec une covariance avec le marché de 0,028 et une variance du marché de 0,16 au carré soit 0,0256, le bêta est 0,028 divisé par 0,0256, soit 1,094. Avec un taux sans risque fictif de 5,5 % et un rendement de marché attendu de 12 %, le rendement exigé par le CAPM est 5,5 % plus 1,094 fois 6,5 %, soit 12,61 %.

Or le rendement attendu réellement estimé pour Sahel Ciments est de 14 %, supérieur au 12,61 % exigé par le CAPM. Cet écart positif, qu''on appelle alpha, suggère que l''action est sous-évaluée par rapport à son risque systématique : elle offre plus de rendement que ce que son bêta justifierait. Pour Teranga Telecom, avec un bêta de 0,55, le rendement exigé est 5,5 % plus 0,55 fois 6,5 %, soit 9,07 %, très proche du rendement attendu de 9 % : cette action est jugée correctement valorisée par le marché.

Visuel : droite de marché des titres tracée, avec Sahel Ciments positionnée au-dessus de la droite et Teranga Telecom pile sur la droite.

## 50:00 – 55:00 · Pause et quiz interactif

Trois questions de vérification.

- Question 1 : pourquoi une corrélation inférieure à 1 entre deux actifs crée-t-elle toujours un gain de diversification ? Réponse : parce que le terme de covariance dans la formule de la variance du portefeuille devient alors inférieur à ce qu''il serait avec une corrélation parfaite, réduisant la variance totale.
- Question 2 : que mesure le bêta dans le CAPM ? Réponse : la sensibilité du rendement d''un actif aux mouvements du marché, c''est-à-dire son risque non diversifiable.
- Question 3 : qu''est-ce qu''un alpha positif ? Réponse : un rendement attendu réel supérieur au rendement exigé par le CAPM, suggérant que l''actif est sous-évalué par rapport à son risque systématique.

## 55:00 – 70:00 · Partie 4 : le ratio de Sharpe et ses limites

Le ratio de Sharpe complète le CAPM en mesurant le rendement excédentaire par unité de risque total, pas seulement de risque systématique : Sharpe égale le rendement attendu moins le taux sans risque, divisé par l''écart-type total de l''actif.

Pour Sahel Ciments : 14 % moins 5,5 %, divisé par 22 %, soit 0,386. Pour Teranga Telecom : 9 % moins 5,5 %, divisé par 12 %, soit 0,292. Sahel Ciments rémunère donc mieux chaque unité de risque total supporté, malgré sa volatilité plus élevée en valeur absolue.

Pourquoi deux indicateurs différents, le bêta du CAPM et le ratio de Sharpe ? Parce qu''ils répondent à deux questions différentes. Le bêta et le CAPM s''adressent à un investisseur déjà diversifié, qui ne se préoccupe que du risque de marché résiduel. Le ratio de Sharpe s''adresse à un investisseur qui détient l''actif seul, ou qui veut comparer l''efficacité globale de gestionnaires de portefeuille, en tenant compte de tout le risque, diversifiable et non diversifiable.

Visuel : tableau récapitulatif des deux indicateurs pour les deux actions.

## 70:00 – 80:00 · Cas pratique approfondi : construire une recommandation

Imaginons qu''un conseiller en gestion de patrimoine doive recommander une allocation entre Sahel Ciments et Teranga Telecom à un client qui souhaite limiter son risque sans trop sacrifier le rendement. Avec les données vues, trois options raisonnables : le portefeuille de variance minimale, 13,8 % et 86,2 %, pour un client très averse au risque ; le portefeuille 60-40 pour un client qui accepte un peu plus de risque contre un peu plus de rendement ; ou une pondération encore plus orientée vers Sahel Ciments si le client a identifié, comme nous l''avons fait avec le CAPM, que cette action est sous-évaluée et offre un alpha positif.

La recommandation doit toujours combiner l''analyse de diversification, qui dépend de la corrélation et des écart-types, et l''analyse de valorisation individuelle, qui dépend du CAPM et de l''alpha. Un bon candidat de Master 1 sait mobiliser les deux dans une même conclusion argumentée, en rappelant que ce sont des estimations fondées sur des paramètres fictifs dans cet exercice, qui devraient être actualisées avec des données de marché réelles dans un contexte professionnel.

## 80:00 – 85:00 · Synthèse générale

Pour conclure : la diversification réduit le risque grâce à une corrélation imparfaite entre actifs, la frontière efficiente identifie les meilleures combinaisons possibles, le CAPM évalue si le rendement d''un actif est cohérent avec son risque systématique, et le ratio de Sharpe mesure l''efficacité globale du couple rendement-risque. Ces quatre outils se complètent plutôt qu''ils ne se substituent les uns aux autres.

## 85:00 – 90:00 · Évaluation finale

1. Comment calcule-t-on la covariance entre deux actifs à partir de leur corrélation ? Réponse : covariance égale corrélation multipliée par l''écart-type du premier actif et par l''écart-type du second actif.
2. Qu''obtient-on en annulant la dérivée de la variance du portefeuille par rapport à la pondération d''un actif ? Réponse : la pondération du portefeuille de variance minimale.
3. Quelle est la formule du rendement exigé par le CAPM ? Réponse : taux sans risque plus bêta multiplié par la prime de risque du marché, c''est-à-dire la différence entre le rendement attendu du marché et le taux sans risque.
4. Un actif se situe au-dessus de la droite de marché des titres : que peut-on en conclure ? Réponse : son rendement attendu réel dépasse le rendement exigé par son risque systématique, il est jugé sous-évalué, avec un alpha positif.
5. Pourquoi le ratio de Sharpe peut-il classer deux actifs différemment du bêta du CAPM ? Réponse : parce que le ratio de Sharpe tient compte du risque total, diversifiable et non diversifiable, alors que le bêta ne capture que le risque systématique non diversifiable.', 'video', 90, false, 80
from public.courses c where c.slug = 'mas-fin-m1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Gestion de portefeuille et marchés financiers avancés');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Atelier cas pratique transversal - évaluation et montage d''une opération de croissance externe', '## Fiche du cours vidéo

Durée : 1h30. Niveau : Master 1 Finance.
Objectifs : résoudre un cas d''entreprise transversal mobilisant successivement l''évaluation, l''ingénierie financière et la gestion de portefeuille, comme dans un dossier réel de banque d''affaires.
Matériel : tableau ou diaporama, calculatrice financière ou tableur.
Prérequis : les trois leçons et vidéos précédentes de ce cours.

## 00:00 – 05:00 · Introduction et enjeux

Bonjour. Cette dernière séance vidéo est un atelier de synthèse : nous allons suivre un seul dossier fictif de bout en bout, de l''évaluation d''une cible jusqu''à l''impact de l''opération pour un investisseur minoritaire, en mobilisant tout ce que vous avez appris dans ce cours de Master 1. C''est exactement le type d''exercice filé que vous pouvez rencontrer en examen final ou en entretien de stage. Prenez une feuille, nous allons construire le dossier ensemble.

Visuel : diapositive de titre présentant le dossier « Casamance Agro-Industries rachète Niayes Fruits ».

## 05:00 – 20:00 · Partie 1 : poser le dossier et évaluer la cible

Casamance Agro-Industries, CAI, entreprise fictive de Ziguinchor, veut racheter sa concurrente Niayes Fruits. CAI cote 2 500 FCFA pour 4 000 000 d''actions, avec un résultat net de 980 millions. Niayes Fruits cote 1 600 FCFA pour 1 200 000 actions, avec un résultat net de 240 millions, un EBITDA de 420 millions, une dette nette de 280 millions, et des flux de trésorerie disponibles prévisionnels sur cinq ans de 160, 175, 188, 198 et 206 millions de FCFA, avec une croissance à l''infini de 2 % et un CMPC de 11 %.

Commençons par le DCF de Niayes Fruits. Actualisons chaque flux à 11 % : 160 divisé par 1,11 donne 144,1 ; 175 divisé par 1,11 au carré donne 142,0 ; 188 divisé par 1,11 au cube donne 137,5 ; 198 divisé par 1,11 à la puissance 4 donne 130,5 ; 206 divisé par 1,11 à la puissance 5 donne 122,2. La somme est 676,3 millions. La valeur terminale : 206 fois 1,02 divisé par (0,11 moins 0,02), soit 2 334,2 millions, actualisée sur cinq ans à 11 %, soit 1 385,6 millions. La valeur d''entreprise totale est 676,3 plus 1 385,6, soit 2 061,9 millions. En retranchant la dette nette de 280 millions, la valeur des capitaux propres est 1 781,9 millions de FCFA.

Comparons avec un multiple de comparables : EBITDA de 420 millions fois un multiple sectoriel fictif de 6,5, soit une valeur d''entreprise de 2 730,0 millions, et une valeur des capitaux propres de 2 450,0 millions après déduction de la dette. L''écart avec le DCF est important, environ 37 %. Mettez en pause et réfléchissez : que feriez-vous de cet écart dans un vrai rapport d''évaluation ?

Visuel : les deux résultats, 1 781,9 et 2 450,0 millions, affichés côte à côte avec l''écart en pourcentage.

Réponse attendue : on ne choisit pas arbitrairement l''un ou l''autre, on documente les deux, on vérifie les hypothèses de chaque méthode, par exemple en demandant si les flux prévisionnels sont trop prudents ou si le multiple sectoriel retenu est trop généreux, et on propose une fourchette, ici entre 1 781,9 et 2 450,0 millions de FCFA, en expliquant que l''écart important appelle une vérification approfondie avant de fixer un prix final.

## 20:00 – 35:00 · Partie 2 : structurer l''offre et mesurer l''effet sur le BPA

CAI propose une prime de contrôle de 20 % sur le cours de Niayes Fruits et un paiement intégral en actions. Le prix offert par action est 1 600 fois 1,20, soit 1 920 FCFA. La parité d''échange est 1 920 divisé par 2 500, soit 0,768 action CAI pour une action Niayes Fruits.

Le nombre de nouvelles actions émises est 1 200 000 fois 0,768, soit 921 600. Le capital de CAI passe de 4 000 000 à 4 921 600 actions. Pour mesurer l''effet sur le BPA, on utilise ici le résultat net comptable de la cible, pas sa valeur d''évaluation : résultat consolidé égale 980 plus 240 plus 20 millions de synergies nettes d''impôt, soit 1 240 millions.

Le BPA de CAI avant l''opération est 980 divisé par 4 000 000, soit 245 FCFA. Le BPA après l''opération est 1 240 divisé par 4 921 600, soit environ 251,9 FCFA. La variation est d''environ plus 2,8 %, l''opération est relutive.

Visuel : tableau de synthèse du montage, parité, nouvelles actions, BPA avant et après.

Discussion essentielle : cette relution de 2,8 % repose sur des synergies de seulement 20 millions. Si ces synergies ne se matérialisent pas, par exemple parce que l''intégration des deux réseaux de distribution échoue partiellement, le résultat consolidé retombe à 1 220 millions, et le BPA après l''opération devient 1 220 divisé par 4 921 600, soit environ 247,9 FCFA : l''opération resterait légèrement relutive mais avec une marge de sécurité beaucoup plus faible. C''est ce type d''analyse de sensibilité qui distingue une copie de Master 1 d''une simple application de formule.

## 35:00 – 50:00 · Partie 3 : l''impact pour un investisseur minoritaire

Un fonds d''investissement régional envisage de prendre une participation minoritaire dans CAI après l''opération. Il doit juger si le rendement attendu de l''action CAI est cohérent avec son risque. Le bêta estimé de CAI est de 1,15, le taux sans risque fictif de 6 %, et le rendement attendu du marché régional de 13 %.

Le rendement exigé par le CAPM est 6 % plus 1,15 fois (13 % moins 6 %), soit 6 % plus 1,15 fois 7 %, soit 14,05 %. Si le rendement attendu réellement anticipé pour l''action CAI après l''opération est de 15 %, alors CAI se situe au-dessus de la droite de marché des titres : le rendement attendu dépasse le rendement exigé par le risque systématique, d''environ 0,95 point. L''action apparaît donc, sur cette base, légèrement sous-évaluée.

Visuel : droite de marché des titres avec CAI positionnée juste au-dessus.

Mais attention, c''est le moment de faire preuve d''esprit critique devant un jury : ce bêta de 1,15 a-t-il été estimé avant ou après l''annonce de l''opération ? Une fusion-acquisition change souvent le profil de risque de l''acquéreur, notamment si elle est financée par de la dette supplémentaire, ce qui peut augmenter le bêta réel après l''opération par rapport au bêta historique utilisé ici. Un bon candidat signale cette limite plutôt que d''appliquer la formule sans recul.

## 50:00 – 55:00 · Pause et quiz interactif

Trois questions pour faire le point avant la conclusion du dossier.

- Question 1 : pourquoi documenter deux méthodes d''évaluation même quand elles divergent fortement ? Réponse : parce que chaque écart révèle une information sur les hypothèses en désaccord, et qu''une fourchette argumentée est plus honnête et plus utile en négociation qu''un chiffre unique non questionné.
- Question 2 : qu''est-ce qui pourrait transformer une opération relutive en opération dilutive si les hypothèses se dégradent ? Réponse : des synergies qui ne se matérialisent pas, ou une prime de contrôle qui s''avère excessive par rapport à la valeur réellement créée.
- Question 3 : pourquoi le bêta utilisé par un investisseur minoritaire doit-il être examiné avec prudence après une fusion-acquisition ? Réponse : parce que l''opération peut changer le profil de risque réel de l''acquéreur, notamment via un endettement supplémentaire, rendant le bêta historique moins représentatif.

## 55:00 – 70:00 · Partie 4 : rédiger la recommandation finale du dossier

Nous arrivons à la dernière étape : rédiger une recommandation complète, comme le ferait un analyste senior pour son comité d''investissement. La structure attendue comporte quatre blocs. D''abord, la valeur de la cible, avec la fourchette obtenue et les hypothèses retenues. Ensuite, les conditions de l''opération, la parité d''échange et son effet sur le BPA, avec un test de sensibilité sur les synergies. Puis, l''impact pour un investisseur minoritaire, avec le positionnement par rapport au CAPM et ses limites. Enfin, une conclusion qui tranche : faut-il recommander l''opération, la recommander sous conditions, ou la déconseiller, et pourquoi.

Pour notre dossier, une conclusion possible serait la suivante : l''opération est raisonnable au prix proposé, dans la mesure où la prime de 20 % reste dans la fourchette de valeur obtenue par DCF et par multiple, où l''effet relutif sur le BPA reste positif même en cas de sous-réalisation partielle des synergies, mais où il convient de surveiller l''évolution du bêta et de la structure financière de CAI après l''opération avant d''investir en tant que minoritaire.

Visuel : schéma final en quatre blocs résumant la structure de la recommandation.

## 70:00 – 80:00 · Entraînement : variante chiffrée

Variante pour vous entraîner seul après la séance : si la prime de contrôle négociée passe de 20 % à 30 %, recalculez le prix offert par action, la parité d''échange, le nombre d''actions émises et le nouveau BPA de CAI après l''opération, toutes choses égales par ailleurs. Vous devez retrouver un prix offert de 2 080 FCFA, une parité de 0,832, 998 400 nouvelles actions, un capital total de 4 998 400 actions, et un BPA après l''opération d''environ 248,1 FCFA, soit une relution plus faible qu''avec la prime de 20 %. Cet exercice illustre qu''une prime plus élevée dilue davantage l''effet relutif, même sans changer les synergies attendues.

## 80:00 – 85:00 · Synthèse générale du cours

Ce cours de Master 1 vous a donné trois blocs d''outils qui se combinent dans la pratique : évaluer une entreprise par plusieurs méthodes convergentes, structurer et chiffrer une opération de fusion-acquisition ou un montage par effet de levier, et situer le risque et le rendement d''un investissement dans la logique du portefeuille et du CAPM. La compétence la plus recherchée par les recruteurs et les jurys n''est pas de savoir appliquer une formule isolée, mais de savoir enchaîner ces blocs dans un même dossier et d''en tirer une recommandation argumentée, avec ses limites explicitement posées.

## 85:00 – 90:00 · Évaluation finale

1. Pourquoi documenter une fourchette de valeur plutôt qu''un chiffre unique dans un dossier de fusion-acquisition ? Réponse : parce que les méthodes d''évaluation reposent sur des hypothèses différentes qui peuvent diverger fortement, et qu''une fourchette reflète honnêtement l''incertitude tout en facilitant la négociation.
2. Dans le dossier CAI-Niayes Fruits, l''opération est-elle relutive ou dilutive sur le BPA, et de combien ? Réponse : relutive, d''environ plus 2,8 %.
3. Pourquoi une prime de contrôle plus élevée réduit-elle, toutes choses égales, l''effet relutif d''une fusion payée en actions ? Réponse : parce qu''elle augmente le nombre d''actions nouvelles émises pour une même cible, ce qui dilue davantage le résultat consolidé entre un plus grand nombre d''actions.
4. Pourquoi faut-il être prudent en appliquant un bêta historique à une action juste après une fusion-acquisition ? Réponse : parce que l''opération peut modifier le profil de risque réel de l''entreprise, notamment par un endettement supplémentaire, rendant le bêta historique moins représentatif du risque futur.
5. Quels sont les quatre blocs attendus dans une recommandation finale de dossier de fusion-acquisition ? Réponse : la valeur de la cible avec ses hypothèses, les conditions de l''opération et leur effet sur le BPA, l''impact pour un investisseur minoritaire via le CAPM, et une conclusion argumentée qui tranche sur l''opportunité de l''opération.', 'video', 90, false, 90
from public.courses c where c.slug = 'mas-fin-m1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Atelier cas pratique transversal - évaluation et montage d''une opération de croissance externe');

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
