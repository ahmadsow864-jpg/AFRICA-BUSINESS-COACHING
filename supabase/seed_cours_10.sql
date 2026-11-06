-- Fichier généré par tools/generate-seed.mjs — ne pas modifier à la main.
-- Cours (partie 10/20). À exécuter après seed.sql.

-- Cours : Licence 2 Comptabilité : réussir ses examens
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'lic-compta-l2', (select id from public.levels where name = 'Licence 2'), null, 'Comptabilité', 'Licence 2 Comptabilité : réussir ses examens', 'Ce cours prépare les étudiants de deuxième année de Licence en comptabilité, finance ou gestion (Sénégal, espace UEMOA/OHADA) aux partiels et examens semestriels. Il couvre trois matières clés : la comptabilité générale 2 et les travaux d''inventaire selon le SYSCOHADA révisé (amortissements linéaire et dégressif, dépréciations, provisions, régularisations), la comptabilité des sociétés (constitution, affectation du résultat, augmentation de capital) et la fiscalité des entreprises (mécanismes de l''impôt sur les sociétés et de la TVA, avec des taux fictifs). Fiches, exercices corrigés aux écritures vérifiées, sujet d''entraînement et trois cours vidéo de 1h30. Prérequis : comptabilité générale de Licence 1 (partie double, achats, ventes, TVA).', true, 342
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Réussir ses examens de Licence 2 en Comptabilité', '## Objectifs de la leçon

- Situer la Licence 2 dans le parcours LMD et comprendre ce qui change par rapport à la Licence 1.
- Identifier les matières clés de l''année et les attentes des correcteurs.
- Maîtriser la méthode de chaque type d''épreuve.
- Organiser six semaines de révision efficaces.

## 1. La Licence 2 dans le système LMD

La Licence 2 correspond aux semestres 3 et 4 de la Licence. Comme en première année, les enseignements sont organisés en unités d''enseignement (UE) dotées de crédits, avec en général 60 crédits pour l''année ; mais la répartition des crédits, les coefficients, la part du contrôle continu et les règles de compensation dépendent de votre établissement. Le règlement des examens et le guide de l''étudiant de votre université ou école font foi : lisez-les en début d''année.

Ce qui change : on ne vous demande plus seulement d''enregistrer des opérations courantes, mais de raisonner sur la clôture de l''exercice, sur la vie juridique des sociétés et sur les conséquences fiscales des opérations. Les sujets deviennent plus longs, plus liés entre eux, et un même cas pratique peut mêler comptabilité, droit et fiscalité.

## 2. Les matières clés de l''année

- Comptabilité générale 2 et travaux d''inventaire : amortissements linéaire et dégressif, dépréciations des stocks et des créances, provisions pour risques et charges, régularisations des charges et des produits, variation des stocks.
- Comptabilité des sociétés : constitution (apports en numéraire et en nature, libération du capital), affectation du résultat, augmentation de capital et droit préférentiel de souscription.
- Fiscalité des entreprises : mécanisme de l''impôt sur les sociétés (du résultat comptable au résultat fiscal), acomptes, TVA (fait générateur, exigibilité, droit à déduction, prorata).

D''autres matières accompagnent l''année (comptabilité analytique, droit des affaires approfondi, statistiques, informatique de gestion, anglais) et sont traitées dans d''autres cours. Les mathématiques financières et l''introduction au droit OHADA, vues en Licence 1, sont supposées acquises ; les états financiers, la consolidation et l''audit seront étudiés en Licence 3.

## 3. Les attentes des correcteurs

En travaux d''inventaire, le correcteur attend un calcul justifié (base, taux, durée, prorata), l''écriture correcte et, souvent, l''impact sur le résultat. En comptabilité des sociétés, il attend que vous appliquiez les règles juridiques (réserve légale, libération du capital) avant de comptabiliser. En fiscalité, il attend un tableau de passage clair du résultat comptable au résultat fiscal, avec chaque réintégration et chaque déduction justifiée en une phrase. Rappelez toujours, quand vous utilisez un taux d''impôt donné par l''énoncé, qu''il s''agit de l''hypothèse du sujet.

## 4. Les types d''épreuves et la méthode

- Cas pratique d''inventaire : une liste d''informations au 31 décembre. Pour chacune : calcul, écriture, impact sur le résultat. Terminez par un récapitulatif.
- Exercice de comptabilité des sociétés : commencez par le calcul juridique (bénéfice distribuable, nombre d''actions nouvelles, valeur du droit), puis passez l''écriture.
- Exercice de fiscalité : tableau de passage, impôt dû, acomptes et solde, écritures.
- QCM : attention aux pièges de prorata temporis, de plafond de réserve légale et de base de TVA.
- Question de réflexion : par exemple, « pourquoi la prudence conduit-elle à déprécier mais pas à réévaluer ? ». Réponse structurée en deux ou trois idées.

## 5. Organiser son temps

Un sujet de Licence 2 de trois heures comporte souvent un grand cas d''inventaire. Ne vous noyez pas dans un calcul : si un élément vous bloque, posez une hypothèse explicite et continuez. Gardez un tableau récapitulatif des impacts sur le résultat : il vous permet de vérifier la cohérence de vos écritures.

## 6. Plan de révision sur six semaines

- Semaine 1 : amortissements linéaire et dégressif, prorata temporis, tableaux d''amortissement, cessions simples.
- Semaine 2 : dépréciations des stocks et des créances, provisions pour risques et charges, reprises.
- Semaine 3 : régularisations (charges et produits constatés d''avance, charges à payer, produits à recevoir), variation des stocks ; un grand cas d''inventaire.
- Semaine 4 : constitution des sociétés, affectation du résultat, augmentation de capital et droit préférentiel de souscription.
- Semaine 5 : impôt sur les sociétés (tableau de passage, acomptes), TVA (déduction, prorata, liquidation).
- Semaine 6 : deux sujets complets en temps limité, correction, fiches de synthèse.

## Points clés

- Le règlement des examens de votre établissement fixe crédits, coefficients et compensation.
- Trois matières clés : inventaire, sociétés, fiscalité.
- Toujours : calcul justifié, écriture équilibrée, impact sur le résultat.
- Les taux fiscaux des sujets sont des hypothèses : ne les apprenez pas comme des taux officiels.

## Exercices pratiques

- Exercice 1 : citez trois différences d''attentes entre la Licence 1 et la Licence 2 en comptabilité.
- Exercice 2 : quelles sont les trois étapes à rédiger pour chaque information d''un cas d''inventaire ?
- Exercice 3 : un sujet de 3 heures comprend un cas d''inventaire sur 10 points, un exercice de sociétés sur 5 points et un exercice de fiscalité sur 5 points. Répartissez 165 minutes utiles.
- Exercice 4 : pourquoi faut-il faire le calcul juridique avant l''écriture en comptabilité des sociétés ? Donnez un exemple.
- Exercice 5 (cas pratique) : Ousmane a raté le partiel du semestre 3 à cause des travaux d''inventaire. Il lui reste quatre semaines avant le rattrapage. Proposez-lui un plan.

## Corrigé

- Exercice 1 : en Licence 2, on raisonne sur la clôture de l''exercice (inventaire), on applique des règles juridiques (sociétés) et on mesure les conséquences fiscales ; les sujets sont plus longs et transversaux.
- Exercice 2 : le calcul justifié, l''écriture équilibrée, l''impact sur le résultat.
- Exercice 3 : 165 minutes pour 20 points, soit 8,25 minutes par point : inventaire 82,5 minutes (environ 82), sociétés 41,25 minutes (environ 41), fiscalité 41,25 minutes (environ 42) ; total 165.
- Exercice 4 : l''écriture traduit une décision encadrée par le droit. Exemple : la dotation à la réserve légale dépend du plafond fixé par les textes ; si la réserve a déjà atteint ce plafond, aucune dotation n''est due, et l''écriture change.
- Exercice 5 : semaine 1 : amortissements (linéaire, dégressif, prorata) avec dix exercices courts ; semaine 2 : dépréciations, provisions et régularisations ; semaine 3 : deux grands cas d''inventaire corrigés, avec tableau des impacts ; semaine 4 : un sujet complet en temps limité et relecture des fiches. Chaque jour, refaire sans aide un exercice déjà corrigé.', 'texte', 45, true, 10
from public.courses c where c.slug = 'lic-compta-l2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Réussir ses examens de Licence 2 en Comptabilité');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Comptabilité générale 2 et travaux d''inventaire : l''essentiel pour l''examen', '## Objectifs de la leçon

- Amortissements linéaire et dégressif ; dépréciations ; provisions.
- Régularisations et variation des stocks.

Numéros de comptes : vérifier l''intitulé dans le plan de comptes officiel du SYSCOHADA révisé.

## 1. Les amortissements

À la clôture, prudence et spécialisation des exercices imposent de constater l''usure, les pertes et les risques.

L''amortissement répartit le coût d''une immobilisation sur sa durée d''utilité (base : coût d''acquisition, moins une éventuelle valeur résiduelle significative ; approche par composants si les éléments ont des durées différentes).

Linéaire : annuité = base × (100 % ÷ durée), avec prorata temporis à partir de la mise en service. Exemple : Ndar Logistique acquiert un camion de 18 000 000 HT le 1er avril N, durée 5 ans, taux 20 %. Dotation N = 18 000 000 × 20 % × 9/12 = 2 700 000 ; années pleines : 3 600 000.

- Débit 6813 Dotations aux amortissements des immobilisations corporelles : 2 700 000
- Crédit 2845 Amortissements du matériel de transport : 2 700 000
- Total débit = total crédit = 2 700 000

Dégressif : taux dégressif = taux linéaire × coefficient. Les coefficients relèvent des règles fiscales nationales : ici, coefficient 2 fictif pour l''exemple. Le taux s''applique à la valeur nette comptable (VNC) ; dès que le linéaire sur la durée restante devient supérieur, on bascule. Exemple : machine de 12 000 000 acquise le 1er janvier N, 5 ans, taux 20 % × 2 = 40 % :

- Année 1 : VNC 12 000 000 ; dégressif 4 800 000 ; linéaire restant 2 400 000 ; retenu 4 800 000
- Année 2 : VNC 7 200 000 ; dégressif 2 880 000 ; linéaire restant 1 800 000 ; retenu 2 880 000
- Année 3 : VNC 4 320 000 ; dégressif 1 728 000 ; linéaire restant 1 440 000 ; retenu 1 728 000
- Année 4 : VNC 2 592 000 ; dégressif 1 036 800 ; linéaire restant 1 296 000 ; retenu 1 296 000
- Année 5 : VNC 1 296 000 ; dégressif 518 400 ; linéaire restant 1 296 000 ; retenu 1 296 000

Total : 12 000 000. Schéma décrit : courbe décroissante, puis palier après la bascule.

## 2. Les dépréciations

Créances douteuses : on isole la créance au compte 416, puis on déprécie le montant hors taxes de la perte probable (la TVA sera récupérée en cas de perte définitive, selon les règles fiscales). Exemple : le client Ets Diop doit 2 400 000 TTC (HT 2 000 000, TVA 20 % fictif) ; perte probable 40 %. Dépréciation = 2 000 000 × 40 % = 800 000.

- Débit 416 Créances clients litigieuses ou douteuses : 2 400 000
- Crédit 411 Clients : 2 400 000
- Total débit = total crédit = 2 400 000

- Débit 659 Charges pour dépréciations et provisions à court terme d''exploitation (vérifier la subdivision) : 800 000
- Crédit 491 Dépréciations des comptes clients : 800 000
- Total débit = total crédit = 800 000

Stocks : si la valeur actuelle est inférieure au coût, on déprécie (compte 39) ; ensuite, on ajuste par dotation ou reprise.

## 3. Les provisions pour risques et charges

Une provision est un passif d''échéance ou de montant incertain (litige, garantie). Exemple : un ancien salarié réclame 1 500 000 ; la condamnation est probable.

- Débit 691 Dotations aux provisions et aux dépréciations d''exploitation (vérifier la subdivision) : 1 500 000
- Crédit 191 Provisions pour litiges : 1 500 000
- Total débit = total crédit = 1 500 000

Si le risque diminue ou disparaît, on reprend la provision : débit 191, crédit 791 Reprises de provisions et dépréciations d''exploitation.

## 4. Les régularisations

- Charge constatée d''avance (476) : loyer de 3 600 000 payé le 1er octobre N pour 12 mois. Part de N+1 : 9 mois, soit 2 700 000.

- Débit 476 Charges constatées d''avance : 2 700 000
- Crédit 622 Locations : 2 700 000
- Total débit = total crédit = 2 700 000

- Produit constaté d''avance (477) : contrat de maintenance de 6 mois encaissé le 1er novembre N pour 1 200 000 ; part de N+1 : 4 mois, soit 800 000 (débit 706, crédit 477).
- Charge à payer : facture d''électricité de décembre non parvenue, 450 000 (TVA ignorée pour simplifier) : débit 605, crédit 408 Fournisseurs, factures non parvenues.
- Produit à recevoir : travaux réalisés non facturés, 600 000 HT : débit 418 Clients, produits à recevoir, crédit 706.

Ces écritures sont contrepassées au début de l''exercice suivant.

## 5. La variation des stocks

En inventaire intermittent, on annule le stock initial et on constate le stock final. Stock initial 3 000 000, final 3 800 000 :

- Débit 6031 Variation des stocks de marchandises : 3 000 000
- Crédit 31 Marchandises : 3 000 000
- Total débit = total crédit = 3 000 000

- Débit 31 Marchandises : 3 800 000
- Crédit 6031 Variation des stocks de marchandises : 3 800 000
- Total débit = total crédit = 3 800 000

Le solde créditeur de 800 000 du 6031 diminue les charges : le coût d''achat des marchandises vendues = achats − 800 000.

## Exercices pratiques

- Exercice 1 : matériel de 6 000 000 acquis le 1er juillet N, linéaire sur 4 ans. Dotation N et VNC au 31/12/N.
- Exercice 2 : machine de 8 000 000 acquise le 1er janvier N, 4 ans, dégressif avec coefficient fictif 1,5. Tableau.
- Exercice 3 : un client doit 3 600 000 TTC (TVA 20 % fictif) ; perte probable 30 %. Calculez la dépréciation.
- Exercice 4 : une prime d''assurance annuelle de 1 800 000 est payée le 1er septembre N. Régularisation au 31/12/N.
- Exercice 5 : une provision pour litige de 2 000 000 a été constituée en N ; fin N+1, le risque est estimé à 1 200 000. Écriture.
- Exercice 6 (cas pratique) : Ndar Matériaux SARL, 31/12/N : camion de 24 000 000 acquis le 1er octobre N, linéaire 5 ans ; stock initial 5 000 000, stock final 4 200 000, déprécié de 300 000 ; client Sow douteux, 1 200 000 TTC, perte probable 50 % ; loyer de 1 500 000 payé le 1er décembre N pour 3 mois. Calculs et impact global sur le résultat.

## Corrigé

- Exercice 1 : 6 000 000 × 25 % × 6/12 = 750 000 ; VNC = 5 250 000.

Exercice 2 : taux 25 % × 1,5 = 37,5 %.

- Année 1 : VNC 8 000 000 ; dégressif 3 000 000 ; linéaire restant 2 000 000 ; retenu 3 000 000
- Année 2 : VNC 5 000 000 ; dégressif 1 875 000 ; linéaire restant 1 666 667 ; retenu 1 875 000
- Année 3 : VNC 3 125 000 ; dégressif 1 171 875 ; linéaire restant 1 562 500 ; retenu 1 562 500
- Année 4 : VNC 1 562 500 ; dégressif 585 938 ; linéaire restant 1 562 500 ; retenu 1 562 500

- Exercice 3 : HT = 3 000 000 ; dépréciation = 900 000 (après reclassement en 416 de 3 600 000).
- Exercice 4 : 8 mois concernent N+1 : 1 800 000 × 8/12 = 1 200 000 ; débit 476, crédit 625 Primes d''assurance.

- Exercice 5 : reprise de 800 000 : débit 191, crédit 791 (vérifier la subdivision).

Exercice 6 : amortissement 24 000 000 × 20 % × 3/12 = 1 200 000 (charge) ; variation des stocks 5 000 000 − 4 200 000 = 800 000 (charge) ; dépréciation du stock 300 000 (charge) ; créance : HT 1 000 000 × 50 % = 500 000 (charge) ; loyer : 2 mois sur 3 concernent N+1, soit 1 000 000 de charge constatée d''avance (diminution de charge). Impact : −1 200 000 − 800 000 − 300 000 − 500 000 + 1 000 000 = -1 800 000, soit une diminution du résultat de 1 800 000.', 'texte', 60, false, 20
from public.courses c where c.slug = 'lic-compta-l2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Comptabilité générale 2 et travaux d''inventaire : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Comptabilité des sociétés : l''essentiel pour l''examen', '## Objectifs de la leçon

- Constitution, affectation du résultat, augmentation de capital et DPS.

Numéros de comptes : vérifier l''intitulé dans le plan de comptes officiel du SYSCOHADA révisé. Les règles juridiques citées (libération du capital, réserve légale) proviennent de l''Acte uniforme relatif au droit des sociétés commerciales et du GIE : vérifiez-les dans la version officielle en vigueur.

## 1. La constitution

Les associés promettent des apports (souscription), puis les réalisent (libération). Apports en numéraire : sommes d''argent ; apports en nature : biens (immeuble, matériel, fonds de commerce), évalués, dans les cas prévus par les textes, par un commissaire aux apports. Dans la SARL, les parts sociales doivent être intégralement libérées à la souscription. Dans la SA, les actions de numéraire doivent être libérées d''au moins un quart à la souscription, le solde devant être appelé dans un délai fixé par l''Acte uniforme ; les actions d''apport en nature sont intégralement libérées.

Comptes : 1011, 1012, 1013 (capital selon son stade), 109 (capital souscrit non appelé), 4611, 4612, 4613 (apporteurs). Les manuels présentent des variantes du schéma ci-dessous.

Exemple : Baobab Industries SA, capital 40 000 000 (4 000 actions de 10 000). Un associé apporte un bâtiment évalué 16 000 000 (1 600 actions) ; les 2 400 actions de numéraire (24 000 000) sont libérées de moitié à la souscription.

- Débit 4611 Apporteurs, apports en nature : 16 000 000
- Débit 4612 Apporteurs, apports en numéraire : 12 000 000
- Débit 109 Apporteurs, capital souscrit non appelé : 12 000 000
- Crédit 1011 Capital souscrit, non appelé : 12 000 000
- Crédit 1012 Capital souscrit, appelé, non versé : 28 000 000
- Total débit = total crédit = 40 000 000

- Débit 231 Bâtiments (vérifier la subdivision) : 16 000 000
- Débit 521 Banques : 12 000 000
- Crédit 4611 Apporteurs, apports en nature : 16 000 000
- Crédit 4612 Apporteurs, apports en numéraire : 12 000 000
- Total débit = total crédit = 28 000 000

- Débit 1012 Capital souscrit, appelé, non versé : 28 000 000
- Crédit 1013 Capital souscrit, appelé, versé, non amorti : 28 000 000
- Total débit = total crédit = 28 000 000

En pratique, les fonds restent bloqués jusqu''à l''immatriculation ; on simplifie avec le 521.

## 2. L''affectation du résultat

L''assemblée qui approuve les comptes décide de l''affectation. Ordre : apurer un report à nouveau débiteur ; doter la réserve légale (l''Acte uniforme prévoit une dotation d''un dixième du bénéfice, diminué le cas échéant des pertes antérieures, jusqu''à ce que la réserve atteigne le cinquième du capital) ; doter les réserves statutaires ; puis répartir le bénéfice distribuable (bénéfice − pertes antérieures − réserves obligatoires + report à nouveau créditeur) entre dividendes, réserves facultatives et nouveau report.

Exemple : bénéfice 18 000 000, report à nouveau créditeur 500 000, capital 40 000 000, réserve légale existante 2 000 000 (plafond 8 000 000 non atteint), réserve statutaire 5 % du bénéfice. Réserve légale 1 800 000 ; réserve statutaire 900 000 ; bénéfice distribuable 15 800 000 ; dividende de 3 500 par action, soit 14 000 000 ; réserves facultatives 1 500 000 ; nouveau report à nouveau 300 000.

- Débit 131 Résultat net : bénéfice : 18 000 000
- Débit 121 Report à nouveau créditeur : 500 000
- Crédit 111 Réserve légale : 1 800 000
- Crédit 112 Réserves statutaires : 900 000
- Crédit 118 Autres réserves : 1 500 000
- Crédit 465 Associés, dividendes à payer : 14 000 000
- Crédit 121 Report à nouveau créditeur : 300 000
- Total débit = total crédit = 18 500 000

Les dividendes peuvent supporter une retenue à la source selon la législation fiscale : non traitée ici.

## 3. L''augmentation de capital

En numéraire : les actions nouvelles sont émises à un prix d''émission souvent supérieur au nominal ; l''excédent est une prime d''émission (1051). Pour protéger les anciens actionnaires, la loi leur réserve un droit préférentiel de souscription (DPS). Valeur théorique du DPS = valeur de l''action avant − valeur après l''augmentation.

Exemple : Baobab Industries (4 000 actions, capitaux propres 60 000 000, soit 15 000 par action) émet 1 000 actions à 13 000 (nominal 10 000). Valeur après = (60 000 000 + 13 000 000) ÷ 5 000 = 14 600 ; DPS = 400. Contrôle : (15 000 − 13 000) × 1 ÷ (4 + 1) = 400.

- Débit 4612 Apporteurs, apports en numéraire : 13 000 000
- Crédit 1013 Capital souscrit, appelé, versé, non amorti : 10 000 000
- Crédit 1051 Primes d''émission : 3 000 000
- Total débit = total crédit = 13 000 000

Puis, à l''encaissement : débit 521, crédit 4612. Par incorporation de réserves : débit du compte de réserve, crédit 1013 ; aucun apport nouveau, les capitaux propres ne changent pas, seul le nombre d''actions ou le nominal augmente.

## Exercices pratiques

- Exercice 1 : une SARL est constituée au capital de 5 000 000 en numéraire. Écritures.
- Exercice 2 : capital 30 000 000 ; réserve légale existante 5 200 000 ; bénéfice 12 000 000 ; dividendes 8 000 000 ; solde en réserves facultatives. Calculez l''affectation.
- Exercice 3 : 5 000 actions de 10 000 ; capitaux propres 75 000 000 ; émission de 2 500 actions à 12 000. Valeur du DPS et écriture de souscription.
- Exercice 4 : incorporation de 10 000 000 de réserves facultatives au capital. Écriture.
- Exercice 5 (cas pratique) : pour Baobab Industries, le solde du capital (12 000 000) est appelé puis versé. Écritures.
- Exercice 6 (réflexion) : expliquez pourquoi le DPS protège un ancien actionnaire qui ne souscrit pas.

## Corrigé

Exercice 1 :

- Débit 4612 Apporteurs, apports en numéraire : 5 000 000
- Crédit 1013 Capital souscrit, appelé, versé, non amorti : 5 000 000
- Total débit = total crédit = 5 000 000

Puis débit 521 Banques, crédit 4612 : 5 000 000.

Exercice 2 : plafond de la réserve légale = 30 000 000 ÷ 5 = 6 000 000 ; il manque 800 000. Le dixième du bénéfice (1 200 000) dépasse ce manque : on dote seulement 800 000. Réserves facultatives = 12 000 000 − 800 000 − 8 000 000 = 3 200 000.

- Débit 131 Résultat net : bénéfice : 12 000 000
- Crédit 111 Réserve légale : 800 000
- Crédit 118 Autres réserves : 3 200 000
- Crédit 465 Associés, dividendes à payer : 8 000 000
- Total débit = total crédit = 12 000 000

Exercice 3 : valeur avant 15 000 ; après (75 000 000 + 30 000 000) ÷ 7 500 = 14 000 ; DPS = 1 000.

- Débit 4612 Apporteurs, apports en numéraire : 30 000 000
- Crédit 1013 Capital souscrit, appelé, versé, non amorti : 25 000 000
- Crédit 1051 Primes d''émission : 5 000 000
- Total débit = total crédit = 30 000 000

Exercice 4 :

- Débit 118 Autres réserves : 10 000 000
- Crédit 1013 Capital souscrit, appelé, versé, non amorti : 10 000 000
- Total débit = total crédit = 10 000 000

Exercice 5 : appel :

- Débit 4613 Apporteurs, capital appelé non versé : 12 000 000
- Crédit 109 Apporteurs, capital souscrit non appelé : 12 000 000
- Total débit = total crédit = 12 000 000

- Débit 1011 Capital souscrit, non appelé : 12 000 000
- Crédit 1012 Capital souscrit, appelé, non versé : 12 000 000
- Total débit = total crédit = 12 000 000

Versement : débit 521, crédit 4613 ; puis débit 1012, crédit 1013, pour 12 000 000 chacun.

- Exercice 6 : l''émission sous la valeur de l''action dilue la valeur des anciennes actions (de 15 000 à 14 000 dans l''exercice 3). L''actionnaire qui ne souscrit pas vend ses droits : la vente compense la baisse de valeur. Avec 2 actions, il perd 2 × 1 000 en valeur et encaisse 2 DPS de 1 000 : sa richesse est préservée.', 'texte', 60, false, 30
from public.courses c where c.slug = 'lic-compta-l2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Comptabilité des sociétés : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Fiscalité des entreprises : l''essentiel pour l''examen', '## Objectifs de la leçon

- Passer du résultat comptable au résultat fiscal et calculer l''impôt sur les sociétés.
- Comptabiliser l''impôt, les acomptes et le solde.
- Maîtriser les mécanismes de la TVA : fait générateur, exigibilité, déduction, prorata, liquidation.

Tous les taux d''impôt de cette leçon (TVA à 20 %, impôt sur les sociétés à 25 %) sont des taux fictifs pour l''exemple. Les taux, seuils, délais et règles de déductibilité réels sont fixés par le code général des impôts de chaque État et évoluent avec les lois de finances : vérifiez toujours le texte en vigueur.

## 1. L''impôt sur les sociétés : principe

L''impôt sur les sociétés (IS) frappe le bénéfice des sociétés de capitaux et des entités qui y sont assujetties. Sa base n''est pas le résultat comptable, mais le résultat fiscal : la loi fiscale refuse certaines charges (non déductibles) et exonère certains produits.

Tableau de passage : résultat comptable avant impôt + réintégrations − déductions = résultat fiscal. Exemples de réintégrations courantes : l''IS lui-même s''il a été comptabilisé en charge, les amendes et pénalités, les charges non engagées dans l''intérêt de l''entreprise, la fraction de certaines charges qui dépasse les limites fixées par le code, les provisions non admises fiscalement. Exemples de déductions : produits exonérés ou déjà imposés, reprises de provisions qui avaient été réintégrées. La liste exacte dépend du code général des impôts de chaque État.

Le déficit fiscal peut en principe être reporté sur les bénéfices des exercices suivants, dans les conditions et délais fixés par le code. Beaucoup de législations prévoient aussi un minimum d''imposition calculé sur le chiffre d''affaires, dû même en cas de perte : vérifiez son existence et ses modalités dans votre pays.

## 2. Exemple de calcul

Kaolack Agro SA, résultat comptable avant impôt 40 000 000. Amendes 1 200 000 ; charge non déductible sur véhicule de direction 800 000 (hypothèse) ; provision non admise 1 000 000 ; dividendes reçus exonérés 600 000 (hypothèse).

- Résultat comptable : 40 000 000
- Réintégrations : + 3 000 000
- Déductions : − 600 000
- Résultat fiscal : 42 400 000
- IS à 25 % (taux fictif) : 10 600 000

Acomptes versés pendant l''exercice : 8 000 000 (débit 441 État, impôt sur les bénéfices ; crédit 521). À la clôture :

- Débit 891 Impôts sur les bénéfices de l''exercice : 10 600 000
- Crédit 441 État, impôt sur les bénéfices : 10 600 000
- Total débit = total crédit = 10 600 000

Le compte 441 présente alors un solde créditeur de 2 600 000 : c''est le solde à payer, réglé lors de la liquidation (débit 441, crédit 521). Si les acomptes dépassaient l''impôt, on aurait une créance sur l''État.

## 3. La TVA : mécanismes

La TVA est un impôt indirect sur la consommation, collecté par les entreprises. Notions clés :

- Fait générateur : l''événement qui fait naître la dette fiscale (en général, la livraison pour les biens, l''exécution du service pour les prestations).
- Exigibilité : le moment où l''État peut réclamer l''impôt ; pour les prestations de services, elle intervient souvent à l''encaissement. Les règles exactes figurent dans le code.
- Droit à déduction : la TVA payée sur les achats est déductible si le bien ou le service est utilisé pour des opérations taxables, si l''entreprise dispose d''une facture régulière et si la dépense n''est pas exclue par la loi (certaines dépenses de véhicules de tourisme ou de réception sont souvent exclues).
- Prorata de déduction : une entreprise qui réalise à la fois des opérations taxables et exonérées ne déduit la TVA sur ses dépenses mixtes qu''à proportion du prorata : chiffre d''affaires ouvrant droit à déduction ÷ chiffre d''affaires total.

## 4. Exemple de liquidation

Mois de mars : TVA collectée 10 000 000 ; TVA récupérable sur achats 6 000 000 ; sur immobilisations 2 000 000 ; crédit de février 500 000. TVA due 1 500 000.

- Débit 4431 État, TVA facturée sur ventes : 10 000 000
- Crédit 4452 État, TVA récupérable sur achats : 6 000 000
- Crédit 4451 État, TVA récupérable sur immobilisations : 2 000 000
- Crédit 4449 État, crédit de TVA à reporter : 500 000
- Crédit 4441 État, TVA due : 1 500 000
- Total débit = total crédit = 10 000 000

Prorata : une clinique-pharmacie réalise 60 000 000 de ventes taxables et 15 000 000 d''opérations exonérées. Prorata = 60 ÷ 75 = 80 %. Sur une dépense mixte supportant 1 000 000 de TVA, elle déduit 800 000 ; les 200 000 restants sont une charge.

## Points clés

- Résultat fiscal = résultat comptable + réintégrations − déductions.
- IS : charge 891 et dette 441 ; acomptes en cours d''exercice, solde à la liquidation.
- TVA due = collectée − déductible ; prorata pour les entreprises partiellement taxables.

## Exercices pratiques

- Exercice 1 : définissez le fait générateur et l''exigibilité de la TVA.
- Exercice 2 : résultat comptable avant impôt 15 000 000 ; amendes 500 000 ; dépenses non déductibles 300 000 (hypothèse) ; produits exonérés 400 000. Résultat fiscal et IS à 25 % fictif.
- Exercice 3 : les acomptes de l''exercice 2 s''élèvent à 3 200 000. Écriture de l''IS et solde.
- Exercice 4 : chiffre d''affaires taxable 45 000 000, exonéré 5 000 000 ; TVA sur dépenses mixtes 2 000 000. TVA déductible ?
- Exercice 5 : déficit fiscal N−1 de 6 000 000 ; bénéfice fiscal N de 10 000 000. Base imposable N si le déficit est reportable sans limitation (hypothèse) ?
- Exercice 6 (cas pratique) : en avril, une société a facturé 30 000 000 HT de ventes taxables, acheté 18 000 000 HT de marchandises et 5 000 000 HT de matériel. Crédit de mars : 300 000. TVA 20 % fictif. Liquidation.

## Corrigé

- Exercice 1 : le fait générateur fait naître la dette de TVA (livraison du bien, exécution du service) ; l''exigibilité est le moment où le Trésor peut en réclamer le paiement (souvent la livraison pour les biens et l''encaissement pour les services, selon le code).
- Exercice 2 : 15 000 000 + 500 000 + 300 000 − 400 000 = 15 400 000 ; IS = 3 850 000.

Exercice 3 :

- Débit 891 Impôts sur les bénéfices de l''exercice : 3 850 000
- Crédit 441 État, impôt sur les bénéfices : 3 850 000
- Total débit = total crédit = 3 850 000

Solde à payer : 3 850 000 − 3 200 000 = 650 000.

- Exercice 4 : prorata = 45 ÷ 50 = 90 % ; TVA déductible = 1 800 000 ; 200 000 en charge.
- Exercice 5 : 10 000 000 − 6 000 000 = 4 000 000, sous réserve des règles du code (délais, éventuels plafonds).

Exercice 6 : collectée 6 000 000 ; récupérable sur achats 3 600 000 ; sur immobilisations 1 000 000 ; crédit 300 000 ; TVA due 1 100 000.

- Débit 4431 État, TVA facturée sur ventes : 6 000 000
- Crédit 4452 État, TVA récupérable sur achats : 3 600 000
- Crédit 4451 État, TVA récupérable sur immobilisations : 1 000 000
- Crédit 4449 État, crédit de TVA à reporter : 300 000
- Crédit 4441 État, TVA due : 1 100 000
- Total débit = total crédit = 6 000 000', 'texte', 60, false, 40
from public.courses c where c.slug = 'lic-compta-l2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Fiscalité des entreprises : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Sujet type d''examen de Licence 2 (entraînement)', '## Présentation

Sujet d''entraînement de type examen semestriel de Licence 2 (sujet non officiel). Durée conseillée : 3 heures. Barème indicatif, non officiel, sur 20 points. Tous les taux d''impôt de cette leçon (TVA à 20 %, impôt sur les sociétés à 25 %) sont des taux fictifs pour l''exemple. Les taux, seuils, délais et règles de déductibilité réels sont fixés par le code général des impôts de chaque État et évoluent avec les lois de finances : vérifiez toujours le texte en vigueur. Numéros de comptes : vérifier l''intitulé dans le plan de comptes officiel du SYSCOHADA révisé.

## Sujet

Dossier 1. Travaux d''inventaire (8 points). Thiès Équipements SARL clôture au 31/12/N.

- 1. (2 points) Matériel industriel de 15 000 000 HT mis en service le 1er août N, amorti en linéaire sur 4 ans. Dotation N et écriture.
- 2. (2 points) Client Ba : créance de 4 800 000 TTC (TVA 20 % fictif), perte probable 25 %. Écritures.
- 3. (2 points) Abonnement de maintenance encaissé le 1er décembre N : 900 000 pour 3 mois. Régularisation.
- 4. (2 points) Litige commercial : risque estimé à 2 500 000. Écriture et principe justifiant la provision.

Dossier 2. Comptabilité des sociétés (6 points). Sénégal Granulats SA : capital 50 000 000 ; réserve légale 9 000 000 ; bénéfice N 20 000 000 ; report à nouveau débiteur 0.

- 5. (3 points) Calculez la dotation à la réserve légale et l''affectation, sachant que l''assemblée décide 12 000 000 de dividendes et met le solde en réserves facultatives. Écriture.
- 6. (3 points) La société émet 1 000 actions nouvelles de nominal 10 000 au prix de 14 000, intégralement libérées. Écriture de souscription et de libération.

Dossier 3. Fiscalité (6 points)

- 7. (3 points) Résultat comptable avant impôt 25 000 000 ; amendes 700 000 ; provision non admise 1 300 000 ; produits exonérés 500 000. Résultat fiscal et IS (25 %, fictif).
- 8. (3 points) Expliquez le prorata de déduction et calculez-le pour un chiffre d''affaires taxable de 36 000 000 et exonéré de 4 000 000.

## Corrigé détaillé

Question 1 : 15 000 000 × 25 % × 5/12 = 1 562 500.

- Débit 6813 Dotations aux amortissements des immobilisations corporelles : 1 562 500
- Crédit 2841 Amortissements du matériel et outillage industriel et commercial : 1 562 500
- Total débit = total crédit = 1 562 500

Question 2 : HT 4 000 000 ; dépréciation 1 000 000.

- Débit 416 Créances clients litigieuses ou douteuses : 4 800 000
- Crédit 411 Clients : 4 800 000
- Total débit = total crédit = 4 800 000

- Débit 659 Charges pour dépréciations et provisions à court terme d''exploitation (vérifier la subdivision) : 1 000 000
- Crédit 491 Dépréciations des comptes clients : 1 000 000
- Total débit = total crédit = 1 000 000

Question 3 : 2 mois sur 3 concernent N+1 : 600 000.

- Débit 706 Services vendus : 600 000
- Crédit 477 Produits constatés d''avance : 600 000
- Total débit = total crédit = 600 000

Question 4 : principe de prudence : un passif probable doit être constaté.

- Débit 691 Dotations aux provisions et aux dépréciations d''exploitation (vérifier la subdivision) : 2 500 000
- Crédit 191 Provisions pour litiges : 2 500 000
- Total débit = total crédit = 2 500 000

Question 5 : plafond = 50 000 000 ÷ 5 = 10 000 000 ; manque 1 000 000 ; dixième du bénéfice 2 000 000 ; dotation retenue 1 000 000. Réserves facultatives = 20 000 000 − 1 000 000 − 12 000 000 = 7 000 000.

- Débit 131 Résultat net : bénéfice : 20 000 000
- Crédit 111 Réserve légale : 1 000 000
- Crédit 118 Autres réserves : 7 000 000
- Crédit 465 Associés, dividendes à payer : 12 000 000
- Total débit = total crédit = 20 000 000

Question 6 :

- Débit 4612 Apporteurs, apports en numéraire : 14 000 000
- Crédit 1013 Capital souscrit, appelé, versé, non amorti : 10 000 000
- Crédit 1051 Primes d''émission : 4 000 000
- Total débit = total crédit = 14 000 000

- Débit 521 Banques : 14 000 000
- Crédit 4612 Apporteurs, apports en numéraire : 14 000 000
- Total débit = total crédit = 14 000 000

Question 7 : 25 000 000 + 700 000 + 1 300 000 − 500 000 = 26 500 000 ; IS = 6 625 000.

Question 8 : le prorata limite la déduction de la TVA sur les dépenses mixtes à la part des opérations taxables : 36 ÷ 40 = 90 %.

## Exercices pratiques

- Exercice 1 : quelle est la VNC au 31/12/N du matériel de la question 1 ?
- Exercice 2 : comment s''appelle l''excédent du prix d''émission sur le nominal ?
- Exercice 3 : une provision devenue sans objet : quelle écriture ?
- Exercice 4 : l''IS est-il déductible de son propre résultat fiscal ?

## Corrigé

- Exercice 1 : 15 000 000 − 1 562 500 = 13 437 500.
- Exercice 2 : la prime d''émission (compte 1051).
- Exercice 3 : reprise : débit 191 (ou le compte de provision concerné), crédit 791 (vérifier la subdivision).
- Exercice 4 : non ; s''il a été comptabilisé en charge, il est réintégré pour calculer le résultat fiscal.', 'texte', 90, false, 50
from public.courses c where c.slug = 'lic-compta-l2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Sujet type d''examen de Licence 2 (entraînement)');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Comptabilité générale 2 et travaux d''inventaire', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : étudiants de Licence 2 Comptabilité, Finance, Gestion.
- Objectifs : traiter un cas complet d''inventaire : amortissements, dépréciations, provisions, régularisations, stocks, et mesurer l''impact sur le résultat.
- Matériel : diaporama, plan de comptes SYSCOHADA révisé, calculatrice, fiche du cas « Ndar Matériaux ».
- Prérequis : leçon « Comptabilité générale 2 et travaux d''inventaire : l''essentiel pour l''examen ».
- Conventions : coefficients dégressifs et taux de TVA fictifs pour l''exemple ; vérifier l''intitulé des comptes dans le plan de comptes officiel.

## Déroulé minuté

## 00:00 – 05:00 · Ouverture

Bonjour à tous. Le 31 décembre, le comptable ne s''arrête pas : il commence les travaux d''inventaire. Aujourd''hui, nous allons dérouler un cas complet comme à l''examen. Mon objectif : qu''à la fin, vous ayez un réflexe en trois temps pour chaque information : je calcule, j''enregistre, je mesure l''impact sur le résultat. Visuel : un tableau à trois colonnes « calcul, écriture, impact » qui restera affiché toute la séance.

## 05:00 – 15:00 · Pourquoi l''inventaire ? Les principes en jeu

L''inventaire applique deux principes. La prudence : on constate les pertes probables, l''usure, les risques. La spécialisation des exercices : chaque exercice porte ses propres charges et produits. J''ajoute la permanence des méthodes : si vous amortissez un camion en linéaire, vous ne passez pas en dégressif l''an prochain pour améliorer le résultat. Question à la salle : pourquoi la prudence autorise-t-elle à déprécier un stock mais pas à le réévaluer à la hausse ? Réponse attendue : parce qu''un gain non réalisé n''est pas certain ; seule la perte probable est constatée.

## 15:00 – 30:00 · Les amortissements : linéaire et dégressif

Premier élément du cas : un camion de 24 000 000 mis en service le 1er octobre N, linéaire sur 5 ans. Taux 20 %. Prorata : 3 mois sur 12. Dotation : 24 000 000 × 20 % × 3/12 = 1 200 000.

- Débit 6813 Dotations aux amortissements des immobilisations corporelles : 1 200 000
- Crédit 2845 Amortissements du matériel de transport : 1 200 000
- Total débit = total crédit = 1 200 000

Je passe au dégressif avec un autre bien : une machine de 10 000 000 acquise le 1er janvier N, 5 ans, coefficient 2 (fictif pour l''exemple). Taux 40 %. Année 1 : 4 000 000, VNC 6 000 000. Année 2 : 40 % donne 2 400 000 ; linéaire sur 4 ans restants : 1 500 000 ; on garde 2 400 000, VNC 3 600 000. Année 3 : 40 % donne 1 440 000 ; linéaire sur 3 ans : 1 200 000 ; on garde 1 440 000, VNC 2 160 000. Année 4 : 40 % donne 864 000 ; linéaire sur 2 ans : 1 080 000 ; on bascule en linéaire : 1 080 000 en année 4 et 1 080 000 en année 5. Total : 4 000 000 + 2 400 000 + 1 440 000 + 1 080 000 + 1 080 000 = 10 000 000. Le piège : oublier de comparer chaque année avec le linéaire sur la durée restante.

Un mot sur la cession, souvent ajoutée en fin de cas. Si l''entreprise vend un bien en cours d''année, on calcule d''abord la dotation complémentaire jusqu''à la date de cession, puis on sort le bien : la valeur comptable des cessions et le produit de cession sont enregistrés en hors activités ordinaires, dans les comptes 81 et 82 ; les amortissements cumulés sont soldés. Nous approfondirons ce point en Licence 3 avec le tableau des flux de trésorerie, où le prix de cession apparaît dans les flux d''investissement.

## 30:00 – 42:00 · Dépréciations des stocks et des créances

Le stock final de Ndar Matériaux est de 4 200 000 au coût ; une partie, du carrelage démodé, ne se vendra qu''avec un rabais : dépréciation estimée 300 000. Écriture : débit compte de charges provisionnées d''exploitation (659, vérifier la subdivision), crédit 39 Dépréciations des stocks.

Le client Sow doit 1 200 000 TTC ; il est en difficulté, perte probable 50 %. Base hors taxes : 1 000 000. Dépréciation : 500 000. Je vous montre les deux écritures :

- Débit 416 Créances clients litigieuses ou douteuses : 1 200 000
- Crédit 411 Clients : 1 200 000
- Total débit = total crédit = 1 200 000

- Débit 659 Charges pour dépréciations et provisions à court terme d''exploitation (vérifier la subdivision) : 500 000
- Crédit 491 Dépréciations des comptes clients : 500 000
- Total débit = total crédit = 500 000

Pourquoi le hors taxes ? Parce que si la créance devient définitivement irrécouvrable, la TVA facturée pourra en principe être régularisée auprès de l''État, selon les conditions du code.

## 42:00 – 50:00 · Pause quiz

- Question 1 : une immobilisation de 9 000 000 acquise le 1er mars, linéaire 5 ans : dotation de la première année ? Réponse : 9 000 000 × 20 % × 10/12 = 1 500 000.
- Question 2 : quel compte reçoit la créance douteuse ? Réponse : 416.
- Question 3 : base de la dépréciation d''une créance ? Réponse : le montant hors taxes de la perte probable.
- Question 4 : une provision pour litige devenue sans objet donne lieu à quelle écriture ? Réponse : une reprise, débit 191, crédit 791.

## 50:00 – 1:02:00 · Régularisations

Le loyer de 1 500 000, payé le 1er décembre pour décembre, janvier et février. Un mois concerne N, deux mois N+1 : charge constatée d''avance de 1 000 000.

- Débit 476 Charges constatées d''avance : 1 000 000
- Crédit 622 Locations : 1 000 000
- Total débit = total crédit = 1 000 000

Symétriquement, un produit encaissé d''avance va au 477. Une facture de fournisseur non reçue mais relative à N : charge à payer au 408. Une prestation faite en N mais facturée en N+1 : produit à recevoir au 418. Retenez l''image du calendrier : je découpe la période couverte et je ne garde dans l''exercice que la partie qui lui appartient. Toutes ces écritures sont contrepassées le 1er janvier N+1. Pourquoi ? Parce que la facture de N+1 sera enregistrée normalement en totalité ; sans contrepassation, la charge serait comptée deux fois. Question à la salle : une facture de téléphone de décembre, 180 000, arrive le 15 janvier. Que faites-vous au 31 décembre ? Réponse : charge à payer, débit du compte de charge, crédit 408.

## 1:02:00 – 1:15:00 · Stocks et correction commentée du cas complet

Stock initial 5 000 000, stock final 4 200 000. On annule le stock initial et on constate le final :

- Débit 6031 Variation des stocks de marchandises : 5 000 000
- Crédit 31 Marchandises : 5 000 000
- Total débit = total crédit = 5 000 000

- Débit 31 Marchandises : 4 200 000
- Crédit 6031 Variation des stocks de marchandises : 4 200 000
- Total débit = total crédit = 4 200 000

Le 6031 a un solde débiteur de 800 000 : le stock a diminué, ce qui augmente le coût des marchandises vendues. Tableau des impacts : amortissement −1 200 000 ; variation de stock −800 000 ; dépréciation du stock −300 000 ; dépréciation de la créance −500 000 ; charge constatée d''avance +1 000 000. Total : −1 800 000. Si le résultat provisoire avant inventaire était de 9 000 000, le résultat après inventaire serait de 7 200 000.

## 1:15:00 – 1:22:00 · Synthèse

Calcul, écriture, impact : pour chaque information. Le prorata temporis en linéaire ; la comparaison annuelle avec le linéaire en dégressif ; le hors taxes pour les créances ; le découpage du calendrier pour les régularisations ; l''annulation du stock initial et la constatation du stock final. Et toujours la vérification de l''équilibre.

## 1:22:00 – 1:30:00 · Évaluation finale

- Question 1 : matériel de 12 000 000 mis en service le 1er juillet, linéaire 4 ans : dotation de l''année 1 ? Réponse : 1 500 000.
- Question 2 : en dégressif, quand bascule-t-on en linéaire ? Réponse : quand l''annuité linéaire calculée sur la durée restante dépasse l''annuité dégressive.
- Question 3 : créance de 2 400 000 TTC (TVA fictive 20 %), perte probable 60 % : dépréciation ? Réponse : 2 000 000 × 60 % = 1 200 000.
- Question 4 : assurance annuelle de 600 000 payée le 1er avril : charge constatée d''avance au 31/12 ? Réponse : 3 mois, 150 000.
- Question 5 : stock initial 2 000 000, final 2 600 000 : sens et montant du solde du 6031 ? Réponse : créditeur de 600 000, ce qui diminue les charges.

Merci. Refaites le cas Ndar Matériaux sans support avant la prochaine séance.', 'video', 90, false, 60
from public.courses c where c.slug = 'lic-compta-l2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Comptabilité générale 2 et travaux d''inventaire');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Comptabilité des sociétés', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : étudiants de Licence 2.
- Objectifs : comptabiliser la constitution d''une SA, l''affectation du résultat et une augmentation de capital avec droit préférentiel de souscription.
- Matériel : diaporama, plan de comptes SYSCOHADA révisé, Acte uniforme relatif au droit des sociétés commerciales et du GIE (version officielle), calculatrice.
- Prérequis : leçon « Comptabilité des sociétés : l''essentiel pour l''examen ».
- Précaution : vérifier l''intitulé des comptes dans le plan de comptes officiel et les règles juridiques dans le texte en vigueur.

## Déroulé minuté

## 00:00 – 05:00 · Ouverture

Bonjour. Une société, c''est un contrat entre associés et une personne morale. La comptabilité des sociétés traduit les grands moments de sa vie : la naissance (constitution), la répartition des bénéfices (affectation) et la croissance (augmentation de capital). Fil rouge de la séance : Casamance Agro SA, une société fictive de transformation de mangues à Ziguinchor.

## 05:00 – 20:00 · La constitution : souscription et libération

Casamance Agro SA est constituée au capital de 60 000 000, soit 6 000 actions de 10 000. Un associé apporte un terrain évalué 15 000 000 (1 500 actions). Les 4 500 actions de numéraire sont libérées du quart à la souscription : 45 000 000 × 1/4 = 11 250 000 appelés et versés ; 33 750 000 non appelés.

Souscription :

- Débit 4611 Apporteurs, apports en nature : 15 000 000
- Débit 4612 Apporteurs, apports en numéraire : 11 250 000
- Débit 109 Apporteurs, capital souscrit non appelé : 33 750 000
- Crédit 1011 Capital souscrit, non appelé : 33 750 000
- Crédit 1012 Capital souscrit, appelé, non versé : 26 250 000
- Total débit = total crédit = 60 000 000

Réalisation des apports :

- Débit 22 Terrains (vérifier la subdivision) : 15 000 000
- Débit 521 Banques : 11 250 000
- Crédit 4611 Apporteurs, apports en nature : 15 000 000
- Crédit 4612 Apporteurs, apports en numéraire : 11 250 000
- Total débit = total crédit = 26 250 000

Puis le capital appelé et versé passe de 1012 à 1013 : 26 250 000. Au bilan, le capital apparaît pour 60 000 000 au passif, et le capital souscrit non appelé (109) figure à l''actif pour 33 750 000. Question : pourquoi l''apport en nature est-il libéré immédiatement ? Parce qu''un bien ne peut pas être apporté « par quart » : il est transféré en totalité.

Comparons avec une SARL. Dans la SARL, les parts sociales sont libérées intégralement dès la souscription : l''écriture est plus simple, on peut passer directement par le 1013. Le compte 109 n''apparaît donc pas dans une SARL constituée régulièrement. Autre différence pratique : l''évaluation des apports en nature fait intervenir, dans les cas prévus par l''Acte uniforme, un commissaire aux apports, dont le rapport protège les autres associés et les créanciers contre une surévaluation. Une surévaluation gonflerait artificiellement le capital, qui est le gage des créanciers.

## 20:00 – 35:00 · L''affectation du résultat

Fin N, Casamance Agro réalise un bénéfice de 16 000 000. Report à nouveau débiteur de 1 000 000 (perte ancienne). Réserve légale existante 0. Ordre de calcul au tableau : d''abord apurer le report débiteur ; puis la réserve légale, un dixième du bénéfice diminué des pertes antérieures : (16 000 000 − 1 000 000) × 10 % = 1 500 000 ; plafond un cinquième du capital, soit 12 000 000, non atteint. Bénéfice distribuable : 16 000 000 − 1 000 000 − 1 500 000 = 13 500 000. L''assemblée décide 9 000 000 de dividendes (1 500 par action), 4 000 000 de réserves facultatives et 500 000 en report à nouveau créditeur.

- Débit 131 Résultat net : bénéfice : 16 000 000
- Crédit 129 Report à nouveau débiteur : 1 000 000
- Crédit 111 Réserve légale : 1 500 000
- Crédit 118 Autres réserves : 4 000 000
- Crédit 465 Associés, dividendes à payer : 9 000 000
- Crédit 121 Report à nouveau créditeur : 500 000
- Total débit = total crédit = 16 000 000

Remarquez que l''on crédite le 129 pour le solder. Au paiement des dividendes : débit 465, crédit 521, en tenant compte des éventuelles retenues fiscales prévues par la loi.

## 35:00 – 45:00 · Pause quiz

- Question 1 : dans une SA, quelle fraction minimale des actions de numéraire doit être libérée à la souscription selon l''Acte uniforme ? Réponse : le quart (à vérifier dans le texte en vigueur).
- Question 2 : où figure le capital souscrit non appelé au bilan ? Réponse : à l''actif, compte 109.
- Question 3 : capital 20 000 000, réserve légale 3 900 000, bénéfice 5 000 000 : dotation ? Réponse : le plafond est 4 000 000 ; il manque 100 000 ; dotation 100 000.
- Question 4 : que fait-on d''abord d''un report à nouveau débiteur ? Réponse : on l''apure avant toute distribution.

## 45:00 – 1:00:00 · L''augmentation de capital et le DPS

Deux ans plus tard, Casamance Agro a 6 000 actions et des capitaux propres de 90 000 000 : valeur de l''action 15 000. Elle émet 2 000 actions nouvelles à 11 000. Valeur après : (90 000 000 + 22 000 000) ÷ 8 000 = 14 000. DPS : 15 000 − 14 000 = 1 000. Contrôle par la formule : (15 000 − 11 000) × 2 000 ÷ 8 000 = 1 000. Parité : 3 anciennes donnent droit à 1 nouvelle.

- Débit 4612 Apporteurs, apports en numéraire : 22 000 000
- Crédit 1013 Capital souscrit, appelé, versé, non amorti : 20 000 000
- Crédit 1051 Primes d''émission : 2 000 000
- Total débit = total crédit = 22 000 000

Je commente : le capital augmente du nominal seulement, 2 000 × 10 000 ; la prime d''émission, 1 000 par action, rémunère les réserves accumulées par les anciens actionnaires. Les frais d''augmentation de capital ont un traitement spécifique que nous n''abordons pas ici. Retenez enfin la logique économique : un actionnaire qui détient 300 actions reçoit 300 droits, qui lui permettent de souscrire 100 actions nouvelles ; s''il ne souscrit pas, il vend ses 300 droits pour 300 000 et compense exactement la baisse de valeur de ses titres.

## 1:00:00 – 1:15:00 · Correction commentée : incorporation de réserves et appel du solde

Exercice : la société incorpore 6 000 000 de réserves facultatives au capital, en distribuant des actions gratuites.

- Débit 118 Autres réserves : 6 000 000
- Crédit 1013 Capital souscrit, appelé, versé, non amorti : 6 000 000
- Total débit = total crédit = 6 000 000

Les capitaux propres totaux ne changent pas : on reclasse des réserves en capital. Deuxième exercice : appel du solde des actions de numéraire de la constitution, 33 750 000.

- Débit 4613 Apporteurs, capital appelé non versé : 33 750 000
- Crédit 109 Apporteurs, capital souscrit non appelé : 33 750 000
- Total débit = total crédit = 33 750 000

- Débit 1011 Capital souscrit, non appelé : 33 750 000
- Crédit 1012 Capital souscrit, appelé, non versé : 33 750 000
- Total débit = total crédit = 33 750 000

Au versement : débit 521, crédit 4613 ; puis débit 1012, crédit 1013. Si un actionnaire ne paie pas, il devient défaillant : la loi organise une procédure contre lui.

## 1:15:00 – 1:22:00 · Synthèse

Les erreurs que je vois le plus souvent dans les copies : oublier le plafond de la réserve légale ; calculer la réserve légale sur le bénéfice sans retirer les pertes antérieures ; mettre la totalité du prix d''émission au capital ; oublier le virement de 1012 à 1013. Constitution : souscription, réalisation, virement 1012 vers 1013. Affectation : report débiteur, réserve légale avec son plafond, réserves statutaires, bénéfice distribuable. Augmentation : nominal au capital, excédent en prime, DPS pour compenser la dilution.

## 1:22:00 – 1:30:00 · Évaluation finale

- Question 1 : 8 000 actions de nominal 5 000 émises à 6 500 : montant de la prime d''émission ? Réponse : 8 000 × 1 500 = 12 000 000.
- Question 2 : valeur avant 20 000, prix d''émission 14 000, 1 nouvelle pour 5 anciennes : DPS ? Réponse : (20 000 − 14 000) × 1 ÷ 6 = 1 000.
- Question 3 : bénéfice 10 000 000, capital 40 000 000, réserve légale 8 000 000 : dotation ? Réponse : zéro, le plafond est atteint.
- Question 4 : quel compte enregistre les dividendes votés non encore payés ? Réponse : 465 Associés, dividendes à payer.
- Question 5 : une incorporation de réserves modifie-t-elle le total des capitaux propres ? Réponse : non.

Merci et bon entraînement.', 'video', 90, false, 70
from public.courses c where c.slug = 'lic-compta-l2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Comptabilité des sociétés');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Fiscalité des entreprises', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : étudiants de Licence 2.
- Objectifs : établir un tableau de passage du résultat comptable au résultat fiscal, calculer et comptabiliser l''IS et ses acomptes, liquider la TVA avec prorata.
- Matériel : diaporama, calculatrice, code général des impôts de votre pays (version en vigueur) pour vérification.
- Prérequis : leçon « Fiscalité des entreprises : l''essentiel pour l''examen ».
- Avertissement : tous les taux utilisés (IS 25 %, TVA 20 %) sont fictifs pour l''exemple ; les règles réelles sont celles du code en vigueur.

## Déroulé minuté

## 00:00 – 05:00 · Ouverture

Bonjour à toutes et à tous. Le comptable et le fiscaliste ne regardent pas le résultat avec les mêmes lunettes. Le comptable cherche l''image fidèle ; le fisc applique la loi fiscale, qui refuse certaines charges et exonère certains produits. Aujourd''hui, nous apprenons à passer de l''un à l''autre, puis à maîtriser la TVA, l''impôt que l''entreprise collecte pour l''État.

## 05:00 – 20:00 · Du résultat comptable au résultat fiscal

Je dessine un escalier : en haut, le résultat comptable avant impôt ; une marche vers le haut pour les réintégrations ; une marche vers le bas pour les déductions ; en bas, le résultat fiscal. Les réintégrations, ce sont les charges comptabilisées mais refusées par le fisc : amendes et pénalités, charges somptuaires, part excédentaire de certaines charges plafonnées, provisions non admises, impôt sur les sociétés lui-même s''il a été passé en charge. Les déductions, ce sont les produits comptabilisés mais non imposables, ou déjà imposés, et les reprises de provisions qui avaient été réintégrées.

Distinguez bien deux notions. Une différence définitive ne se retournera jamais : une amende réintégrée ne sera jamais déduite. Une différence temporaire se retourne plus tard : une provision non admise aujourd''hui sera déduite le jour de sa reprise. Cette distinction vous servira en Licence 3 et en Master, pour les impôts différés.

Une règle d''or pour l''examen : chaque ligne du tableau de passage doit être justifiée par une phrase. « Amende : réintégrée, car une sanction n''est pas une charge engagée dans l''intérêt normal de l''exploitation. »

## 20:00 – 35:00 · Correction commentée : le cas Louga Distribution

Énoncé : résultat comptable avant impôt 30 000 000. Amendes de circulation 400 000. Cadeaux à la clientèle 1 000 000, dont 600 000 au-delà de la limite fiscale (hypothèse de l''énoncé). Provision pour risque général non admise 1 500 000. Reprise d''une provision réintégrée l''an dernier 700 000. Dividendes de filiale exonérés 900 000 (hypothèse).

Tableau : 30 000 000 + 400 000 + 600 000 + 1 500 000 = 32 500 000 ; − 700 000 − 900 000 = 30 900 000. IS à 25 % fictif : 7 725 000. Les acomptes versés pendant l''année totalisent 6 000 000. Écriture de clôture :

- Débit 891 Impôts sur les bénéfices de l''exercice : 7 725 000
- Crédit 441 État, impôt sur les bénéfices : 7 725 000
- Total débit = total crédit = 7 725 000

Solde à payer à la liquidation : 1 725 000. Pourquoi déduire la reprise ? Parce que la dotation avait été réintégrée : sans déduction, la même somme serait imposée deux fois.

Au fil de l''année, les acomptes se comptabilisent à chaque versement : débit 441, crédit 521. Leur calcul (base, nombre, dates) est fixé par le code. Si l''entreprise est déficitaire, elle ne paie pas d''IS sur un bénéfice inexistant, mais elle peut rester redevable d''un minimum d''imposition lorsque la législation en prévoit un : c''est une question classique de réflexion. Enfin, le résultat net comptable s''obtient après déduction de la charge d''impôt : ici, 30 000 000 − 7 725 000 = 22 275 000. C''est ce résultat net que l''assemblée affectera, comme nous l''avons vu en comptabilité des sociétés.

## 35:00 – 45:00 · Pause quiz

- Question 1 : une amende est-elle déductible ? Réponse : non, on la réintègre.
- Question 2 : résultat comptable 10 000 000, réintégrations 2 000 000, déductions 500 000 : résultat fiscal ? Réponse : 11 500 000.
- Question 3 : IS 3 000 000, acomptes 3 400 000 : situation ? Réponse : créance de 400 000 sur l''État, à imputer ou à restituer selon les règles du code.
- Question 4 : où enregistre-t-on la charge d''IS ? Réponse : au compte 891.

## 45:00 – 1:00:00 · La TVA : du fait générateur à la déduction

Le fait générateur fait naître la dette : en général la livraison des biens ou l''exécution des services. L''exigibilité est le moment où l''État peut réclamer : souvent la livraison pour les biens et l''encaissement pour les services. Conséquence pratique : un cabinet de conseil qui facture en décembre mais encaisse en janvier peut, selon le code, ne déclarer la TVA qu''en janvier.

La déduction : la TVA payée sur un achat est déductible si l''achat sert à des opérations taxables, s''il est justifié par une facture régulière et s''il n''est pas exclu par la loi. Les exclusions courantes visent certaines dépenses de véhicules de tourisme, de logement ou de réception : vérifiez la liste dans votre code.

Un exemple chiffré de déduction : un garage achète des pièces détachées pour 3 000 000 HT et offre un déjeuner d''affaires de 200 000 HT. Avec une TVA fictive à 20 %, la TVA sur les pièces, 600 000, est déductible ; la TVA sur le déjeuner, 40 000, est souvent exclue du droit à déduction par les codes : elle devient alors une charge. Dans la copie, écrivez « selon les règles d''exclusion du code applicable », sans inventer d''article.

Le prorata : une entreprise qui a des activités taxables et exonérées déduit la TVA de ses dépenses mixtes à proportion du chiffre d''affaires taxable. Exemple : une école privée qui vend aussi des fournitures. Chiffre d''affaires taxable 12 000 000, exonéré 28 000 000 : prorata 30 %. TVA sur la rénovation du bâtiment 2 000 000 : déductible 600 000 ; 1 400 000 restent en coût.

## 1:00:00 – 1:15:00 · Correction commentée : liquidation de la TVA

Énoncé : en juin, ventes taxables 40 000 000 HT ; achats de marchandises 25 000 000 HT ; achat d''un véhicule utilitaire 6 000 000 HT ; crédit de TVA de mai 700 000 ; TVA 20 % fictif. Collectée : 8 000 000. Récupérable sur achats : 5 000 000. Sur immobilisations : 1 200 000. TVA due : 8 000 000 − 5 000 000 − 1 200 000 − 700 000 = 1 100 000.

- Débit 4431 État, TVA facturée sur ventes : 8 000 000
- Crédit 4452 État, TVA récupérable sur achats : 5 000 000
- Crédit 4451 État, TVA récupérable sur immobilisations : 1 200 000
- Crédit 4449 État, crédit de TVA à reporter : 700 000
- Crédit 4441 État, TVA due : 1 100 000
- Total débit = total crédit = 8 000 000

Au paiement : débit 4441, crédit 521 pour 1 100 000. Pensez au calendrier : la déclaration et le paiement interviennent dans un délai fixé par le code après la fin du mois ; un retard entraîne des pénalités qui, à leur tour, ne sont pas déductibles du résultat fiscal. Variante : si les ventes de juin n''avaient été que de 30 000 000, la TVA collectée de 6 000 000 n''aurait pas couvert les 6 900 000 de déductions : crédit de TVA de 900 000, porté au 4449.

## 1:15:00 – 1:22:00 · Synthèse

Les erreurs fréquentes : oublier de réintégrer l''IS comptabilisé en charge ; déduire une reprise qui n''avait jamais été réintégrée ; calculer la TVA sur le TTC ; oublier le crédit de TVA du mois précédent. Impôt sur les sociétés : tableau de passage justifié ligne par ligne, impôt au taux de l''énoncé, acomptes, solde. TVA : fait générateur, exigibilité, déduction, prorata, liquidation. Et une discipline : ne jamais présenter un taux fictif comme un taux officiel ; à l''examen, écrivez « au taux indiqué par l''énoncé ».

## 1:22:00 – 1:30:00 · Évaluation finale

- Question 1 : résultat comptable 8 000 000, amendes 300 000, produits exonérés 200 000 : résultat fiscal ? Réponse : 8 100 000.
- Question 2 : IS de la question 1 au taux fictif de 25 % ? Réponse : 2 025 000.
- Question 3 : CA taxable 27 000 000, exonéré 3 000 000 : prorata ? Réponse : 90 %.
- Question 4 : TVA collectée 4 000 000, déductible 4 500 000 : écriture du solde ? Réponse : crédit de TVA de 500 000 au débit du 4449.
- Question 5 : pourquoi déduit-on une reprise de provision précédemment réintégrée ? Réponse : pour éviter une double imposition.

Merci. Rédigez le tableau de passage de Louga Distribution sur une page, avec une justification par ligne.', 'video', 90, false, 80
from public.courses c where c.slug = 'lic-compta-l2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Fiscalité des entreprises');

-- Cours : Licence 3 Comptabilité : réussir ses examens
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'lic-compta-l3', (select id from public.levels where name = 'Licence 3'), null, 'Comptabilité', 'Licence 3 Comptabilité : réussir ses examens', 'Ce cours prépare les étudiants de troisième année de Licence en comptabilité, finance ou audit (Sénégal, espace UEMOA/OHADA) aux partiels et examens semestriels. Il couvre trois matières clés : les états financiers du SYSCOHADA révisé (bilan, compte de résultat, tableau des flux de trésorerie), la consolidation et les opérations spéciales (méthodes de consolidation, écart d''acquisition, fusion simple) et l''audit et le contrôle interne (démarche, risques, assertions, normes en termes généraux). Fiches, exercices corrigés aux calculs vérifiés, sujet d''entraînement et trois cours vidéo de 1h30. Prérequis : comptabilité générale, travaux d''inventaire et comptabilité des sociétés (Licence 1 et 2).', true, 343
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Réussir ses examens de Licence 3 en Comptabilité', '## Objectifs de la leçon

- Situer la Licence 3 dans le parcours LMD et comprendre ses enjeux (diplôme, poursuite en Master, insertion).
- Identifier les matières clés de l''année et le niveau d''exigence attendu.
- Maîtriser les types d''épreuves de troisième année, y compris le projet ou le rapport de stage.
- Construire un plan de révision de six semaines.

## 1. La Licence 3 dans le système LMD

La Licence 3 correspond aux semestres 5 et 6. Elle conclut le premier cycle : sa validation donne le diplôme de Licence et conditionne l''accès au Master (souvent sur dossier). Comme les années précédentes, elle est organisée en unités d''enseignement (UE) dotées de crédits, avec en général 60 crédits pour l''année ; la répartition, les coefficients, la place du stage et les règles de compensation sont fixés par chaque établissement. Le règlement des examens fait foi.

Dans beaucoup de filières comptables, la Licence 3 comporte un stage en entreprise ou en cabinet, suivi d''un rapport et parfois d''une soutenance. C''est aussi l''année où les recruteurs commencent à regarder vos relevés de notes : la régularité compte.

## 2. Les matières clés de l''année

- États financiers SYSCOHADA : établissement et analyse du bilan, du compte de résultat et du tableau des flux de trésorerie (TFT) ; soldes significatifs ; capacité d''autofinancement globale ; fonds de roulement, besoin de financement, trésorerie nette.
- Consolidation et opérations spéciales : périmètre, pourcentages de contrôle et d''intérêt, méthodes (intégration globale, intégration proportionnelle, mise en équivalence), élimination des titres et écart d''acquisition, opérations réciproques ; fusion simple (parité d''échange, prime de fusion).
- Audit et contrôle interne : objectifs de l''audit, démarche (prise de connaissance, évaluation des risques, contrôle interne, contrôles substantifs, rapport), assertions, seuil de signification, référentiels en termes généraux.

D''autres matières complètent l''année (contrôle de gestion, finance d''entreprise, droit fiscal approfondi, droit du travail, informatique comptable). Elles sont traitées dans d''autres cours. Les travaux d''inventaire, la comptabilité des sociétés et la fiscalité, vus en Licence 2, sont supposés maîtrisés : ils servent de base à l''établissement des états financiers.

## 3. Le niveau d''exigence

En Licence 3, on ne vous demande plus seulement de calculer : on vous demande d''interpréter. Un TFT juste mais sans commentaire perd une partie des points. Un calcul d''écart d''acquisition doit être suivi de son traitement. Une question d''audit attend une démarche argumentée, pas une liste récitée. Les correcteurs valorisent la précision du vocabulaire : valeur ajoutée, excédent brut d''exploitation, capacité d''autofinancement globale, contrôle exclusif, influence notable, assertion d''exhaustivité, risque de non-détection.

## 4. Les types d''épreuves et la méthode

- Exercice d''états financiers : à partir d''une balance ou de données, présenter le compte de résultat en cascade, calculer la CAFG, établir le TFT ; commenter en cinq à dix lignes.
- Cas de consolidation : déterminer les pourcentages, choisir la méthode, éliminer les titres, calculer l''écart d''acquisition et les intérêts minoritaires.
- Cas de fusion : évaluer les sociétés, calculer la parité, le nombre d''actions à créer et la prime de fusion, passer les écritures chez l''absorbante.
- Cas d''audit : identifier les faiblesses de contrôle interne, les risques et les assertions concernées, proposer des tests et des recommandations.
- Dissertation ou question de réflexion : par exemple, « l''auditeur garantit-il l''absence de fraude ? ».
- Rapport de stage : description de l''entreprise, missions réalisées, analyse critique, recommandations.

## 5. Plan de révision sur six semaines

- Semaine 1 : bilan et compte de résultat SYSCOHADA ; soldes en cascade ; dix exercices courts.
- Semaine 2 : CAFG, TFT, fonds de roulement, besoin de financement, trésorerie ; commentaires.
- Semaine 3 : consolidation : pourcentages, méthodes, élimination des titres, écart d''acquisition, opérations réciproques.
- Semaine 4 : fusion simple ; puis audit : démarche, risques, assertions, seuil de signification.
- Semaine 5 : contrôle interne (composantes, séparation des tâches, cycles ventes, achats, trésorerie) ; cas d''audit.
- Semaine 6 : deux sujets complets en temps limité, corrections, fiches.

## Points clés

- La Licence 3 conclut le cycle : régularité et interprétation sont valorisées.
- Trois matières clés : états financiers, consolidation et opérations spéciales, audit et contrôle interne.
- Toujours compléter un calcul par une interprétation.

## Exercices pratiques

- Exercice 1 : citez deux différences entre les attentes de Licence 2 et de Licence 3.
- Exercice 2 : quelles étapes suivez-vous dans un cas de fusion simple ?
- Exercice 3 : vous disposez de 4 heures pour un sujet : états financiers 8 points, consolidation 6 points, audit 6 points. Répartissez 225 minutes utiles.
- Exercice 4 : pourquoi le vocabulaire précis est-il valorisé en audit ? Donnez deux exemples de termes.
- Exercice 5 (cas pratique) : Aïcha doit rendre son rapport de stage et préparer ses examens en même temps. Proposez une organisation sur six semaines.

## Corrigé

- Exercice 1 : en Licence 3, on attend une interprétation des résultats (commentaire du TFT, traitement de l''écart d''acquisition) et une démarche argumentée (audit), en plus du calcul.
- Exercice 2 : évaluer les deux sociétés ; calculer la valeur unitaire des titres ; déterminer la parité ; calculer le nombre d''actions à créer, l''augmentation de capital et la prime de fusion ; passer les écritures chez l''absorbante.
- Exercice 3 : 225 ÷ 20 = 11,25 minutes par point : états financiers 90 minutes ; consolidation 67,5 minutes (environ 67) ; audit 67,5 minutes (environ 68) ; total 225.
- Exercice 4 : parce que chaque terme correspond à un concept précis, avec ses conséquences. Exemples : « assertion d''exhaustivité » (toutes les opérations sont enregistrées), « risque de non-détection » (risque que les contrôles de l''auditeur ne détectent pas une anomalie significative).
- Exercice 5 : réserver deux demi-journées par semaine au rapport (plan en semaine 1, rédaction semaines 2 à 4, relecture semaine 5) et suivre le plan de révision le reste du temps ; en semaine 6, priorité aux sujets complets, le rapport étant terminé.', 'texte', 45, true, 10
from public.courses c where c.slug = 'lic-compta-l3'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Réussir ses examens de Licence 3 en Comptabilité');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'États financiers SYSCOHADA : l''essentiel pour l''examen', '## Objectifs de la leçon

- Connaître la composition et la structure des états financiers du SYSCOHADA révisé.
- Présenter le compte de résultat en cascade et calculer la capacité d''autofinancement globale (CAFG).
- Établir et commenter un tableau des flux de trésorerie (TFT) ; analyser l''équilibre du bilan.

Le taux d''impôt sur le résultat de 25 % utilisé ici est un taux fictif pour l''exemple ; le taux réel est fixé par le code général des impôts de chaque État.

## 1. Les états financiers annuels

Dans le système normal, les états financiers comprennent le bilan, le compte de résultat, le tableau des flux de trésorerie et les notes annexes ; ils forment un tout indissociable. Les très petites entités peuvent relever du système minimal de trésorerie, dans les conditions de seuil fixées par l''Acte uniforme (à vérifier dans le texte).

## 2. Le bilan

Schéma décrit : deux colonnes. À l''actif : actif immobilisé (incorporel, corporel, financier), actif circulant (actif circulant hors activités ordinaires, stocks, créances), trésorerie-actif, écart de conversion-actif. Au passif : capitaux propres et ressources assimilées, dettes financières et ressources assimilées (ensemble : ressources stables), passif circulant, trésorerie-passif, écart de conversion-passif. Les actifs sont présentés en brut, amortissements et dépréciations, net.

Lecture fonctionnelle : fonds de roulement (FR) = ressources stables − actif immobilisé ; besoin de financement (BF) = actif circulant − passif circulant ; trésorerie nette (TN) = FR − BF = trésorerie-actif − trésorerie-passif.

## 3. Le compte de résultat en cascade

Le compte de résultat SYSCOHADA fait apparaître des soldes successifs : marge commerciale ; chiffre d''affaires ; valeur ajoutée ; excédent brut d''exploitation (EBE) ; résultat d''exploitation ; résultat financier ; résultat des activités ordinaires (RAO) ; résultat hors activités ordinaires (HAO) ; résultat net, après participation des travailleurs le cas échéant et impôt sur le résultat.

Exemple, Kora Industries SA (Rufisque, fictive) : ventes de marchandises 120 000 000 ; achats 80 000 000 ; stock de marchandises passé de 10 000 000 à 12 000 000 (variation −2 000 000) ; travaux et services vendus 8 000 000 ; autres achats 6 000 000 ; transports 2 000 000 ; services extérieurs 9 000 000 ; impôts et taxes 1 000 000 ; autres charges 500 000 ; charges de personnel 15 000 000 ; dotations 5 000 000 ; reprises 500 000 ; frais financiers 2 000 000 ; revenus financiers 300 000 ; produit de cession d''un matériel 3 000 000, valeur comptable 2 200 000.

- Marge commerciale : 120 000 000 − (80 000 000 − 2 000 000) = 42 000 000
- Valeur ajoutée : 42 000 000 + 8 000 000 − 18 500 000 = 31 500 000
- EBE : 31 500 000 − 15 000 000 = 16 500 000
- Résultat d''exploitation : 16 500 000 + 500 000 − 5 000 000 = 12 000 000
- Résultat financier : 300 000 − 2 000 000 = -1 700 000
- RAO : 10 300 000
- Résultat HAO : 3 000 000 − 2 200 000 = 800 000
- Impôt (25 %, fictif) sur 11 100 000 : 2 775 000
- Résultat net : 8 325 000

## 4. La CAFG et le tableau des flux de trésorerie

CAFG (méthode additive simplifiée) = résultat net + dotations − reprises − produits de cession d''immobilisations + valeur comptable des immobilisations cédées = 8 325 000 + 5 000 000 − 500 000 − 3 000 000 + 2 200 000 = 12 025 000. Les cessions en sont exclues : leur prix va en flux d''investissement.

Le TFT du SYSCOHADA part de la trésorerie nette d''ouverture et explique sa variation par trois flux. Kora : stocks +2 000 000, créances +3 000 000, passif circulant +1 500 000 ; acquisitions 15 000 000 ; cessions 3 000 000 ; dividendes versés 4 000 000 ; nouvel emprunt 10 000 000 ; remboursements 3 000 000 ; trésorerie nette d''ouverture 2 000 000.

- Flux des activités opérationnelles : 12 025 000 − 2 000 000 − 3 000 000 + 1 500 000 = 8 525 000
- Flux des activités d''investissement : −15 000 000 + 3 000 000 = -12 000 000
- Flux des activités de financement : capitaux propres −4 000 000 ; capitaux étrangers +10 000 000 − 3 000 000 ; total 3 000 000
- Variation de la trésorerie nette : -475 000
- Trésorerie nette de clôture : 2 000 000 − 475 000 = 1 525 000

Commentaire : l''activité dégage une trésorerie solide, mais l''investissement est supérieur, financé par emprunt et par la trésorerie.

## 5. Analyse de l''équilibre

Bilan simplifié de Kora au 31/12 (valeurs nettes) : actif immobilisé 62 000 000 ; stocks 12 000 000 ; créances 20 475 000 ; trésorerie-actif 1 525 000 ; total 96 000 000. Capitaux propres 60 325 000 (dont résultat 8 325 000) ; emprunts 22 000 000 ; passif circulant 13 675 000 ; total 96 000 000. FR = 82 325 000 − 62 000 000 = 20 325 000 ; BF = 32 475 000 − 13 675 000 = 18 800 000 ; TN = 1 525 000, égale à la trésorerie du TFT.

## Exercices pratiques

- Exercice 1 : classez dans les masses du bilan : emprunt bancaire, stock de matières, découvert bancaire, brevet, créance sur cession d''immobilisation, réserve légale.
- Exercice 2 : ventes de marchandises 60 000 000 ; achats 42 000 000 ; stock passé de 6 000 000 à 5 000 000 ; services vendus 5 000 000 ; consommations externes, impôts et autres charges 9 000 000 ; personnel 7 000 000. Calculez marge, valeur ajoutée, EBE.
- Exercice 3 : suite : dotations 2 500 000 ; reprises 500 000 ; frais financiers 800 000 ; revenus financiers 200 000 ; cession : prix 1 200 000, valeur comptable 1 600 000 ; impôt 25 % fictif. Résultat net et CAFG.
- Exercice 4 : capitaux propres 30 000 000 ; dettes financières 20 000 000 ; actif immobilisé 38 000 000 ; stocks 9 000 000 ; créances 14 000 000 ; passif circulant 12 000 000 ; trésorerie-actif 3 000 000 ; trésorerie-passif 2 000 000. FR, BF, TN.
- Exercice 5 (cas pratique) : avec la CAFG de l''exercice 3 : stocks −1 000 000 ; créances +1 500 000 ; fournisseurs −500 000 ; acquisitions 6 000 000 ; cession 1 200 000 ; augmentation de capital 2 000 000 ; dividendes 1 000 000 ; emprunt 3 000 000 ; remboursements 1 500 000 ; trésorerie nette d''ouverture −500 000. Établissez le TFT et commentez.

## Corrigé

- Exercice 1 : emprunt : dettes financières ; stock : actif circulant ; découvert : trésorerie-passif ; brevet : actif immobilisé incorporel ; créance sur cession : actif circulant HAO ; réserve légale : capitaux propres.
- Exercice 2 : marge 60 − 42 − 1 = 17 000 000 (la baisse de stock augmente le coût des ventes) ; valeur ajoutée 17 + 5 − 9 = 13 000 000 ; EBE 6 000 000.
- Exercice 3 : résultat d''exploitation 4 000 000 ; financier −600 000 ; RAO 3 400 000 ; HAO -400 000 ; impôt 750 000 ; résultat net 2 250 000. CAFG = 2 250 000 + 2 500 000 − 500 000 + 1 600 000 − 1 200 000 = 4 650 000.
- Exercice 4 : FR = 50 000 000 − 38 000 000 = 12 000 000 ; BF = 23 000 000 − 12 000 000 = 11 000 000 ; TN = 1 000 000 = 3 000 000 − 2 000 000.
- Exercice 5 : flux opérationnels 4 650 000 + 1 000 000 − 1 500 000 − 500 000 = 3 650 000 ; investissement −4 800 000 ; financement : capitaux propres +1 000 000, capitaux étrangers +1 500 000, total +2 500 000 ; variation 1 350 000 ; trésorerie de clôture 850 000. Commentaire : l''entreprise passe d''une trésorerie négative à positive grâce aux flux opérationnels et au financement externe ; l''investissement reste supérieur aux flux opérationnels.', 'texte', 60, false, 20
from public.courses c where c.slug = 'lic-compta-l3'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'États financiers SYSCOHADA : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Consolidation et opérations spéciales : l''essentiel pour l''examen', '## Objectifs de la leçon

- Déterminer le périmètre, les pourcentages et la méthode de consolidation.
- Éliminer les titres, calculer l''écart d''acquisition et les intérêts minoritaires ; éliminer les opérations réciproques.
- Traiter une fusion simple : parité, actions à créer, prime de fusion, écritures chez l''absorbante.

Numéros de comptes : vérifier l''intitulé dans le plan de comptes officiel du SYSCOHADA révisé.

## 1. Le cadre

Le SYSCOHADA révisé contient des dispositions sur les comptes consolidés et combinés : une entité qui contrôle d''autres entités, ou exerce sur elles une influence notable, établit des comptes consolidés dans les conditions fixées par l''Acte uniforme (seuils et exemptions à vérifier dans le texte). Pour certaines entités, notamment celles dont les titres sont cotés, les comptes consolidés relèvent des normes IFRS : vérifiez les règles applicables.

## 2. Pourcentages et méthodes

Pourcentage de contrôle : droits de vote dont dispose la société mère, directement ou par des filiales qu''elle contrôle. Pourcentage d''intérêt : part du capital détenue directement et indirectement (produit des pourcentages le long de la chaîne).

Exemple : M détient 80 % de A, qui détient 60 % de B. M contrôle A, donc contrôle 60 % des votes de B ; son intérêt dans B est 80 % × 60 % = 48 %.

- Contrôle exclusif (présumé au-delà de 50 % des droits de vote) : intégration globale.
- Contrôle conjoint (partage du contrôle par accord) : intégration proportionnelle dans le référentiel OHADA (vérifier les règles en vigueur ; les normes IFRS traitent différemment les coentreprises).
- Influence notable (présumée à partir de 20 % des droits de vote) : mise en équivalence.

## 3. Les étapes

Homogénéiser les comptes (mêmes méthodes, même date) ; cumuler les comptes (intégration globale) ; éliminer les opérations réciproques (créances et dettes, ventes et achats internes, marges internes sur stocks, dividendes internes) ; éliminer les titres et partager les capitaux propres entre groupe et minoritaires.

## 4. Élimination des titres et écart d''acquisition

M a acquis 80 % de F pour 40 000 000 quand les capitaux propres de F étaient de 45 000 000 (capital 30 000 000, réserves 15 000 000). Fin N, F affiche un résultat de 5 000 000 (capitaux propres 50 000 000).

- Quote-part acquise : 80 % × 45 000 000 = 36 000 000.
- Écart d''acquisition : 40 000 000 − 36 000 000 = 4 000 000, inscrit à l''actif consolidé et soumis aux règles de dépréciation ou d''amortissement du référentiel appliqué.
- Résultat de F : groupe 4 000 000 ; minoritaires 1 000 000.
- Intérêts minoritaires au bilan : 20 % × 50 000 000 = 10 000 000.

Mise en équivalence : M détient 30 % de E, acquis 9 000 000 pour une quote-part de capitaux propres de 9 000 000 (pas d''écart). Fin N, capitaux propres de E : 35 000 000, dont résultat 5 000 000. Titres mis en équivalence : 10 500 000 ; quote-part de résultat : 1 500 000.

## 5. La fusion simple

Dans une fusion-absorption, la société absorbée transmet son patrimoine à l''absorbante, qui rémunère les associés de l''absorbée en actions nouvelles. Étapes : évaluer les deux sociétés ; calculer la parité ; déterminer le nombre d''actions à créer ; prime de fusion = actif net apporté − nominal des actions créées.

Exemple : Atlantique SA (10 000 actions, nominal 10 000, valeur réelle 120 000 000) absorbe Sine SA (4 000 actions, actif net réel 36 000 000), sans lien de participation. Valeur unitaire : Atlantique 12 000, Sine 9 000 ; parité 3 actions Atlantique pour 4 actions Sine ; actions à créer 3 000 ; augmentation de capital 30 000 000 ; prime de fusion 6 000 000.

Chez l''absorbante (compte d''apporteur : vérifier la subdivision) :

- Débit 4611 Apporteurs, apports en nature : 36 000 000
- Crédit 1013 Capital souscrit, appelé, versé, non amorti : 30 000 000
- Crédit 1053 Primes de fusion : 6 000 000
- Total débit = total crédit = 36 000 000

- Débit 23 Bâtiments (vérifier la subdivision) : 20 000 000
- Débit 24 Matériel (vérifier la subdivision) : 8 000 000
- Débit 31 Marchandises : 6 000 000
- Débit 411 Clients : 7 000 000
- Débit 521 Banques : 3 000 000
- Crédit 401 Fournisseurs : 8 000 000
- Crédit 4611 Apporteurs, apports en nature : 36 000 000
- Total débit = total crédit = 44 000 000

## Exercices pratiques

- Exercice 1 : M détient 70 % de A et 15 % de B ; A détient 40 % de B. Pourcentages de contrôle et d''intérêt de M dans B ; méthode.
- Exercice 2 : quelle méthode pour : 90 % des droits de vote ; 50 % avec un partenaire selon un accord de contrôle partagé ; 25 % sans contrôle ?
- Exercice 3 : achat de 60 % de G pour 25 000 000 ; capitaux propres de G à l''acquisition 35 000 000. Écart d''acquisition et intérêts minoritaires à l''acquisition.
- Exercice 4 : M détient 25 % de H, acquis 10 000 000 (capitaux propres de H alors 40 000 000). Fin N : capitaux propres 48 000 000, dont résultat 8 000 000. Titres mis en équivalence et quote-part de résultat.
- Exercice 5 : X (20 000 actions de nominal 5 000, valeur 160 000 000) absorbe Y (5 000 actions, actif net 30 000 000). Parité, actions à créer, prime de fusion, première écriture.
- Exercice 6 (cas pratique) : M (intégrée globalement avec F) a vendu à F des marchandises pour 10 000 000, avec une marge de 2 000 000 ; F en détient encore la moitié en stock. Quels retraitements ?

## Corrigé

- Exercice 1 : contrôle : 40 % (via A, contrôlée) + 15 % = 55 % : contrôle exclusif, intégration globale. Intérêt : 70 % × 40 % + 15 % = 43 %.
- Exercice 2 : intégration globale ; intégration proportionnelle (référentiel OHADA) ; mise en équivalence (influence notable présumée).
- Exercice 3 : 25 000 000 − 60 % × 35 000 000 = 4 000 000 ; minoritaires 40 % × 35 000 000 = 14 000 000.
- Exercice 4 : titres mis en équivalence 25 % × 48 000 000 = 12 000 000 ; quote-part de résultat 2 000 000.

Exercice 5 : X vaut 8 000 par action, Y 6 000 ; parité 3 X pour 4 Y ; actions à créer 3 750 ; augmentation 18 750 000 ; prime 11 250 000.

- Débit 4611 Apporteurs, apports en nature : 30 000 000
- Crédit 1013 Capital souscrit, appelé, versé, non amorti : 18 750 000
- Crédit 1053 Primes de fusion : 11 250 000
- Total débit = total crédit = 30 000 000

- Exercice 6 : éliminer les ventes et achats internes (10 000 000) ; éliminer la marge interne contenue dans le stock de F : 2 000 000 × 50 % = 1 000 000, qui diminue le stock et le résultat consolidés (l''effet d''impôt différé éventuel n''est pas traité ici).', 'texte', 60, false, 30
from public.courses c where c.slug = 'lic-compta-l3'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Consolidation et opérations spéciales : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Audit et contrôle interne : l''essentiel pour l''examen', '## Objectifs de la leçon

- Définir l''audit, distinguer audit légal, contractuel et interne.
- Dérouler la démarche d''audit : risques, seuil de signification, contrôle interne, contrôles substantifs, rapport.
- Évaluer un contrôle interne et formuler des recommandations.

Les normes sont présentées en termes généraux : référez-vous aux textes officiels (Acte uniforme relatif au droit des sociétés commerciales pour le commissariat aux comptes, normes internationales d''audit, règles de l''ordre professionnel national) pour toute précision.

## 1. Définitions

L''audit financier est un examen critique, par un professionnel indépendant, des états financiers d''une entité, en vue d''exprimer une opinion sur leur régularité, leur sincérité et l''image fidèle qu''ils donnent. L''audit légal est imposé par la loi : dans l''espace OHADA, c''est la mission du commissaire aux comptes, obligatoire dans les sociétés anonymes et, au-delà de certains seuils, dans d''autres formes (vérifier les conditions dans l''Acte uniforme). L''audit contractuel est demandé librement (par une banque, un acquéreur). L''audit interne est une fonction de l''entité qui évalue ses processus de gestion des risques et de contrôle.

Les normes internationales d''audit (ISA), élaborées sous l''égide de l''IFAC, servent de référence à de nombreux ordres professionnels, dont ceux de l''espace OHADA ; au Sénégal, la profession est organisée par un ordre national des experts-comptables et comptables agréés. L''auditeur doit être indépendant, compétent, respecter le secret professionnel et faire preuve d''esprit critique.

## 2. Les assertions

Les états financiers reposent sur des affirmations implicites de la direction, que l''auditeur teste : existence ou réalité, exhaustivité, exactitude, séparation des exercices, évaluation, droits et obligations (propriété), présentation et information. Exemple : pour les créances clients, l''existence se teste par circularisation ; l''évaluation par l''analyse des retards et des dépréciations ; la séparation des exercices par l''examen des dernières factures de l''année.

## 3. La démarche

- Acceptation de la mission et lettre de mission ; vérification de l''indépendance.
- Prise de connaissance de l''entité : activité, secteur, organisation, systèmes d''information, risques.
- Évaluation des risques. Modèle courant : risque d''audit = risque inhérent × risque lié au contrôle × risque de non-détection. Plus les deux premiers sont élevés, plus l''auditeur doit réduire le risque de non-détection par des contrôles étendus.
- Seuil de signification : montant au-delà duquel une anomalie influencerait le jugement d''un utilisateur. Il est fixé par jugement professionnel à partir d''une base (résultat, chiffre d''affaires, capitaux propres) ; un pourcentage du chiffre d''affaires de l''ordre de 1 % est parfois cité comme repère pédagogique, ce n''est pas une norme.
- Évaluation du contrôle interne : description des procédures, tests de cheminement, tests de conformité (le contrôle fonctionne-t-il toute l''année ?).
- Contrôles substantifs : procédures analytiques (comparaisons, ratios) et tests de détail (circularisation, inventaire physique, rapprochements bancaires, examen des pièces).
- Synthèse et rapport : opinion sans réserve, avec réserve, défavorable (refus de certifier) ou impossibilité d''exprimer une opinion.

## 4. Le contrôle interne

Le référentiel COSO, très utilisé, décrit cinq composantes : environnement de contrôle, évaluation des risques, activités de contrôle, information et communication, pilotage. Principe clé : la séparation des fonctions incompatibles : autorisation, enregistrement, détention des actifs, contrôle. Le triangle de la fraude rappelle trois facteurs : la pression, l''opportunité, la rationalisation ; un bon contrôle interne réduit surtout l''opportunité.

## 5. Exemple : le cycle ventes de Saloum Distribution (fictive)

Créances clients 90 000 000, chiffre d''affaires TTC 540 000 000 : délai moyen de recouvrement = 90 ÷ 540 × 360 = 60 jours, contre 45 jours l''an dernier. Cette dégradation oriente l''auditeur vers l''évaluation des créances (dépréciations suffisantes ?) et leur existence (ventes fictives ?). Tests : circularisation d''un échantillon de clients, analyse de la balance âgée, examen des encaissements de janvier.

Rapprochement d''une réponse de circularisation : la comptabilité indique 5 000 000 dus par le client Diouf ; le client confirme 4 200 000. Explications : chèque de 500 000 envoyé le 30 décembre, reçu le 3 janvier ; facture de 300 000 du 31 décembre non encore reçue par le client. 5 000 000 − 500 000 − 300 000 = 4 200 000 : écart expliqué. L''auditeur vérifie ensuite l''encaissement en janvier et la livraison avant la clôture (séparation des exercices).

## Exercices pratiques

- Exercice 1 : associez une assertion à chaque test : inventaire physique des stocks ; examen des factures d''achat de début janvier ; circularisation des fournisseurs.
- Exercice 2 : chez un grossiste de Kaolack, le caissier encaisse les espèces, enregistre les recettes et fait le rapprochement bancaire. Faiblesse et recommandation ?
- Exercice 3 : risque inhérent élevé et contrôle interne faible : quelle conséquence sur les travaux ?
- Exercice 4 : créances 45 000 000, chiffre d''affaires TTC 360 000 000. Délai moyen de recouvrement ?
- Exercice 5 : citez les quatre types d''opinion.
- Exercice 6 (cas pratique) : une PME n''a pas fait d''inventaire physique à la clôture et les stocks représentent 40 % du total du bilan. Que fait l''auditeur ?

## Corrigé

- Exercice 1 : inventaire physique : existence ; factures de début janvier : séparation des exercices et exhaustivité des dettes ; circularisation fournisseurs : exhaustivité et exactitude des dettes.
- Exercice 2 : cumul de fonctions incompatibles (détention, enregistrement, contrôle) : risque de détournement dissimulé. Recommandation : confier l''enregistrement et le rapprochement à une autre personne, dépôt quotidien des espèces, contrôle par un responsable.
- Exercice 3 : risque de non-détection à réduire : contrôles substantifs plus étendus (échantillons plus larges, tests à la clôture plutôt qu''en intérim).
- Exercice 4 : 45 ÷ 360 × 360 = 45 jours.
- Exercice 5 : opinion sans réserve ; avec réserve ; défavorable ; impossibilité d''exprimer une opinion.
- Exercice 6 : il cherche des procédures alternatives (inventaire à une date ultérieure avec reconstitution des mouvements, examen des pièces). S''il ne peut obtenir d''éléments probants suffisants sur un poste aussi significatif, il exprime une réserve ou, si l''effet est diffus et majeur, une impossibilité d''exprimer une opinion.', 'texte', 60, false, 40
from public.courses c where c.slug = 'lic-compta-l3'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Audit et contrôle interne : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Sujet type d''examen de Licence 3 (entraînement)', '## Présentation

Sujet d''entraînement de type examen semestriel de Licence 3 (sujet non officiel). Durée conseillée : 4 heures. Barème indicatif, non officiel, sur 20 points. Le taux d''impôt sur le résultat de 25 % utilisé ici est un taux fictif pour l''exemple ; le taux réel est fixé par le code général des impôts de chaque État. Numéros de comptes : vérifier l''intitulé dans le plan de comptes officiel du SYSCOHADA révisé.

## Sujet

Dossier 1. États financiers (8 points). Diourbel Négoce SA : ventes de marchandises 80 000 000 ; achats 50 000 000 ; stock de marchandises passé de 7 000 000 à 4 000 000 ; services vendus 10 000 000 ; consommations externes, impôts et autres charges 12 000 000 ; personnel 11 000 000 ; dotations aux amortissements 4 000 000 ; résultat financier −1 000 000 ; pas d''opération HAO.

- 1. (4 points) Présentez les soldes en cascade jusqu''au résultat net (impôt 25 % fictif).
- 2. (2 points) Calculez la CAFG.
- 3. (2 points) Que signifie une variation de stock négative pour la marge commerciale ?

Dossier 2. Consolidation et fusion (7 points)

- 4. (3 points) M détient 60 % de A et 25 % de B ; A détient 30 % de B. Pourcentages de contrôle et d''intérêt de M dans B ; méthode.
- 5. (2 points) M a acheté ses 60 % de A pour 18 000 000 quand les capitaux propres de A étaient de 25 000 000. Écart d''acquisition.
- 6. (2 points) Delta SA (9 000 actions, nominal 5 000, valeur 90 000 000) absorbe Oméga SA (2 500 actions, actif net 20 000 000). Parité, actions à créer, prime de fusion.

Dossier 3. Audit et contrôle interne (5 points)

- 7. (3 points) Chez Diourbel Négoce, la même personne passe les commandes, réceptionne les marchandises et paie les fournisseurs. Risques, assertions concernées, recommandations.
- 8. (2 points) Distinguez opinion avec réserve et opinion défavorable.

## Corrigé détaillé

Question 1 : la baisse de stock (−3 000 000) s''ajoute au coût des achats.

- Marge commerciale : 80 000 000 − (50 000 000 + 3 000 000) = 27 000 000
- Valeur ajoutée : 27 000 000 + 10 000 000 − 12 000 000 = 25 000 000
- EBE : 14 000 000
- Résultat d''exploitation : 10 000 000
- RAO : 9 000 000 ; impôt : 2 250 000 ; résultat net : 6 750 000

Question 2 : CAFG = 6 750 000 + 4 000 000 = 10 750 000 (pas de reprise ni de cession). Commentaire attendu : la CAFG représente le potentiel de financement interne dégagé par l''activité ; elle servira à rembourser les emprunts, investir et verser des dividendes. Ce n''est pas encore de la trésorerie : il faut tenir compte de la variation du besoin de financement pour obtenir les flux opérationnels du TFT.

Question 3 : le stock a diminué : l''entreprise a vendu plus qu''elle n''a acheté ; le coût d''achat des marchandises vendues est supérieur aux achats de l''exercice, ce qui réduit la marge.

Question 4 : contrôle : 30 % (via A, contrôlée à 60 %) + 25 % = 55 % : intégration globale. Intérêt : 60 % × 30 % + 25 % = 43 %.

Question 5 : 18 000 000 − 60 % × 25 000 000 = 3 000 000.

Question 6 : Delta vaut 10 000 par action, Oméga 8 000 ; parité 4 Delta pour 5 Oméga ; actions à créer 2 000 ; augmentation de capital 10 000 000 ; prime de fusion 10 000 000.

- Débit 4611 Apporteurs, apports en nature : 20 000 000
- Crédit 1013 Capital souscrit, appelé, versé, non amorti : 10 000 000
- Crédit 1053 Primes de fusion : 10 000 000
- Total débit = total crédit = 20 000 000

Question 7 : cumul de fonctions incompatibles (autorisation, réception, paiement) : risques d''achats fictifs, de surfacturation, de détournement. Assertions : réalité des charges, exactitude, exhaustivité des dettes. Recommandations : séparer commande, réception (bon de réception signé par le magasin) et paiement (après rapprochement commande, réception, facture, et double signature).

Question 8 : réserve : anomalies significatives mais limitées, les comptes restent fiables dans l''ensemble ; défavorable : anomalies significatives et diffuses, les comptes ne donnent pas une image fidèle.

## Exercices pratiques

- Exercice 1 : quelle est la trésorerie nette si FR = 15 000 000 et BF = 17 000 000 ?
- Exercice 2 : intérêt de M dans C si M détient 90 % de B qui détient 50 % de C ?
- Exercice 3 : quelle assertion teste l''inventaire physique ?
- Exercice 4 : dans quel compte enregistre-t-on la prime de fusion ?
- Exercice 5 (cas pratique) : la CAFG de Diourbel Négoce est de 10 750 000 ; ses stocks ont baissé de 3 000 000, ses créances ont augmenté de 2 000 000 et ses dettes fournisseurs ont baissé de 1 000 000. Calculez les flux de trésorerie des activités opérationnelles et commentez.

## Corrigé

- Exercice 1 : −2 000 000 : trésorerie négative, le besoin de financement n''est pas couvert par le fonds de roulement.
- Exercice 2 : 90 % × 50 % = 45 % (le contrôle, lui, est de 50 % des droits de vote de C via B).
- Exercice 3 : l''existence (et, pour partie, l''évaluation par l''état des articles).
- Exercice 4 : 1053 Primes de fusion (vérifier l''intitulé dans le plan de comptes officiel).
- Exercice 5 : 10 750 000 + 3 000 000 − 2 000 000 − 1 000 000 = 10 750 000. La baisse des stocks libère de la trésorerie, mais l''allongement du crédit clients et la réduction du crédit fournisseurs la consomment : au total, les flux opérationnels sont égaux à la CAFG. L''entreprise devrait surveiller ses délais clients.', 'texte', 90, false, 50
from public.courses c where c.slug = 'lic-compta-l3'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Sujet type d''examen de Licence 3 (entraînement)');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : États financiers SYSCOHADA', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : étudiants de Licence 3 Comptabilité, Finance, Audit.
- Objectifs : lire et construire le bilan, le compte de résultat et le tableau des flux de trésorerie du SYSCOHADA révisé ; calculer la CAFG ; analyser l''équilibre financier et commenter.
- Matériel : diaporama, modèles d''états financiers du SYSCOHADA révisé (version officielle), calculatrice, fiche du cas « Matam Céréales ».
- Prérequis : travaux d''inventaire (Licence 2) ; leçon « États financiers SYSCOHADA : l''essentiel pour l''examen ».
- Convention : impôt sur le résultat à 25 %, taux fictif pour l''exemple.

## Déroulé minuté

## 00:00 – 05:00 · Ouverture

Bonjour à toutes et à tous. Les états financiers sont la vitrine de l''entreprise : le banquier, l''actionnaire, l''administration fiscale, les salariés les lisent. Notre objectif aujourd''hui : construire un compte de résultat en cascade, en tirer la CAFG, établir un tableau des flux de trésorerie et le commenter. Fil rouge : Matam Céréales SA, une société fictive de négoce de céréales.

## 05:00 – 15:00 · L''architecture des états financiers

Je rappelle la composition dans le système normal : bilan, compte de résultat, tableau des flux de trésorerie et notes annexes. Les notes ne sont pas un accessoire : elles expliquent les méthodes et détaillent les postes. Le bilan est présenté en brut, amortissements et dépréciations, net à l''actif. Visuel : le bilan en deux colonnes, avec en couleur les ressources stables, le passif circulant et la trésorerie. Question : où classez-vous une créance sur cession d''immobilisation ? Réponse : en actif circulant hors activités ordinaires (HAO), parce qu''elle ne provient pas de l''exploitation courante.

## 15:00 – 30:00 · Le compte de résultat en cascade

Données de Matam Céréales : ventes de marchandises 150 000 000 ; achats 100 000 000 ; stock passé de 12 000 000 à 15 000 000 ; services vendus 6 000 000 ; consommations externes, impôts et autres charges 20 000 000 ; personnel 18 000 000 ; dotations 7 000 000 ; reprises 1 000 000 ; résultat financier −2 500 000 ; cession d''un camion : prix 4 000 000, valeur comptable 5 000 000.

Calculons ensemble. Marge commerciale : 150 000 000 − (100 000 000 − 3 000 000) = 53 000 000. La hausse de stock réduit le coût des marchandises vendues : c''est une erreur fréquente d''en inverser le signe. Valeur ajoutée : 53 000 000 + 6 000 000 − 20 000 000 = 39 000 000. EBE : 39 000 000 − 18 000 000 = 21 000 000. Résultat d''exploitation : 21 000 000 + 1 000 000 − 7 000 000 = 15 000 000. RAO : 15 000 000 − 2 500 000 = 12 500 000. Résultat HAO : 4 000 000 − 5 000 000 = −1 000 000. Résultat avant impôt : 11 500 000 ; impôt à 25 % fictif : 2 875 000 ; résultat net : 8 625 000.

Je commente : l''EBE mesure la performance économique avant politique d''amortissement et de financement ; c''est l''indicateur préféré des banquiers pour comparer des entreprises.

Deux remarques sur la présentation. D''abord, le SYSCOHADA distingue nettement les activités ordinaires et les opérations hors activités ordinaires : la cession du camion n''a rien à voir avec le négoce de céréales, elle va donc en HAO, et sa moins-value de 1 000 000 n''affecte ni l''EBE ni le résultat d''exploitation. Ensuite, si l''entreprise verse une participation des travailleurs, elle est déduite avant l''impôt pour obtenir le résultat net. Lisez toujours l''énoncé pour savoir si elle existe. Dernier conseil : présentez la cascade sous forme de liste, une ligne par solde, avec le calcul visible : le correcteur suit votre raisonnement et vous accorde des points même en cas d''erreur de report.

## 30:00 – 40:00 · La CAFG

Méthode additive : résultat net + dotations − reprises − produits de cession + valeur comptable des éléments cédés. Matam : 8 625 000 + 7 000 000 − 1 000 000 − 4 000 000 + 5 000 000 = 15 625 000. Vérification par la méthode soustractive simplifiée : EBE 21 000 000 + résultat financier −2 500 000 − impôt 2 875 000 = 15 625 000. Les deux méthodes concordent, car toutes les charges et produits financiers sont ici supposés encaissables ou décaissables. Pourquoi retirer la cession ? Parce que son prix apparaîtra dans les flux d''investissement : on ne compte pas deux fois. Attention : la CAFG n''est pas de la trésorerie disponible ; c''est un potentiel, qui ne devient trésorerie qu''une fois les ventes encaissées et les achats payés. C''est exactement ce que le TFT va corriger.

## 40:00 – 48:00 · Pause quiz

- Question 1 : la valeur ajoutée tient-elle compte des charges de personnel ? Réponse : non, elles sont retirées ensuite pour obtenir l''EBE.
- Question 2 : une dotation aux amortissements décaisse-t-elle de la trésorerie ? Réponse : non, c''est une charge calculée ; on la rajoute dans la CAFG.
- Question 3 : où apparaît le prix de cession d''une immobilisation dans le TFT ? Réponse : dans les flux d''investissement.
- Question 4 : TN = FR − BF : vrai ou faux ? Réponse : vrai.

## 48:00 – 1:05:00 · Correction commentée : le TFT de Matam Céréales

Données complémentaires : stocks +3 000 000 ; créances clients +4 000 000 ; fournisseurs et autres dettes circulantes +2 000 000 ; acquisitions d''immobilisations 20 000 000 ; cession 4 000 000 ; augmentation de capital en numéraire 5 000 000 ; dividendes versés 3 000 000 ; nouvel emprunt 6 000 000 ; remboursements 4 000 000 ; trésorerie nette d''ouverture 1 500 000.

Flux opérationnels : 15 625 000 − 3 000 000 − 4 000 000 + 2 000 000 = 10 625 000. Flux d''investissement : −20 000 000 + 4 000 000 = −16 000 000. Financement par capitaux propres : 5 000 000 − 3 000 000 = 2 000 000 ; par capitaux étrangers : 6 000 000 − 4 000 000 = 2 000 000 ; total 4 000 000. Variation : 10 625 000 − 16 000 000 + 4 000 000 = −1 375 000. Trésorerie de clôture : 1 500 000 − 1 375 000 = 125 000.

Commentaire modèle, à reproduire dans vos copies : « L''activité opérationnelle génère 10,6 millions, mais l''accroissement du besoin de financement (stocks et créances) en absorbe une partie. L''entreprise a investi 16 millions nets, financés à hauteur de 4 millions par des ressources externes, le reste par la trésorerie, qui reste tout juste positive. Une vigilance sur les délais clients est recommandée. »

## 1:05:00 – 1:15:00 · L''équilibre financier

Lecture fonctionnelle : fonds de roulement, besoin de financement, trésorerie nette. Si FR = 30 000 000 et BF = 29 875 000, TN = 125 000. Une trésorerie nette faible n''est pas forcément un problème si le besoin de financement est maîtrisé ; elle l''est si les créances s''allongent. Ratios utiles : délai clients, délai fournisseurs, rotation des stocks, autonomie financière (capitaux propres ÷ ressources stables), capacité de remboursement (dettes financières ÷ CAFG). Pour Matam, si les dettes financières sont de 31 250 000, la capacité de remboursement est de 31 250 000 ÷ 15 625 000 = 2 années de CAFG. Les banques comparent souvent ce ratio à des seuils internes qui leur sont propres : à l''examen, ne citez pas de norme chiffrée, raisonnez en tendance et en comparaison avec le secteur. Enfin, n''oubliez pas les notes annexes : elles détaillent les engagements hors bilan, comme les cautions données, qui peuvent changer l''appréciation du risque.

## 1:15:00 – 1:22:00 · Synthèse

Le compte de résultat dit si l''entreprise est rentable ; le TFT dit d''où vient et où va l''argent ; le bilan dit comment elle est financée. Trois réflexes : signe de la variation de stock ; retrait des cessions dans la CAFG ; commentaire systématique.

## 1:22:00 – 1:30:00 · Évaluation finale

- Question 1 : ventes 50 000 000, achats 35 000 000, stock passé de 4 000 000 à 3 000 000 : marge commerciale ? Réponse : 50 − (35 + 1) = 14 000 000.
- Question 2 : résultat net 5 000 000, dotations 3 000 000, reprises 500 000 : CAFG sans cession ? Réponse : 7 500 000.
- Question 3 : CAFG 7 500 000, hausse des stocks 1 000 000, hausse des dettes fournisseurs 400 000 : flux opérationnels ? Réponse : 6 900 000.
- Question 4 : FR 10 000 000, BF 12 000 000 : TN ? Réponse : −2 000 000.
- Question 5 : quels sont les trois flux du TFT ? Réponse : activités opérationnelles, investissement, financement.

Merci. Rédigez le commentaire du TFT de Matam Céréales en dix lignes.', 'video', 90, false, 60
from public.courses c where c.slug = 'lic-compta-l3'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : États financiers SYSCOHADA');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Consolidation et opérations spéciales', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : étudiants de Licence 3.
- Objectifs : déterminer les pourcentages et la méthode de consolidation ; éliminer les titres ; calculer écart d''acquisition et intérêts minoritaires ; éliminer les opérations réciproques ; traiter une fusion simple.
- Matériel : diaporama avec organigramme de groupe, calculatrice, plan de comptes SYSCOHADA révisé.
- Prérequis : comptabilité des sociétés (Licence 2) ; leçon « Consolidation et opérations spéciales : l''essentiel pour l''examen ».
- Précaution : seuils, exemptions et référentiels applicables aux comptes consolidés sont à vérifier dans l''Acte uniforme ; vérifier l''intitulé des comptes dans le plan de comptes officiel.

## Déroulé minuté

## 00:00 – 05:00 · Ouverture

Bonjour. Beaucoup d''entreprises africaines se développent en groupe : une holding à Dakar, une filiale de distribution à Bamako, une participation dans une usine à Abidjan. Les comptes individuels de chaque société ne montrent pas la réalité économique de l''ensemble. La consolidation présente le groupe comme une seule entité. Fil rouge : le groupe fictif Téranga Holding.

## 05:00 – 20:00 · Organigramme, contrôle et intérêt

Visuel : Téranga Holding (TH) détient 75 % de Sahel Distribution (SD) et 10 % de Kaïra Ciment (KC) ; SD détient 45 % de KC ; TH détient aussi 30 % de Niayes Agro (NA).

Contrôle de TH dans KC : 45 % via SD, qu''elle contrôle, plus 10 % en direct : 55 %. Contrôle exclusif : intégration globale. Intérêt : 75 % × 45 % + 10 % = 43,75 %. Retenez : le contrôle sert à choisir la méthode ; l''intérêt sert à partager les capitaux propres et le résultat.

Avant d''éliminer quoi que ce soit, il faut homogénéiser. Si SD amortit ses camions sur 4 ans et TH sur 5 ans, le groupe choisit une méthode unique et retraite les comptes de la filiale. Même chose pour la date de clôture et pour la conversion des comptes d''une filiale hors zone franc, dont la monnaie n''est pas le franc CFA. Ces retraitements sont la première étape d''un sujet complet ; les étudiants les oublient souvent. NA : 30 %, influence notable présumée : mise en équivalence.

Question à la salle : si SD n''était détenue qu''à 40 % par TH, sans autre élément de contrôle ? Réponse : TH ne contrôlerait pas SD ; les 45 % de KC détenus par SD ne compteraient pas dans le contrôle de TH, qui n''aurait plus que 10 % de KC en direct.

## 20:00 – 35:00 · Élimination des titres et écart d''acquisition

TH a acheté ses 75 % de SD pour 50 000 000, quand les capitaux propres de SD étaient de 60 000 000 (capital 40 000 000, réserves 20 000 000). Quote-part acquise : 45 000 000. Écart d''acquisition : 5 000 000. Fin N, SD a réalisé un bénéfice de 8 000 000 ; ses capitaux propres sont de 68 000 000.

Partage : capitaux propres à l''acquisition 60 000 000, dont 45 000 000 pour le groupe, éliminés contre les titres ; 15 000 000 pour les minoritaires. Résultat 8 000 000 : 6 000 000 pour le groupe, 2 000 000 pour les minoritaires. Intérêts minoritaires au bilan : 25 % × 68 000 000 = 17 000 000. L''écart d''acquisition de 5 000 000 figure à l''actif consolidé ; son traitement ultérieur (amortissement ou test de dépréciation) dépend du référentiel appliqué.

## 35:00 – 45:00 · Pause quiz

- Question 1 : M détient 80 % de A, A détient 30 % de B : intérêt de M dans B ? Réponse : 24 %.
- Question 2 : méthode pour une participation de 35 % sans contrôle ? Réponse : mise en équivalence (influence notable présumée).
- Question 3 : titres achetés 12 000 000 pour 70 % d''une société dont les capitaux propres valent 15 000 000 : écart ? Réponse : 12 000 000 − 10 500 000 = 1 500 000.
- Question 4 : à quoi sert le pourcentage d''intérêt ? Réponse : au partage des capitaux propres et du résultat.

## 45:00 – 1:00:00 · Opérations réciproques et mise en équivalence

SD a acheté à KC des sacs de ciment pour 6 000 000 ; elle doit encore 2 000 000 à KC. En consolidation : on élimine 6 000 000 de ventes et d''achats, et 2 000 000 de créances et de dettes. Si SD détient encore en stock du ciment acheté à KC avec une marge de 900 000, on élimine cette marge interne : le stock et le résultat consolidés diminuent de 900 000 (hors effet d''impôt). Dividendes versés par SD à TH : 3 000 000 ; ils sont éliminés du résultat de TH, car ils proviennent de réserves déjà consolidées.

Mise en équivalence de NA : capitaux propres de NA 40 000 000, dont résultat 6 000 000. Titres mis en équivalence : 30 % × 40 000 000 = 12 000 000 ; quote-part de résultat : 1 800 000. Les titres de NA, qui figuraient au coût, sont remplacés par cette quote-part ; on ne cumule pas les actifs de NA.

Un mot sur l''intégration proportionnelle, prévue par le référentiel OHADA pour le contrôle conjoint. Supposons que TH et un partenaire marocain contrôlent ensemble, à 50 % chacun et par accord, une société de logistique au port de Dakar. TH intègre 50 % de chaque actif, de chaque dette, de chaque charge et de chaque produit de cette société ; il n''y a pas d''intérêts minoritaires. Les normes IFRS traitent les coentreprises autrement ; vérifiez toujours quel référentiel l''énoncé vous demande d''appliquer.

## 1:00:00 – 1:15:00 · Correction commentée : une fusion simple

Énoncé : Kédougou Mines SA (8 000 actions, nominal 10 000, valeur réelle 144 000 000) absorbe Falémé SA (3 000 actions, actif net réel 39 000 000), sans lien de participation. Valeur unitaire : Kédougou 18 000 ; Falémé 13 000. Parité : 13 000 ÷ 18 000 = 13/18, soit 13 actions Kédougou pour 18 actions Falémé. Actions à créer : 3 000 × 13 ÷ 18 = 2 166,67 : le nombre n''est pas entier !

Que faire ? En pratique, on gère les rompus : les actionnaires achètent ou vendent des droits pour obtenir un nombre entier, ou la société absorbée procède à une opération préalable. Pour l''exercice, l''énoncé est modifié : actif net réel de Falémé 36 000 000. Valeur unitaire Falémé 12 000 ; parité 2 Kédougou pour 3 Falémé ; actions à créer 2 000 ; augmentation de capital 20 000 000 ; prime de fusion 16 000 000.

- Débit 4611 Apporteurs, apports en nature : 36 000 000
- Crédit 1013 Capital souscrit, appelé, versé, non amorti : 20 000 000
- Crédit 1053 Primes de fusion : 16 000 000
- Total débit = total crédit = 36 000 000

Puis l''absorbante reprend actifs et dettes de Falémé à leur valeur d''apport, en contrepartie du compte d''apporteur. Côté absorbée, on constate la sortie du patrimoine et l''échange des titres au profit des associés. Le principe : les actifs et les dettes sont virés à un compte de liquidation ou d''apport, qui fait apparaître un résultat de fusion égal à la différence entre valeurs d''apport et valeurs comptables ; les titres reçus de l''absorbante sont ensuite remis aux associés en échange de leurs droits. Les intitulés et la mécanique détaillée varient selon les manuels : vérifiez l''intitulé dans le plan de comptes officiel et suivez le schéma présenté par votre enseignant.

Dernière précision : si l''absorbante détenait déjà des titres de l''absorbée, on ne créerait pas d''actions pour elle-même ; la différence apparaîtrait en boni ou mali de fusion. C''est la fusion « avec liens de participation », au programme de Master.

## 1:15:00 – 1:22:00 · Synthèse

Contrôle pour la méthode, intérêt pour le partage. Élimination des titres : écart d''acquisition et minoritaires. Opérations réciproques : flux, soldes, marges internes, dividendes. Fusion : évaluation, parité, actions à créer, prime.

## 1:22:00 – 1:30:00 · Évaluation finale

- Question 1 : M détient 60 % de A et 20 % de B ; A détient 40 % de B : contrôle et intérêt de M dans B ? Réponse : 60 % ; 44 %.
- Question 2 : capitaux propres de la filiale 50 000 000, intérêt du groupe 80 % : intérêts minoritaires ? Réponse : 10 000 000.
- Question 3 : marge interne de 1 200 000 sur des marchandises entièrement restées en stock : retraitement ? Réponse : diminuer stock et résultat consolidés de 1 200 000 (hors impôt).
- Question 4 : absorbante 20 000 par action, absorbée 15 000 : parité ? Réponse : 3 actions de l''absorbante pour 4 de l''absorbée.
- Question 5 : actif net apporté 50 000 000, 3 000 actions créées de nominal 10 000 : prime de fusion ? Réponse : 20 000 000.

Merci. Refaites le cas Téranga Holding sans support.', 'video', 90, false, 70
from public.courses c where c.slug = 'lic-compta-l3'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Consolidation et opérations spéciales');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Audit et contrôle interne', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : étudiants de Licence 3.
- Objectifs : dérouler une démarche d''audit, relier risques et assertions, évaluer un contrôle interne, choisir des contrôles substantifs, formuler une opinion.
- Matériel : diaporama, schéma de la démarche d''audit, fiche du cas « Cap-Vert Pharma ».
- Prérequis : états financiers ; leçon « Audit et contrôle interne : l''essentiel pour l''examen ».
- Précaution : les normes sont présentées en termes généraux ; se référer aux textes officiels (Acte uniforme pour le commissariat aux comptes, normes internationales d''audit, règles de l''ordre professionnel national).

## Déroulé minuté

## 00:00 – 05:00 · Ouverture

Bonjour. L''auditeur ne refait pas la comptabilité : il recherche des éléments probants suffisants et appropriés pour exprimer une opinion. Il travaille par sondages et par jugement, en se concentrant sur les risques. Fil rouge : Cap-Vert Pharma SA, grossiste fictif en produits pharmaceutiques à Dakar, dont vous êtes commissaire aux comptes.

## 05:00 – 15:00 · Le cadre et les principes

Le commissaire aux comptes est obligatoire dans les sociétés anonymes de l''espace OHADA et, au-delà de certains seuils, dans d''autres formes : vérifiez les conditions dans l''Acte uniforme. Sa mission : certifier que les comptes sont réguliers, sincères et donnent une image fidèle. Ses principes : indépendance, compétence, secret professionnel, esprit critique. Les normes internationales d''audit servent de référence méthodologique. Question : un commissaire aux comptes peut-il tenir la comptabilité de la société qu''il contrôle ? Réponse : non, ce serait s''auditer soi-même ; son indépendance serait compromise.

Avant de commencer, l''auditeur accepte la mission après avoir vérifié son indépendance et sa capacité à la mener ; il formalise une lettre de mission qui précise l''objectif, les responsabilités respectives de la direction et de l''auditeur, le calendrier et les honoraires. Rappelez-vous ce partage : la direction est responsable de l''établissement des comptes et du contrôle interne ; l''auditeur est responsable de son opinion.

## 15:00 – 30:00 · Prise de connaissance et évaluation des risques

Cap-Vert Pharma : chiffre d''affaires 2 milliards, stocks importants de médicaments avec dates de péremption, ventes à crédit aux pharmacies, logiciel de gestion récent. Risques inhérents identifiés : surévaluation des stocks (produits périmés), créances douteuses non dépréciées, erreurs liées au nouveau logiciel.

Modèle de risque : risque d''audit = risque inhérent × risque lié au contrôle × risque de non-détection. Pour les stocks, risque inhérent élevé ; si le contrôle interne est faible, l''auditeur doit réduire le risque de non-détection : assister à l''inventaire physique, tester les dates de péremption, étendre les échantillons.

Seuil de signification : fixé par jugement professionnel. Pour l''exercice, nous retenons à titre pédagogique 1 % du chiffre d''affaires, soit 20 000 000 ; ce n''est pas une norme. Toute anomalie cumulée supérieure à ce seuil pourrait modifier l''opinion.

## 30:00 – 42:00 · Évaluer le contrôle interne

Les cinq composantes du COSO : environnement de contrôle, évaluation des risques, activités de contrôle, information et communication, pilotage. Chez Cap-Vert Pharma, l''auditeur décrit le cycle ventes : commande de la pharmacie, vérification du crédit, préparation, livraison, facturation, encaissement. Il réalise un test de cheminement : il suit une commande de bout en bout. Puis des tests de conformité sur un échantillon : chaque livraison a-t-elle un bon signé ? Chaque dépassement de plafond de crédit a-t-il été autorisé ?

Constat : le commercial peut modifier les prix dans le logiciel sans validation. Faiblesse : risque de ventes sous-facturées et de collusion. Assertions touchées : exactitude des ventes, évaluation des créances. Recommandation : verrouiller les prix, journal des modifications, validation par la direction commerciale.

Pensez aussi au triangle de la fraude : la pression (objectifs de vente très élevés, primes sur le chiffre d''affaires), l''opportunité (prix modifiables sans contrôle), la rationalisation (« tout le monde le fait »). L''auditeur n''a pas pour mission première de découvrir toutes les fraudes, mais il doit concevoir ses travaux pour détecter les anomalies significatives, qu''elles proviennent d''erreurs ou de fraudes, en gardant son esprit critique. Les faiblesses importantes du contrôle interne sont communiquées par écrit à la direction et aux organes de gouvernance.

## 42:00 – 50:00 · Pause quiz

- Question 1 : quelle assertion teste-t-on en circularisant des clients ? Réponse : principalement l''existence (et l''exactitude) des créances.
- Question 2 : si le contrôle interne est fiable, que peut faire l''auditeur ? Réponse : réduire l''étendue de ses contrôles substantifs.
- Question 3 : citez deux fonctions incompatibles. Réponse : par exemple, détenir les espèces et enregistrer les encaissements.
- Question 4 : le seuil de signification est-il fixé par une norme chiffrée ? Réponse : non, par jugement professionnel à partir d''une base pertinente.

## 50:00 – 1:05:00 · Correction commentée : contrôles substantifs

Procédure analytique : délai clients = créances 300 000 000 ÷ chiffre d''affaires TTC 2 160 000 000 × 360 = 50 jours, contre 40 l''an dernier. L''allongement oriente vers les créances anciennes. Tests de détail : circularisation d''un échantillon ; analyse de la balance âgée ; examen des encaissements postérieurs à la clôture.

Réponse de circularisation commentée : comptabilité 8 000 000 ; la pharmacie confirme 6 500 000. Explications : virement de 1 000 000 émis le 31 décembre, reçu le 2 janvier ; avoir de 500 000 accordé le 30 décembre et non encore comptabilisé par Cap-Vert Pharma. Rapprochement : 8 000 000 − 1 000 000 − 500 000 = 6 500 000. Conséquences : le virement est un décalage normal, à vérifier sur le relevé de janvier ; l''avoir non comptabilisé est une anomalie : chiffre d''affaires et créances surévalués de 500 000 hors effets de TVA. L''auditeur la note dans son tableau des anomalies.

Stocks : l''auditeur assiste à l''inventaire, recompte un échantillon, relève des lots périmés pour 35 000 000 non dépréciés. Cette anomalie dépasse à elle seule le seuil de signification.

Deux autres contrôles classiques. La séparation des exercices : l''auditeur prend les dernières livraisons de décembre et les premières de janvier, et vérifie que chaque facture est rattachée au bon exercice ; une livraison du 2 janvier facturée au 31 décembre gonflerait le chiffre d''affaires de l''année. Le rapprochement bancaire : il compare le solde du relevé au solde comptable et examine les suspens ; un chèque émis en décembre mais encaissé par le fournisseur seulement en mars mérite une question : a-t-il vraiment été envoyé avant la clôture ? Enfin, la confirmation directe des soldes auprès des banques permet de détecter des emprunts ou des garanties non comptabilisés : c''est l''assertion d''exhaustivité.

## 1:05:00 – 1:15:00 · Synthèse des anomalies et opinion

Tableau des anomalies : avoir non comptabilisé 500 000 ; stocks périmés 35 000 000 ; total 35 500 000, supérieur au seuil de 20 000 000. L''auditeur demande les corrections à la direction. Si elle corrige, l''opinion peut être sans réserve. Si elle refuse de déprécier les stocks périmés, l''anomalie est significative mais limitée à un poste : opinion avec réserve. Si les anomalies étaient diffuses et remettaient en cause l''ensemble des comptes : opinion défavorable. Si l''auditeur n''avait pas pu assister à l''inventaire ni trouver de procédure alternative : limitation, réserve ou impossibilité d''exprimer une opinion selon l''ampleur.

## 1:15:00 – 1:22:00 · Synthèse générale

Le rapport du commissaire aux comptes suit une structure normalisée : l''opinion, en tête ; le fondement de l''opinion ; le cas échéant, les motifs de la réserve ; les responsabilités de la direction et celles de l''auditeur ; puis les vérifications spécifiques prévues par la loi, par exemple sur le rapport de gestion et les conventions réglementées. Vérifiez le modèle exact dans les textes et normes applicables.

Risques, assertions, contrôles : tout est relié. Un bon raisonnement d''audit suit toujours le fil : quel risque ? quelle assertion ? quel contrôle ? quelle conclusion ? À l''examen, présentez vos réponses sous cette forme, et évitez les listes récitées sans lien avec le cas.

## 1:22:00 – 1:30:00 · Évaluation finale

- Question 1 : écrivez le modèle du risque d''audit. Réponse : risque d''audit = risque inhérent × risque lié au contrôle × risque de non-détection.
- Question 2 : créances 120 000 000, chiffre d''affaires TTC 720 000 000 : délai clients ? Réponse : 60 jours.
- Question 3 : quel test vérifie l''existence des stocks ? Réponse : l''observation de l''inventaire physique.
- Question 4 : citez les cinq composantes du COSO. Réponse : environnement de contrôle, évaluation des risques, activités de contrôle, information et communication, pilotage.
- Question 5 : anomalie significative non corrigée, limitée à un poste : quelle opinion ? Réponse : opinion avec réserve.

Merci. Pour la prochaine séance, rédigez la synthèse de mission de Cap-Vert Pharma en une page : rappel des risques identifiés, travaux réalisés, anomalies relevées avec leur montant, comparaison au seuil de signification, demandes de correction adressées à la direction et projet d''opinion, selon que la direction accepte ou refuse les corrections. Ce format est celui que vous retrouverez en cabinet dès votre stage.', 'video', 90, false, 80
from public.courses c where c.slug = 'lic-compta-l3'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Audit et contrôle interne');

-- Cours : Finance Licence 1 : réussir les examens de première année
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'lic-fin-l1', (select id from public.levels where name = 'Licence 1'), null, 'Finance', 'Finance Licence 1 : réussir les examens de première année', 'Ce cours prépare aux partiels et examens de première année de Licence en finance : introduction au système financier de l''UEMOA (banques, BCEAO, microfinance, BRVM), mathématiques financières appliquées (valeur actuelle et acquise, emprunts indivis, tableaux d''amortissement) et statistiques descriptives appliquées à la finance. Il s''adresse aux étudiants des universités et écoles du Sénégal et de l''espace UEMOA. Prérequis : niveau baccalauréat en mathématiques (pourcentages, puissances).', true, 351
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Réussir ses examens de Licence 1 en Finance', '## Objectifs de la leçon

- Comprendre comment est organisée une première année de Licence dans le système LMD.
- Identifier les matières de finance de la Licence 1 et ce que les examinateurs attendent dans chacune.
- Connaître les grands types d''épreuves et la manière de les aborder.
- Construire un plan de révision réaliste sur six semaines.

## 1. La Licence 1 dans le système LMD

Les universités et grandes écoles du Sénégal et de l''espace UEMOA appliquent le système LMD (Licence, Master, Doctorat). La Licence se déroule en six semestres. Chaque semestre regroupe plusieurs unités d''enseignement (UE) ; chaque UE contient une ou plusieurs matières (on parle aussi d''éléments constitutifs, EC) et donne droit à un nombre de crédits.

Quelques principes généraux, qui varient d''un établissement à l''autre :

- Une UE est validée lorsque sa moyenne atteint le seuil fixé par le règlement des études ; les notes des matières d''une même UE peuvent souvent se compenser entre elles.
- La note d''une matière combine en général un contrôle continu (devoirs, exposés, travaux dirigés) et un examen terminal de fin de semestre.
- Une session de rattrapage est prévue pour les UE non validées.
- Les crédits obtenus sont capitalisés : une UE validée reste acquise.

Le nombre exact de crédits, les coefficients, les seuils de validation et les règles de compensation sont fixés par chaque établissement. Votre premier réflexe doit donc être de lire le règlement des études et la maquette de votre filière, disponibles auprès de la scolarité. Ne vous fiez pas aux rumeurs de couloir.

## 2. Les matières de finance de la Licence 1

Ce cours couvre les trois matières de finance que l''on retrouve dans la plupart des maquettes de première année :

- Introduction à la finance et au système financier : rôle de la finance, finance directe et indirecte, banques, BCEAO, systèmes financiers décentralisés (microfinance), marché financier régional et BRVM. Les sujets mêlent questions de cours et petits calculs (marge d''intérêt, rendement d''une action, taux réel).
- Mathématiques financières appliquées : intérêts simples et composés, valeur acquise et valeur actuelle, annuités, emprunts indivis et tableaux d''amortissement. C''est la matière la plus calculatoire : la rigueur et la présentation comptent autant que le résultat.
- Statistiques descriptives pour la finance : moyenne, médiane, mode, variance, écart-type, coefficient de variation, séries groupées en classes, indices et taux de croissance, covariance et corrélation de deux séries de rentabilités.

Les maîtriser vous prépare directement à l''analyse financière et aux marchés financiers de Licence 2, puis aux décisions d''investissement et de financement de Licence 3.

## 3. Les types d''épreuves et comment les aborder

- L''exercice chiffré : calculer une valeur actuelle, dresser un tableau d''amortissement, calculer une variance. Posez la formule, remplacez les lettres par les valeurs, donnez le résultat avec son unité (FCFA, %) et une phrase d''interprétation.
- Le cas pratique : une entreprise ou un ménage fictif doit prendre une décision (choisir entre deux offres de prêt, comparer deux placements). On attend une démarche structurée : hypothèses, calculs, comparaison, conclusion argumentée.
- Le QCM : lisez toutes les propositions avant de répondre ; méfiez-vous des réponses presque justes (taux proportionnel au lieu de taux équivalent, variance au lieu d''écart-type). Vérifiez si les mauvaises réponses sont pénalisées.
- La question de cours ou la courte dissertation : en introduction à la finance, on peut vous demander « Montrez le rôle des banques dans le financement de l''économie ». Il faut une introduction (définitions, problématique), un plan en deux ou trois parties et une conclusion.
- Le projet ou dossier : certains enseignants demandent un travail de groupe (par exemple, présenter une société cotée à la BRVM à partir de documents publics). La note tient compte du fond, de la forme et de la présentation orale.

## 4. Les erreurs qui coûtent des points

- Confondre taux annuel et taux mensuel, ou oublier de convertir une durée en jours ou en mois.
- Utiliser l''intérêt simple là où l''énoncé impose l''intérêt composé (et inversement).
- Présenter un tableau d''amortissement dont la dernière ligne ne ramène pas le capital restant dû à zéro.
- Confondre variance et écart-type, ou oublier que l''écart-type s''exprime dans la même unité que la série.
- Donner un résultat sans phrase de conclusion.
- Recopier des chiffres « officiels » appris par cœur sans en être sûr : dans ce cours, tous les taux d''intérêt et d''impôt des exemples sont fictifs pour l''exemple. Pour un taux réel (taux directeur, taux d''usure, fiscalité), il faut toujours consulter la source officielle en vigueur (BCEAO, administration fiscale).

## 5. Méthode de révision

- Fiches : une fiche par chapitre avec les définitions, les formules encadrées et un exemple résolu.
- Formulaire : une page unique regroupant toutes les formules de mathématiques financières et de statistiques. Relisez-la chaque jour.
- Entraînement actif : refaites les exercices de TD sans regarder la correction, puis comparez.
- Calculatrice : entraînez-vous avec la calculatrice autorisée à l''examen (puissances, puissances négatives, mémoires, mode statistique).

## 6. Plan de révision sur six semaines

- Semaine 1 : système financier (acteurs, rôle de la BCEAO, microfinance, marché financier régional) ; fiches de cours et petits calculs de rendement.
- Semaine 2 : intérêts simples et composés, valeur acquise, valeur actuelle, taux proportionnels et équivalents.
- Semaine 3 : annuités et emprunts indivis (amortissement constant, annuités constantes, remboursement in fine) ; trois tableaux d''amortissement complets.
- Semaine 4 : statistiques descriptives (séries simples et séries classées, paramètres de position et de dispersion).
- Semaine 5 : indices, taux de croissance moyen, covariance et corrélation ; reprise des points faibles.
- Semaine 6 : sujets d''examen blancs en temps limité (voir la leçon 5), correction et relecture du formulaire.

La veille de l''examen, ne commencez rien de nouveau : relisez vos fiches, préparez votre matériel (pièce d''identité, carte d''étudiant, calculatrice, stylos) et dormez suffisamment.

## Points clés

- Le règlement des études de votre établissement fixe les crédits, les coefficients et les règles de validation : lisez-le.
- Trois matières de finance en Licence 1 : système financier, mathématiques financières, statistiques descriptives.
- Formule, application numérique, résultat avec unité, interprétation : cette démarche rapporte des points dans toutes les épreuves chiffrées.

## Exercices pratiques

- Exercice 1 : citez les trois matières de finance de ce cours et, pour chacune, deux notions à maîtriser.
- Exercice 2 : un étudiant obtient 9 de moyenne en mathématiques financières et 13 en statistiques, deux matières de même coefficient dans la même UE, et le seuil de validation de l''UE est de 10 dans son établissement. Calculez la moyenne de l''UE si la compensation est autorisée, et concluez.
- Exercice 3 : proposez la structure (introduction, deux parties, conclusion) d''une réponse au sujet « Le rôle de la microfinance dans le financement des petites entreprises ».
- Exercice 4 (cas pratique) : Awa, étudiante à Saint-Louis, a quatre semaines au lieu de six avant ses examens. Adaptez le plan de révision.

## Corrigé

- Exercice 1 : système financier (rôle de la BCEAO, différence entre finance directe et indirecte) ; mathématiques financières (valeur actuelle, tableau d''amortissement) ; statistiques (écart-type, coefficient de variation). D''autres réponses sont acceptables si elles figurent dans le programme.
- Exercice 2 : moyenne = (9 + 13) / 2 = 11. Si la compensation est autorisée dans l''UE, celle-ci est validée avec 11, même si la note de mathématiques financières est inférieure à 10. Sans compensation, il faudrait repasser cette matière au rattrapage. Seul le règlement de l''établissement permet de trancher.
- Exercice 3 : introduction (définir la microfinance et la petite entreprise, constater la difficulté d''accès au crédit bancaire, problématique : la microfinance comble-t-elle ce manque ?) ; partie 1 : les apports (proximité, petits montants, garanties adaptées comme la caution solidaire, épargne de proximité) ; partie 2 : les limites (coût du crédit plus élevé, durées courtes, risque de surendettement, besoin de supervision) ; conclusion : la microfinance est complémentaire des banques et du marché financier, et non un substitut.
- Exercice 4 : semaine 1 : système financier et intérêts simples et composés ; semaine 2 : annuités et emprunts indivis ; semaine 3 : statistiques descriptives complètes ; semaine 4 : deux sujets blancs en temps limité et relecture du formulaire. On fusionne les révisions et on garde obligatoirement l''entraînement en conditions d''examen.', 'texte', 60, true, 10
from public.courses c where c.slug = 'lic-fin-l1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Réussir ses examens de Licence 1 en Finance');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Introduction à la finance et au système financier : l''essentiel pour l''examen', '## Objectifs de la leçon

- Définir la finance et le système financier, distinguer finance directe et finance indirecte.
- Présenter les principaux acteurs dans l''UEMOA : banques, BCEAO, systèmes financiers décentralisés, marché financier régional.
- Réaliser les calculs de base attendus à l''examen : marge d''intérêt, coût d''un microcrédit, capitalisation boursière, rendement d''une action, taux réel.

## Fiche 1 : la finance et ses fonctions

La finance étudie la manière dont les agents économiques obtiennent, placent et utilisent l''argent dans le temps, en tenant compte du risque. Certains agents ont une capacité de financement (ils dépensent moins qu''ils ne gagnent, comme beaucoup de ménages), d''autres ont un besoin de financement (entreprises qui investissent, État en déficit). Le système financier organise la rencontre entre les deux.

Ses fonctions principales :

- Collecter l''épargne et la transformer en crédits ou en investissements.
- Assurer les paiements (comptes, virements, cartes, monnaie électronique sur téléphone mobile).
- Répartir et gérer les risques (assurance, diversification).
- Produire de l''information sur les prix (cours, taux).

## Fiche 2 : finance directe et finance indirecte

Schéma décrit en texte : à gauche les agents à capacité de financement, à droite les agents à besoin de financement. Une flèche du haut passe directement de gauche à droite par le marché financier (achat d''actions et d''obligations) : c''est la finance directe. Une flèche du bas passe par une banque ou une institution de microfinance, qui reçoit des dépôts et accorde des crédits : c''est la finance indirecte, ou intermédiée.

- En finance directe, l''épargnant détient lui-même le titre émis par l''entreprise ou l''État et supporte directement le risque.
- En finance indirecte, l''épargnant détient une créance sur la banque (son dépôt) ; la banque détient une créance sur l''emprunteur et supporte le risque de crédit.

Dans l''UEMOA, la finance indirecte reste dominante : la majorité des entreprises, surtout les PME, se financent auprès des banques et des institutions de microfinance plutôt qu''en bourse.

## Fiche 3 : les acteurs dans l''UEMOA

- La BCEAO (Banque centrale des États de l''Afrique de l''Ouest), dont le siège est à Dakar, est la banque centrale commune des huit États de l''UEMOA (Bénin, Burkina Faso, Côte d''Ivoire, Guinée-Bissau, Mali, Niger, Sénégal, Togo). Elle émet le franc CFA, conduit la politique monétaire commune avec pour objectif principal la stabilité des prix, gère les réserves de change et veille au bon fonctionnement des systèmes de paiement.
- La Commission bancaire de l''UMOA supervise les banques et établissements financiers.
- Les banques commerciales collectent les dépôts, accordent des crédits et gèrent les moyens de paiement.
- Les systèmes financiers décentralisés (SFD), c''est-à-dire les institutions de microfinance (mutuelles d''épargne et de crédit, associations, sociétés), servent une clientèle souvent exclue des banques : commerçants, artisans, agriculteurs, femmes entrepreneures.
- Le marché financier régional comprend la BRVM (Bourse régionale des valeurs mobilières, siège à Abidjan, avec des antennes nationales dans chaque État), le Dépositaire central / Banque de règlement, les SGI (sociétés de gestion et d''intermédiation) qui passent les ordres des investisseurs, et un régulateur régional (l''AMF-UMOA, anciennement CREPMF).

Le franc CFA de l''UEMOA a une parité fixe avec l''euro : 1 euro = 655,957 FCFA.

## Fiche 4 : les calculs de base

Marge d''intérêt d''une banque. Exemple fictif : la Banque Téranga Fictive collecte 50 000 millions FCFA de dépôts rémunérés à 3 % (taux fictif pour l''exemple) et prête 40 000 millions à 9 % (taux fictif pour l''exemple).

- Intérêts reçus = 40 000 × 9 % = 3 600 millions.
- Intérêts versés = 50 000 × 3 % = 1 500 millions.
- Marge d''intérêt = 3 600 − 1 500 = 2 100 millions FCFA. Elle doit couvrir les frais généraux, le coût du risque (crédits non remboursés) et dégager un bénéfice.

Coût d''un microcrédit. Fatou, commerçante à Thiès, emprunte 500 000 FCFA auprès d''une mutuelle, remboursable en 12 mensualités constantes au taux de 2 % par mois (taux fictif pour l''exemple). La mensualité vaut 500 000 × 0,02 / (1 − 1,02^−12) ≈ 47 280 FCFA (formule étudiée en leçon 3). Total remboursé ≈ 12 × 47 280 = 567 360 FCFA ; coût du crédit ≈ 67 360 FCFA (67 358 FCFA sans arrondir la mensualité).

Indicateurs boursiers. La société fictive Téranga Agro SA compte 10 000 000 d''actions cotées à 2 500 FCFA. Elle verse un dividende de 150 FCFA par action et son bénéfice par action (BPA) est de 250 FCFA.

- Capitalisation boursière = nombre d''actions × cours = 10 000 000 × 2 500 = 25 milliards FCFA.
- Rendement du dividende = dividende / cours = 150 / 2 500 = 6 %.
- PER (price earning ratio) = cours / BPA = 2 500 / 250 = 10 : l''action vaut dix années de bénéfice.

Obligation. Une obligation de valeur nominale 10 000 FCFA, au taux facial de 6,5 %, rapporte un coupon annuel de 650 FCFA. Si elle s''échange à 10 200 FCFA, le rendement courant vaut 650 / 10 200 ≈ 6,37 %.

Taux réel (relation de Fisher). Si un dépôt rapporte 6 % nominal et que l''inflation est de 2 % (valeurs fictives pour l''exemple), le taux réel vaut (1,06 / 1,02) − 1 ≈ 3,92 %. L''approximation 6 % − 2 % = 4 % reste acceptable pour des taux faibles.

## Points clés

- Finance directe : marché financier ; finance indirecte : banques et SFD.
- La BCEAO conduit la politique monétaire commune ; la Commission bancaire supervise les banques.
- La BRVM est la bourse commune des huit États ; les ordres passent par les SGI.
- Formules : marge d''intérêt, capitalisation, rendement du dividende, PER, rendement courant, taux réel.

## Exercices pratiques

- Exercice 1 : définissez finance directe et finance indirecte et donnez un exemple de chacune au Sénégal.
- Exercice 2 : citez trois missions de la BCEAO et l''organe qui supervise les banques de l''UMOA.
- Exercice 3 : une banque fictive prête 80 000 millions FCFA à 8,5 % et rémunère 100 000 millions de dépôts à 2,5 % (taux fictifs pour l''exemple). Calculez sa marge d''intérêt.
- Exercice 4 : la société fictive Baobab Télécom SA a 5 000 000 d''actions cotées 4 200 FCFA, un dividende de 336 FCFA et un BPA de 420 FCFA. Calculez la capitalisation, le rendement du dividende et le PER.
- Exercice 5 : un placement rapporte 8 % nominal ; l''inflation est de 3 % (valeurs fictives pour l''exemple). Calculez le taux réel exact et approché.
- Exercice 6 (cas pratique) : Moussa, menuisier à Kaolack, veut financer une machine de 1 500 000 FCFA. Il n''a pas de garanties immobilières. Présentez-lui deux sources de financement adaptées et expliquez pourquoi l''introduction en bourse n''est pas réaliste pour lui.

## Corrigé

- Exercice 1 : finance directe : l''agent à besoin de financement émet des titres achetés directement par les épargnants (un État qui émet des obligations souscrites par des particuliers via une SGI). Finance indirecte : un intermédiaire collecte l''épargne et prête (une banque qui accorde un crédit d''équipement à une PME de Dakar).
- Exercice 2 : émettre le franc CFA, conduire la politique monétaire commune (stabilité des prix), gérer les réserves de change, veiller aux systèmes de paiement. La supervision des banques relève de la Commission bancaire de l''UMOA.
- Exercice 3 : intérêts reçus = 80 000 × 8,5 % = 6 800 millions ; intérêts versés = 100 000 × 2,5 % = 2 500 millions ; marge d''intérêt = 4 300 millions FCFA.
- Exercice 4 : capitalisation = 5 000 000 × 4 200 = 21 milliards FCFA ; rendement du dividende = 336 / 4 200 = 8 % ; PER = 4 200 / 420 = 10.
- Exercice 5 : taux réel exact = 1,08 / 1,03 − 1 ≈ 4,85 % ; approché = 8 % − 3 % = 5 %.
- Exercice 6 : premièrement, un crédit d''une institution de microfinance (caution solidaire, nantissement de la machine, montants adaptés) ; deuxièmement, un crédit-bail ou un crédit d''équipement bancaire, éventuellement avec un fonds de garantie. L''introduction en bourse suppose une société anonyme, des comptes certifiés, une taille minimale et des coûts d''émission élevés : elle ne concerne pas une entreprise individuelle de cette taille.', 'texte', 60, false, 20
from public.courses c where c.slug = 'lic-fin-l1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Introduction à la finance et au système financier : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Mathématiques financières appliquées : l''essentiel pour l''examen', '## Objectifs de la leçon

- Calculer intérêts simples et intérêts composés, valeur acquise et valeur actuelle.
- Passer d''un taux annuel à un taux proportionnel ou équivalent.
- Calculer la valeur d''une suite d''annuités constantes.
- Construire un tableau d''amortissement d''emprunt indivis selon les trois modalités classiques.

Tous les taux de cette leçon sont fictifs pour l''exemple.

## Fiche 1 : intérêts simples

On utilise l''intérêt simple pour les opérations de moins d''un an. L''intérêt est proportionnel au capital, au taux et à la durée : I = C × t × n, avec la durée exprimée dans la même unité que le taux. En jours, on utilise par convention l''année commerciale de 360 jours : I = C × t × j / 360.

Exemple : 2 000 000 FCFA placés 90 jours à 6 % : I = 2 000 000 × 0,06 × 90 / 360 = 30 000 FCFA. Valeur acquise = 2 030 000 FCFA.

## Fiche 2 : intérêts composés

Au-delà d''un an, les intérêts de chaque période s''ajoutent au capital et produisent à leur tour des intérêts.

- Valeur acquise : Cn = C0 × (1 + i)^n.
- Valeur actuelle : C0 = Cn × (1 + i)^−n.

Exemple 1 : 5 000 000 FCFA placés 5 ans à 7 % : C5 = 5 000 000 × 1,07^5 ≈ 7 012 759 FCFA.

Exemple 2 : une créance de 10 000 000 FCFA payable dans 4 ans, actualisée à 8 %, vaut aujourd''hui 10 000 000 × 1,08^−4 ≈ 7 350 299 FCFA. Actualiser, c''est ramener une somme future à sa valeur d''aujourd''hui : un franc reçu demain vaut moins qu''un franc reçu aujourd''hui.

## Fiche 3 : taux proportionnels et taux équivalents

- Taux proportionnel : taux annuel divisé par le nombre de périodes. 12 % par an donne 1 % par mois. Il est utilisé à intérêts simples.
- Taux équivalent : il donne la même valeur acquise à intérêts composés. Taux mensuel équivalent à 12 % annuel : (1,12)^(1/12) − 1 ≈ 0,9489 % par mois.

Le taux équivalent est toujours un peu inférieur au taux proportionnel, car les intérêts sont capitalisés plus souvent.

## Fiche 4 : les annuités constantes

Une suite d''annuités est une série de versements égaux à intervalles réguliers (versements en fin de période).

- Valeur acquise au moment du dernier versement : Vn = a × [(1 + i)^n − 1] / i.
- Valeur actuelle une période avant le premier versement : V0 = a × [1 − (1 + i)^−n] / i.

Exemple : une tontine d''épargne bancaire où l''on verse 500 000 FCFA par an pendant 6 ans à 6 % donne Vn = 500 000 × (1,06^6 − 1) / 0,06 ≈ 3 487 659 FCFA. Cinq annuités de 1 000 000 FCFA actualisées à 8 % valent V0 = 1 000 000 × (1 − 1,08^−5) / 0,08 ≈ 3 992 710 FCFA.

## Fiche 5 : les emprunts indivis

Un emprunt indivis est contracté auprès d''un seul prêteur (une banque). Chaque échéance, appelée annuité, se décompose en intérêt et amortissement du capital : annuité = intérêt + amortissement, avec intérêt = capital restant dû en début de période × taux.

Cas : la société fictive Ndiaye Distribution SARL emprunte 12 000 000 FCFA sur 4 ans à 9 %.

Modalité 1, amortissement constant : chaque année, on rembourse 12 000 000 / 4 = 3 000 000 FCFA.

- Année 1 : capital début 12 000 000 ; intérêt 1 080 000 ; amortissement 3 000 000 ; annuité 4 080 000 ; capital fin 9 000 000.
- Année 2 : 9 000 000 ; 810 000 ; 3 000 000 ; 3 810 000 ; 6 000 000.
- Année 3 : 6 000 000 ; 540 000 ; 3 000 000 ; 3 540 000 ; 3 000 000.
- Année 4 : 3 000 000 ; 270 000 ; 3 000 000 ; 3 270 000 ; 0.

Total des intérêts : 2 700 000 FCFA. Les annuités sont décroissantes.

Modalité 2, annuités constantes : a = C × i / [1 − (1 + i)^−n] = 12 000 000 × 0,09 / (1 − 1,09^−4) ≈ 3 704 024 FCFA.

- Année 1 : capital début 12 000 000 ; intérêt 1 080 000 ; amortissement 2 624 024 ; capital fin 9 375 976.
- Année 2 : 9 375 976 ; 843 838 ; 2 860 186 ; 6 515 790.
- Année 3 : 6 515 790 ; 586 421 ; 3 117 603 ; 3 398 187.
- Année 4 : 3 398 187 ; 305 837 ; 3 398 187 ; 0.

Total des intérêts ≈ 2 816 096 FCFA. Contrôles : la somme des amortissements vaut 12 000 000 ; les amortissements forment une suite géométrique de raison 1,09 (2 624 024 × 1,09 ≈ 2 860 186) ; le premier amortissement vaut a − C × i.

Modalité 3, remboursement in fine : on paie seulement les intérêts (1 080 000 par an) et le capital à la fin. Dernière annuité : 13 080 000 FCFA. Total des intérêts : 4 320 000 FCFA.

Lecture : plus le capital est remboursé tard, plus le coût total en intérêts est élevé, mais plus la charge des premières années est légère.

## Points clés

- Intérêt simple : I = C × t × j / 360 ; intérêt composé : Cn = C0 × (1 + i)^n.
- Actualiser : multiplier par (1 + i)^−n.
- Annuité constante d''emprunt : a = C × i / [1 − (1 + i)^−n].
- Tableau d''amortissement : intérêt calculé sur le capital restant dû ; le capital final doit être nul.

## Exercices pratiques

- Exercice 1 : calculez l''intérêt de 1 500 000 FCFA placés 120 jours à 5 %.
- Exercice 2 : quelle est la valeur actuelle à 7 % d''une somme de 8 000 000 FCFA payable dans 3 ans ?
- Exercice 3 : quel montant faut-il verser en fin d''année pendant 5 ans, à 6 %, pour disposer de 10 000 000 FCFA au dernier versement ?
- Exercice 4 : calculez le taux trimestriel équivalent à 8 % annuel, puis le taux trimestriel proportionnel.
- Exercice 5 : construisez le tableau d''amortissement d''un emprunt de 6 000 000 FCFA sur 3 ans à 10 %, par annuités constantes.
- Exercice 6 (cas pratique) : un fournisseur propose à une clinique de Ziguinchor un échographe soit à 3 000 000 FCFA comptant, soit à 1 000 000 FCFA comptant plus 1 100 000 FCFA dans un an et 1 200 000 FCFA dans deux ans. Au taux de 9 %, quelle offre choisir ?

## Corrigé

- Exercice 1 : I = 1 500 000 × 0,05 × 120 / 360 = 25 000 FCFA.
- Exercice 2 : 8 000 000 × 1,07^−3 ≈ 6 530 383 FCFA.
- Exercice 3 : a = 10 000 000 × 0,06 / (1,06^5 − 1) ≈ 1 773 964 FCFA par an.
- Exercice 4 : équivalent : 1,08^(1/4) − 1 ≈ 1,943 % ; proportionnel : 8 % / 4 = 2 %.
- Exercice 5 : a = 6 000 000 × 0,10 / (1 − 1,10^−3) ≈ 2 412 689 FCFA. Année 1 : intérêt 600 000 ; amortissement 1 812 689 ; capital fin 4 187 311. Année 2 : intérêt 418 731 ; amortissement 1 993 958 ; capital fin 2 193 353. Année 3 : amortissement 2 193 353 ; intérêt 219 336 (écart d''arrondi de 1 FCFA absorbé par la dernière ligne) ; capital fin 0.
- Exercice 6 : valeur actuelle de l''offre B = 1 000 000 + 1 100 000 / 1,09 + 1 200 000 / 1,09² ≈ 3 019 190 FCFA. Elle est supérieure à 3 000 000 FCFA : le paiement comptant est moins coûteux, d''environ 19 190 FCFA en valeur actuelle. On choisit le paiement comptant si la clinique dispose de la trésorerie.', 'texte', 60, false, 30
from public.courses c where c.slug = 'lic-fin-l1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Mathématiques financières appliquées : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Statistiques descriptives pour la finance : l''essentiel pour l''examen', '## Objectifs de la leçon

- Calculer et interpréter les paramètres de position (moyenne, médiane, mode) et de dispersion (étendue, variance, écart-type, coefficient de variation).
- Traiter une série regroupée en classes.
- Calculer un indice, un taux de variation et un taux de croissance annuel moyen.
- Mesurer la liaison entre deux séries de rentabilités (covariance, corrélation).

## Fiche 1 : vocabulaire

- Population : ensemble étudié (les clients d''une mutuelle d''épargne, les mois d''une année boursière).
- Individu : chaque élément de la population.
- Variable (ou caractère) : ce que l''on mesure. Elle est quantitative discrète (nombre de crédits), quantitative continue (montant d''un prêt, rentabilité) ou qualitative (secteur d''activité).
- Effectif ni : nombre d''individus ayant une modalité ; fréquence fi = ni / N.

## Fiche 2 : série simple, l''exemple d''une action

Rentabilités mensuelles en % d''une action fictive cotée, Sahel Ciment SA, sur 10 mois : 2,0 ; −1,5 ; 3,2 ; 0,8 ; −0,4 ; 1,6 ; 2,5 ; −2,1 ; 1,1 ; 0,8.

- Moyenne : x̄ = Σxi / N = 8,0 / 10 = 0,8 % par mois.
- Médiane : on range la série : −2,1 ; −1,5 ; −0,4 ; 0,8 ; 0,8 ; 1,1 ; 1,6 ; 2,0 ; 2,5 ; 3,2. N est pair : médiane = (0,8 + 1,1) / 2 = 0,95 %. La moitié des mois ont une rentabilité inférieure à 0,95 %.
- Mode : 0,8 % (valeur la plus fréquente, deux fois).
- Étendue : 3,2 − (−2,1) = 5,3 points.
- Variance : V = Σ(xi − x̄)² / N. La somme des carrés des écarts vaut 25,96, donc V = 2,596. Formule de calcul équivalente : V = Σxi² / N − x̄² = 32,36 / 10 − 0,64 = 2,596.
- Écart-type : σ = √2,596 ≈ 1,61 %. C''est la mesure du risque la plus utilisée en finance : plus il est élevé, plus la rentabilité est volatile.
- Coefficient de variation : CV = σ / x̄ ≈ 1,61 / 0,8 ≈ 2,01. Il mesure le risque par unité de rentabilité et permet de comparer des séries de moyennes différentes.

Remarque : la variance d''échantillon divise par N − 1 : 25,96 / 9 ≈ 2,884, écart-type ≈ 1,70. Indiquez la formule choisie.

## Fiche 3 : série groupée en classes

Une institution de microfinance fictive de Kaolack classe 100 crédits selon leur montant (milliers de FCFA) :

- [0 ; 200[ : 15 crédits.
- [200 ; 500[ : 40 crédits.
- [500 ; 1 000[ : 30 crédits.
- [1 000 ; 2 000[ : 15 crédits.

Méthode : on remplace chaque classe par son centre (100 ; 350 ; 750 ; 1 500).

- Moyenne : (100 × 15 + 350 × 40 + 750 × 30 + 1 500 × 15) / 100 = 60 500 / 100 = 605 milliers de FCFA.
- Variance : V = Σni × ci² / N − x̄². Σni × ci² = 15 × 10 000 + 40 × 122 500 + 30 × 562 500 + 15 × 2 250 000 = 55 675 000 ; V = 556 750 − 605² = 556 750 − 366 025 = 190 725.
- Écart-type : σ = √190 725 ≈ 436,7 milliers de FCFA.
- Médiane par interpolation : N / 2 = 50. Les effectifs cumulés croissants valent 15, 55, 85, 100 : la médiane est dans la classe [200 ; 500[. Me = 200 + (50 − 15) / 40 × 300 = 462,5 milliers de FCFA.
- Classe modale : avec des classes d''amplitudes inégales, on compare les densités (effectif / amplitude) : 0,075 ; 0,133 ; 0,06 ; 0,015. La classe modale est [200 ; 500[.

La moyenne (605) est supérieure à la médiane (462,5) : quelques gros crédits tirent la moyenne vers le haut. La distribution est étalée à droite, situation fréquente pour des montants de prêts.

## Fiche 4 : indices et taux de croissance

- Taux de variation entre deux dates : (V1 − V0) / V0.
- Indice simple base 100 : I = V1 / V0 × 100. Si l''encours de crédit d''une agence passe de 1 200 à 1 350 millions FCFA, l''indice vaut 112,5 et la hausse 12,5 %.
- Taux de croissance annuel moyen (TCAM) sur n années : (Vn / V0)^(1/n) − 1. Si l''encours passe de 1 200 à 1 750 millions en 4 ans : (1 750 / 1 200)^(1/4) − 1 ≈ 9,89 % par an. Attention : on ne divise pas la hausse totale (45,8 %) par 4.

## Fiche 5 : covariance et corrélation

Deux actions fictives X et Y ont, sur 5 mois, les rentabilités suivantes (%) : X : 1 ; 2 ; −1 ; 3 ; 0. Y : 0,5 ; 1,5 ; −0,5 ; 2 ; 1,5.

- Moyennes : x̄ = 5 / 5 = 1 ; ȳ = 5 / 5 = 1.
- Covariance : cov(X, Y) = Σ(xi − x̄)(yi − ȳ) / N. Les produits des écarts valent 0 ; 0,5 ; 3 ; 2 ; −0,5, de somme 5 : cov = 1.
- Écarts-types : σX = √2 ≈ 1,414 ; σY = √0,8 ≈ 0,894.
- Coefficient de corrélation : r = cov / (σX × σY) = 1 / (1,414 × 0,894) ≈ 0,79.

r est compris entre −1 et 1. Ici, la liaison est positive et assez forte : les deux titres évoluent plutôt dans le même sens.

## Points clés

- Position : moyenne, médiane, mode. Dispersion : étendue, variance, écart-type, CV.
- Série classée : centres de classes, médiane par interpolation, densités pour la classe modale.
- TCAM = (Vn / V0)^(1/n) − 1.
- r = cov / (σX × σY), toujours entre −1 et 1.

## Exercices pratiques

- Exercice 1 : nombre de dossiers de crédit traités par jour dans une agence bancaire de Dakar sur 7 jours : 12 ; 16 ; 9 ; 18 ; 15 ; 21 ; 14. Calculez la moyenne, la médiane, l''étendue, la variance et l''écart-type.
- Exercice 2 : l''encours d''épargne d''une mutuelle passe de 4,0 à 6,5 milliards FCFA en 5 ans. Calculez le taux de variation global et le TCAM.
- Exercice 3 : rentabilités trimestrielles (%) de deux fonds fictifs. Fonds A : 1,5 ; 0,5 ; 2,0 ; 1,0. Fonds B : 4,0 ; −2,0 ; 3,0 ; 1,0. Calculez moyenne, écart-type et CV de chacun.
- Exercice 4 (cas pratique) : à partir de l''exercice 3, un client prudent de Saint-Louis vous demande quel fonds choisir. Argumentez.
- Exercice 5 : expliquez pourquoi, dans une série de montants de crédits, la médiane est souvent préférée à la moyenne.

## Corrigé

- Exercice 1 : somme = 105, moyenne = 15. Série rangée : 9 ; 12 ; 14 ; 15 ; 16 ; 18 ; 21 : médiane = 15. Étendue = 21 − 9 = 12. Écarts : −3 ; 1 ; −6 ; 3 ; 0 ; 6 ; −1 ; somme des carrés = 92 ; variance = 92 / 7 ≈ 13,14 ; écart-type ≈ 3,63 dossiers.
- Exercice 2 : taux global = (6,5 − 4,0) / 4,0 = 62,5 %. TCAM = (6,5 / 4,0)^(1/5) − 1 ≈ 10,20 % par an.
- Exercice 3 : fonds A : moyenne 1,25 % ; variance = (0,0625 + 0,5625 + 0,5625 + 0,0625) / 4 = 0,3125 ; écart-type ≈ 0,56 % ; CV ≈ 0,45. Fonds B : moyenne 1,5 % ; variance = (6,25 + 12,25 + 2,25 + 0,25) / 4 = 5,25 ; écart-type ≈ 2,29 % ; CV ≈ 1,53.
- Exercice 4 : le fonds B rapporte un peu plus en moyenne (1,5 % contre 1,25 %) mais il est beaucoup plus risqué (écart-type quatre fois plus élevé, un trimestre à −2 %). Son CV est plus de trois fois supérieur. Pour un client prudent, le fonds A est préférable.
- Exercice 5 : la médiane n''est pas influencée par les valeurs extrêmes. Quelques très gros crédits gonflent la moyenne, alors que la médiane donne le montant du crédit « typique » : la moitié des crédits sont inférieurs, l''autre moitié supérieurs.', 'texte', 60, false, 40
from public.courses c where c.slug = 'lic-fin-l1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Statistiques descriptives pour la finance : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Sujet type d''examen de Licence 1 Finance (entraînement corrigé)', '## Présentation

Ce sujet est un sujet d''entraînement, conçu pour ce cours : ce n''est pas un sujet officiel. Il mobilise les trois matières de l''année. Durée conseillée : 3 heures. Calculatrice non programmable autorisée. Barème indicatif, non officiel : partie A sur 5 points, partie B sur 8 points, partie C sur 7 points. Tous les taux sont fictifs pour l''exemple.

## Partie A : système financier (5 points)

- A1 (1,5 point) : distinguez finance directe et finance indirecte. Laquelle domine dans l''UEMOA ? Pourquoi ?
- A2 (1,5 point) : présentez le rôle de la BCEAO et celui de la BRVM.
- A3 (2 points) : la société fictive Kayar Pêche SA a 2 400 000 actions cotées 3 200 FCFA ; elle verse un dividende de 192 FCFA par action. Calculez sa capitalisation boursière et le rendement du dividende. Un épargnant qui achète 100 actions via une SGI paie combien, hors frais ?

## Partie B : mathématiques financières (8 points)

La société fictive Diallo Transports SARL, à Touba, emprunte 9 000 000 FCFA à sa banque pour acheter un véhicule. Durée 3 ans, taux 8 %, remboursement par annuités constantes de fin d''année.

- B1 (1,5 point) : calculez l''annuité.
- B2 (3 points) : présentez le tableau d''amortissement complet.
- B3 (1,5 point) : calculez le coût total du crédit, puis comparez avec un remboursement par amortissements constants.
- B4 (2 points) : le vendeur propose aussi un paiement unique de 12 000 000 FCFA dans 2 ans. Au taux de 8 %, quelle est la valeur actuelle de cette proposition ? Est-elle intéressante par rapport à un prix comptant de 9 000 000 FCFA ?

## Partie C : statistiques descriptives (7 points)

Dépôts hebdomadaires (milliers de FCFA) collectés par un agent de microfinance à Mbour sur 8 semaines : 420 ; 380 ; 510 ; 460 ; 390 ; 600 ; 450 ; 430.

- C1 (2 points) : calculez la moyenne et la médiane.
- C2 (3 points) : calculez la variance et l''écart-type.
- C3 (2 points) : calculez le coefficient de variation et interprétez la régularité de la collecte.

## Corrigé détaillé de la partie A

A1. En finance directe, les agents à besoin de financement émettent des titres (actions, obligations) achetés directement par les épargnants sur le marché financier. En finance indirecte, un intermédiaire (banque, institution de microfinance) collecte les dépôts et accorde des crédits en supportant le risque. Dans l''UEMOA, la finance indirecte domine : la plupart des entreprises sont des PME qui ne remplissent pas les conditions d''accès à la bourse (forme de société anonyme, comptes certifiés, taille, coûts d''émission) ; le crédit bancaire et la microfinance restent leurs principales sources externes.

A2. La BCEAO est la banque centrale commune des huit États de l''UEMOA : elle émet le franc CFA, conduit la politique monétaire commune (objectif principal : stabilité des prix), gère les réserves de change et veille aux systèmes de paiement. La BRVM est la bourse régionale commune aux huit États : elle organise la cotation et les échanges d''actions et d''obligations ; les ordres sont transmis par les SGI.

A3. Capitalisation = 2 400 000 × 3 200 = 7 680 000 000 FCFA, soit 7,68 milliards. Rendement du dividende = 192 / 3 200 = 6 %. Achat de 100 actions : 100 × 3 200 = 320 000 FCFA hors commissions.

## Corrigé détaillé de la partie B

B1. a = 9 000 000 × 0,08 / (1 − 1,08^−3) ≈ 3 492 302 FCFA.

B2. Tableau (arrondis au franc ; la dernière ligne absorbe l''écart d''arrondi) :

- Année 1 : capital début 9 000 000 ; intérêt 720 000 ; amortissement 2 772 302 ; annuité 3 492 302 ; capital fin 6 227 698.
- Année 2 : capital début 6 227 698 ; intérêt 498 216 ; amortissement 2 994 086 ; annuité 3 492 302 ; capital fin 3 233 612.
- Année 3 : capital début 3 233 612 ; intérêt 258 690 ; amortissement 3 233 612 ; annuité 3 492 302 ; capital fin 0.

Contrôle : 2 772 302 + 2 994 086 + 3 233 612 = 9 000 000.

B3. Coût total = 3 × 3 492 302 − 9 000 000 ≈ 1 476 906 FCFA (1 476 905 sans arrondir l''annuité). Avec des amortissements constants de 3 000 000 FCFA : intérêts = 720 000 + 480 000 + 240 000 = 1 440 000 FCFA. L''amortissement constant coûte environ 36 905 FCFA de moins, car le capital est remboursé plus vite ; en contrepartie, la première annuité est plus lourde (3 720 000 FCFA contre 3 492 302 FCFA).

B4. Valeur actuelle = 12 000 000 × 1,08^−2 ≈ 10 288 066 FCFA. Elle est supérieure au prix comptant de 9 000 000 FCFA : la proposition de paiement différé est plus coûteuse. Autre lecture : 9 000 000 placés 2 ans à 8 % ne deviennent que 10 497 600 FCFA, bien moins que 12 000 000.

## Corrigé détaillé de la partie C

C1. Somme = 3 640 ; moyenne = 3 640 / 8 = 455 milliers de FCFA. Série rangée : 380 ; 390 ; 420 ; 430 ; 450 ; 460 ; 510 ; 600. Médiane = (430 + 450) / 2 = 440 milliers de FCFA.

C2. Écarts à la moyenne : −35 ; −75 ; 55 ; 5 ; −65 ; 145 ; −5 ; −25. Somme des carrés = 1 225 + 5 625 + 3 025 + 25 + 4 225 + 21 025 + 25 + 625 = 35 800. Variance = 35 800 / 8 = 4 475. Écart-type = √4 475 ≈ 66,9 milliers de FCFA.

C3. CV = 66,9 / 455 ≈ 0,147, soit 14,7 %. La dispersion est modérée : la collecte est assez régulière. La semaine à 600 (peut-être un jour de marché ou une fête) tire la moyenne au-dessus de la médiane.

## Conseils de présentation

- Encadrez les formules et les résultats ; indiquez toujours l''unité.
- Pour le tableau d''amortissement, vérifiez que le capital final est nul et que la somme des amortissements égale l''emprunt.
- Terminez chaque partie par une phrase de conclusion.

## Exercices pratiques

- Exercice 1 : quel est le taux mensuel proportionnel à 9 % annuel ? Le taux mensuel équivalent ?
- Exercice 2 : quelle est la valeur acquise de 9 000 000 FCFA placés 3 ans à 8 % ?
- Exercice 3 : vrai ou faux : « La variance s''exprime dans la même unité que la série. »
- Exercice 4 : citez deux acteurs du marché financier régional autres que la BRVM.
- Exercice 5 : dans un tableau d''amortissement à annuités constantes, comment évoluent les intérêts et les amortissements ?

## Corrigé

- Exercice 1 : proportionnel : 9 % / 12 = 0,75 % ; équivalent : 1,09^(1/12) − 1 ≈ 0,7207 %.
- Exercice 2 : 9 000 000 × 1,08^3 = 11 337 408 FCFA.
- Exercice 3 : faux. La variance s''exprime dans l''unité au carré ; c''est l''écart-type qui a la même unité que la série.
- Exercice 4 : les SGI, le Dépositaire central / Banque de règlement, le régulateur régional (AMF-UMOA).
- Exercice 5 : les intérêts diminuent car le capital restant dû diminue ; les amortissements augmentent (suite géométrique de raison 1 + i) ; leur somme reste égale à l''annuité.', 'texte', 60, false, 50
from public.courses c where c.slug = 'lic-fin-l1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Sujet type d''examen de Licence 1 Finance (entraînement corrigé)');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Introduction à la finance et au système financier', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : étudiants de Licence 1 Finance, Banque, Comptabilité-Finance.
- Objectifs : expliquer le rôle du système financier, présenter les acteurs de l''UEMOA (banques, BCEAO, SFD, marché financier régional), réaliser les calculs de base (marge d''intérêt, coût d''un microcrédit, indicateurs boursiers, taux réel).
- Matériel : tableau blanc, diaporama avec le schéma de la finance directe et indirecte, calculatrice.
- Prérequis : leçon 2 du cours ; pourcentages.
- Tous les taux cités sont fictifs pour l''exemple.

## Déroulé minuté

## 00:00 – 05:00 · Accueil et situation de départ

« Bonjour à toutes et à tous. Imaginons Khady, qui vend du thiakry et du jus de bissap au marché de Sandaga. Chaque soir, il lui reste un peu d''argent. Que peut-elle en faire ? Le garder chez elle, le déposer sur un compte de mutuelle, le confier à une banque, l''envoyer sur son porte-monnaie électronique, ou un jour acheter des actions. À l''autre bout, Ibrahima veut ouvrir un atelier de couture et il lui manque 2 millions de francs. Le système financier, c''est l''ensemble des institutions et des marchés qui permettent à l''argent de Khady d''aller financer le projet d''Ibrahima. Notre séance répond à trois questions : comment l''épargne rencontre-t-elle les besoins de financement ? Qui sont les acteurs dans l''UEMOA ? Quels calculs simples faut-il savoir faire à l''examen ? »

Visuel : une diapositive avec Khady à gauche, Ibrahima à droite, et un point d''interrogation au centre.

## 05:00 – 15:00 · Capacité et besoin de financement

« Un agent a une capacité de financement quand son épargne dépasse ses investissements. C''est souvent le cas des ménages. Un agent a un besoin de financement dans le cas inverse : entreprises qui investissent, État dont les dépenses dépassent les recettes. Le système financier remplit quatre fonctions : collecter et allouer l''épargne, assurer les paiements, répartir les risques, produire de l''information sur les prix des actifs. Notez ces quatre fonctions : elles reviennent souvent en question de cours. »

Question à poser : « Une entreprise qui vend plus qu''elle n''investit et qui dépose ses excédents à la banque est-elle en capacité ou en besoin de financement ? » Réponse attendue : en capacité de financement.

## 15:00 – 27:00 · Finance directe et finance indirecte

« Dessinons le schéma. À gauche, les épargnants. À droite, les emprunteurs. En haut, une flèche directe : c''est le marché financier. L''entreprise émet des actions ou des obligations, l''épargnant les achète par l''intermédiaire d''une SGI. Il détient le titre, il supporte le risque. En bas, une flèche qui passe par une boîte : la banque ou l''institution de microfinance. L''épargnant dépose, la banque prête. L''épargnant détient une créance sur la banque, la banque détient une créance sur l''emprunteur. C''est elle qui supporte le risque de non-remboursement. On dit que la banque transforme : elle reçoit des dépôts à vue et accorde des crédits à moyen terme. »

« Dans notre zone, c''est la finance indirecte qui domine. La raison est simple : la grande majorité des entreprises sont des PME, voire des entreprises individuelles, qui ne peuvent pas aller en bourse. »

Visuel : le schéma complet avec les deux flèches.

## 27:00 – 40:00 · Les acteurs de l''UEMOA

« Premier acteur, la BCEAO, Banque centrale des États de l''Afrique de l''Ouest, dont le siège est à Dakar. Elle est commune à huit pays : Bénin, Burkina Faso, Côte d''Ivoire, Guinée-Bissau, Mali, Niger, Sénégal, Togo. Elle émet le franc CFA, conduit la politique monétaire commune avec pour objectif principal la stabilité des prix, gère les réserves de change et surveille les systèmes de paiement. Retenez la parité fixe : 1 euro = 655,957 francs CFA. »

« Deuxième acteur, la Commission bancaire de l''UMOA, qui supervise les banques et établissements financiers. Troisième acteur, les banques commerciales. Quatrième, les systèmes financiers décentralisés, c''est-à-dire la microfinance : mutuelles d''épargne et de crédit, associations, sociétés. Elles servent les commerçantes comme Khady, les artisans, les agriculteurs. Cinquième ensemble, le marché financier régional : la BRVM, bourse commune installée à Abidjan avec une antenne dans chaque pays, le Dépositaire central / Banque de règlement qui conserve les titres et règle les opérations, les SGI qui transmettent les ordres, et un régulateur régional, l''AMF-UMOA, anciennement CREPMF. Enfin, les assurances et caisses de retraite, qui sont de gros investisseurs. »

« Attention : pour tout chiffre officiel, taux directeur ou montant réglementaire, la seule source fiable est la publication officielle en vigueur, notamment celle de la BCEAO. À l''examen, on vous demande surtout de comprendre les rôles. »

## 40:00 – 48:00 · Pause interactive et quiz

« Faites une pause de deux minutes, puis répondez à ces cinq questions sans regarder vos notes. »

- Question 1 : où est situé le siège de la BCEAO ? Réponse : à Dakar.
- Question 2 : qui transmet les ordres de bourse des investisseurs à la BRVM ? Réponse : les SGI.
- Question 3 : un dépôt sur un compte d''épargne relève-t-il de la finance directe ou indirecte ? Réponse : indirecte.
- Question 4 : combien d''États partagent la BCEAO ? Réponse : huit.
- Question 5 : qui supervise les banques de l''UMOA ? Réponse : la Commission bancaire de l''UMOA.

## 48:00 – 58:00 · Calcul 1 : la marge d''intérêt d''une banque

« Passons aux calculs. Une banque fictive prête 60 000 millions de francs à 8 % et rémunère 75 000 millions de dépôts à 3 %, deux taux fictifs pour l''exemple. Intérêts reçus : 60 000 × 0,08 = 4 800 millions. Intérêts versés : 75 000 × 0,03 = 2 250 millions. Marge d''intérêt : 2 550 millions. Cette marge doit payer les salaires, les agences, l''informatique, couvrir les crédits non remboursés et laisser un bénéfice. Voilà pourquoi un taux débiteur est toujours supérieur au taux créditeur. »

## 58:00 – 1:08:00 · Calcul 2 : le coût d''un microcrédit

« Ibrahima obtient d''une mutuelle 300 000 francs remboursables en 6 mensualités constantes, à 2,5 % par mois, taux fictif pour l''exemple. La formule de la mensualité, que vous approfondirez en mathématiques financières, est : m = C × i / [1 − (1 + i)^−n]. Ici : m = 300 000 × 0,025 / (1 − 1,025^−6) ≈ 54 465 francs. Il rembourse au total 6 × 54 465 = 326 790 francs, soit un coût de 26 790 francs. Pourquoi le taux mensuel d''un microcrédit est-il souvent plus élevé que celui d''un crédit bancaire classique ? Parce que les montants sont petits, les frais de suivi élevés par franc prêté, et que l''institution supporte un risque important sans garanties classiques. »

Exercice corrigé en direct : « Calculez le coût si le prêt était remboursé en une seule fois au bout de 6 mois à intérêts simples au taux proportionnel de 2,5 % par mois. » Correction : 300 000 × 0,025 × 6 = 45 000 francs. « Le coût est plus élevé, car Ibrahima garde tout le capital pendant 6 mois au lieu de le rembourser progressivement. »

## 1:08:00 – 1:18:00 · Calcul 3 : indicateurs boursiers et taux réel

« Une société fictive, Saloum Énergie SA, compte 8 000 000 d''actions cotées 1 500 francs. Capitalisation : 8 000 000 × 1 500 = 12 milliards de francs. Dividende : 120 francs ; rendement du dividende : 120 / 1 500 = 8 %. Bénéfice par action : 150 francs ; PER : 1 500 / 150 = 10. »

« Une obligation de nominal 10 000 francs au taux facial de 7 % verse un coupon de 700 francs par an. Si elle cote 9 800 francs, son rendement courant vaut 700 / 9 800 ≈ 7,14 %. Quand le prix baisse, le rendement monte : retenez cette relation inverse. »

« Dernier calcul : le taux réel. Un placement rapporte 7 % ; l''inflation est de 2,5 %, chiffres fictifs. Taux réel exact : 1,07 / 1,025 − 1 ≈ 4,39 %. L''approximation 7 − 2,5 = 4,5 % est proche, mais l''examinateur préfère la formule exacte. »

## 1:18:00 – 1:24:00 · Synthèse

« Résumons. Le système financier relie capacité et besoin de financement, par la finance directe (marché) et indirecte (banques, SFD). Dans l''UEMOA, la BCEAO conduit la politique monétaire, la Commission bancaire supervise, la BRVM organise la bourse régionale avec les SGI et le Dépositaire central. Les calculs à maîtriser : marge d''intérêt, coût d''un crédit, capitalisation, rendement du dividende, PER, rendement courant, taux réel. Pour chaque calcul, écrivez la formule, faites l''application numérique, donnez l''unité et terminez par une phrase d''interprétation : c''est cette rigueur qui fait la différence entre un 12 et un 16 sur 20. »

## 1:24:00 – 1:30:00 · Évaluation finale

- Question 1 : définissez la finance indirecte. Réponse : financement passant par un intermédiaire (banque, SFD) qui collecte l''épargne, accorde des crédits et supporte le risque.
- Question 2 : citez deux missions de la BCEAO. Réponse : émettre la monnaie et conduire la politique monétaire commune (aussi : gérer les réserves de change, veiller aux systèmes de paiement).
- Question 3 : une action cote 2 000 francs et verse 100 francs de dividende. Rendement du dividende ? Réponse : 100 / 2 000 = 5 %.
- Question 4 : 4 000 000 d''actions à 2 000 francs : capitalisation ? Réponse : 8 milliards de francs.
- Question 5 : taux nominal 5 %, inflation 2 % (fictifs) : taux réel exact ? Réponse : 1,05 / 1,02 − 1 ≈ 2,94 %.

« Merci pour votre attention. Refaites les exercices de la leçon 2 avant la prochaine séance. »', 'video', 90, false, 60
from public.courses c where c.slug = 'lic-fin-l1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Introduction à la finance et au système financier');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Mathématiques financières appliquées', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : étudiants de Licence 1 Finance et Gestion.
- Objectifs : maîtriser intérêts simples et composés, valeur actuelle, taux équivalents, annuités, et construire sans erreur un tableau d''amortissement d''emprunt indivis.
- Matériel : tableau blanc, diaporama avec un modèle de tableau d''amortissement vide, calculatrice scientifique.
- Prérequis : puissances et puissances négatives ; leçon 3 du cours.
- Tous les taux sont fictifs pour l''exemple.

## Déroulé minuté

## 00:00 – 05:00 · Pourquoi le temps a un prix

« Bonjour. Je vous pose une question : préférez-vous recevoir 1 000 000 de francs aujourd''hui ou 1 000 000 de francs dans un an ? Tout le monde choisit aujourd''hui. Pourquoi ? Parce qu''avec l''argent d''aujourd''hui, je peux le placer, le dépenser ou me protéger d''un imprévu. L''intérêt est le prix du temps. Toute la séance repose sur cette idée : on ne compare jamais des sommes versées à des dates différentes sans les ramener à la même date. »

## 05:00 – 15:00 · Intérêts simples

« Pour les opérations de moins d''un an, on utilise l''intérêt simple : I = C × t × j / 360, l''année commerciale comptant 360 jours. Exemple : une entreprise de Rufisque place 3 000 000 de francs pendant 60 jours à 8 %. I = 3 000 000 × 0,08 × 60 / 360 = 40 000 francs. La valeur acquise est 3 040 000 francs. Piège classique : oublier de diviser par 360 et trouver 14 400 000 francs d''intérêts ! Un résultat absurde doit toujours vous alerter. »

## 15:00 – 27:00 · Intérêts composés, valeur acquise, valeur actuelle

« Au-delà d''un an, les intérêts sont capitalisés. Valeur acquise : Cn = C0 × (1 + i)^n. Valeur actuelle : C0 = Cn × (1 + i)^−n. Exemple : 4 000 000 de francs placés 3 ans à 6 % donnent 4 000 000 × 1,06³ = 4 764 064 francs. À l''inverse, 4 000 000 de francs à recevoir dans 3 ans valent aujourd''hui, à 6 %, 4 000 000 × 1,06^−3 ≈ 3 358 477 francs. »

« Taux équivalents : quel taux semestriel donne le même résultat que 10 % par an ? (1,10)^(1/2) − 1 ≈ 4,88 %. Le taux proportionnel serait 5 %. Le taux mensuel équivalent est 1,10^(1/12) − 1 ≈ 0,797 %. Retenez : proportionnel pour l''intérêt simple, équivalent pour l''intérêt composé. »

Visuel : un axe du temps avec 0, 1, 2, 3 et des flèches vers la droite (capitaliser) et vers la gauche (actualiser).

## 27:00 – 38:00 · Les annuités constantes

« Une annuité est un versement régulier. Si un commerçant verse 300 000 francs à la fin de chaque année pendant 4 ans sur un compte rémunéré à 7 %, il dispose au dernier versement de Vn = 300 000 × (1,07⁴ − 1) / 0,07 ≈ 1 331 983 francs. Si une entreprise doit recevoir 2 000 000 de francs par an pendant 3 ans, la valeur actuelle de ces flux à 9 % est V0 = 2 000 000 × (1 − 1,09^−3) / 0,09 ≈ 5 062 589 francs. Ces deux formules sont la base des emprunts. »

« Une précision qui tombe souvent en QCM : ces formules supposent des versements en fin de période. Si les versements ont lieu en début de période, chaque flux est placé une période de plus : on multiplie la valeur obtenue par (1 + i). Lisez donc attentivement l''énoncé : “à la fin de chaque année” ou “au début de chaque année” ne donne pas le même résultat. »

## 38:00 – 45:00 · Pause interactive et quiz

- Question 1 : intérêt de 1 800 000 francs placés 30 jours à 6 % ? Réponse : 1 800 000 × 0,06 × 30 / 360 = 9 000 francs.
- Question 2 : vrai ou faux, le taux mensuel équivalent à 12 % annuel vaut exactement 1 % ? Réponse : faux, il vaut environ 0,949 %.
- Question 3 : que signifie actualiser ? Réponse : ramener une somme future à sa valeur d''aujourd''hui, en la multipliant par (1 + i)^−n.
- Question 4 : 1 000 000 de francs placés 2 ans à 10 % deviennent ? Réponse : 1 210 000 francs.

## 45:00 – 58:00 · Emprunt indivis : amortissement constant

« Passons au cœur de l''examen. La société fictive Sow Équipements SARL, à Thiès, emprunte 8 000 000 de francs sur 4 ans à 10 %. Première modalité : l''amortissement constant, 8 000 000 / 4 = 2 000 000 de francs par an. Je remplis le tableau ligne par ligne, et je vous demande de le faire avec moi. »

- Année 1 : capital début 8 000 000 ; intérêt 800 000 ; amortissement 2 000 000 ; annuité 2 800 000.
- Année 2 : 6 000 000 ; 600 000 ; 2 000 000 ; 2 600 000.
- Année 3 : 4 000 000 ; 400 000 ; 2 000 000 ; 2 400 000.
- Année 4 : 2 000 000 ; 200 000 ; 2 000 000 ; 2 200 000.

« Total des intérêts : 2 000 000 de francs. Les annuités baissent de 200 000 chaque année, soit l''amortissement multiplié par le taux. »

## 58:00 – 1:12:00 · Emprunt indivis : annuités constantes

« Deuxième modalité, la plus courante dans les banques : l''annuité constante. a = C × i / [1 − (1 + i)^−n] = 8 000 000 × 0,10 / (1 − 1,10^−4) ≈ 2 523 766 francs. Méthode pour chaque ligne : intérêt = capital début × taux ; amortissement = annuité − intérêt ; capital fin = capital début − amortissement. »

- Année 1 : capital début 8 000 000 ; intérêt 800 000 ; amortissement 1 723 766 ; capital fin 6 276 234.
- Année 2 : 6 276 234 ; 627 623 ; 1 896 143 ; 4 380 091.
- Année 3 : 4 380 091 ; 438 009 ; 2 085 757 ; 2 294 334.
- Année 4 : 2 294 334 ; 229 432 ; 2 294 334 ; 0.

« Dans la dernière ligne, l''amortissement est égal au capital restant et l''intérêt absorbe l''écart d''arrondi. Contrôles : premier amortissement = a − C × i = 2 523 766 − 800 000 = 1 723 766 ; les amortissements sont multipliés par 1,10 d''une année à l''autre ; leur somme fait 8 000 000. Total des intérêts : 4 × 2 523 766 − 8 000 000 ≈ 2 095 064 francs, un peu plus qu''en amortissement constant. »

Exercice corrigé en direct : « Un ménage de Pikine emprunte 6 000 000 de francs sur 5 ans à 7,5 %. Annuité ? » Correction : a = 6 000 000 × 0,075 / (1 − 1,075^−5) ≈ 1 482 988 francs ; première ligne : intérêt 450 000, amortissement 1 032 988, capital fin 4 967 012.

## 1:12:00 – 1:20:00 · Remboursement in fine et comparaison

« Troisième modalité : in fine. On paie 800 000 francs d''intérêts chaque année et on rembourse les 8 000 000 à la fin ; dernière annuité 8 800 000 francs ; total des intérêts 3 200 000 francs. Comparaison : amortissement constant 2 000 000, annuités constantes environ 2 095 064, in fine 3 200 000. Plus on rembourse tard, plus on paie d''intérêts. Mais le choix dépend aussi de la trésorerie : un projet qui rapporte surtout les dernières années peut préférer l''in fine. »

« Faisons ensemble un petit cas pratique. Le gérant de Sow Équipements prévoit des recettes faibles la première année, car il doit former ses techniciens, puis des recettes fortes ensuite. Quelle modalité lui conseiller ? L''amortissement constant est le moins cher, mais la première annuité, 2 800 000 francs, est la plus lourde. L''annuité constante lisse la charge à 2 523 766 francs. L''in fine allège les premières années mais concentre un risque énorme à l''échéance. Une réponse argumentée : l''annuité constante, avec un compromis entre coût total et charge de la première année ; l''in fine seulement si l''entreprise peut constituer progressivement une épargne pour le remboursement final. À l''examen, ce qui compte est l''argumentation chiffrée. »

## 1:20:00 – 1:24:00 · Synthèse

« Retenez quatre formules : I = C × t × j / 360 ; Cn = C0 × (1 + i)^n ; V0 = a × [1 − (1 + i)^−n] / i ; a = C × i / [1 − (1 + i)^−n]. Et trois contrôles pour tout tableau : capital final nul, somme des amortissements égale à l''emprunt, annuité égale à intérêt plus amortissement. »

## 1:24:00 – 1:30:00 · Évaluation finale

- Question 1 : valeur acquise de 2 000 000 de francs placés 2 ans à 5 % ? Réponse : 2 000 000 × 1,05² = 2 205 000 francs.
- Question 2 : valeur actuelle à 10 % de 1 331 000 francs payables dans 3 ans ? Réponse : 1 331 000 / 1,331 = 1 000 000 de francs.
- Question 3 : emprunt de 5 000 000 de francs sur 5 ans en amortissement constant à 8 % : première annuité ? Réponse : amortissement 1 000 000 + intérêt 400 000 = 1 400 000 francs.
- Question 4 : dans un tableau à annuités constantes, quelle est la raison de la suite des amortissements ? Réponse : 1 + i.
- Question 5 : taux trimestriel proportionnel à 12 % annuel ? Réponse : 3 %.

« Pour la prochaine séance, refaites seuls le tableau à annuités constantes sans regarder le corrigé. »', 'video', 90, false, 70
from public.courses c where c.slug = 'lic-fin-l1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Mathématiques financières appliquées');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Statistiques descriptives pour la finance', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : étudiants de Licence 1 Finance, Banque et Gestion.
- Objectifs : résumer une série financière par ses paramètres de position et de dispersion, traiter une série classée, calculer indices et taux de croissance moyens, mesurer la liaison entre deux séries.
- Matériel : tableau blanc, diaporama avec les séries de données, calculatrice en mode statistique.
- Prérequis : leçon 4 du cours ; puissances et racines.
- Toutes les données sont fictives.

## Déroulé minuté

## 00:00 – 05:00 · Pourquoi la statistique en finance

« Bonjour. Un gestionnaire de fonds à Dakar vous dit : “Mon fonds a rapporté 6 % par an en moyenne.” Est-ce suffisant pour décider d''y placer vos économies ? Non. Il faut savoir si ces 6 % sont réguliers ou s''ils cachent des années à +20 % et d''autres à −10 %. La statistique descriptive donne les outils pour résumer la rentabilité et le risque. Aujourd''hui : position, dispersion, séries classées, indices, et liaison entre deux titres. »

## 05:00 – 12:00 · Le vocabulaire indispensable

« La population, ce sont les éléments étudiés : par exemple les années de vie d''un fonds. L''individu, c''est chaque année. La variable, c''est la rentabilité annuelle : variable quantitative continue. Une variable comme le nombre de crédits accordés par jour est quantitative discrète ; le secteur d''activité d''un emprunteur est une variable qualitative. L''effectif est le nombre d''individus par modalité, la fréquence est l''effectif divisé par l''effectif total. »

## 12:00 – 25:00 · Série simple : rentabilité d''un fonds

« Le fonds fictif Fonds Teranga Croissance a eu ces rentabilités annuelles en % sur 6 ans : 8 ; 12 ; −4 ; 10 ; 6 ; 4. Calculons ensemble. »

- Moyenne : (8 + 12 − 4 + 10 + 6 + 4) / 6 = 36 / 6 = 6 %.
- Médiane : série rangée −4 ; 4 ; 6 ; 8 ; 10 ; 12 ; N pair, donc médiane = (6 + 8) / 2 = 7 %.
- Étendue : 12 − (−4) = 16 points.
- Écarts à la moyenne : 2 ; 6 ; −10 ; 4 ; 0 ; −2. Carrés : 4 ; 36 ; 100 ; 16 ; 0 ; 4 ; somme 160.
- Variance : 160 / 6 ≈ 26,67. Écart-type : √26,67 ≈ 5,16 %.

« Interprétation : la rentabilité tourne autour de 6 % mais avec une dispersion d''environ 5 points ; une année négative montre que le risque de perte existe. Si votre enseignant utilise la variance d''échantillon, vous diviserez par N − 1 = 5 : 32, écart-type ≈ 5,66 %. Écrivez toujours la formule choisie. »

« Astuce de calculatrice : en mode statistique, saisissez les six valeurs, puis lisez la moyenne, l''écart-type de population (souvent noté σx ou σn) et l''écart-type d''échantillon (noté sx ou σn−1). Mais à l''examen, montrez le détail du calcul : un résultat sans démarche rapporte peu de points, et un détail juste avec une erreur de frappe finale rapporte presque tous les points. »

## 25:00 – 37:00 · Série classée : l''épargne des membres d''une mutuelle

« Une mutuelle d''épargne fictive de Louga classe 100 membres selon leur épargne en milliers de francs : [0 ; 50[ : 20 ; [50 ; 100[ : 35 ; [100 ; 200[ : 30 ; [200 ; 400[ : 15. Première étape : les centres de classes, 25 ; 75 ; 150 ; 300. »

- Moyenne : (25 × 20 + 75 × 35 + 150 × 30 + 300 × 15) / 100 = 12 125 / 100 = 121,25 milliers de francs.
- Variance : Σni × ci² = 2 234 375 ; divisé par 100 : 22 343,75 ; moins 121,25² = 14 701,56 ; variance ≈ 7 642,19 ; écart-type ≈ 87,4 milliers de francs.
- Médiane : effectifs cumulés 20 ; 55 ; 85 ; 100. La 50e observation se trouve dans [50 ; 100[. Me = 50 + (50 − 20) / 35 × 50 ≈ 92,9 milliers de francs.
- Classe modale : densités 20 / 50 = 0,4 ; 35 / 50 = 0,7 ; 30 / 100 = 0,3 ; 15 / 200 = 0,075. Classe modale : [50 ; 100[.

« La moyenne (121) dépasse la médiane (93) : quelques gros épargnants tirent la moyenne. Dans un rapport, pour décrire le membre typique, la médiane est plus parlante. »

## 37:00 – 45:00 · Pause interactive et quiz

- Question 1 : quelle mesure de position n''est pas influencée par les valeurs extrêmes ? Réponse : la médiane.
- Question 2 : dans quelle unité s''exprime la variance d''une série en FCFA ? Réponse : en FCFA au carré ; l''écart-type est en FCFA.
- Question 3 : moyenne de 4 ; 6 ; 8 ; 10 ? Réponse : 7.
- Question 4 : médiane de 3 ; 9 ; 5 ; 7 ; 11 ? Réponse : on range 3 ; 5 ; 7 ; 9 ; 11, médiane 7.
- Question 5 : avec des classes d''amplitudes inégales, comment trouver la classe modale ? Réponse : en comparant les densités, effectif divisé par amplitude.

## 45:00 – 57:00 · Comparer le risque : le coefficient de variation

« Deux titres fictifs, A et B, ont ces rentabilités trimestrielles en % : A : 3 ; 5 ; 4 ; 6 ; 2. B : 6 ; −2 ; 10 ; 1 ; 5. Les deux ont une moyenne de 4 %. Variance de A : 2, écart-type ≈ 1,41 %. Variance de B : 17,2, écart-type ≈ 4,15 %. CV de A ≈ 0,35 ; CV de B ≈ 1,04. À rentabilité moyenne égale, A est nettement moins risqué. Un investisseur qui n''aime pas le risque choisit A. Le CV est particulièrement utile quand les moyennes diffèrent, car il ramène le risque à une unité de rentabilité. »

Exercice corrigé en direct : vérifier la variance de B. Écarts : 2 ; −6 ; 6 ; −3 ; 1 ; carrés : 4 ; 36 ; 36 ; 9 ; 1 ; somme 86 ; 86 / 5 = 17,2.

## 57:00 – 1:08:00 · Indices et taux de croissance annuel moyen

« L''encours de crédit d''une banque fictive passe de 1,80 à 2,31 milliards de francs en 3 ans. Indice base 100 : 2,31 / 1,80 × 100 ≈ 128,3, soit une hausse de 28,3 %. Le TCAM vaut (2,31 / 1,80)^(1/3) − 1 ≈ 8,67 % par an. L''erreur classique serait de diviser 28,3 % par 3 et d''annoncer 9,4 % : c''est faux, car les hausses se composent comme des intérêts composés. Autre exemple simple pour vérifier : une valeur passe de 100 à 121 en 2 ans ; TCAM = (121 / 100)^(1/2) − 1 = 10 %. En effet, 100 × 1,1 × 1,1 = 121. »

## 1:08:00 – 1:20:00 · Covariance et corrélation

« Deux séries X et Y sur 4 périodes. X : 2 ; 4 ; 6 ; 8. Y : 1 ; 3 ; 2 ; 6. Moyennes : 5 et 3. Produits des écarts : (−3)(−2) = 6 ; (−1)(0) = 0 ; (1)(−1) = −1 ; (3)(3) = 9 ; somme 14 ; covariance = 14 / 4 = 3,5. Écarts-types : σX = √5 ≈ 2,236 ; σY = √3,5 ≈ 1,871. Corrélation : r = 3,5 / (2,236 × 1,871) ≈ 0,84. »

« Lecture : r proche de 1, liaison positive forte ; proche de −1, liaison négative forte ; proche de 0, pas de liaison linéaire. En finance, combiner deux titres faiblement ou négativement corrélés réduit le risque du portefeuille : c''est l''idée de la diversification, que vous approfondirez en Licence 2 et 3. Attention : corrélation ne veut pas dire causalité. »

## 1:20:00 – 1:25:00 · Synthèse

« Retenez : moyenne, médiane, mode pour la position ; étendue, variance, écart-type, CV pour la dispersion ; centres de classes, interpolation et densités pour les séries classées ; TCAM = (Vn / V0)^(1/n) − 1 ; r = cov / (σX × σY). À l''examen, chaque calcul se termine par une phrase d''interprétation en langage financier : rentabilité, risque, régularité. Pour réviser, reprenez les séries de cette séance et refaites-les sans regarder vos notes, en chronométrant : à l''examen, une série simple doit être traitée en moins de dix minutes. »

## 1:25:00 – 1:30:00 · Évaluation finale

- Question 1 : moyenne et médiane de 2 ; 5 ; 5 ; 8 ? Réponse : moyenne 5, médiane 5.
- Question 2 : variance de 2 ; 5 ; 5 ; 8 ? Réponse : écarts −3 ; 0 ; 0 ; 3 ; somme des carrés 18 ; variance 18 / 4 = 4,5.
- Question 3 : deux fonds de moyennes 5 % et 10 %, d''écarts-types 2 % et 5 % : lequel a le CV le plus faible ? Réponse : le premier (0,4 contre 0,5).
- Question 4 : une valeur double en 4 ans : TCAM ? Réponse : 2^(1/4) − 1 ≈ 18,9 % par an.
- Question 5 : que signifie r = −0,9 ? Réponse : une forte liaison linéaire négative : quand une série monte, l''autre a tendance à baisser.

« Merci. Entraînez-vous avec le mode statistique de votre calculatrice : il vous fera gagner un temps précieux à l''examen. »', 'video', 90, false, 80
from public.courses c where c.slug = 'lic-fin-l1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Statistiques descriptives pour la finance');

-- Cours : Finance Licence 2 : réussir les examens de deuxième année
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'lic-fin-l2', (select id from public.levels where name = 'Licence 2'), null, 'Finance', 'Finance Licence 2 : réussir les examens de deuxième année', 'Ce cours prépare aux examens de deuxième année de Licence en finance : analyse financière selon le SYSCOHADA révisé (soldes intermédiaires de gestion, CAF, bilan fonctionnel, FR, BFR, trésorerie nette, ratios), gestion de trésorerie (plan de trésorerie, financements à court terme) et marchés financiers (actions, obligations, rendement, évaluation simple). Il s''adresse aux étudiants de Licence 2 du Sénégal et de l''espace UEMOA. Prérequis : comptabilité générale et mathématiques financières de Licence 1.', true, 352
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Réussir ses examens de Licence 2 en Finance', '## Objectifs de la leçon

- Situer la Licence 2 dans le parcours LMD et comprendre ce qui change par rapport à la première année.
- Connaître les trois matières de finance de l''année et les attentes des correcteurs.
- Maîtriser les types d''épreuves de Licence 2, en particulier le cas de diagnostic financier.
- Organiser six semaines de révision efficaces.

## 1. La Licence 2 dans le système LMD

La Licence 2 correspond aux semestres 3 et 4 du cycle de Licence. Comme en première année, chaque semestre est découpé en unités d''enseignement (UE) qui donnent des crédits, et chaque UE regroupe une ou plusieurs matières évaluées par un contrôle continu et un examen terminal, avec une session de rattrapage. Les crédits, coefficients, seuils de validation, règles de compensation et conditions de passage en Licence 3 sont propres à chaque établissement : consultez le règlement des études et la maquette de votre filière auprès de la scolarité.

Ce qui change en Licence 2 : les matières deviennent plus intégrées. Un même sujet peut demander de lire des états financiers, de calculer un besoin de financement, puis de proposer une solution de financement à court terme ou un placement. L''examinateur évalue désormais votre capacité à interpréter et à recommander, pas seulement à calculer.

## 2. Les matières de finance de la Licence 2

- Analyse financière : lecture du compte de résultat et du bilan selon le SYSCOHADA révisé, soldes intermédiaires de gestion (marge commerciale, valeur ajoutée, excédent brut d''exploitation, résultat d''exploitation, résultat des activités ordinaires, résultat hors activités ordinaires, résultat net), capacité d''autofinancement, bilan fonctionnel, fonds de roulement, besoin en fonds de roulement, trésorerie nette, ratios.
- Gestion de trésorerie : plan (ou budget) de trésorerie, encaissements et décaissements, financements à court terme (découvert, escompte, affacturage, crédit de campagne, facilités de caisse), placements de trésorerie excédentaire, calcul du coût réel d''un financement.
- Marchés financiers 1 : fonctionnement du marché financier régional (BRVM, SGI, Dépositaire central / Banque de règlement), actions (rendement, dividende, PER, modèle de Gordon-Shapiro), obligations (prix, coupon, rendement actuariel, relation inverse entre taux et prix), rendement d''un portefeuille simple.

Ces matières s''appuient directement sur la comptabilité générale et les mathématiques financières de Licence 1 : si vos tableaux d''amortissement ou vos calculs d''actualisation sont fragiles, révisez-les en priorité.

## 3. Les types d''épreuves

- Le cas de diagnostic financier : on vous donne un compte de résultat et un bilan d''une entreprise fictive. On attend les SIG, la CAF, le bilan fonctionnel, deux ou trois ratios et un commentaire structuré (forces, faiblesses, recommandations). C''est l''épreuve reine de la Licence 2.
- Le plan de trésorerie : construire un budget mensuel, repérer les mois déficitaires, choisir le financement le moins coûteux. La présentation en tableau (ici décrite ligne par ligne) doit être claire et vérifiable.
- L''exercice d''évaluation : prix d''une obligation, valeur d''une action par le modèle de Gordon-Shapiro, rendement d''un placement.
- Le QCM ou les questions de cours : définitions (BFR, CAF, coupon couru, SGI), relations (si les taux montent, le prix des obligations baisse).
- Le commentaire ou la courte dissertation : « L''entreprise rentable peut-elle faire faillite ? » (oui, par manque de trésorerie : c''est l''occasion de mobiliser FR, BFR et TN).

## 4. Les erreurs fréquentes

- Confondre résultat et trésorerie : une entreprise bénéficiaire peut avoir une trésorerie négative si son BFR explose.
- Oublier les retraitements du bilan fonctionnel (amortissements cumulés en ressources stables, valeurs brutes en emplois stables).
- Intégrer les produits de cession d''immobilisations dans la CAF : c''est faux, ils en sont exclus.
- Inscrire les ventes du mois dans les encaissements du mois alors que les clients paient à 30 ou 60 jours.
- Calculer le coût d''un escompte sur la valeur nominale de l''effet au lieu du montant net réellement reçu.
- Oublier qu''une hausse des taux fait baisser le prix des obligations existantes.
- Utiliser des taux réels de mémoire : dans ce cours, les taux d''intérêt et d''impôt des exemples sont fictifs pour l''exemple. Pour un dossier réel, consultez les textes et publications officiels en vigueur.

## 5. Méthode de révision

- Une fiche par matière avec les schémas : bilan fonctionnel en quatre masses, cascade des SIG, plan de trésorerie type.
- Un formulaire unique (CAF, FR, BFR, TN, ratios, Gordon-Shapiro, prix d''une obligation, coût de l''escompte).
- Une méthode de commentaire : constat chiffré, explication, conséquence, recommandation.
- Des sujets complets en temps limité, car la gestion du temps est le premier facteur d''échec dans les cas de diagnostic.

## 6. Plan de révision sur six semaines

- Semaine 1 : rappel du compte de résultat et du bilan SYSCOHADA ; cascade des SIG ; CAF par les deux méthodes.
- Semaine 2 : bilan fonctionnel, FR, BFR, TN ; ratios de structure, d''activité et de rentabilité ; rédaction de commentaires.
- Semaine 3 : plan de trésorerie (budgets des encaissements et des décaissements) ; financements à court terme et calcul de leur coût.
- Semaine 4 : marchés financiers : organisation régionale, actions (rendement, PER, Gordon-Shapiro).
- Semaine 5 : obligations (prix, rendement actuariel, coupon couru) ; reprise des points faibles.
- Semaine 6 : deux sujets d''examen blancs (voir la leçon 5) en conditions réelles, correction, relecture du formulaire.

## Points clés

- En Licence 2, on attend des calculs justes et une interprétation argumentée.
- Le diagnostic financier (SIG, CAF, FR, BFR, TN, ratios) est le cœur de l''année.
- Résultat et trésorerie sont deux choses différentes.

## Exercices pratiques

- Exercice 1 : citez dans l''ordre les soldes intermédiaires de gestion du SYSCOHADA révisé, de la marge commerciale au résultat net.
- Exercice 2 : vrai ou faux : « Une entreprise bénéficiaire ne peut pas avoir de problème de trésorerie. » Justifiez.
- Exercice 3 : proposez un plan de commentaire pour un diagnostic financier.
- Exercice 4 (cas pratique) : Ousmane, étudiant à Dakar, doit aussi préparer un stage pendant ses six semaines de révision. Il dispose de deux heures par soir en semaine et du samedi. Proposez une répartition.

## Corrigé

- Exercice 1 : marge commerciale, valeur ajoutée, excédent brut d''exploitation, résultat d''exploitation, résultat financier, résultat des activités ordinaires, résultat hors activités ordinaires, résultat net. Le chiffre d''affaires figure aussi dans le tableau des SIG.
- Exercice 2 : faux. Le résultat mesure l''enrichissement, la trésorerie mesure l''argent disponible. Si les clients paient tard, si les stocks gonflent ou si l''entreprise investit sans financement à long terme, la trésorerie peut devenir négative malgré un bénéfice.
- Exercice 3 : 1) activité et rentabilité (évolution du chiffre d''affaires, VA, EBE, résultat net, CAF) ; 2) équilibre financier (FR, BFR, TN) ; 3) structure et solvabilité (autonomie, endettement, capacité de remboursement) ; 4) conclusion et recommandations.
- Exercice 4 : soirs de semaine (2 heures) : fiches et exercices courts d''une matière par soir, en tournant sur les trois matières ; samedi : un cas complet en temps limité. Semaines 1 et 2 : analyse financière ; semaines 3 et 4 : trésorerie puis marchés financiers ; semaines 5 et 6 : sujets blancs. On garde au moins un sujet complet par semaine en fin de période.', 'texte', 60, true, 10
from public.courses c where c.slug = 'lic-fin-l2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Réussir ses examens de Licence 2 en Finance');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Analyse financière : l''essentiel pour l''examen', '## Objectifs de la leçon

- Calculer les soldes intermédiaires de gestion (SIG) du SYSCOHADA révisé et la capacité d''autofinancement (CAF).
- Construire un bilan fonctionnel et calculer FR, BFR et trésorerie nette.
- Calculer et commenter les principaux ratios.

Cas fil rouge : Kër Textiles SA, entreprise fictive de Thiès (montants en millions de FCFA). Le taux d''impôt sur le résultat de 30 % est fictif pour l''exemple.

## Fiche 1 : la cascade des SIG

Données de l''exercice : ventes de marchandises 400 ; achats de marchandises 260 ; variation de stocks de marchandises 10 (déstockage) ; ventes de produits fabriqués 900 ; travaux et services vendus 50 ; produits accessoires 10 ; production stockée 20 ; subventions d''exploitation 10 ; autres produits 5 ; achats de matières premières 380 ; variation de stocks de matières −15 (stockage) ; autres achats 40 ; transports 30 ; services extérieurs 120 ; impôts et taxes 25 ; autres charges 10 ; charges de personnel 300 ; dotations aux amortissements, provisions et dépréciations 90 ; reprises 5 ; revenus financiers 8 ; frais financiers 40 ; produits des cessions d''immobilisations 30 ; valeur comptable des immobilisations cédées 18.

- Marge commerciale = ventes de marchandises − (achats de marchandises ± variation de stocks) = 400 − (260 + 10) = 130.
- Chiffre d''affaires = 400 + 900 + 50 + 10 = 1 360.
- Valeur ajoutée = marge commerciale + ventes de produits fabriqués + travaux et services + produits accessoires + production stockée + subventions d''exploitation + autres produits − (achats de matières ± variation + autres achats + transports + services extérieurs + impôts et taxes + autres charges) = 1 125 − 590 = 535. Dans le SYSCOHADA, les subventions d''exploitation entrent dans la valeur ajoutée et les impôts et taxes en sont déduits.
- Excédent brut d''exploitation (EBE) = VA − charges de personnel = 535 − 300 = 235.
- Résultat d''exploitation = EBE + reprises − dotations = 235 + 5 − 90 = 150.
- Résultat financier = 8 − 40 = −32.
- Résultat des activités ordinaires (RAO) = 150 − 32 = 118.
- Résultat hors activités ordinaires (RHAO) = 30 − 18 = 12.
- Impôt sur le résultat (30 %, fictif) = 0,30 × (118 + 12) = 39.
- Résultat net = 118 + 12 − 39 = 91.

L''EBE mesure la performance économique avant amortissements et financement.

## Fiche 2 : la capacité d''autofinancement

La CAF est le surplus monétaire potentiel dégagé par l''activité, qui finance investissements, remboursements et dividendes.

Méthode additive : CAF = résultat net + dotations − reprises − produits de cession d''immobilisations + valeur comptable des cessions = 91 + 90 − 5 − 30 + 18 = 164.

Méthode soustractive : CAF = EBE + produits encaissables − charges décaissables (hors cessions) = 235 + 8 − 40 − 39 = 164.

Les deux méthodes donnent le même résultat : c''est votre contrôle. Si l''entreprise distribue 40 de dividendes, l''autofinancement vaut 164 − 40 = 124.

## Fiche 3 : le bilan fonctionnel

Schéma décrit en texte : en haut, emplois stables (immobilisations brutes) face aux ressources stables (capitaux propres, amortissements et dépréciations cumulés, dettes financières) ; au milieu, actif et passif circulants d''exploitation et hors activités ordinaires (HAO) ; en bas, trésorerie-actif et trésorerie-passif.

Bilan de Kër Textiles : immobilisations brutes 1 200 ; stocks 220 ; clients 300 ; autres créances d''exploitation 40 ; créances HAO 10 ; trésorerie-actif 35. Capitaux propres 660 ; amortissements et dépréciations cumulés 450 ; dettes financières 350 ; fournisseurs 180 ; dettes fiscales et sociales 90 ; dettes HAO 15 ; trésorerie-passif 60. Total des emplois = total des ressources = 1 805.

- Ressources stables = 660 + 450 + 350 = 1 460.
- Fonds de roulement net global (FR) = 1 460 − 1 200 = 260.
- BFR d''exploitation = (220 + 300 + 40) − (180 + 90) = 290.
- BFR hors activités ordinaires = 10 − 15 = −5.
- BFR global = 285.
- Trésorerie nette = FR − BFR = 260 − 285 = −25, et vérification : 35 − 60 = −25.

Le FR, positif, ne couvre pas le BFR : l''entreprise dépend des concours bancaires courants. Le BFR d''exploitation représente 290 / 1 360 × 360 ≈ 77 jours de chiffre d''affaires.

## Fiche 4 : les ratios essentiels

- Délai clients ≈ clients / chiffre d''affaires × 360 = 300 / 1 360 × 360 ≈ 79 jours (en pratique, on rapporte les créances TTC au chiffre d''affaires TTC ; on raisonne ici hors taxes pour simplifier).
- Délai fournisseurs ≈ fournisseurs / achats × 360 = 180 / (260 + 380 + 40) × 360 ≈ 95 jours.
- Autonomie financière = capitaux propres / dettes financières = 660 / 350 ≈ 1,89.
- Capacité de remboursement = dettes financières / CAF = 350 / 164 ≈ 2,1 années de CAF.
- Rentabilité financière = résultat net / capitaux propres = 91 / 660 ≈ 13,8 %.
- Taux de marge brute d''exploitation = EBE / CA = 235 / 1 360 ≈ 17,3 %.

Commentaire type : Kër Textiles est rentable (marge d''EBE de 17 %, rentabilité financière proche de 14 %) et peu endettée. Sa faiblesse est son cycle d''exploitation : 79 jours de crédit clients gonflent le BFR et rendent la trésorerie négative. Recommandations : réduire les délais clients, renforcer le FR (capital ou emprunt à moyen terme), mieux gérer les stocks.

## Points clés

- Cascade SYSCOHADA : MC, VA, EBE, RE, RF, RAO, RHAO, RN.
- CAF : additive et soustractive doivent concorder ; les cessions en sont exclues.
- TN = FR − BFR = trésorerie-actif − trésorerie-passif.
- Un ratio se compare et se commente.

## Exercices pratiques

- Exercice 1 : une entreprise fictive de Dakar présente : ventes de marchandises 200 ; achats de marchandises 150 ; variation de stocks de marchandises −5 ; production vendue 300 ; achats de matières 100 ; services extérieurs 60 ; impôts et taxes 10 ; charges de personnel 90 ; dotations 30 ; frais financiers 15 ; impôt 30 % (fictif). Calculez la cascade des SIG jusqu''au résultat net.
- Exercice 2 : calculez la CAF de l''exercice 1 par les deux méthodes.
- Exercice 3 : ressources stables 800 ; emplois stables 650 ; stocks 120 ; clients 150 ; fournisseurs 90 ; dettes fiscales et sociales 30 ; trésorerie-actif 20. Calculez FR, BFR, TN et la trésorerie-passif.
- Exercice 4 : clients 150 et chiffre d''affaires 900 : calculez le délai clients et commentez si le secteur pratique 45 jours.
- Exercice 5 (cas pratique) : une entreprise a un résultat net en hausse, mais une trésorerie nette passée de +40 à −60. Le FR est stable. Expliquez et proposez trois actions.

## Corrigé

- Exercice 1 : MC = 200 − (150 − 5) = 55 ; VA = 55 + 300 − (100 + 60 + 10) = 185 ; EBE = 185 − 90 = 95 ; RE = 95 − 30 = 65 ; RF = −15 ; RAO = 50 ; RHAO = 0 ; impôt = 15 ; résultat net = 35.
- Exercice 2 : additive : 35 + 30 = 65. Soustractive : 95 − 15 − 15 = 65.
- Exercice 3 : FR = 800 − 650 = 150 ; BFR = 120 + 150 − 90 − 30 = 150 ; TN = 0. L''équilibre du bilan (940 de chaque côté) donne une trésorerie-passif de 20 : TN = 20 − 20 = 0.
- Exercice 4 : 150 / 900 × 360 = 60 jours, soit 15 jours de plus que le secteur : les clients paient trop tard, le BFR est alourdi ; il faut revoir les conditions de crédit et le recouvrement.
- Exercice 5 : TN = FR − BFR ; le FR étant stable, c''est le BFR qui a augmenté de 100 (hausse des stocks, des créances clients ou baisse du crédit fournisseurs, souvent liée à la croissance). Actions : réduire les délais clients, ajuster les stocks, négocier de meilleurs délais fournisseurs, et renforcer le FR par des capitaux permanents.', 'texte', 60, false, 20
from public.courses c where c.slug = 'lic-fin-l2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Analyse financière : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Gestion de trésorerie : l''essentiel pour l''examen', '## Objectifs de la leçon

- Construire un plan de trésorerie mensuel à partir des budgets d''encaissements et de décaissements.
- Connaître les financements à court terme : découvert, facilité de caisse, escompte, affacturage, crédit de campagne.
- Calculer le coût réel d''un financement et choisir le moins cher.

Tous les taux et commissions de cette leçon sont fictifs pour l''exemple ; la TVA est ignorée pour simplifier.

## Fiche 1 : le rôle du trésorier

Le trésorier veille à ce que l''entreprise puisse payer ses dettes à l''échéance (solvabilité à court terme) au moindre coût. Il prévoit les flux, négocie avec les banques, finance les déficits et place les excédents. L''idéal est une trésorerie proche de zéro : un excédent durable est de l''argent qui dort, un déficit durable coûte des agios et fragilise l''entreprise.

## Fiche 2 : le plan de trésorerie

Le plan de trésorerie (ou budget de trésorerie) récapitule, mois par mois : la trésorerie de début, les encaissements, les décaissements, le solde du mois et la trésorerie de fin.

Cas : Casamance Fruits SARL, entreprise fictive de Ziguinchor qui transforme des mangues. Trésorerie au 1er janvier : 2 millions FCFA. Ventes (millions) : décembre 10, janvier 8, février 12, mars 15. Les clients paient 40 % au comptant et 60 % le mois suivant. Les achats représentent 50 % des ventes du mois et sont payés le mois suivant. Salaires : 2,5 par mois ; loyer et charges : 0,8 par mois ; échéance d''emprunt : 1,5 en février ; achat d''un camion frigorifique : 9 en février.

Budget des encaissements :

- Janvier : 40 % × 8 + 60 % × 10 = 3,2 + 6 = 9,2.
- Février : 40 % × 12 + 60 % × 8 = 4,8 + 4,8 = 9,6.
- Mars : 40 % × 15 + 60 % × 12 = 6 + 7,2 = 13,2.

Budget des décaissements :

- Janvier : achats de décembre 5 + salaires 2,5 + loyer 0,8 = 8,3.
- Février : achats de janvier 4 + 2,5 + 0,8 + emprunt 1,5 + camion 9 = 17,8.
- Mars : achats de février 6 + 2,5 + 0,8 = 9,3.

Plan de trésorerie :

- Janvier : début 2 ; solde du mois +0,9 ; fin 2,9.
- Février : début 2,9 ; solde −8,2 ; fin −5,3.
- Mars : début −5,3 ; solde +3,9 ; fin −1,4.

Lecture : le déficit de février vient de l''achat du camion, un investissement durable. Règle de l''équilibre financier : un investissement se finance par des ressources stables, pas par du découvert. Si Casamance Fruits obtient un crédit d''équipement de 7 millions versé en février, la trésorerie de fin de février devient +1,7 et celle de mars +5,6 (avant la première échéance du nouveau crédit).

## Fiche 3 : les financements à court terme

- Facilité de caisse : découvert de quelques jours pour passer un pic de dépenses (paie, échéance fiscale).
- Découvert autorisé : solde débiteur plus durable, dans la limite d''un plafond négocié ; les intérêts sont calculés sur les soldes débiteurs réels.
- Escompte commercial : la banque achète un effet de commerce (lettre de change, billet à ordre) avant son échéance et verse le montant net d''agios.
- Affacturage : un établissement spécialisé (le factor) achète les créances clients, en assure le recouvrement et en avance une partie, contre une commission et des intérêts.
- Crédit de campagne : crédit saisonnier finançant une campagne agricole ou de commercialisation (arachide, coton, noix de cajou), remboursé avec la vente de la récolte.
- Avances sur marchandises ou sur marchés publics : crédits adossés à un stock ou à un contrat.

## Fiche 4 : calculer le coût d''un financement

Escompte. Casamance Fruits remet à l''escompte un effet de 5 000 000 FCFA à 60 jours. Taux d''escompte : 10 % ; commission fixe : 5 000 FCFA (fictifs).

- Escompte = 5 000 000 × 0,10 × 60 / 360 ≈ 83 333 FCFA.
- Agios = 83 333 + 5 000 = 88 333 FCFA.
- Montant net reçu = 5 000 000 − 88 333 = 4 911 667 FCFA.
- Taux réel = agios / montant net × 360 / durée = 88 333 / 4 911 667 × 360 / 60 ≈ 10,79 %.

Le taux réel dépasse le taux affiché : les intérêts sont prélevés d''avance et les commissions s''ajoutent. Certaines banques ajoutent aussi des jours de banque, ce qui augmente encore le coût.

Découvert. Un découvert de 5 300 000 FCFA pendant 28 jours à 12 % coûte 5 300 000 × 0,12 × 28 / 360 ≈ 49 467 FCFA d''intérêts, auxquels peuvent s''ajouter des commissions.

Affacturage. Sur 10 000 000 FCFA de créances à 45 jours, avec une commission d''affacturage de 1,5 %, un financement de 90 % des créances à 11 % et une retenue de garantie de 10 % : commission = 150 000 FCFA ; intérêts = 9 000 000 × 0,11 × 45 / 360 = 123 750 FCFA. L''affacturage est plus cher, mais il transfère le recouvrement et souvent le risque d''impayé.

## Fiche 5 : placer les excédents

Un excédent ponctuel peut être placé sur un compte à terme, en bons ou obligations du Trésor émis sur le marché régional des titres publics, ou en parts d''organismes de placement collectif. Critères : sécurité, liquidité, rendement, dans cet ordre pour un trésorier prudent.

## Points clés

- Plan de trésorerie : encaissements selon les délais réels de paiement, pas selon les dates de facturation.
- Investissement : ressources stables ; décalages courts : crédits de trésorerie.
- Taux réel de l''escompte = agios / montant net × 360 / jours.

## Exercices pratiques

- Exercice 1 : ventes de mars 6 millions, d''avril 9 millions ; les clients paient 30 % au comptant et 70 % à 30 jours. Calculez les encaissements d''avril.
- Exercice 2 : un effet de 3 000 000 FCFA à 45 jours est escompté à 9 % avec une commission de 4 000 FCFA. Calculez les agios, le net reçu et le taux réel.
- Exercice 3 : comparez avec un découvert de 3 000 000 FCFA pendant 45 jours à 11 % sans commission.
- Exercice 4 : expliquez pourquoi un crédit de campagne est adapté à un collecteur d''arachide de Kaffrine.
- Exercice 5 (cas pratique) : une boutique de Touba prévoit −4 millions en juin (paiement d''un stock pour la Tabaski) et +6 millions en juillet. Elle hésite entre un découvert et un emprunt à 3 ans. Conseillez-la.
- Exercice 6 : une entreprise affiche une trésorerie excédentaire de 15 millions pendant 6 mois. Proposez deux placements et les critères de choix.

## Corrigé

- Exercice 1 : 30 % × 9 + 70 % × 6 = 2,7 + 4,2 = 6,9 millions.
- Exercice 2 : escompte = 3 000 000 × 0,09 × 45 / 360 = 33 750 ; agios = 37 750 ; net = 2 962 250 ; taux réel = 37 750 / 2 962 250 × 360 / 45 ≈ 10,19 %.
- Exercice 3 : découvert = 3 000 000 × 0,11 × 45 / 360 = 41 250 FCFA ; l''escompte est moins cher (37 750 FCFA, taux réel ≈ 10,19 % contre 11 %). On compare toujours les coûts réels, commissions comprises.
- Exercice 4 : le besoin est saisonnier (achat de la récolte), d''un montant élevé et temporaire ; il se rembourse avec la vente de la production. Un crédit de campagne correspond exactement à ce cycle ; un emprunt à long terme serait inadapté.
- Exercice 5 : le besoin est court (un mois) et se résorbe en juillet : un découvert autorisé ou une facilité de caisse négociés à l''avance conviennent. Un emprunt à 3 ans immobiliserait des ressources et ferait payer des intérêts inutiles.
- Exercice 6 : compte à terme de 6 mois ; bons du Trésor ou parts d''organismes de placement collectif monétaires. Critères : sécurité du capital, disponibilité à l''échéance voulue, rendement net de frais.', 'texte', 60, false, 30
from public.courses c where c.slug = 'lic-fin-l2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Gestion de trésorerie : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Marchés financiers 1 : l''essentiel pour l''examen', '## Objectifs de la leçon

- Décrire le marché financier régional et le parcours d''un ordre.
- Calculer le rendement d''une action, son PER et sa valeur par le modèle de Gordon-Shapiro.
- Calculer le prix d''une obligation, son rendement actuariel et le coupon couru.
- Calculer le rendement d''un portefeuille simple.

Toutes les sociétés citées sont fictives et tous les taux sont fictifs pour l''exemple.

## Fiche 1 : organisation du marché

Le marché financier régional de l''UEMOA comprend :

- Le marché primaire, où les titres sont émis : une entreprise lève des capitaux (augmentation de capital, emprunt obligataire), un État émet des obligations. L''argent va à l''émetteur.
- Le marché secondaire, où les titres déjà émis s''échangent entre investisseurs : c''est la bourse, la BRVM, basée à Abidjan avec des antennes nationales. L''argent passe d''un investisseur à un autre ; le marché secondaire donne de la liquidité aux titres.

Parcours d''un ordre : l''investisseur ouvre un compte-titres auprès d''une SGI (société de gestion et d''intermédiation) et passe un ordre d''achat ou de vente (au marché, ou à cours limité en fixant un prix maximum d''achat ou minimum de vente). La SGI transmet l''ordre à la BRVM, où il est confronté aux ordres inverses. Le Dépositaire central / Banque de règlement assure la livraison des titres et le règlement des capitaux. Le régulateur régional (AMF-UMOA) autorise les émissions et protège les épargnants.

## Fiche 2 : les actions

Une action est un titre de propriété du capital d''une société anonyme : droit au dividende (non garanti), droit de vote, droit sur l''actif en liquidation.

Rentabilité sur une période : R = (dividende + cours final − cours initial) / cours initial.

Exemple : Dakar Brasserie Fictive SA est achetée à 5 000 FCFA ; elle verse 300 FCFA de dividende et cote 5 400 FCFA un an après. R = (300 + 5 400 − 5 000) / 5 000 = 700 / 5 000 = 14 %, dont 6 % de rendement du dividende et 8 % de plus-value.

PER = cours / bénéfice par action. Avec un BPA de 500 FCFA : PER = 5 000 / 500 = 10. Un PER élevé traduit des anticipations de croissance, ou un titre cher.

Modèle de Gordon-Shapiro : si le dividende croît à un taux constant g et que l''investisseur exige un taux de rentabilité k (avec k > g), la valeur de l''action vaut P0 = D1 / (k − g), où D1 est le dividende attendu dans un an.

Exemple : D1 = 300 FCFA, k = 12 %, g = 5 % : P0 = 300 / 0,07 ≈ 4 286 FCFA. Si l''action cote 5 000 FCFA, elle paraît surévaluée pour cet investisseur. On peut aussi retrouver le taux de rentabilité implicite : k = D1 / P0 + g = 300 / 5 000 + 5 % = 11 %.

## Fiche 3 : les obligations

Une obligation est un titre de créance : l''émetteur emprunte et s''engage à payer des coupons (intérêts) et à rembourser le nominal. Vocabulaire : valeur nominale, taux facial (ou taux nominal), coupon = nominal × taux facial, date d''échéance, prix d''émission, remboursement in fine ou par amortissements.

Prix d''une obligation : c''est la valeur actuelle, au taux du marché, des flux futurs. P = C × [1 − (1 + r)^−n] / r + N × (1 + r)^−n.

Exemple : obligation fictive de l''État, nominal 10 000 FCFA, taux facial 6,5 %, coupon 650 FCFA, 5 ans, remboursement in fine au pair.

- Si le taux du marché est 6,5 % : P = 10 000 FCFA (au pair).
- Si le taux du marché monte à 7 % : P ≈ 9 795 FCFA.
- Si le taux du marché baisse à 6 % : P ≈ 10 211 FCFA.

Règle essentielle : le prix d''une obligation varie en sens inverse des taux d''intérêt. Quand les taux montent, les anciennes obligations, moins bien rémunérées que les nouvelles, perdent de la valeur : c''est le risque de taux.

Rendement actuariel : c''est le taux r qui égalise le prix payé et la valeur actuelle des flux. Une obligation de nominal 10 000, coupon 600, échéance 4 ans, achetée 9 800 FCFA, a un rendement actuariel d''environ 6,58 % (supérieur au taux facial de 6 % car elle est achetée en dessous du pair). On le trouve par essais successifs.

Coupon couru : entre deux dates de coupon, l''acheteur paie au vendeur la part du coupon déjà courue. Si 73 jours se sont écoulés depuis le dernier coupon annuel de 650 FCFA : coupon couru = 650 × 73 / 365 = 130 FCFA. Prix payé = prix coté (pied de coupon) + coupon couru.

## Fiche 4 : rendement d''un portefeuille

La rentabilité espérée d''un portefeuille est la moyenne pondérée des rentabilités des titres. Un portefeuille investi à 60 % dans une action à 10 % et à 40 % dans une obligation à 6 % a une rentabilité espérée de 0,6 × 10 % + 0,4 × 6 % = 8,4 %. Le risque dépend aussi de la corrélation entre les titres (diversification).

## Points clés

- Primaire : émission ; secondaire : échange ; ordres via les SGI.
- R = (D + P1 − P0) / P0 ; PER = cours / BPA ; Gordon-Shapiro : P0 = D1 / (k − g).
- Prix d''une obligation = valeur actuelle des coupons et du remboursement ; prix et taux varient en sens inverse.

## Exercices pratiques

- Exercice 1 : distinguez marché primaire et marché secondaire, et donnez le rôle d''une SGI.
- Exercice 2 : une action achetée 4 500 FCFA verse 200 FCFA de dividende et cote 4 600 FCFA un an plus tard. Calculez sa rentabilité.
- Exercice 3 : une action cote 6 000 FCFA, son BPA est de 400 FCFA. Calculez le PER.
- Exercice 4 : D1 = 240 FCFA, k = 11 %, g = 3 %. Calculez la valeur de l''action selon Gordon-Shapiro.
- Exercice 5 : une obligation de nominal 10 000 FCFA, taux facial 5 %, 3 ans, in fine. Calculez son prix si le taux du marché est 6 %, puis 4 %. Commentez.
- Exercice 6 (cas pratique) : Mme Ba, enseignante à Kolda, dispose de 2 000 000 FCFA à placer pour 3 ans. Elle hésite entre des actions d''une société fictive cotée (rentabilité espérée 12 %, forte volatilité) et une obligation d''État fictive (rendement actuariel 6,5 %). Conseillez-la.
- Exercice 7 : une obligation de nominal 10 000 FCFA, coupon 700 FCFA, 3 ans, cote 10 300 FCFA. Son rendement actuariel est-il supérieur ou inférieur à 7 % ? Vérifiez qu''il vaut environ 5,88 %.

## Corrigé

- Exercice 1 : primaire : émission de titres nouveaux, les fonds vont à l''émetteur ; secondaire : échange de titres existants entre investisseurs. La SGI tient les comptes-titres, reçoit et transmet les ordres, conseille les clients.
- Exercice 2 : R = (200 + 4 600 − 4 500) / 4 500 = 300 / 4 500 ≈ 6,67 %.
- Exercice 3 : PER = 6 000 / 400 = 15.
- Exercice 4 : P0 = 240 / (0,11 − 0,03) = 3 000 FCFA.
- Exercice 5 : à 6 % : P = 500 / 1,06 + 500 / 1,06² + 10 500 / 1,06³ ≈ 9 733 FCFA (sous le pair) ; à 4 % : P ≈ 10 278 FCFA (au-dessus du pair). La hausse des taux fait baisser le prix, la baisse le fait monter.
- Exercice 6 : horizon court (3 ans) et profil probablement prudent : l''obligation d''État offre un revenu régulier et un risque faible si elle est conservée jusqu''à l''échéance. Les actions offrent une rentabilité espérée plus forte mais peuvent perdre de la valeur. Proposition : majorité en obligation (par exemple 70 %), le reste en actions pour profiter du potentiel, à ajuster selon sa tolérance au risque et ses besoins de liquidité.
- Exercice 7 : elle est achetée au-dessus du pair, donc son rendement actuariel est inférieur au taux facial de 7 %. Vérification : à 5,88 %, 700 / 1,0588 + 700 / 1,0588² + 10 700 / 1,0588³ ≈ 10 300 FCFA.', 'texte', 60, false, 40
from public.courses c where c.slug = 'lic-fin-l2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Marchés financiers 1 : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Sujet type d''examen de Licence 2 Finance (entraînement corrigé)', '## Présentation

Sujet d''entraînement conçu pour ce cours, et non sujet officiel. Durée conseillée : 3 heures. Barème indicatif, non officiel : dossier 1 sur 9 points, dossier 2 sur 6 points, dossier 3 sur 5 points. Montants en millions de FCFA sauf indication contraire. Tous les taux sont fictifs pour l''exemple ; la TVA est ignorée.

## Dossier 1 : analyse financière de Sine Agro SA (9 points)

Sine Agro SA, entreprise fictive de Fatick, transforme des céréales locales. Compte de résultat : ventes de produits fabriqués 800 ; production stockée 10 ; achats de matières premières 300 ; variation de stocks de matières 10 (déstockage) ; services extérieurs 90 ; impôts et taxes 20 ; charges de personnel 180 ; dotations aux amortissements 60 ; revenus financiers 5 ; frais financiers 25 ; aucune opération HAO ; impôt sur le résultat 30 % (fictif).

Bilan (valeurs brutes pour l''actif immobilisé) : immobilisations 900 ; stocks 150 ; clients 200 ; trésorerie-actif 10 ; capitaux propres 500 ; amortissements cumulés 300 ; dettes financières 250 ; fournisseurs 110 ; dettes fiscales et sociales 40 ; trésorerie-passif à déterminer.

- 1.1 (3 points) : calculez la valeur ajoutée, l''EBE, le résultat d''exploitation, le RAO et le résultat net.
- 1.2 (2 points) : calculez la CAF par les deux méthodes.
- 1.3 (2 points) : déterminez la trésorerie-passif, puis FR, BFR et TN.
- 1.4 (2 points) : calculez le délai clients, l''autonomie financière et la capacité de remboursement, puis rédigez un commentaire de cinq lignes.

## Dossier 2 : gestion de trésorerie (6 points)

Trésorerie au 1er avril : 1,0. Ventes : mars 6 ; avril 7 ; mai 9 ; juin 8 ; les clients paient 50 % au comptant et 50 % à 30 jours. Achats payés au comptant : avril 3 ; mai 4 ; juin 4. Salaires : 2 par mois. Impôt à payer en mai : 2,5. Achat d''une machine en mai : 3.

- 2.1 (3 points) : établissez le plan de trésorerie d''avril à juin.
- 2.2 (3 points) : pour couvrir le déficit, l''entreprise peut escompter un effet de 2 000 000 FCFA à 30 jours au taux de 9,5 % avec une commission de 3 000 FCFA. Calculez les agios, le net et le taux réel. Ce financement est-il adapté à l''achat de la machine ?

## Dossier 3 : marchés financiers (5 points)

- 3.1 (2 points) : une obligation de nominal 10 000 FCFA, taux facial 6 %, remboursable in fine dans 4 ans. Calculez son prix si le taux du marché est de 7 %. Est-elle au-dessus ou en dessous du pair ? Pourquoi ?
- 3.2 (2 points) : une action doit verser un dividende de 200 FCFA dans un an ; ce dividende croîtra de 4 % par an ; le taux exigé est 10 %. Calculez sa valeur selon Gordon-Shapiro.
- 3.3 (1 point) : expliquez le rôle d''une SGI.

## Corrigé du dossier 1

1.1. Production de l''exercice et produits : 800 + 10 = 810. Consommations : 300 + 10 + 90 + 20 = 420. VA = 390. EBE = 390 − 180 = 210. Résultat d''exploitation = 210 − 60 = 150. Résultat financier = 5 − 25 = −20. RAO = 130. RHAO = 0. Impôt = 0,30 × 130 = 39. Résultat net = 91.

1.2. Additive : 91 + 60 = 151. Soustractive : 210 + 5 − 25 − 39 = 151.

1.3. Total des emplois = 900 + 150 + 200 + 10 = 1 260. Ressources hors trésorerie-passif = 500 + 300 + 250 + 110 + 40 = 1 200 ; trésorerie-passif = 60. Ressources stables = 1 050 ; FR = 1 050 − 900 = 150. BFR = 150 + 200 − 110 − 40 = 200. TN = 150 − 200 = −50, et 10 − 60 = −50.

1.4. Délai clients = 200 / 800 × 360 = 90 jours. Autonomie financière = 500 / 250 = 2. Capacité de remboursement = 250 / 151 ≈ 1,7 année de CAF. Commentaire : Sine Agro est rentable (EBE égal à 26 % des ventes, rentabilité financière de 91 / 500 ≈ 18 %) et solide dans sa structure (capitaux propres doubles des dettes financières, dettes remboursables en moins de deux ans de CAF). Son point faible est le crédit clients de 90 jours, qui porte le BFR au-dessus du FR et rend la trésorerie négative. Il faut réduire les délais clients et, si la croissance continue, renforcer le FR.

## Corrigé du dossier 2

2.1. Encaissements : avril 50 % × 7 + 50 % × 6 = 6,5 ; mai 4,5 + 3,5 = 8 ; juin 4 + 4,5 = 8,5. Décaissements : avril 3 + 2 = 5 ; mai 4 + 2 + 2,5 + 3 = 11,5 ; juin 4 + 2 = 6.

- Avril : début 1,0 ; solde +1,5 ; fin 2,5.
- Mai : début 2,5 ; solde −3,5 ; fin −1,0.
- Juin : début −1,0 ; solde +2,5 ; fin 1,5.

2.2. Escompte = 2 000 000 × 0,095 × 30 / 360 ≈ 15 833 FCFA ; agios ≈ 18 833 FCFA ; net ≈ 1 981 167 FCFA ; taux réel ≈ 18 833 / 1 981 167 × 360 / 30 ≈ 11,41 %. L''escompte couvre le déficit ponctuel de mai (1 million) ; il est adapté à un décalage court. Mais la machine est un investissement durable : en bonne gestion, elle devrait être financée par une ressource stable (crédit d''équipement, crédit-bail), ce qui éviterait le déficit.

## Corrigé du dossier 3

3.1. P = 600 × (1 − 1,07^−4) / 0,07 + 10 000 × 1,07^−4 ≈ 9 661 FCFA. Elle cote en dessous du pair car son coupon (6 %) est inférieur au taux du marché (7 %) : le prix baisse pour offrir à l''acheteur un rendement de 7 %.

3.2. P0 = 200 / (0,10 − 0,04) ≈ 3 333 FCFA.

3.3. La SGI tient les comptes-titres des investisseurs, reçoit leurs ordres de bourse, les transmet à la BRVM, et peut conseiller et gérer des portefeuilles. Elle est agréée par le régulateur régional.

## Conseils de méthode

- Présentez les SIG sous forme de cascade, ligne par ligne, avec le contrôle de la CAF.
- Vérifiez toujours TN = FR − BFR = trésorerie-actif − trésorerie-passif.
- Dans un plan de trésorerie, appliquez les délais de paiement mois par mois.

## Exercices pratiques

- Exercice 1 : pourquoi la production stockée entre-t-elle dans la valeur ajoutée ?
- Exercice 2 : citez deux moyens de réduire le BFR.
- Exercice 3 : un portefeuille contient 50 % d''actions à 12 % de rentabilité espérée et 50 % d''obligations à 6,5 %. Rentabilité espérée ?
- Exercice 4 : vrai ou faux : « La CAF est égale à la variation de trésorerie de l''exercice. »
- Exercice 5 : calculez le coupon couru d''une obligation de coupon annuel 600 FCFA, 146 jours après le dernier coupon (base 365 jours).

## Corrigé

- Exercice 1 : la production stockée correspond à des biens produits pendant l''exercice mais pas encore vendus ; elle fait partie de la production de l''exercice, donc de la richesse créée.
- Exercice 2 : réduire les délais clients (relances, escompte pour paiement rapide) ; réduire les stocks ; obtenir des délais fournisseurs plus longs.
- Exercice 3 : 0,5 × 12 % + 0,5 × 6,5 % = 9,25 %.
- Exercice 4 : faux. La CAF est un surplus potentiel ; la trésorerie dépend aussi de la variation du BFR, des investissements, des financements et des dividendes.
- Exercice 5 : 600 × 146 / 365 = 240 FCFA.', 'texte', 60, false, 50
from public.courses c where c.slug = 'lic-fin-l2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Sujet type d''examen de Licence 2 Finance (entraînement corrigé)');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Analyse financière', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : étudiants de Licence 2 Finance, Comptabilité, Gestion.
- Objectifs : réaliser un diagnostic financier complet selon le SYSCOHADA révisé (SIG, CAF, bilan fonctionnel, FR, BFR, TN, ratios) et rédiger un commentaire.
- Matériel : tableau blanc, diaporama présentant le compte de résultat et le bilan du cas, calculatrice.
- Prérequis : comptabilité générale de Licence 1 ; leçon 2 du cours.
- Montants en millions de FCFA ; taux d''impôt de 30 % fictif pour l''exemple.

## Déroulé minuté

## 00:00 – 05:00 · Présentation du cas

« Bonjour. Aujourd''hui, nous sommes analystes dans une banque de Dakar. Atlantique Distribution SA, grossiste fictif en produits alimentaires, demande un crédit. Avant de répondre, le banquier veut savoir trois choses : l''entreprise est-elle rentable ? Est-elle équilibrée financièrement ? Peut-elle rembourser ? Nous allons répondre ensemble, étape par étape, comme dans un sujet d''examen. »

Visuel : la diapositive des données. Ventes de marchandises 1 000 ; achats de marchandises 700 ; variation de stocks de marchandises 20 (déstockage) ; transports 20 ; services extérieurs 60 ; impôts et taxes 10 ; charges de personnel 90 ; dotations aux amortissements 35 ; frais financiers 15 ; produit de cession d''un véhicule 12 ; valeur comptable du véhicule cédé 8.

## 05:00 – 20:00 · La cascade des SIG

« Première étape, la marge commerciale. Elle se calcule pour une activité de négoce : ventes de marchandises moins coût d''achat des marchandises vendues. Le coût d''achat, ce sont les achats corrigés de la variation de stocks. Un déstockage de 20 signifie qu''on a vendu des marchandises achetées l''an dernier : il s''ajoute aux achats. Marge commerciale = 1 000 − (700 + 20) = 280. »

« Deuxième étape, la valeur ajoutée. Ici, pas de production : VA = marge commerciale − consommations en provenance des tiers. Dans le SYSCOHADA, on y retire aussi les impôts et taxes. VA = 280 − (20 + 60 + 10) = 190. La valeur ajoutée, c''est la richesse créée par l''entreprise, qui va rémunérer le personnel, les prêteurs, l''État et les actionnaires. »

« Troisième étape, l''EBE : 190 − 90 = 100. Quatrième, le résultat d''exploitation : 100 − 35 = 65. Cinquième, le résultat financier : −15. Sixième, le RAO : 65 − 15 = 50. Septième, le résultat hors activités ordinaires : 12 − 8 = 4. Impôt fictif à 30 % sur 54 : 16,2. Résultat net : 50 + 4 − 16,2 = 37,8. »

Question à poser : « Pourquoi le produit de cession n''est-il pas dans le chiffre d''affaires ? » Réponse : c''est une opération exceptionnelle, hors activités ordinaires, classée en HAO.

## 20:00 – 32:00 · La CAF et l''autofinancement

« La CAF par la méthode additive : on part du résultat net et on neutralise ce qui n''est pas monétaire ou qui relève des cessions. 37,8 + 35 de dotations − 12 de produit de cession + 8 de valeur comptable = 68,8. Par la méthode soustractive : EBE + produits encaissables − charges décaissables, sans les cessions : 100 − 15 − 16,2 = 68,8. Les deux méthodes concordent : on peut continuer. »

« Pourquoi exclure les cessions ? Parce que la CAF mesure ce que l''activité courante dégage durablement. Le prix de vente du véhicule est une ressource, mais une ressource ponctuelle, classée dans le tableau de financement parmi les désinvestissements. »

« Si l''entreprise distribue 20 de dividendes, l''autofinancement est 48,8. »

## 32:00 – 42:00 · Le bilan fonctionnel

« Le bilan : immobilisations brutes 400 ; stocks 120 ; clients 90 ; trésorerie-actif 25. Capitaux propres 170 ; amortissements cumulés 150 ; dettes financières 100 ; fournisseurs 180 ; dettes fiscales et sociales 30 ; trésorerie-passif 5. Total : 635 de chaque côté. »

« Ressources stables = 170 + 150 + 100 = 420. FR = 420 − 400 = 20. BFR = stocks + clients − fournisseurs − dettes fiscales et sociales = 120 + 90 − 180 − 30 = 0. TN = 20 − 0 = 20, et vérification : 25 − 5 = 20. »

« Observez ce BFR nul : c''est typique de la distribution. Les clients paient vite, les fournisseurs sont payés lentement : le cycle d''exploitation s''autofinance. Dans une industrie, le BFR serait nettement positif. »

## 42:00 – 50:00 · Pause interactive et quiz

- Question 1 : un stockage de marchandises augmente-t-il ou diminue-t-il la marge commerciale ? Réponse : il l''augmente, car il réduit le coût d''achat des marchandises vendues.
- Question 2 : où classe-t-on les amortissements cumulés dans le bilan fonctionnel ? Réponse : en ressources stables.
- Question 3 : FR = 50, BFR = 80. TN ? Réponse : −30.
- Question 4 : la CAF inclut-elle les dotations aux amortissements ? Réponse : oui, on les rajoute au résultat net car ce sont des charges non décaissées.
- Question 5 : quel solde mesure la performance économique avant amortissements et financement ? Réponse : l''EBE.

## 50:00 – 1:05:00 · Les ratios

« Délai clients : 90 / 1 000 × 360 ≈ 32 jours. Délai fournisseurs : 180 / 700 × 360 ≈ 93 jours. Durée de stockage des marchandises : stock / coût d''achat des marchandises vendues × 360 = 120 / 720 × 360 = 60 jours. Le cycle est cohérent : les marchandises restent 60 jours en stock, les clients paient en 32 jours, soit 92 jours entre achat et encaissement, et les fournisseurs sont payés à 93 jours. »

« Rentabilité financière : 37,8 / 170 ≈ 22 %. Taux de marge d''EBE : 100 / 1 000 = 10 %. Capacité de remboursement : dettes financières / CAF = 100 / 68,8 ≈ 1,5 année. »

« Attention : en pratique, les délais clients et fournisseurs se calculent en TTC ; nous restons hors taxes pour simplifier. Et un ratio isolé ne dit rien : il faut le comparer à l''année précédente et aux entreprises du secteur. »

Exercice corrigé en direct : « Si les fournisseurs exigeaient d''être payés à 60 jours, quel serait le nouveau poste fournisseurs, et le BFR ? » Correction : 700 × 60 / 360 ≈ 116,7 ; BFR = 120 + 90 − 116,7 − 30 ≈ 63,3 ; TN = 20 − 63,3 ≈ −43,3. « Vous voyez la fragilité : l''équilibre repose sur le crédit fournisseurs. »

## 1:05:00 – 1:17:00 · Rédiger le commentaire

« Un bon commentaire suit quatre temps : constat chiffré, explication, conséquence, recommandation. Je rédige avec vous. »

« Activité et rentabilité : Atlantique Distribution dégage un EBE de 100, soit 10 % des ventes, et une rentabilité financière de 22 %, ce qui est satisfaisant pour un grossiste. Équilibre financier : le FR de 20 couvre un BFR nul ; la trésorerie est positive à 20. Cet équilibre repose sur des délais fournisseurs longs, qui pourraient être remis en cause. Solvabilité : les dettes financières représentent un an et demi de CAF : l''entreprise peut s''endetter davantage. Recommandation au banquier : accorder le crédit demandé s''il finance un investissement rentable, en surveillant les relations fournisseurs et en suggérant de renforcer les capitaux propres, qui restent modestes (170 pour 400 d''immobilisations brutes). »

## 1:17:00 – 1:23:00 · Synthèse

« Retenez la démarche complète : SIG, CAF par deux méthodes, bilan fonctionnel, FR, BFR, TN avec double vérification, ratios d''activité, de rentabilité et de structure, puis commentaire en quatre temps. Le jour de l''examen, gérez votre temps : le commentaire vaut souvent autant de points que les calculs. »

« Trois erreurs reviennent chaque année dans les copies : intégrer le produit de cession dans la CAF, oublier les amortissements cumulés dans les ressources stables, et conclure sur la santé de l''entreprise à partir du seul résultat net. Un résultat positif ne garantit ni une trésorerie positive ni une capacité à rembourser : c''est précisément ce que le diagnostic complet permet de vérifier. »

## 1:23:00 – 1:30:00 · Évaluation finale

- Question 1 : ventes de marchandises 500, achats 350, stockage 10. Marge commerciale ? Réponse : 500 − (350 − 10) = 160.
- Question 2 : résultat net 40, dotations 25, reprises 5, aucune cession. CAF ? Réponse : 40 + 25 − 5 = 60.
- Question 3 : ressources stables 600, emplois stables 520, BFR 100. TN ? Réponse : FR = 80, TN = 80 − 100 = −20.
- Question 4 : clients 150, chiffre d''affaires 1 200 (hors taxes, simplification). Délai clients ? Réponse : 150 / 1 200 × 360 = 45 jours.
- Question 5 : citez deux actions pour améliorer une trésorerie négative due à un BFR excessif. Réponse : réduire les délais clients et les stocks ; augmenter le FR par des capitaux permanents.

« Merci. Refaites le cas seuls, en 45 minutes chrono, puis comparez votre commentaire au mien. »', 'video', 90, false, 60
from public.courses c where c.slug = 'lic-fin-l2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Analyse financière');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Gestion de trésorerie', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : étudiants de Licence 2 Finance et Gestion.
- Objectifs : construire un plan de trésorerie, identifier les besoins de financement à court terme, calculer et comparer le coût réel de l''escompte, du découvert et de l''affacturage, proposer une décision argumentée.
- Matériel : tableau blanc, diaporama avec un plan de trésorerie vierge, calculatrice.
- Prérequis : intérêts simples (Licence 1), leçon 3 du cours.
- Montants en millions de FCFA sauf indication ; tous les taux et commissions sont fictifs pour l''exemple ; TVA ignorée.

## Déroulé minuté

## 00:00 – 05:00 · Le problème du trésorier

« Bonjour. Je vous présente Gandiol Pêche SARL, entreprise fictive de mareyage près de Saint-Louis. Elle achète le poisson aux pirogues et le revend aux usines et aux marchés. Son gérant, M. Fall, me dit : “Mon entreprise gagne de l''argent, mais certains mois je ne peux pas payer les pêcheurs à temps.” C''est le problème classique de la trésorerie : le décalage entre les dates de décaissement et les dates d''encaissement. Notre mission : prévoir, puis financer au moindre coût. »

## 05:00 – 15:00 · Les principes du plan de trésorerie

« Le plan de trésorerie se construit en trois étapes : le budget des encaissements, le budget des décaissements, puis la synthèse mois par mois. La règle d''or : on inscrit les flux à la date où l''argent entre ou sort, pas à la date de la facture. Une vente de janvier payée à 30 jours est un encaissement de février. »

« Données : trésorerie au 1er janvier 3. Ventes : décembre 20, janvier 15, février 18, mars 25. Les clients paient 25 % au comptant et 75 % à 30 jours. Achats de poisson : 60 % des ventes du mois, payés le mois suivant. Salaires 4 par mois ; autres charges 1,5 par mois ; impôt en février 3 ; réparation d''un moteur de camion en février 6. »

## 15:00 – 28:00 · Construire les budgets

« Encaissements. Janvier : 25 % × 15 + 75 % × 20 = 3,75 + 15 = 18,75. Février : 25 % × 18 + 75 % × 15 = 4,5 + 11,25 = 15,75. Mars : 25 % × 25 + 75 % × 18 = 6,25 + 13,5 = 19,75. »

« Décaissements. Les achats de décembre, 60 % × 20 = 12, sont payés en janvier. Ceux de janvier, 9, en février. Ceux de février, 10,8, en mars. Janvier : 12 + 4 + 1,5 = 17,5. Février : 9 + 4 + 1,5 + 3 + 6 = 23,5. Mars : 10,8 + 4 + 1,5 = 16,3. »

« Synthèse. »

- Janvier : début 3 ; solde du mois +1,25 ; fin 4,25.
- Février : début 4,25 ; solde −7,75 ; fin −3,5.
- Mars : début −3,5 ; solde +3,45 ; fin −0,05.

« Le diagnostic est clair : un besoin d''environ 3,5 millions en février, presque résorbé fin mars. C''est un besoin court : il relève des financements à court terme. »

## 28:00 – 40:00 · Les solutions de financement à court terme

« Passons en revue les outils. La facilité de caisse couvre quelques jours. Le découvert autorisé couvre quelques semaines, dans la limite d''un plafond négocié. L''escompte transforme un effet de commerce en argent avant l''échéance. L''affacturage cède les créances à un factor qui les recouvre. Le crédit de campagne finance une activité saisonnière. Pour M. Fall, l''usine cliente a accepté une lettre de change de 4 000 000 de francs à 30 jours : l''escompte est possible. »

« Avant de comparer, une question de bon sens : la réparation du moteur est-elle un investissement ? Si c''est une grosse réparation qui prolonge la durée de vie du camion, elle pourrait être immobilisée et financée à moyen terme. Ici, nous la traitons comme une charge courante. »

## 40:00 – 47:00 · Pause interactive et quiz

- Question 1 : une vente de mars payée à 60 jours est encaissée quand ? Réponse : en mai.
- Question 2 : l''achat d''un bâtiment doit-il être financé par découvert ? Réponse : non, par des ressources stables.
- Question 3 : que fait une banque qui escompte un effet ? Réponse : elle en verse le montant avant l''échéance, diminué des agios.
- Question 4 : citez un financement adapté à la commercialisation de la noix de cajou. Réponse : le crédit de campagne.

## 47:00 – 1:02:00 · Calculer et comparer les coûts

« Escompte de l''effet de 4 000 000 à 30 jours, taux 10 %, commission 4 000 francs. Escompte = 4 000 000 × 0,10 × 30 / 360 ≈ 33 333 francs. Agios = 37 333 francs. Net reçu = 3 962 667 francs. Taux réel = 37 333 / 3 962 667 × 360 / 30 ≈ 11,31 %. »

« Découvert de 4 000 000 pendant 30 jours à 12 % : 4 000 000 × 0,12 × 30 / 360 = 40 000 francs, sans compter d''éventuelles commissions. L''escompte coûte 37 333 francs : il est moins cher, et il est adossé à une créance certaine. »

« Mais attention : le découvert ne coûte que sur les montants réellement utilisés et les jours réellement débiteurs. Si le besoin réel n''est que de 3 500 000 pendant 20 jours, le découvert coûte 3 500 000 × 0,12 × 20 / 360 ≈ 23 333 francs, moins que l''escompte. Le bon choix dépend donc du profil exact du besoin. C''est ce raisonnement que l''examinateur attend. »

Exercice corrigé en direct : « Un effet de 2 500 000 à 45 jours est escompté à 9 %, commission 3 000. Calculez le net. » Correction : escompte = 2 500 000 × 0,09 × 45 / 360 = 28 125 ; agios = 31 125 ; net = 2 468 875 francs.

## 1:02:00 – 1:14:00 · L''affacturage et le pilotage du BFR

« L''affacturage : Gandiol Pêche cède 10 000 000 de créances à 45 jours. Commission d''affacturage 1,5 % : 150 000 francs. Le factor avance 90 %, soit 9 000 000, au taux de 11 % : intérêts = 9 000 000 × 0,11 × 45 / 360 = 123 750 francs. Coût total : 273 750 francs. C''est plus cher que l''escompte, mais le factor prend en charge les relances, et souvent le risque d''impayé. Pour une petite structure sans service de recouvrement, cela peut se justifier. »

« Enfin, la meilleure trésorerie est celle qu''on n''a pas besoin de financer. Si M. Fall obtenait de ses clients 50 % au comptant au lieu de 25 %, les encaissements de février passeraient à 50 % × 18 + 50 % × 15 = 16,5 au lieu de 15,75. Et en négociant 15 jours de plus avec ses fournisseurs, il décalerait une partie des achats. Agir sur le BFR, c''est agir à la source. »

## 1:14:00 – 1:22:00 · Placer un excédent

« En avril, la trésorerie redevient positive. Un excédent temporaire se place selon trois critères dans cet ordre : sécurité, liquidité, rendement. Compte à terme, bons du Trésor émis sur le marché régional des titres publics, parts d''organismes de placement collectif monétaires. Évitez les actions pour un excédent dont vous aurez besoin dans trois mois : leur cours peut baisser au mauvais moment. »

## 1:22:00 – 1:26:00 · Synthèse

« Retenez : plan de trésorerie construit selon les dates réelles de flux ; besoin court, financement court ; besoin durable, financement durable ; comparaison des coûts réels, commissions comprises ; action sur le BFR comme premier levier. À l''examen, présentez le plan de trésorerie sous forme de tableau clair, mois en colonnes, encaissements et décaissements en lignes, avec un total par mois et la trésorerie cumulée : un correcteur doit pouvoir vérifier chaque chiffre en quelques secondes. Puis rédigez deux ou trois phrases de recommandation chiffrée. »

## 1:26:00 – 1:30:00 · Évaluation finale

- Question 1 : ventes de mai 10, juin 12 ; 40 % au comptant, 60 % à 30 jours. Encaissements de juin ? Réponse : 4,8 + 6 = 10,8.
- Question 2 : effet de 1 800 000 à 60 jours, taux 12 %, sans commission. Escompte ? Réponse : 1 800 000 × 0,12 × 60 / 360 = 36 000 francs.
- Question 3 : pourquoi le taux réel de l''escompte dépasse-t-il le taux nominal ? Réponse : les intérêts sont prélevés d''avance sur un montant net plus faible, et les commissions s''ajoutent.
- Question 4 : différence entre facilité de caisse et découvert ? Réponse : la facilité de caisse couvre quelques jours ; le découvert, quelques semaines ou mois.
- Question 5 : trois critères pour placer un excédent ? Réponse : sécurité, liquidité, rendement.

« Merci. Pour la prochaine fois, refaites le plan de trésorerie de Gandiol Pêche avec 50 % de paiement comptant. »', 'video', 90, false, 70
from public.courses c where c.slug = 'lic-fin-l2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Gestion de trésorerie');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Marchés financiers 1', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : étudiants de Licence 2 Finance, Banque, Gestion.
- Objectifs : expliquer le fonctionnement du marché financier régional, évaluer une action (rentabilité, PER, Gordon-Shapiro) et une obligation (prix, rendement actuariel, coupon couru), calculer la rentabilité d''un portefeuille.
- Matériel : tableau blanc, diaporama avec un carnet d''ordres simplifié, calculatrice.
- Prérequis : actualisation et annuités (Licence 1), leçon 4 du cours.
- Sociétés et taux fictifs pour l''exemple.

## Déroulé minuté

## 00:00 – 06:00 · Introduction : pourquoi un marché financier

« Bonjour. Une entreprise sénégalaise qui veut financer une nouvelle usine peut emprunter à sa banque. Elle peut aussi s''adresser directement aux épargnants en émettant des actions ou des obligations. Le marché financier, c''est ce lieu de rencontre. Pour l''épargnant, c''est une possibilité de placement ; pour l''entreprise ou l''État, une source de financement à long terme. Aujourd''hui, nous allons comprendre comment il fonctionne et surtout comment on évalue les titres. »

## 06:00 – 18:00 · L''organisation du marché régional

« Le marché primaire est celui des émissions : l''argent va à l''émetteur. Le marché secondaire est celui des échanges entre investisseurs : c''est la bourse. Dans l''UEMOA, la bourse commune est la BRVM, à Abidjan, avec une antenne dans chaque État. Les acteurs : les SGI, qui reçoivent et transmettent les ordres ; le Dépositaire central / Banque de règlement, qui conserve les titres et règle les opérations ; le régulateur régional, l''AMF-UMOA, qui autorise les opérations et protège les épargnants. »

« Un ordre d''achat peut être “au marché” : il sera exécuté au prix disponible. Ou “à cours limité” : par exemple, acheter 200 actions à 2 300 francs maximum. Si le titre cote 2 350, l''ordre attend. L''ordre à cours limité protège contre une mauvaise surprise de prix, mais il peut ne pas être exécuté. »

« Un mot sur la liquidité. Un titre est liquide quand il s''échange souvent et en volumes importants : on peut l''acheter ou le vendre rapidement sans faire bouger le cours. Sur un marché encore étroit, certains titres s''échangent peu ; un investisseur pressé de vendre peut alors devoir accepter un prix plus bas. C''est un risque à expliquer à tout client avant un placement en bourse. »

Visuel : un carnet d''ordres simplifié avec les meilleures offres d''achat et de vente.

## 18:00 – 32:00 · Évaluer une action

« La rentabilité d''une action sur un an : R = (dividende + cours final − cours initial) / cours initial. Achetée 2 500, dividende 150, revendue 2 700 : R = (150 + 200) / 2 500 = 14 %. »

« Le PER : cours / bénéfice par action. Avec un BPA de 250, PER = 2 500 / 250 = 10. On compare le PER d''un titre à celui des sociétés du même secteur. »

« Le modèle de Gordon-Shapiro : la valeur d''une action est la valeur actuelle de tous ses dividendes futurs. Si le dividende croît à un taux constant g, et que l''investisseur exige k, avec k > g : P0 = D1 / (k − g). Attention, D1 est le dividende de l''an prochain. La société fictive Sénégal Agro-Industrie a versé D0 = 150 francs ; g = 6 % ; k = 13 %. D1 = 150 × 1,06 = 159. P0 = 159 / 0,07 ≈ 2 271 francs. Si l''action cote 2 500, elle semble chère pour cet investisseur. Piège classique : diviser D0 au lieu de D1. »

Question à poser : « Que se passe-t-il si g se rapproche de k ? » Réponse attendue : la valeur tend vers l''infini ; le modèle n''est plus utilisable, il suppose k nettement supérieur à g.

## 32:00 – 40:00 · Pause interactive et quiz

- Question 1 : sur quel marché une entreprise lève-t-elle des fonds nouveaux ? Réponse : le marché primaire.
- Question 2 : qui transmet les ordres à la BRVM ? Réponse : les SGI.
- Question 3 : D1 = 100, k = 12 %, g = 2 %. Valeur ? Réponse : 100 / 0,10 = 1 000 francs.
- Question 4 : un PER de 20 signifie quoi ? Réponse : le cours représente vingt années de bénéfice actuel.
- Question 5 : pourquoi un investisseur préfère-t-il un titre liquide ? Réponse : parce qu''il peut le revendre rapidement, sans faire baisser fortement le cours, s''il a besoin de son argent.

## 40:00 – 55:00 · Le prix d''une obligation

« Une obligation est un prêt découpé en titres. L''État fictif émet une obligation de nominal 10 000 francs, taux facial 5,75 %, soit un coupon de 575 francs, durée 5 ans, remboursement in fine. Si le taux du marché est 6,5 %, le prix vaut la valeur actuelle des coupons et du remboursement : P = 575 × (1 − 1,065^−5) / 0,065 + 10 000 × 1,065^−5 ≈ 9 688 francs. Le titre cote sous le pair, car son coupon est inférieur au taux du marché. »

« Règle d''or : prix et taux varient en sens inverse. Quand les taux montent, les obligations existantes perdent de la valeur. Plus l''échéance est lointaine, plus cet effet est fort. »

« Le coupon couru : si vous achetez cette obligation 146 jours après le paiement du coupon, vous payez au vendeur la part de coupon qu''il a “gagnée” : 575 × 146 / 365 = 230 francs, en plus du prix coté. »

## 55:00 – 1:10:00 · Le rendement actuariel par interpolation

« Une obligation de nominal 10 000, coupon 600, échéance 3 ans, cote 9 700. Quel est son rendement actuariel ? C''est le taux r tel que 600 / (1 + r) + 600 / (1 + r)² + 10 600 / (1 + r)³ = 9 700. On procède par essais. À 7 % : prix ≈ 9 737,6. À 7,5 % : prix ≈ 9 609,9. Le prix cherché, 9 700, est entre les deux. Interpolation linéaire : r ≈ 7 % + (9 737,6 − 9 700) / (9 737,6 − 9 609,9) × 0,5 % ≈ 7,15 %. Le calcul exact donne aussi environ 7,15 %. »

« Interprétation : en achetant à 9 700 et en gardant le titre jusqu''à l''échéance, avec réinvestissement des coupons au même taux, l''investisseur obtient environ 7,15 % par an, plus que le taux facial de 6 %, grâce à la décote. »

Exercice corrigé en direct : « Une obligation de nominal 10 000, coupon 500, échéance 2 ans. Prix si le taux du marché est 4 % ? » Correction : 500 / 1,04 + 10 500 / 1,04² ≈ 480,77 + 9 707,84 ≈ 10 189 francs, au-dessus du pair.

## 1:10:00 – 1:20:00 · Le portefeuille et le couple rendement-risque

« Mme Ndour place 50 % en actions (rentabilité espérée 10 %), 30 % en obligations (7 %) et 20 % en compte à terme (4 %). Rentabilité espérée du portefeuille : 0,5 × 10 + 0,3 × 7 + 0,2 × 4 = 7,9 %. »

« Mais la rentabilité n''est qu''une moitié de l''histoire. Les actions sont plus risquées : leur rentabilité varie beaucoup d''une année à l''autre. Les obligations d''État conservées jusqu''à l''échéance sont moins risquées, mais exposées au risque de taux si on les revend avant. Diversifier entre plusieurs titres et plusieurs classes d''actifs réduit le risque global. En Licence 3, vous mesurerez ce risque avec l''écart-type et la covariance. »

## 1:20:00 – 1:25:00 · Synthèse

« Retenez : primaire et secondaire ; SGI, Dépositaire central, régulateur ; R = (D + P1 − P0) / P0 ; PER ; P0 = D1 / (k − g) ; prix d''une obligation = valeur actuelle des flux ; prix et taux en sens inverse ; rendement actuariel par interpolation ; coupon couru au prorata. »

## 1:25:00 – 1:30:00 · Évaluation finale

- Question 1 : action achetée 1 000, dividende 50, revendue 1 080. Rentabilité ? Réponse : (50 + 80) / 1 000 = 13 %.
- Question 2 : D0 = 200, g = 5 %, k = 15 %. Valeur ? Réponse : D1 = 210 ; P0 = 210 / 0,10 = 2 100 francs.
- Question 3 : une obligation de coupon 6 % quand le marché est à 8 % cote-t-elle au-dessus ou en dessous du pair ? Réponse : en dessous.
- Question 4 : coupon annuel 730 francs, 100 jours courus (base 365). Coupon couru ? Réponse : 730 × 100 / 365 = 200 francs.
- Question 5 : 40 % à 9 % et 60 % à 5 %. Rentabilité du portefeuille ? Réponse : 3,6 + 3 = 6,6 %.

« Merci. Pour vous entraîner, recalculez le prix de l''obligation à 5,75 % de coupon pour un taux de marché de 5 %, puis expliquez en deux phrases pourquoi le prix dépasse le pair. »', 'video', 90, false, 80
from public.courses c where c.slug = 'lic-fin-l2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Marchés financiers 1');

-- Cours : Finance Licence 3 : réussir les examens de troisième année
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'lic-fin-l3', (select id from public.levels where name = 'Licence 3'), null, 'Finance', 'Finance Licence 3 : réussir les examens de troisième année', 'Ce cours prépare aux examens de troisième année de Licence en finance : décisions d''investissement (VAN, TRI, indice de profitabilité, délai de récupération, avenir risqué), décisions de financement et coût du capital (CMPC, effet de levier, politique de dividende) et gestion des risques financiers de change et de taux. Il s''adresse aux étudiants de Licence 3 du Sénégal et de l''espace UEMOA. Prérequis : analyse financière, mathématiques financières et notions de marchés financiers des deux premières années.', true, 353
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Réussir ses examens de Licence 3 en Finance', '## Objectifs de la leçon

- Situer la Licence 3 dans le parcours LMD et mesurer ses enjeux (diplôme, accès au Master, insertion).
- Connaître les trois matières de finance de l''année et leur logique commune : la création de valeur.
- Préparer les épreuves typiques de Licence 3, en particulier le cas de synthèse investissement-financement.
- Suivre un plan de révision sur six semaines.

## 1. La Licence 3 dans le système LMD

La Licence 3 correspond aux semestres 5 et 6, qui terminent le cycle de Licence. Comme les années précédentes, elle est organisée en unités d''enseignement (UE) créditées, évaluées par contrôle continu et examen terminal, avec une session de rattrapage. Le nombre de crédits, les coefficients, les règles de compensation, l''existence éventuelle d''un stage ou d''un mémoire de fin de cycle et les conditions d''obtention du diplôme dépendent de chaque établissement : le règlement des études et la maquette de la filière font foi.

Enjeu particulier : les résultats de Licence 3 pèsent souvent dans l''admission en Master et dans les premières candidatures (banques, cabinets, directions financières, institutions de microfinance). Viser la mention est un objectif raisonnable si vous travaillez avec méthode.

## 2. Les matières de finance de la Licence 3

Les trois matières de ce cours répondent à une même question : comment l''entreprise crée-t-elle de la valeur pour ceux qui la financent ?

- Décisions d''investissement : flux de trésorerie d''un projet, valeur actuelle nette (VAN), taux de rentabilité interne (TRI), indice de profitabilité (IP), délai de récupération simple et actualisé, comparaison de projets, choix en avenir risqué simple (espérance et écart-type de la VAN, scénarios).
- Décisions de financement et coût du capital : coût des capitaux propres (modèle de Gordon-Shapiro, MEDAF), coût de la dette après impôt, coût moyen pondéré du capital (CMPC), effet de levier financier, politique de dividende, choix entre sources de financement.
- Gestion des risques financiers : risque de change (expositions, couverture à terme, options simples, techniques internes), risque de taux (emprunts à taux variable, effet des taux sur le prix des obligations, swap et FRA dans leur principe).

Le lien entre les trois : un projet n''est intéressant que si sa rentabilité dépasse le coût des ressources qui le financent (le CMPC sert de taux d''actualisation), et cette rentabilité peut être menacée par des risques de change ou de taux qu''il faut identifier et couvrir.

Ces matières mobilisent tout ce qui précède : mathématiques financières et statistiques (Licence 1), analyse financière, trésorerie et marchés financiers (Licence 2).

## 3. Les types d''épreuves

- Le cas de synthèse : un projet d''investissement d''une entreprise fictive, avec calcul des flux, VAN, TRI, puis choix d''un mode de financement et calcul du CMPC. C''est l''épreuve la plus fréquente et la plus longue.
- L''exercice de couverture : un importateur ou un exportateur exposé au dollar ; on compare l''absence de couverture, la couverture à terme et l''option.
- Les questions de réflexion : « Une entreprise doit-elle s''endetter pour améliorer la rentabilité de ses actionnaires ? », « La politique de dividende influence-t-elle la valeur de l''entreprise ? ». On attend une argumentation théorique et chiffrée.
- Le QCM : définitions précises (TRI, CMPC, effet de massue, cours à terme, prime d''option).
- Le dossier ou l''exposé : par exemple, analyser le financement d''un projet d''infrastructure en partenariat public-privé à partir de documents publics.

## 4. Les erreurs fréquentes

- Inclure les frais financiers dans les flux d''un projet : ils sont déjà pris en compte par le taux d''actualisation.
- Oublier l''économie d''impôt sur les amortissements, le BFR initial ou sa récupération finale, la valeur résiduelle nette d''impôt.
- Calculer le coût de la dette avant impôt dans le CMPC.
- Pondérer le CMPC avec des valeurs comptables quand l''énoncé donne des valeurs de marché.
- Conclure sur le TRI seul quand les projets sont de tailles différentes.
- Oublier qu''entre le franc CFA et l''euro la parité est fixe (1 euro = 655,957 FCFA) : le risque de change d''une entreprise de l''UEMOA porte surtout sur les autres devises (dollar, yuan, livre, naira…).
- Utiliser de mémoire des taux réels : dans ce cours, tous les taux d''intérêt, d''impôt et de marché sont fictifs pour l''exemple.

## 5. Méthode de révision

- Fiche « flux d''un projet » : investissement, BFR, flux d''exploitation après impôt, valeur résiduelle, récupération du BFR.
- Fiche « coût du capital » : formules du coût des fonds propres, coût de la dette après impôt, CMPC, formule de l''effet de levier.
- Fiche « couverture » : tableau comparatif des résultats selon le cours futur (sans couverture, à terme, option).
- Entraînement chronométré : un cas de synthèse doit être traité en 1h30 à 2h.

## 6. Plan de révision sur six semaines

- Semaine 1 : flux de trésorerie d''un projet, VAN, IP, délais de récupération.
- Semaine 2 : TRI, conflits de critères, avenir risqué (espérance, écart-type, scénarios).
- Semaine 3 : coût des fonds propres, coût de la dette, CMPC.
- Semaine 4 : effet de levier, politique de dividende, choix de financement.
- Semaine 5 : risque de change et risque de taux, couvertures.
- Semaine 6 : deux sujets complets (leçon 5) en conditions d''examen, correction et relecture des fiches.

## Points clés

- Le fil rouge de l''année : créer de la valeur en investissant à une rentabilité supérieure au coût du capital, en maîtrisant les risques.
- Le cas de synthèse investissement-financement est l''épreuve reine.
- Les flux d''un projet excluent les frais financiers.

## Exercices pratiques

- Exercice 1 : expliquez en trois phrases le lien entre VAN, CMPC et création de valeur.
- Exercice 2 : listez les éléments qui composent les flux de trésorerie d''un projet d''investissement.
- Exercice 3 : vrai ou faux : « Une entreprise sénégalaise qui importe des machines facturées en euros supporte un risque de change important. » Justifiez.
- Exercice 4 (cas pratique) : Mariama, étudiante en Licence 3 à Dakar, a un stage de fin d''études qui se termine deux semaines avant les examens. Construisez son plan de révision.

## Corrigé

- Exercice 1 : le CMPC mesure le coût moyen des ressources (fonds propres et dettes) de l''entreprise. On actualise les flux d''un projet à ce taux : si la VAN est positive, le projet rapporte plus que ce qu''il coûte à financer. Il crée alors de la valeur pour les apporteurs de capitaux.
- Exercice 2 : investissement initial (prix, frais d''installation), BFR initial et ses variations, flux d''exploitation après impôt (EBE moins impôt, ou résultat net d''exploitation plus dotations), valeur résiduelle nette d''impôt, récupération du BFR en fin de projet. Les frais financiers sont exclus.
- Exercice 3 : faux. La parité entre le franc CFA de l''UEMOA et l''euro est fixe (1 euro = 655,957 FCFA). Le risque de change sur l''euro est donc très limité tant que cette parité est maintenue ; il est plus important pour une facturation en dollars ou en autres devises.
- Exercice 4 : pendant le stage (4 semaines) : 1h30 par soir sur les fiches et exercices courts (semaine 1 investissement, semaine 2 financement, semaine 3 risques, semaine 4 révision des fiches) et un cas complet chaque samedi ; les deux dernières semaines, à temps plein : un sujet complet tous les deux jours, correction le lendemain, reprise des points faibles.', 'texte', 60, true, 10
from public.courses c where c.slug = 'lic-fin-l3'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Réussir ses examens de Licence 3 en Finance');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Décisions d''investissement : l''essentiel pour l''examen', '## Objectifs de la leçon

- Déterminer les flux de trésorerie d''un projet d''investissement.
- Calculer et interpréter la VAN, le TRI, l''indice de profitabilité et les délais de récupération.
- Choisir entre plusieurs projets et traiter un avenir risqué simple.

Montants en millions de FCFA. Le taux d''impôt de 30 % et le taux d''actualisation de 10 % sont fictifs pour l''exemple.

## Fiche 1 : les flux de trésorerie d''un projet

Un investissement est une dépense immédiate en vue de flux futurs. On raisonne en flux de trésorerie différentiels (ce que le projet ajoute), après impôt, et hors frais financiers (le coût du financement est pris en compte par le taux d''actualisation).

- Flux initial (année 0) : prix d''acquisition, frais d''installation, BFR initial.
- Flux d''exploitation : EBE × (1 − t) + dotations aux amortissements × t, ou, ce qui revient au même, résultat d''exploitation après impôt + dotations. Le terme dotations × t est l''économie d''impôt liée à l''amortissement.
- Flux de fin de projet : valeur résiduelle nette d''impôt, récupération du BFR.

Cas : Sénégal Lait SA, entreprise fictive de Kaolack, étudie une ligne de yaourts. Machine : 50, amortie linéairement sur 5 ans (dotation 10 par an). BFR initial : 5, récupéré en fin d''année 5. Valeur résiduelle de la machine en fin d''année 5 : 4, entièrement imposable car totalement amortie, soit 4 × 0,7 = 2,8 net d''impôt. EBE prévisionnels : 18 ; 20 ; 22 ; 22 ; 20.

- Année 0 : −50 − 5 = −55.
- Année 1 : 18 × 0,7 + 10 × 0,3 = 12,6 + 3 = 15,6.
- Année 2 : 20 × 0,7 + 3 = 17,0.
- Année 3 : 22 × 0,7 + 3 = 18,4.
- Année 4 : 18,4.
- Année 5 : 20 × 0,7 + 3 + 2,8 + 5 = 24,8.

## Fiche 2 : la valeur actuelle nette

VAN = −I0 + Σ Ft × (1 + k)^−t, avec k le taux d''actualisation (en général le CMPC de l''entreprise, ou un taux exigé pour ce type de risque).

Valeurs actuelles à 10 % : 14,18 ; 14,05 ; 13,82 ; 12,57 ; 15,40 ; total ≈ 70,02. VAN = 70,02 − 55 ≈ 15,02.

Règle : on retient un projet si sa VAN est positive. Ici, le projet rapporte la rentabilité exigée de 10 % et crée en plus environ 15 millions de valeur.

## Fiche 3 : le TRI, l''indice de profitabilité, les délais

- TRI : taux qui annule la VAN. On le cherche par essais et interpolation. Ici, TRI ≈ 19,5 %. Règle : TRI > taux exigé, le projet est acceptable.
- Indice de profitabilité : IP = valeur actuelle des flux / investissement = 70,02 / 55 ≈ 1,27. Chaque franc investi rapporte 1,27 franc en valeur actuelle. Règle : IP > 1.
- Délai de récupération simple : flux cumulés 15,6 ; 32,6 ; 51,0 ; 69,4. Après 3 ans, il manque 4,0, récupérés en 4 / 18,4 × 12 ≈ 2,6 mois : environ 3 ans et 3 mois.
- Délai de récupération actualisé : valeurs actuelles cumulées 14,18 ; 28,23 ; 42,06 ; 54,62 ; 70,02. Après 4 ans, il manque 0,38, récupérés en 0,38 / 15,40 × 12 ≈ 0,3 mois : un peu plus de 4 ans.

Le délai est un critère de liquidité et de prudence, mais il ignore les flux postérieurs : il ne remplace pas la VAN.

## Fiche 4 : comparer des projets

Quand les projets sont indépendants, on retient tous ceux dont la VAN est positive. Quand ils sont mutuellement exclusifs, les critères peuvent se contredire, notamment si les tailles ou les profils de flux diffèrent. La VAN mesure la richesse créée en valeur absolue ; le TRI et l''IP mesurent une rentabilité relative. Sans contrainte de capital, la VAN est le critère de référence. Avec un budget limité, on classe les projets selon l''IP.

## Fiche 5 : l''avenir risqué

Trois scénarios pour Sénégal Lait :

- Pessimiste (probabilité 0,25) : flux d''exploitation inférieurs de 30 % ; VAN ≈ −4,53.
- Probable (0,50) : VAN ≈ 15,02.
- Optimiste (0,25) : flux d''exploitation supérieurs de 20 % ; VAN ≈ 28,06.

Espérance : E(VAN) = 0,25 × (−4,53) + 0,5 × 15,02 + 0,25 × 28,06 ≈ 13,39. Écart-type : σ(VAN) = √[Σ pi × (VANi − E)²] ≈ 11,64. Le projet est intéressant en moyenne, avec une probabilité de 25 % de détruire de la valeur. Un décideur prudent comparera ce risque à celui d''autres projets (coefficient de variation σ / E ≈ 0,87) ou exigera un taux d''actualisation plus élevé.

## Points clés

- Flux = EBE × (1 − t) + dotations × t ; sans frais financiers ; avec BFR et valeur résiduelle nette.
- VAN > 0, TRI > k, IP > 1 : projet acceptable.
- Projets exclusifs : la VAN prime, sauf rationnement du capital (IP).
- Avenir risqué : espérance et écart-type de la VAN.

## Exercices pratiques

- Exercice 1 : EBE annuel 30, dotation 12, impôt 30 %. Calculez le flux d''exploitation par les deux méthodes.
- Exercice 2 : un projet coûte 200 et rapporte 60 par an pendant 5 ans. Calculez sa VAN à 12 %. Le TRI est-il supérieur à 12 % ?
- Exercice 3 : projets exclusifs à 10 %. A : −100 ; 30 ; 40 ; 50 ; 20. B : −60 ; 25 ; 25 ; 25 ; 10. Calculez VAN, IP, et indiquez les TRI (A ≈ 15,3 %, B ≈ 17,5 %). Lequel choisir ?
- Exercice 4 : calculez le délai de récupération simple du projet A.
- Exercice 5 : VAN de −10, 20 et 50 avec des probabilités 0,3 ; 0,4 ; 0,3. Calculez l''espérance et l''écart-type.
- Exercice 6 (cas pratique) : une boulangerie industrielle de Thiès hésite à remplacer un four. Listez les flux à prendre en compte et ceux à exclure.

## Corrigé

- Exercice 1 : 30 × 0,7 + 12 × 0,3 = 21 + 3,6 = 24,6. Autre méthode : résultat = 30 − 12 = 18 ; après impôt 12,6 ; + 12 de dotations = 24,6.
- Exercice 2 : VAN = −200 + 60 × (1 − 1,12^−5) / 0,12 ≈ −200 + 216,29 = 16,29. VAN positive à 12 %, donc TRI > 12 % (il vaut environ 15,2 %).
- Exercice 3 : VAN A ≈ 11,56 ; IP A ≈ 1,12. VAN B ≈ 9,00 ; IP B ≈ 1,15. B a le meilleur TRI et le meilleur IP, mais A crée plus de valeur. Sans contrainte de capital, on choisit A.
- Exercice 4 : cumuls 30 ; 70 ; il manque 30 sur 50 en année 3 : 0,6 année, soit environ 2 ans et 7 mois.
- Exercice 5 : E = 0,3 × (−10) + 0,4 × 20 + 0,3 × 50 = 20. Variance = 0,3 × 900 + 0,4 × 0 + 0,3 × 900 = 540 ; écart-type ≈ 23,2.
- Exercice 6 : à inclure : prix et installation du nouveau four, prix de revente net d''impôt de l''ancien, économies d''énergie et de maintenance, hausse de production, variation du BFR, économies d''impôt sur amortissements. À exclure : frais financiers, coûts déjà engagés (étude réalisée l''an dernier), charges de structure inchangées.', 'texte', 60, false, 20
from public.courses c where c.slug = 'lic-fin-l3'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Décisions d''investissement : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Décisions de financement et coût du capital : l''essentiel pour l''examen', '## Objectifs de la leçon

- Présenter les sources de financement à long terme et leurs critères de choix.
- Calculer le coût des fonds propres, le coût de la dette après impôt et le CMPC.
- Analyser l''effet de levier financier.
- Expliquer les enjeux de la politique de dividende.

Tous les taux (impôt, intérêt, rentabilités de marché) sont fictifs pour l''exemple.

## Fiche 1 : les sources de financement

- Fonds propres internes : l''autofinancement (CAF moins dividendes). Il ne coûte rien en apparence, mais il a un coût d''opportunité : celui exigé par les actionnaires.
- Fonds propres externes : augmentation de capital (auprès des associés, d''un fonds d''investissement ou, pour une grande société anonyme, par appel public à l''épargne sur le marché régional).
- Dettes financières : emprunt bancaire, emprunt obligataire (réservé aux grandes entreprises et aux États), crédit-bail (location avec option d''achat, qui finance un bien sans apport).
- Quasi-fonds propres et aides : comptes courants d''associés bloqués, subventions d''investissement, prêts participatifs.

Critères de choix : coût, effet sur le contrôle (une augmentation de capital peut diluer le pouvoir des associés), capacité d''endettement (ratios bancaires, garanties), adéquation de la durée au besoin, risque.

## Fiche 2 : le coût des fonds propres

Les actionnaires supportent le risque le plus élevé : ils exigent la rentabilité la plus forte.

- Modèle de Gordon-Shapiro : ke = D1 / P0 + g. Exemple : Teranga Logistique SA, société fictive cotée, doit verser un dividende de 120 FCFA ; son cours est de 1 500 FCFA ; le dividende croît de 5 % par an. ke = 120 / 1 500 + 5 % = 8 % + 5 % = 13 %.
- MEDAF (modèle d''équilibre des actifs financiers) : ke = rf + β × (E(Rm) − rf), où rf est le taux sans risque, β la sensibilité du titre au marché et E(Rm) − rf la prime de risque du marché. Avec rf = 6 %, β = 1,2 et une prime de 7 % : ke = 6 % + 1,2 × 7 % = 14,4 %.

Les deux méthodes donnent des estimations différentes : c''est normal, ce sont des modèles. À l''examen, on applique celle que l''énoncé demande.

## Fiche 3 : le coût de la dette et le CMPC

Les intérêts sont déductibles du résultat imposable : le coût de la dette après impôt vaut kd × (1 − t). Avec un emprunt à 8 % et un impôt de 30 % : 8 % × 0,7 = 5,6 %.

S''il existe des frais d''émission ou de dossier, le coût exact est le taux actuariel qui égalise le montant net reçu et les décaissements futurs après impôt.

Le coût moyen pondéré du capital (CMPC) pondère chaque coût par la part de la ressource, de préférence en valeurs de marché : CMPC = ke × CP / (CP + D) + kd × (1 − t) × D / (CP + D).

Teranga Logistique : capitaux propres 600 millions (valeur de marché), dettes 400 millions. CMPC = 14,4 % × 0,6 + 5,6 % × 0,4 = 8,64 % + 2,24 % = 10,88 %.

Le CMPC est le taux minimum de rentabilité que doivent atteindre les investissements de risque comparable à l''entreprise : c''est le taux d''actualisation de la leçon précédente.

## Fiche 4 : l''effet de levier financier

La rentabilité économique (après impôt) mesure la performance de l''actif : Re = résultat d''exploitation × (1 − t) / actif économique. La rentabilité financière mesure celle des capitaux propres : Rf = résultat net / capitaux propres.

Formule du levier : Rf = Re + [Re − i × (1 − t)] × D / CP.

Exemple : actif économique 1 000 millions, financé par 600 de capitaux propres et 400 de dettes à 8 % ; résultat d''exploitation 150 ; impôt 30 %.

- Re = 150 × 0,7 / 1 000 = 10,5 %.
- Coût de la dette après impôt : 5,6 %.
- Rf = 10,5 % + (10,5 % − 5,6 %) × 400 / 600 ≈ 13,77 %.
- Vérification : résultat net = (150 − 32) × 0,7 = 82,6 ; 82,6 / 600 ≈ 13,77 %.

Sans dette, Rf serait égale à Re, soit 10,5 %. L''endettement a donc augmenté la rentabilité des actionnaires : effet de levier positif, car Re > i × (1 − t).

Mais le levier joue dans les deux sens. Si le résultat d''exploitation tombe à 60 : Re = 4,2 % < 5,6 % ; Rf = (60 − 32) × 0,7 / 600 ≈ 3,27 %, inférieure à Re : c''est l''effet de massue. L''endettement accroît le risque supporté par les actionnaires.

## Fiche 5 : la politique de dividende

Le taux de distribution est la part du bénéfice versée en dividendes. Le reste est mis en réserve et finance la croissance. Si l''entreprise réinvestit une part b de son bénéfice à une rentabilité ROE, le dividende croît de g = b × ROE.

Exemple : BPA 300 FCFA, taux de distribution 40 % (D1 = 120 FCFA), ROE 15 % : g = 0,6 × 15 % = 9 %. Avec ke = 14 %, P0 = 120 / (0,14 − 0,09) = 2 400 FCFA.

Débat théorique : dans des marchés parfaits (sans impôts, sans coûts de transaction, information complète), Modigliani et Miller montrent que la politique de dividende n''affecte pas la valeur de l''entreprise. En pratique, elle compte : le dividende est un signal envoyé au marché, certains actionnaires préfèrent un revenu régulier, la fiscalité des dividendes et des plus-values peut différer, et verser des dividendes discipline les dirigeants. Distribuer trop peut aussi priver l''entreprise de financement interne.

## Points clés

- ke par Gordon (D1 / P0 + g) ou par le MEDAF (rf + β × prime).
- kd après impôt = kd × (1 − t) ; CMPC pondéré en valeurs de marché.
- Rf = Re + (Re − i(1 − t)) × D / CP : levier si Re > i(1 − t), massue sinon.
- g = b × ROE ; dividende : signal, clientèle, fiscalité, financement interne.

## Exercices pratiques

- Exercice 1 : rf = 5 %, β = 0,9, prime de marché 8 %. Calculez ke.
- Exercice 2 : avec ke de l''exercice 1, fonds propres 70 % et dettes 30 % à 9 % avant impôt (impôt 30 %), calculez le CMPC.
- Exercice 3 : actif 800, capitaux propres 400, dettes 400 à 7 %, résultat d''exploitation 120, impôt 30 %. Calculez Re et Rf, puis vérifiez.
- Exercice 4 : BPA 500 FCFA, taux de distribution 50 %, ROE 12 %, ke 11 %. Calculez g et la valeur de l''action.
- Exercice 5 (cas pratique) : une PME familiale de Saint-Louis veut financer une extension. Le fondateur refuse d''ouvrir son capital. Quelles sources lui proposer et quels risques signaler ?

## Corrigé

- Exercice 1 : ke = 5 % + 0,9 × 8 % = 12,2 %.
- Exercice 2 : CMPC = 0,7 × 12,2 % + 0,3 × 9 % × 0,7 = 8,54 % + 1,89 % = 10,43 %.
- Exercice 3 : Re = 120 × 0,7 / 800 = 10,5 % ; Rf = 10,5 % + (10,5 % − 4,9 %) × 1 = 16,1 %. Vérification : (120 − 28) × 0,7 / 400 = 64,4 / 400 = 16,1 %.
- Exercice 4 : g = 0,5 × 12 % = 6 % ; D1 = 250 FCFA ; P0 = 250 / (0,11 − 0,06) = 5 000 FCFA.
- Exercice 5 : autofinancement (réduire les dividendes), comptes courants d''associés, emprunt bancaire à moyen terme, crédit-bail pour les équipements, subventions éventuelles. Risques : endettement accru (effet de massue si l''activité baisse), garanties personnelles demandées par la banque, charge de remboursement à intégrer dans le plan de trésorerie.', 'texte', 60, false, 30
from public.courses c where c.slug = 'lic-fin-l3'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Décisions de financement et coût du capital : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Gestion des risques financiers : l''essentiel pour l''examen', '## Objectifs de la leçon

- Identifier et mesurer une exposition au risque de change et au risque de taux.
- Calculer un cours à terme par la parité des taux d''intérêt et comparer les couvertures (à terme, option).
- Comprendre le principe du swap de taux et du FRA, et l''effet des taux sur le prix des obligations.

Tous les cours de change (sauf la parité officielle euro-FCFA) et tous les taux sont fictifs pour l''exemple.

## Fiche 1 : qu''est-ce qu''un risque financier ?

Un risque financier est la possibilité qu''une variation de prix de marché (cours d''une devise, taux d''intérêt, cours d''une action, prix d''une matière première) réduise le résultat ou la valeur de l''entreprise. Gérer un risque, c''est : l''identifier, le mesurer (montant exposé, sens, échéance), décider de le couvrir ou non, choisir l''instrument.

## Fiche 2 : le risque de change dans l''UEMOA

Le franc CFA de l''UEMOA est lié à l''euro par une parité fixe : 1 euro = 655,957 FCFA. Un paiement de 50 000 euros coûte donc 50 000 × 655,957 = 32 797 850 FCFA, quel que soit le moment, tant que la parité est maintenue. Le risque de change porte sur les autres devises, au premier rang le dollar, dont le cours en FCFA varie avec le cours euro-dollar.

- Un importateur qui paie en dollars craint une hausse du dollar.
- Un exportateur qui encaisse des dollars craint une baisse du dollar.

## Fiche 3 : couvrir une dette en dollars

Cas : Dakar Pièces Auto SARL, importateur fictif, doit payer 100 000 USD dans 90 jours. Cours au comptant : 1 USD = 600 FCFA. Taux d''intérêt à 90 jours : 6 % sur le FCFA, 4 % sur le dollar (fictifs).

Couverture à terme : la banque garantit aujourd''hui un cours pour livraison dans 90 jours. Par la parité des taux d''intérêt : F = S × (1 + iFCFA × 90 / 360) / (1 + iUSD × 90 / 360) = 600 × 1,015 / 1,01 ≈ 602,97 FCFA. Le dollar est plus cher à terme qu''au comptant (report), car le taux FCFA est supérieur au taux dollar. Coût garanti : 100 000 × 602,97 ≈ 60 297 030 FCFA.

Couverture par option : l''importateur achète une option d''achat (call) de dollars au prix d''exercice de 605 FCFA, moyennant une prime de 8 FCFA par dollar, payée d''avance. Il exercera l''option si le dollar dépasse 605 ; sinon, il l''abandonne et achète au comptant.

Résultats selon le cours dans 90 jours :

- Si le dollar vaut 630 : sans couverture, 63 000 000 FCFA ; à terme, 60 297 030 ; avec l''option, (605 + 8) × 100 000 = 61 300 000.
- Si le dollar vaut 580 : sans couverture, 58 000 000 ; à terme, 60 297 030 ; avec l''option, (580 + 8) × 100 000 = 58 800 000.

Lecture : le terme supprime tout risque, mais aussi tout gain ; l''option protège contre la hausse tout en laissant profiter de la baisse, contre le paiement d''une prime (on néglige ici le coût de financement de la prime). C''est une assurance.

## Fiche 4 : les techniques internes

Avant de payer une banque, l''entreprise peut réduire son exposition :

- Facturer en FCFA ou en euros quand le partenaire l''accepte.
- Compenser (netting) les dettes et créances dans la même devise.
- Termaillage : avancer ou retarder un paiement selon les anticipations (technique risquée si l''anticipation est fausse).
- Adosser : financer un actif en dollars par une dette en dollars.

## Fiche 5 : le risque de taux

Une entreprise endettée à taux variable craint une hausse des taux ; un prêteur ou un détenteur de placements à taux variable craint une baisse ; un détenteur d''obligations à taux fixe craint une hausse, qui fait baisser leur prix.

Effet sur une obligation : nominal 10 000 FCFA, coupon 7 %, 5 ans, au pair quand le marché est à 7 %. Si les taux passent à 8 %, le prix tombe à environ 9 601 FCFA, soit une baisse d''environ 4 %. Pour une obligation de 2 ans, la baisse serait d''environ 1,8 % : plus l''échéance est longue, plus le risque de taux est fort.

Mesure simple de l''exposition (impasse) : actifs sensibles au taux − passifs sensibles. Avec 300 millions d''actifs et 500 millions de dettes à taux variable, une hausse de 1 point coûte environ (300 − 500) × 1 % = −2 millions par an.

## Fiche 6 : swap et FRA, les principes

Swap de taux : deux parties échangent des flux d''intérêts calculés sur un même montant notionnel, sans échanger le capital. Teranga Logistique a un emprunt de 500 millions au taux de référence + 2 %. Elle conclut un swap où elle paie un taux fixe de 7 % et reçoit le taux de référence. Coût net : référence + 2 % − référence + 7 % = 9 %, soit 45 millions par an quel que soit le taux de référence. Sans swap : 35 millions si la référence est à 5 %, 42,5 si elle est à 6,5 %, 50 si elle est à 8 %. L''entreprise renonce à une éventuelle baisse pour se protéger d''une hausse.

FRA (accord de taux futur) : il fixe aujourd''hui le taux d''un emprunt futur. Un FRA à 7 % sur 1 milliard pour 90 jours : si le taux de référence est de 7,5 % à la date prévue, la banque verse à l''entreprise environ (7,5 % − 7 %) × 90 / 360 × 1 milliard = 1 250 000 FCFA (montant actualisé en pratique s''il est réglé en début de période), qui compense le surcoût de l''emprunt.

## Points clés

- Parité fixe avec l''euro : le risque de change porte sur les autres devises.
- Cours à terme : F = S × (1 + i domestique × n / 360) / (1 + i étranger × n / 360).
- Terme : certitude ; option : assurance contre une prime.
- Risque de taux : taux variable, prix des obligations ; swap et FRA pour le figer.

## Exercices pratiques

- Exercice 1 : une entreprise de Dakar doit payer 80 000 euros. Combien en FCFA ? Y a-t-il un risque de change ?
- Exercice 2 : un exportateur de noix de cajou encaissera 200 000 USD dans 60 jours. Cours au comptant 595 FCFA ; taux à 60 jours : 6 % FCFA, 5 % USD. Calculez le cours à terme et le montant garanti.
- Exercice 3 : il peut aussi acheter une option de vente (put) au prix d''exercice de 590 FCFA, prime 6 FCFA. Calculez le montant net encaissé si le dollar vaut 580 puis 620.
- Exercice 4 : actifs à taux variable 200 millions, dettes à taux variable 450 millions. Effet d''une hausse de 2 points ?
- Exercice 5 (cas pratique) : une clinique de Dakar a emprunté 300 millions à taux variable pour 7 ans. Son directeur financier craint une hausse des taux. Que lui proposer ?

## Corrigé

- Exercice 1 : 80 000 × 655,957 = 52 476 560 FCFA. Pas de risque de change tant que la parité fixe est maintenue.
- Exercice 2 : F = 595 × (1 + 0,06 × 60 / 360) / (1 + 0,05 × 60 / 360) = 595 × 1,01 / 1,008333 ≈ 595,98 FCFA ; montant garanti ≈ 119 196 694 FCFA.
- Exercice 3 : à 580 : exercice du put, (590 − 6) × 200 000 = 116 800 000 FCFA. À 620 : abandon, vente au comptant, (620 − 6) × 200 000 = 122 800 000 FCFA. L''option garantit un minimum de 584 FCFA par dollar tout en laissant profiter de la hausse.
- Exercice 4 : (200 − 450) × 2 % = −5 millions par an.
- Exercice 5 : un swap payeur de taux fixe (elle paie un taux fixe, reçoit le variable) pour figer le coût sur la durée ; ou des FRA pour les prochaines périodes ; ou une renégociation à taux fixe. Il faut comparer le coût de chaque solution à la marge de sécurité de la clinique.', 'texte', 60, false, 40
from public.courses c where c.slug = 'lic-fin-l3'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Gestion des risques financiers : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Sujet type d''examen de Licence 3 Finance (entraînement corrigé)', '## Présentation

Sujet d''entraînement conçu pour ce cours, et non sujet officiel. Durée conseillée : 3 heures. Barème indicatif, non officiel : dossier 1 sur 8 points, dossier 2 sur 7 points, dossier 3 sur 5 points. Montants en millions de FCFA sauf indication. Tous les taux et cours de change sont fictifs pour l''exemple.

## Dossier 1 : décision d''investissement (8 points)

Casamance Solaire SA, entreprise fictive de Ziguinchor, envisage d''installer une unité d''assemblage de kits solaires. Investissement : 120, amorti linéairement sur 4 ans. BFR de 10 constitué au départ et récupéré en fin d''année 4. EBE annuel prévu : 45 pendant 4 ans. Valeur résiduelle nulle. Impôt : 30 %. Taux d''actualisation : 10 % (voir dossier 2).

- 1.1 (2 points) : calculez les flux de trésorerie du projet.
- 1.2 (3 points) : calculez la VAN, l''indice de profitabilité et le délai de récupération simple. Le TRI est d''environ 11,8 % : vérifiez sa cohérence avec la VAN.
- 1.3 (3 points) : si l''EBE était inférieur de 10 % aux prévisions, la VAN serait d''environ −4,8. Calculez le nouveau flux annuel et commentez la sensibilité du projet.

## Dossier 2 : coût du capital et levier (7 points)

La société est financée, en valeurs de marché, par 500 de capitaux propres et 500 de dettes au taux de 10 %. Taux sans risque : 4 % ; bêta : 1,5 ; prime de risque du marché : 6 %. Actif économique : 1 000 ; résultat d''exploitation courant : 140.

- 2.1 (3 points) : calculez le coût des fonds propres par le MEDAF, le coût de la dette après impôt et le CMPC.
- 2.2 (3 points) : calculez la rentabilité économique après impôt et la rentabilité financière par la formule du levier ; vérifiez.
- 2.3 (1 point) : à partir de quel niveau de rentabilité économique l''endettement deviendrait-il défavorable aux actionnaires ?

## Dossier 3 : risque de change (5 points)

Pour importer des panneaux, Casamance Solaire doit payer 150 000 USD dans 180 jours. Cours au comptant : 610 FCFA. Taux à 180 jours : 6 % sur le FCFA, 3 % sur le dollar. Une option d''achat de dollars est disponible au prix d''exercice de 615 FCFA, prime 10 FCFA par dollar.

- 3.1 (2 points) : calculez le cours à terme et le coût garanti.
- 3.2 (2 points) : comparez les trois stratégies (aucune couverture, terme, option) si le dollar vaut 650 puis 590 à l''échéance.
- 3.3 (1 point) : les panneaux pourraient être achetés en Europe en euros. Quel avantage en matière de risque ?

## Corrigé du dossier 1

1.1. Dotation = 120 / 4 = 30. Flux d''exploitation = 45 × 0,7 + 30 × 0,3 = 31,5 + 9 = 40,5. Année 0 : −120 − 10 = −130. Années 1 à 3 : 40,5. Année 4 : 40,5 + 10 = 50,5.

1.2. Valeurs actuelles à 10 % : 36,82 ; 33,47 ; 30,43 ; 34,49 ; somme ≈ 135,21. VAN ≈ 135,21 − 130 = 5,21. IP ≈ 135,21 / 130 ≈ 1,04. Délai simple : cumuls 40,5 ; 81 ; 121,5 ; il manque 8,5 sur 50,5 en année 4, soit environ 0,17 an : un peu plus de 3 ans et 2 mois. Le TRI de 11,8 % est supérieur au taux de 10 %, ce qui est cohérent avec une VAN positive. Le projet est acceptable.

1.3. Nouvel EBE : 40,5 ; flux = 40,5 × 0,7 + 9 = 37,35 (47,35 en année 4). La VAN devient négative (environ −4,8) : une baisse de 10 % de l''EBE suffit à rendre le projet destructeur de valeur. Le seuil d''EBE qui annule la VAN est d''environ 42,7, soit seulement 5 % sous la prévision. Le projet est rentable mais fragile : il faut fiabiliser les prévisions de ventes et de coûts, ou négocier un prix d''achat plus bas, avant de décider.

## Corrigé du dossier 2

2.1. ke = 4 % + 1,5 × 6 % = 13 %. kd après impôt = 10 % × 0,7 = 7 %. CMPC = 0,5 × 13 % + 0,5 × 7 % = 10 %. C''est le taux utilisé au dossier 1.

2.2. Re = 140 × 0,7 / 1 000 = 9,8 %. Rf = 9,8 % + (9,8 % − 7 %) × 500 / 500 = 12,6 %. Vérification : intérêts = 50 ; résultat net = (140 − 50) × 0,7 = 63 ; 63 / 500 = 12,6 %.

2.3. L''effet de levier devient négatif (effet de massue) dès que la rentabilité économique après impôt passe sous le coût de la dette après impôt, soit 7 % (résultat d''exploitation inférieur à 100).

## Corrigé du dossier 3

3.1. F = 610 × (1 + 0,06 × 180 / 360) / (1 + 0,03 × 180 / 360) = 610 × 1,03 / 1,015 ≈ 619,01 FCFA. Coût garanti ≈ 150 000 × 619,01 ≈ 92 852 217 FCFA.

3.2. Si le dollar vaut 650 : sans couverture, 97 500 000 ; terme, 92 852 217 ; option, (615 + 10) × 150 000 = 93 750 000. Si le dollar vaut 590 : sans couverture, 88 500 000 ; terme, 92 852 217 ; option, (590 + 10) × 150 000 = 90 000 000. Le terme est le meilleur en cas de hausse, l''option protège en cas de hausse tout en laissant profiter de la baisse. Un dirigeant prudent qui ne veut pas parier choisira le terme ou l''option selon son anticipation et le coût de la prime.

3.3. Avec la parité fixe 1 euro = 655,957 FCFA, un achat en euros élimine le risque de change tant que cette parité est maintenue. Il faut néanmoins comparer les prix et les délais de livraison des fournisseurs.

## Exercices pratiques

- Exercice 1 : pourquoi exclut-on les frais financiers des flux du projet du dossier 1 ?
- Exercice 2 : quel serait le CMPC si la société était financée à 70 % par capitaux propres et 30 % par dettes, coûts inchangés ?
- Exercice 3 : vrai ou faux : « Une option de change est gratuite. »
- Exercice 4 : citez deux limites du délai de récupération.
- Exercice 5 : un swap permet-il de transformer une dette à taux variable en dette à taux fixe ?

## Corrigé

- Exercice 1 : le coût du financement est déjà pris en compte dans le taux d''actualisation (CMPC) ; inclure les intérêts dans les flux le compterait deux fois.
- Exercice 2 : 0,7 × 13 % + 0,3 × 7 % = 9,1 % + 2,1 % = 11,2 % (en pratique, ke changerait aussi avec l''endettement).
- Exercice 3 : faux. L''acheteur paie une prime, perdue si l''option n''est pas exercée.
- Exercice 4 : il ignore les flux postérieurs au délai ; il ne mesure pas la création de valeur (et, dans sa version simple, ignore l''actualisation).
- Exercice 5 : oui. L''entreprise conclut un swap où elle paie un taux fixe et reçoit le taux variable, qui compense celui de sa dette.', 'texte', 60, false, 50
from public.courses c where c.slug = 'lic-fin-l3'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Sujet type d''examen de Licence 3 Finance (entraînement corrigé)');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Décisions d''investissement', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : étudiants de Licence 3 Finance, Banque, Contrôle de gestion.
- Objectifs : construire les flux d''un projet avec BFR variable et valeur résiduelle, calculer VAN, TRI (par interpolation), IP et délais de récupération, raisonner en avenir risqué.
- Matériel : tableau blanc, diaporama avec le tableau des flux à compléter, calculatrice.
- Prérequis : actualisation (Licence 1), CAF et BFR (Licence 2), leçon 2 du cours.
- Montants en millions de FCFA ; impôt de 30 % et taux d''actualisation de 11 % fictifs pour l''exemple.

## Déroulé minuté

## 00:00 – 05:00 · Le dossier du jour

« Bonjour. Nous sommes au service financier de Thiès Céramique SA, entreprise fictive qui fabrique des carreaux. La direction veut lancer une nouvelle ligne de production. Le directeur général nous pose une seule question : faut-il investir ? Notre réponse devra être chiffrée et argumentée, comme dans un cas d''examen. Nous suivrons toujours le même ordre : flux, VAN, TRI, indice, délais, risque, puis recommandation. Gardez cet ordre en tête : il structure aussi votre copie. »

Visuel : les données. Machine : 80, amortie linéairement sur 5 ans. Chiffre d''affaires prévu : 100 ; 120 ; 130 ; 130 ; 120. EBE : 30 % du chiffre d''affaires. BFR : 10 % du chiffre d''affaires de l''année, constitué en début d''année. Valeur résiduelle de la machine en fin d''année 5 : 6, entièrement imposable. Taux d''actualisation : 11 %.

## 05:00 – 20:00 · Construire les flux d''exploitation

« Première étape : l''EBE. 30 % de 100, 120, 130, 130, 120 donne 30 ; 36 ; 39 ; 39 ; 36. Deuxième étape : la dotation, 80 / 5 = 16 par an. Troisième étape : le flux d''exploitation après impôt, EBE × 0,7 + dotation × 0,3. Année 1 : 21 + 4,8 = 25,8. Année 2 : 25,2 + 4,8 = 30. Années 3 et 4 : 27,3 + 4,8 = 32,1. Année 5 : 30. »

« Pourquoi ajouter dotation × 0,3 ? Parce que l''amortissement réduit l''impôt sans être décaissé. C''est l''économie d''impôt. Et pourquoi n''y a-t-il pas d''intérêts d''emprunt ? Parce que le coût du financement est déjà dans le taux de 11 %. Les compter dans les flux, ce serait les compter deux fois. »

## 20:00 – 32:00 · Le BFR et les flux de fin de projet

« Le BFR suit l''activité : 10 ; 12 ; 13 ; 13 ; 12. Il faut le constituer en début d''année. En année 0, on décaisse 10. Fin d''année 1, il faut 2 de plus pour l''année 2. Fin d''année 2, 1 de plus. Fin d''année 3, rien. Fin d''année 4, le BFR baisse de 1 : on récupère 1. Fin d''année 5, on récupère tout le BFR restant, 12. »

« Valeur résiduelle : 6, imposable car la machine est totalement amortie, soit 6 × 0,7 = 4,2. »

« Flux nets : année 0 : −80 − 10 = −90. Année 1 : 25,8 − 2 = 23,8. Année 2 : 30 − 1 = 29. Année 3 : 32,1. Année 4 : 32,1 + 1 = 33,1. Année 5 : 30 + 12 + 4,2 = 46,2. »

Question à poser : « Un étudiant oublie la récupération du BFR. Son erreur gonfle-t-elle ou réduit-elle la VAN ? » Réponse : elle la réduit ; il sous-estime le dernier flux de 12.

## 32:00 – 45:00 · VAN et indice de profitabilité

« Actualisons à 11 %. 23,8 / 1,11 ≈ 21,44. 29 / 1,11² ≈ 23,54. 32,1 / 1,11³ ≈ 23,47. 33,1 / 1,11⁴ ≈ 21,80. 46,2 / 1,11⁵ ≈ 27,42. Somme ≈ 117,67. VAN ≈ 117,67 − 90 = 27,67. »

« Interprétation : le projet rembourse l''investissement, rémunère les financeurs au taux de 11 %, et crée en plus 27,67 millions de valeur. IP = 117,67 / 90 ≈ 1,31 : chaque franc investi rapporte 1,31 franc en valeur actuelle. »

## 45:00 – 52:00 · Pause interactive et quiz

- Question 1 : un projet a une VAN de −3 à 10 %. Son TRI est-il supérieur ou inférieur à 10 % ? Réponse : inférieur.
- Question 2 : où se place la récupération du BFR ? Réponse : dans le dernier flux du projet.
- Question 3 : EBE 50, dotation 20, impôt 30 %. Flux d''exploitation ? Réponse : 35 + 6 = 41.
- Question 4 : vrai ou faux, on inclut les frais financiers dans les flux. Réponse : faux.
- Question 5 : IP de 0,95, que conclure ? Réponse : la VAN est négative, on rejette le projet.

## 52:00 – 1:05:00 · Le TRI par interpolation et les délais

« Le TRI annule la VAN. Essayons 20 % : VAN ≈ 3,08. Essayons 25 % : VAN ≈ −7,27. Le TRI est entre les deux. Interpolation linéaire : TRI ≈ 20 % + 3,08 / (3,08 + 7,27) × 5 % ≈ 21,5 %. Le calcul exact donne environ 21,4 % : l''interpolation surestime légèrement, car la VAN n''est pas une droite. À l''examen, choisissez deux taux proches pour limiter l''erreur. »

« Délai de récupération simple : cumuls 23,8 ; 52,8 ; 84,9 ; 118. Après 3 ans, il manque 5,1 sur 33,1, soit environ 1,8 mois : 3 ans et 2 mois environ. Délai actualisé : cumuls actualisés 21,44 ; 44,98 ; 68,45 ; 90,25. Après 4 ans, l''investissement de 90 est juste couvert : environ 3 ans et 11 mois (il manquait 21,55 au bout de 3 ans, récupérés en 21,55 / 21,80 × 12 ≈ 11,9 mois). »

Exercice corrigé en direct : « Un projet coûte 50 et rapporte 15 par an pendant 5 ans. VAN à 11 % ? » Correction : 15 × (1 − 1,11^−5) / 0,11 ≈ 55,44 ; VAN ≈ 5,44.

## 1:05:00 – 1:18:00 · L''avenir risqué

« Les prévisions de chiffre d''affaires sont incertaines. Construisons trois scénarios. Pessimiste, probabilité 0,3 : chiffre d''affaires inférieur de 15 % ; VAN ≈ 14,56. Central, probabilité 0,5 : VAN ≈ 27,67. Optimiste, probabilité 0,2 : chiffre d''affaires supérieur de 10 % ; VAN ≈ 36,42. »

« Espérance : 0,3 × 14,56 + 0,5 × 27,67 + 0,2 × 36,42 ≈ 25,49. Écart-type : √[0,3 × (14,56 − 25,49)² + 0,5 × (27,67 − 25,49)² + 0,2 × (36,42 − 25,49)²] ≈ 7,88. Même dans le scénario pessimiste, la VAN reste positive : le projet est robuste. »

« Autres outils, à citer dans une copie : l''analyse de sensibilité (de combien le chiffre d''affaires peut-il baisser avant que la VAN devienne nulle ?), le seuil de rentabilité, l''ajout d''une prime de risque au taux d''actualisation. Ici, une analyse de sensibilité montre que la VAN ne s''annule que si le chiffre d''affaires est inférieur d''environ 32 % aux prévisions sur toute la durée du projet. La marge de sécurité est confortable. »

« Attention à une confusion fréquente : un écart-type élevé ne signifie pas que le projet est mauvais, mais que son résultat est incertain. Pour comparer deux projets d''espérances différentes, on utilise le coefficient de variation, écart-type divisé par espérance : ici, 7,88 / 25,49 ≈ 0,31. Un décideur qui n''aime pas le risque préfère, à espérance égale, le projet au coefficient le plus faible. »

## 1:18:00 – 1:24:00 · Synthèse et recommandation

« Recommandation au directeur général : investir. VAN de 27,7 millions à 11 %, TRI d''environ 21 %, IP de 1,31, récupération actualisée en moins de 4 ans, et VAN positive même dans le scénario pessimiste. Points de vigilance : maîtriser le BFR, qui pèse 10 % du chiffre d''affaires, et sécuriser les débouchés de la première année. »

## 1:24:00 – 1:30:00 · Évaluation finale

- Question 1 : VAN = −100 + 60 / 1,1 + 60 / 1,1². Calculez. Réponse : ≈ −100 + 54,55 + 49,59 = 4,13.
- Question 2 : pourquoi l''économie d''impôt sur amortissement augmente-t-elle les flux ? Réponse : la dotation réduit le résultat imposable donc l''impôt payé, sans être un décaissement.
- Question 3 : deux projets exclusifs : A (VAN 20, TRI 15 %), B (VAN 12, TRI 22 %). Sans contrainte de capital, lequel choisir ? Réponse : A, car il crée le plus de valeur.
- Question 4 : VAN de 10 et de −5 à 12 % et 16 %. TRI approché ? Réponse : 12 % + 10 / 15 × 4 % ≈ 14,7 %.
- Question 5 : que mesure l''écart-type de la VAN ? Réponse : la dispersion des résultats possibles, donc le risque du projet.

« Merci. Pour vous entraîner, refaites le cas avec un taux d''actualisation de 14 % : vous devez trouver une VAN d''environ 18,45, toujours positive, donc une décision inchangée. Puis rédigez vous-même la recommandation au directeur général en dix lignes maximum, en citant au moins trois critères chiffrés et un point de vigilance. »', 'video', 90, false, 60
from public.courses c where c.slug = 'lic-fin-l3'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Décisions d''investissement');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Décisions de financement et coût du capital', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : étudiants de Licence 3 Finance, Banque, Gestion.
- Objectifs : estimer le coût des fonds propres et de la dette, calculer le CMPC, analyser l''effet de levier, choisir entre augmentation de capital et emprunt, discuter la politique de dividende.
- Matériel : tableau blanc, diaporama du cas, calculatrice.
- Prérequis : marchés financiers de Licence 2 (Gordon-Shapiro), leçon 3 du cours.
- Montants en millions de FCFA sauf indication ; tous les taux sont fictifs pour l''exemple, impôt de 30 %.

## Déroulé minuté

## 00:00 – 05:00 · La question du financement

« Bonjour. Lors de la séance précédente, nous avons appris à décider si un projet vaut la peine. Aujourd''hui, deux questions complémentaires : quel taux d''actualisation utiliser, et comment financer le projet ? Notre cas : Sahel Télécom Services SA, société fictive cotée, qui installe des pylônes pour les opérateurs. Elle compte 1 000 000 d''actions cotées 2 000 francs et 1 000 millions de dettes au taux de 9 %. »

## 05:00 – 18:00 · Le coût des fonds propres

« Les actionnaires ne signent pas de contrat de rémunération, mais ils ont des exigences : s''ils n''obtiennent pas une rentabilité suffisante, ils vendent, le cours baisse, et l''entreprise aura du mal à lever des fonds. Comment mesurer cette exigence ? »

« Première méthode, Gordon-Shapiro : ke = D1 / P0 + g. Le dividende attendu est 180 francs, le cours 2 000 francs, la croissance 4 %. ke = 9 % + 4 % = 13 %. Deuxième méthode, le MEDAF : ke = rf + β × prime de marché. Avec un taux sans risque de 5,5 %, un bêta de 1,25 et une prime de 6 % : ke = 5,5 % + 7,5 % = 13 %. Les deux méthodes concordent ici, ce qui est rare en pratique. »

« Le bêta mesure la sensibilité du titre aux mouvements du marché. Un bêta de 1,25 signifie que si le marché monte de 10 %, le titre tend à monter de 12,5 %, et à baisser d''autant en sens inverse. Plus le bêta est élevé, plus l''actionnaire exige une prime. »

## 18:00 – 28:00 · Le coût de la dette et le CMPC

« La dette coûte 9 % avant impôt. Mais les intérêts sont déductibles : chaque franc d''intérêt réduit l''impôt de 0,30 franc. Coût après impôt : 9 % × 0,7 = 6,3 %. »

« Le CMPC pondère les coûts par les valeurs de marché. Capitaux propres : 1 000 000 × 2 000 francs = 2 000 millions. Dettes : 1 000 millions. Total : 3 000. CMPC = 2 / 3 × 13 % + 1 / 3 × 6,3 % ≈ 8,67 % + 2,10 % ≈ 10,77 %. C''est le taux minimal que doit rapporter un investissement de risque comparable. »

Question à poser : « Pourquoi ne pas financer tout par dette, puisque la dette coûte moins cher ? » Réponse attendue : plus l''endettement augmente, plus le risque des actionnaires et des prêteurs augmente : ke et kd montent, et le risque de faillite apparaît.

## 28:00 – 42:00 · L''effet de levier

« L''actif économique vaut 3 000 et dégage un résultat d''exploitation de 420. Rentabilité économique après impôt : Re = 420 × 0,7 / 3 000 = 9,8 %. Rentabilité financière par la formule : Rf = Re + (Re − i(1 − t)) × D / CP = 9,8 % + (9,8 % − 6,3 %) × 1 000 / 2 000 = 11,55 %. Vérification : intérêts 90 ; résultat net = (420 − 90) × 0,7 = 231 ; 231 / 2 000 = 11,55 %. »

« L''endettement fait gagner 1,75 point aux actionnaires, car l''actif rapporte 9,8 % alors que la dette coûte 6,3 % après impôt. Mais si le résultat d''exploitation tombait à 270, Re vaudrait 6,3 % : le levier serait nul. En dessous, effet de massue. Le levier amplifie les bonnes comme les mauvaises années : c''est un risque financier qui s''ajoute au risque d''exploitation. »

## 42:00 – 50:00 · Pause interactive et quiz

- Question 1 : D1 = 100, P0 = 1 250, g = 3 %. ke ? Réponse : 8 % + 3 % = 11 %.
- Question 2 : rf = 6 %, β = 0,8, prime 5 %. ke ? Réponse : 10 %.
- Question 3 : kd = 10 %, impôt 30 %. Coût après impôt ? Réponse : 7 %.
- Question 4 : 60 % de fonds propres à 12 %, 40 % de dettes à 8 % avant impôt (impôt 30 %). CMPC ? Réponse : 7,2 % + 2,24 % = 9,44 %.
- Question 5 : Re = 5 %, coût de la dette après impôt 6 %. Effet ? Réponse : effet de massue.

## 50:00 – 1:05:00 · Choisir entre augmentation de capital et emprunt

« Sahel Télécom doit financer un projet de 500. Option A : augmentation de capital à 1 900 francs par action, soit environ 263 158 actions nouvelles. Option B : emprunt de 500 à 9 %. Après le projet, le résultat d''exploitation prévu est de 500. »

« Option A : intérêts inchangés 90 ; résultat net = (500 − 90) × 0,7 = 287 ; nombre d''actions ≈ 1 263 158 ; BPA ≈ 227 francs. Option B : intérêts 90 + 45 = 135 ; résultat net = (500 − 135) × 0,7 = 255,5 ; 1 000 000 d''actions ; BPA ≈ 255,5 francs. L''emprunt donne un meilleur bénéfice par action. »

« Mais jusqu''à quel niveau de résultat ? Le point d''indifférence est le résultat d''exploitation pour lequel les deux BPA sont égaux : (R − 90) × 0,7 / 1 263 158 = (R − 135) × 0,7 / 1 000 000. On trouve R ≈ 306 ; le BPA vaut alors environ 119,7 francs dans les deux cas. Au-dessus de 306, l''emprunt est préférable pour les actionnaires ; en dessous, l''augmentation de capital. »

« Autres critères : l''emprunt augmente le risque et nécessite des garanties ; l''augmentation de capital dilue le contrôle des actionnaires actuels. La décision combine chiffres et stratégie. »

Exercice corrigé en direct : « Avec un résultat d''exploitation de 250, quelle option donne le meilleur BPA ? » Correction : A : (250 − 90) × 0,7 / 1,263158 ≈ 88,7 francs ; B : (250 − 135) × 0,7 = 80,5 francs. L''augmentation de capital est préférable, conformément au point d''indifférence.

## 1:05:00 – 1:17:00 · La politique de dividende

« Sahel Télécom a réalisé un résultat net de 231, soit 231 francs par action. Si elle distribue 50 %, le dividende est de 115,5 francs et le rendement de 115,5 / 2 000 ≈ 5,8 %. Le reste, 115,5 millions, est réinvesti. »

« La théorie de Modigliani et Miller dit qu''en marchés parfaits, la politique de dividende ne change pas la valeur : ce que l''actionnaire ne reçoit pas en dividende, il le retrouve en plus-value. Mais dans la réalité, plusieurs imperfections comptent. Le signal : une hausse du dividende indique que la direction a confiance. La clientèle : les caisses de retraite et de nombreux épargnants préfèrent un revenu régulier. La fiscalité : selon les règles en vigueur, dividendes et plus-values peuvent être imposés différemment ; vérifiez toujours le texte fiscal applicable. Les coûts d''agence : verser un dividende limite les fonds laissés à la discrétion des dirigeants. Enfin, le financement : distribuer trop oblige à emprunter ou à émettre des actions, ce qui coûte. »

« Une politique raisonnable : un dividende stable et prévisible, qui augmente avec les bénéfices durables, tout en préservant l''autofinancement des projets à VAN positive. »

## 1:17:00 – 1:23:00 · Synthèse

« Retenez : ke par Gordon ou MEDAF ; kd après impôt ; CMPC en valeurs de marché ; levier si Re > i(1 − t) ; point d''indifférence pour choisir entre capital et dette ; politique de dividende entre signal, clientèle, fiscalité et besoins de financement. »

## 1:23:00 – 1:30:00 · Évaluation finale

- Question 1 : P0 = 4 000, D1 = 240, g = 5 %. ke ? Réponse : 6 % + 5 % = 11 %.
- Question 2 : CP 300 à 14 %, D 200 à 10 % avant impôt, impôt 30 %. CMPC ? Réponse : 0,6 × 14 % + 0,4 × 7 % = 8,4 % + 2,8 % = 11,2 %.
- Question 3 : Re = 12 %, i(1 − t) = 7 %, D / CP = 0,5. Rf ? Réponse : 12 % + 5 % × 0,5 = 14,5 %.
- Question 4 : qu''est-ce que le point d''indifférence ? Réponse : le résultat d''exploitation pour lequel deux modes de financement donnent le même BPA.
- Question 5 : citez deux arguments en faveur d''un dividende régulier. Réponse : signal de confiance envoyé au marché ; attentes des actionnaires qui recherchent un revenu.

« Merci. Pour la prochaine séance, recalculez le point d''indifférence si l''augmentation de capital se faisait à 2 000 francs par action. »', 'video', 90, false, 70
from public.courses c where c.slug = 'lic-fin-l3'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Décisions de financement et coût du capital');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Gestion des risques financiers', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : étudiants de Licence 3 Finance, Banque, Commerce international.
- Objectifs : identifier une exposition de change ou de taux, calculer un cours à terme, comparer couverture à terme et option, comprendre le swap de taux et le FRA, mesurer l''effet des taux sur une obligation.
- Matériel : tableau blanc, diaporama avec un tableau comparatif des stratégies, calculatrice.
- Prérequis : intérêts simples, prix d''une obligation (Licence 2), leçon 4 du cours.
- Tous les cours de change (sauf la parité officielle euro-FCFA) et tous les taux sont fictifs pour l''exemple.

## Déroulé minuté

## 00:00 – 06:00 · Pourquoi gérer les risques

« Bonjour. Kayar Export SA, entreprise fictive, vend du poisson congelé en Asie, facturé en dollars. Elle achète aussi des emballages aux États-Unis. Elle a emprunté 800 millions de francs à taux variable pour moderniser sa chambre froide. Son directeur financier dort mal : si le dollar baisse, ses ventes rapportent moins de francs ; si les taux montent, ses intérêts explosent. Aujourd''hui, nous allons l''aider. Méthode en quatre temps : identifier, mesurer, décider, couvrir. »

## 06:00 – 16:00 · Identifier et mesurer l''exposition de change

« Premier réflexe dans l''UEMOA : distinguer l''euro des autres devises. La parité est fixe : 1 euro = 655,957 francs. Une facture de 30 000 euros vaut 30 000 × 655,957 = 19 678 710 francs, sans incertitude tant que la parité tient. En revanche, le dollar fluctue. »

« Kayar Export encaissera 250 000 dollars dans 90 jours et doit payer 100 000 dollars d''emballages à la même date. Avant tout produit bancaire, utilisons une technique interne : la compensation. Les 100 000 dollars reçus serviront à payer le fournisseur. L''exposition nette est de 150 000 dollars à recevoir. Le risque : une baisse du dollar. »

« Autres techniques internes : facturer en francs ou en euros si le client l''accepte, adosser un emprunt en dollars à des créances en dollars, ou le termaillage, c''est-à-dire avancer ou retarder un paiement selon ce qu''on anticipe, ce qui revient à spéculer si l''anticipation est fausse. »

## 16:00 – 30:00 · La couverture à terme

« Le cours au comptant est de 605 francs. Taux à 90 jours : 5,5 % pour le franc, 4,5 % pour le dollar. La banque calcule le cours à terme par la parité des taux d''intérêt : F = 605 × (1 + 0,055 × 90 / 360) / (1 + 0,045 × 90 / 360) ≈ 606,50 francs. Pourquoi plus élevé que le comptant ? Parce que la banque, pour livrer des dollars à terme, emprunte des francs à 5,5 % et place des dollars à 4,5 % : elle répercute l''écart. »

« En vendant à terme ses 150 000 dollars nets, Kayar Export s''assure 150 000 × 606,50 ≈ 90 974 351 francs, quel que soit le cours dans 90 jours. Si elle n''avait pas compensé et couvrait les 250 000 dollars, elle encaisserait environ 151 623 918 francs, mais elle resterait exposée sur le paiement fournisseur. »

Question à poser : « Si le dollar remonte à 640 dans 90 jours, la couverture à terme est-elle une erreur ? » Réponse attendue : non, la couverture vise la certitude, pas le gain ; on a renoncé à un gain possible pour éliminer une perte possible.

## 30:00 – 42:00 · La couverture par option

« Alternative : acheter une option de vente de dollars, un put, au prix d''exercice de 600 francs, prime 7 francs par dollar. Comparons sur 150 000 dollars. »

- Si le dollar tombe à 570 : sans couverture, 85 500 000 ; à terme, environ 90 974 351 ; avec l''option, on exerce : (600 − 7) × 150 000 = 88 950 000.
- Si le dollar monte à 640 : sans couverture, 96 000 000 ; à terme, environ 90 974 351 ; avec l''option, on abandonne et on vend au comptant : (640 − 7) × 150 000 = 94 950 000.

« L''option fonctionne comme une assurance : un plancher de 593 francs nets par dollar, et la possibilité de profiter d''une hausse. Son prix est la prime, payée d''avance et perdue si l''option n''est pas exercée. Le terme est gratuit en apparence, mais il fait renoncer aux gains. Le choix dépend de l''aversion au risque de l''entreprise et de ses anticipations. »

## 42:00 – 49:00 · Pause interactive et quiz

- Question 1 : un importateur sénégalais qui paie en euros a-t-il un risque de change ? Réponse : non, tant que la parité fixe est maintenue.
- Question 2 : un exportateur payé en dollars craint quoi ? Réponse : une baisse du dollar.
- Question 3 : S = 600, taux FCFA 5 %, taux USD 2 %, 180 jours. Cours à terme ? Réponse : 600 × 1,025 / 1,01 ≈ 608,91.
- Question 4 : quel instrument protège tout en laissant profiter d''une évolution favorable ? Réponse : l''option.
- Question 5 : qu''est-ce que la compensation ? Réponse : utiliser les recettes dans une devise pour régler les dettes dans cette même devise, afin de ne couvrir que le solde.

## 49:00 – 1:02:00 · Le risque de taux et le swap

« Deuxième souci : l''emprunt de 800 millions au taux de référence + 1,5 %. Si la référence est à 4 %, Kayar paie 5,5 %, soit 44 millions par an. Si elle grimpe à 7 %, 8,5 %, soit 68 millions. »

« Solution : un swap de taux. Kayar paie à la banque un taux fixe de 6,5 % et reçoit le taux de référence, sur un notionnel de 800 millions. Ses flux : elle paie référence + 1,5 % au prêteur, reçoit référence de la banque, paie 6,5 % à la banque. Le taux de référence s''annule : coût net 8 %, soit 64 millions par an, quoi qu''il arrive. Comparaison : avec la référence à 4 %, sans swap 44, avec swap 64 ; avec la référence à 7 %, sans swap 68, avec swap 64. Le swap a un coût d''opportunité si les taux baissent, mais il rend la charge prévisible. »

« Important : dans un swap, on n''échange pas le capital, seulement les flux d''intérêts. »

## 1:02:00 – 1:12:00 · Le FRA et l''impasse de taux

« Si Kayar prévoit d''emprunter 600 millions dans six mois pour 180 jours, elle peut fixer le taux dès aujourd''hui avec un FRA à 6 %. Si le taux de référence est de 6,8 % au moment de l''emprunt, la banque verse le différentiel : (6,8 % − 6 %) × 180 / 360 × 600 millions = 2 400 000 francs (montant actualisé en pratique quand le règlement intervient en début de période). Kayar emprunte au marché à 6,8 %, mais l''indemnité ramène son coût à environ 6 %. Si le taux tombe à 5,5 %, c''est Kayar qui verse le différentiel. »

« Pour mesurer globalement l''exposition, on calcule l''impasse : actifs à taux variable moins passifs à taux variable. Kayar a 100 millions de placements à taux variable et 800 millions de dettes à taux variable : impasse de −700 millions. Une hausse de 1 point coûte environ 7 millions par an. »

## 1:12:00 – 1:20:00 · Le risque de taux sur les obligations

« Kayar place une partie de sa trésorerie en obligations d''État de nominal 10 000 francs, coupon 6 %, échéance 3 ans, achetées au pair quand les taux sont à 6 %. Si les taux montent à 7 %, le prix tombe à environ 9 738 francs ; s''ils baissent à 5 %, il monte à environ 10 272 francs. Si Kayar conserve les titres jusqu''à l''échéance, elle touchera bien ses coupons et son nominal : le risque de prix ne se matérialise que si elle vend avant. Plus l''échéance est longue, plus la variation de prix est forte. »

Exercice corrigé en direct : « Variation en % du prix si les taux passent de 6 à 7 % ? » Correction : (9 738 − 10 000) / 10 000 ≈ −2,6 %.

## 1:20:00 – 1:25:00 · Synthèse

« Retenez : identifier, mesurer, décider, couvrir. Change : distinguer l''euro (parité fixe) des autres devises ; compenser d''abord ; terme pour la certitude, option pour l''assurance. Taux : impasse pour mesurer ; swap pour transformer du variable en fixe ; FRA pour fixer un taux futur ; prix des obligations en sens inverse des taux. Et toujours : un instrument de couverture a un coût, explicite (prime, commissions) ou implicite (gain auquel on renonce). »

## 1:25:00 – 1:30:00 · Évaluation finale

- Question 1 : 120 000 euros en francs CFA ? Réponse : 120 000 × 655,957 = 78 714 840 francs.
- Question 2 : un importateur doit payer 50 000 dollars et a acheté un call à 610, prime 9. Coût par dollar si le comptant est à 640 ? Réponse : 610 + 9 = 619 francs.
- Question 3 : même importateur, comptant à 590 ? Réponse : il abandonne l''option : 590 + 9 = 599 francs.
- Question 4 : dette de 400 millions à référence + 2 %, swap payeur fixe à 6 %. Coût net ? Réponse : 8 %, soit 32 millions par an.
- Question 5 : une banque a 900 millions d''actifs et 600 millions de passifs à taux variable. Effet d''une baisse de 1 point ? Réponse : impasse de +300 millions, perte d''environ 3 millions par an.

« Merci. Refaites le tableau comparatif des stratégies pour un dollar à 600 francs à l''échéance. »', 'video', 90, false, 80
from public.courses c where c.slug = 'lic-fin-l3'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Gestion des risques financiers');
