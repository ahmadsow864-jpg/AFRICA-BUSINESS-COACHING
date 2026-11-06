-- Fichier généré par tools/generate-seed.mjs — ne pas modifier à la main.
-- Cours (partie 12/18). À exécuter après seed.sql.

-- Cours : Droit des affaires Licence 3 : réussir ses examens
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'lic-droit-l3', (select id from public.levels where name = 'Licence 3'), null, 'Droit des affaires', 'Droit des affaires Licence 3 : réussir ses examens', 'Préparation aux partiels et examens semestriels de la Licence 3 en droit des affaires (système LMD, contexte Sénégal, UEMOA et OHADA). Le cours couvre le droit des sociétés commerciales OHADA (SARL, SA, SAS : constitution, fonctionnement, organes, affectation du résultat), le droit des sûretés et des procédures collectives OHADA et le droit fiscal des affaires (principes, IS, TVA, retenues, contrôle, avec des taux fictifs). Fiches, exercices chiffrés corrigés, sujet type transversal et trois cours vidéo de 1h30. Prérequis : les acquis des Licences 1 et 2 (obligations, droit commercial général).', true, 373
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Réussir ses examens de Licence 3 en droit des affaires', '## Objectifs de la leçon

- Situer la Licence 3 dans le système LMD et préparer la poursuite en Master.
- Connaître les trois matières clés de l''année : droit des sociétés commerciales OHADA, droit des sûretés et des procédures collectives OHADA, droit fiscal des affaires.
- Adapter la méthode aux sujets transversaux, qui mêlent plusieurs matières.
- Disposer d''un plan de révision sur 6 semaines.

## 1. La Licence 3 dans le système LMD

La Licence 3 correspond aux semestres 5 et 6 et conclut le premier cycle. Comme les années précédentes, elle est organisée en unités d''enseignement (UE) dotées de crédits, évaluées par un contrôle continu et un examen semestriel, avec une session de rattrapage. La validation de la Licence ouvre l''accès au Master, souvent sur dossier : vos résultats de L3 comptent beaucoup. Les règles de compensation, de crédits et de passage relèvent du règlement des études de votre établissement, qui seul fait foi.

En L3, beaucoup d''établissements demandent aussi un rapport de stage ou un mémoire court : c''est l''occasion d''appliquer le droit des affaires à une entreprise réelle, avec son accord et dans le respect de la confidentialité.

## 2. Les trois matières clés

- Droit des sociétés commerciales OHADA : l''Acte uniforme relatif au droit des sociétés commerciales et du groupement d''intérêt économique (AUSCGIE), révisé en 2014, régit la constitution, le fonctionnement et la dissolution des sociétés. On étudie surtout la SARL, la SA et la SAS, créée par la réforme de 2014.
- Droit des sûretés et des procédures collectives OHADA : l''Acte uniforme portant organisation des sûretés (révisé en 2010) organise les garanties du crédit (cautionnement, gage, nantissement, hypothèque…). L''Acte uniforme portant organisation des procédures collectives d''apurement du passif (révisé en 2015) traite l''entreprise en difficulté : conciliation, règlement préventif, redressement judiciaire, liquidation des biens.
- Droit fiscal des affaires : principes généraux de l''impôt, impôt sur les sociétés, TVA, impôts sur le revenu des capitaux mobiliers, procédures de contrôle. Au Sénégal, la matière repose sur le Code général des impôts, dans le cadre des directives de l''UEMOA. Dans ce cours, tous les taux utilisés sont fictifs pour l''exemple.

## 3. Les épreuves de L3

- Le cas pratique transversal : une même entreprise fictive pose des questions de droit des sociétés (qui décide ?), de sûretés (qui est payé en premier ?) et de fiscalité (combien d''impôt ?). Il faut passer d''une matière à l''autre sans confusion.
- L''exercice chiffré : répartition des bénéfices, ordre de paiement des créanciers, calcul de l''impôt sur les sociétés ou de la TVA. Présentez les données, les formules, les résultats et une phrase d''interprétation.
- La dissertation ou le commentaire : par exemple « La SAS, société de liberté ? » ou « La place du créancier dans les procédures collectives ». Les décisions éventuellement proposées dans ce cours sont fictives et présentées comme telles.
- Les questions de cours : définitions précises (cessation des paiements, affectio societatis, assiette de l''impôt).

## 4. Méthode : le raisonnement en trois temps

Pour chaque question d''un cas transversal, suivez trois temps :

- Qualifier : quelle société ? quelle sûreté ? quel impôt ? quelle procédure ? Une mauvaise qualification fausse toute la suite.
- Appliquer la règle : citez l''Acte uniforme ou le code sans inventer de numéro d''article (« l''AUSCGIE prévoit que… »).
- Chiffrer et conclure : un résultat chiffré n''est complet qu''avec sa conclusion juridique (« la décision est valablement adoptée », « le créancier chirographaire reçoit 30 % de sa créance »).

## 5. Pièges fréquents

- Confondre les organes : dans une SARL, le gérant ; dans une SA, le conseil d''administration et le directeur général (ou le président-directeur général), ou l''administrateur général ; dans une SAS, le président obligatoire et les organes que prévoient les statuts.
- Confondre sûreté personnelle (une personne s''engage : la caution) et sûreté réelle (un bien est affecté : gage, hypothèque).
- Confondre règlement préventif (avant la cessation des paiements) et redressement judiciaire (après).
- Confondre résultat comptable et résultat fiscal : le second s''obtient à partir du premier par des réintégrations et des déductions.
- Présenter des taux fiscaux de mémoire : utilisez ceux de l''énoncé.

## 6. Plan de révision sur 6 semaines

- Semaine 1 : constitution des sociétés (statuts, apports, immatriculation) ; SARL.
- Semaine 2 : SA et SAS ; affectation du résultat ; un exercice chiffré.
- Semaine 3 : sûretés personnelles et réelles ; ordre de paiement simplifié.
- Semaine 4 : procédures collectives ; un cas pratique complet.
- Semaine 5 : fiscalité (principes, IS, TVA, retenues sur dividendes) ; trois exercices chiffrés.
- Semaine 6 : sujet type transversal en 4 heures, correction, repos.

## Points clés

- La L3 couvre les sociétés, les sûretés et procédures collectives, et la fiscalité des affaires.
- Les cas transversaux exigent de qualifier, appliquer, chiffrer et conclure.
- Les taux fiscaux de ce cours sont fictifs ; les numéros d''articles ne sont cités que si l''on en est certain.

## Exercices pratiques

- Exercice 1. Associez chaque matière à son texte de référence : sociétés, sûretés, procédures collectives, fiscalité.
- Exercice 2. Qualifiez : a) un ami garantit le prêt d''un commerçant ; b) un commerçant affecte son camion à la garantie d''un prêt ; c) une banque prend une garantie sur l''immeuble d''une société.
- Exercice 3. Une société a un résultat comptable de 20 000 000 FCFA ; elle a comptabilisé 1 000 000 FCFA de charges non déductibles. Quel est son résultat fiscal, sans autre retraitement ?
- Exercice 4. Dans une SAS, quel organe est obligatoire ?
- Exercice 5. Une entreprise n''arrive plus à payer ses dettes exigibles avec ses disponibilités. Quel est le nom de cette situation, et quelles procédures deviennent possibles ?

## Corrigé

- Exercice 1. Sociétés : AUSCGIE ; sûretés : Acte uniforme portant organisation des sûretés ; procédures collectives : Acte uniforme portant organisation des procédures collectives d''apurement du passif ; fiscalité : Code général des impôts (cadre UEMOA).
- Exercice 2. a) Cautionnement, sûreté personnelle ; b) gage, sûreté réelle mobilière (avec ou sans dépossession selon les modalités) ; c) hypothèque, sûreté réelle immobilière.
- Exercice 3. 20 000 000 + 1 000 000 = 21 000 000 FCFA : les charges non déductibles sont réintégrées.
- Exercice 4. Le président, qui représente la société à l''égard des tiers.
- Exercice 5. La cessation des paiements. Elle ouvre le redressement judiciaire si l''entreprise peut être sauvée, ou la liquidation des biens dans le cas contraire ; le règlement préventif n''est plus possible.', 'texte', 45, true, 10
from public.courses c where c.slug = 'lic-droit-l3'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Réussir ses examens de Licence 3 en droit des affaires');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Droit des sociétés commerciales OHADA : l''essentiel pour l''examen', '## Objectifs de la leçon

- Expliquer la constitution des sociétés, comparer SARL, SA et SAS, maîtriser l''affectation du résultat.

## 1. Le contrat de société et la constitution

L''AUSCGIE définit la société commerciale comme créée par deux ou plusieurs personnes qui conviennent, par un contrat, d''affecter à une activité des biens en numéraire ou en nature, dans le but de partager le bénéfice ou de profiter de l''économie qui pourra en résulter, les associés s''engageant à contribuer aux pertes. Certaines sociétés peuvent aussi être créées par une seule personne (SARL, SA et SAS unipersonnelles), par un acte unilatéral.

On retient trois éléments spécifiques :

- Les apports : en numéraire (argent), en nature (un bien, un fonds de commerce), en industrie (travail, savoir-faire, admis dans certaines sociétés seulement et ne concourant pas à la formation du capital). Les apports en nature sont évalués, le cas échéant par un commissaire aux apports.
- La vocation aux bénéfices et la contribution aux pertes.
- L''affectio societatis : la volonté de collaborer sur un pied d''égalité à l''œuvre commune.

Étapes de la constitution : rédaction des statuts (dénomination, forme, objet, siège, capital, apports, durée, organes), souscription et libération des apports, dépôt des fonds auprès d''une banque ou d''un notaire selon les règles applicables, accomplissement des formalités (au Sénégal, souvent par le guichet unique de création d''entreprise), puis immatriculation au RCCM. La société acquiert la personnalité morale à compter de son immatriculation.

## 2. La SARL

- Associés : une ou plusieurs personnes, physiques ou morales, responsables des dettes sociales à concurrence de leurs apports.
- Capital : divisé en parts sociales. La réforme de 2014 a assoupli les exigences de capital minimum, en laissant une marge aux États : vérifiez le montant applicable au Sénégal. Selon l''AUSCGIE, les parts doivent être intégralement libérées lors de la souscription.
- Organes : un ou plusieurs gérants, personnes physiques, associés ou non, qui dirigent la société et la représentent ; les associés réunis en assemblée ou consultés par écrit prennent les décisions collectives. Les décisions ordinaires et les décisions modifiant les statuts sont adoptées aux majorités fixées par l''AUSCGIE, plus exigeantes pour les secondes. Un commissaire aux comptes est obligatoire au-delà de certains seuils.
- Cession des parts : libre entre associés en principe, mais soumise à l''agrément des associés lorsqu''elle bénéficie à un tiers, selon les conditions prévues par l''Acte uniforme et les statuts.

## 3. La SA

- Actionnaires : une ou plusieurs personnes ; responsabilité limitée aux apports.
- Capital : divisé en actions, avec un capital minimum fixé par l''AUSCGIE, plus élevé lorsque la société fait appel public à l''épargne ; les actions en numéraire doivent être libérées d''au moins un quart à la souscription, le solde dans un délai fixé par l''Acte uniforme.
- Organes, selon deux modes : la SA avec conseil d''administration, dirigée soit par un président-directeur général, soit par un président du conseil et un directeur général ; la SA avec administrateur général, réservée aux sociétés à faible nombre d''actionnaires.
- Assemblées générales : ordinaire (approbation des comptes, affectation du résultat, nomination des administrateurs) et extraordinaire (modification des statuts), avec quorum et majorités fixés par l''Acte uniforme.
- Contrôle : un commissaire aux comptes est obligatoire.
- Les actions sont en principe librement négociables, sauf clauses d''agrément ou de préemption.

## 4. La SAS

Introduite par la réforme de 2014, la SAS est la société de la liberté contractuelle. Les statuts fixent librement les conditions de direction et de prise de décision. Seule exigence d''organisation : un président, personne physique ou morale, qui représente la société à l''égard des tiers. Certaines décisions doivent néanmoins être prises collectivement par les associés (notamment les modifications du capital, la fusion, la dissolution, l''approbation des comptes), dans les conditions prévues par les statuts. La SAS ne peut pas faire appel public à l''épargne. Elle peut être unipersonnelle (SASU). Les statuts peuvent prévoir l''inaliénabilité temporaire des actions, l''agrément ou l''exclusion d''un associé.

## 5. Affectation du résultat et responsabilité des dirigeants

Le bénéfice distribuable est égal au bénéfice de l''exercice, diminué des pertes antérieures et de la dotation à la réserve légale, augmenté du report bénéficiaire. Selon le mécanisme prévu par l''AUSCGIE, la réserve légale est dotée chaque année d''un dixième au moins du bénéfice, diminué des pertes antérieures, jusqu''à ce qu''elle atteigne un cinquième du capital (vérifiez ces fractions dans le texte en vigueur).

Exemple chiffré. La SARL fictive Kër Bati, à Thiès, a un capital de 5 000 000 FCFA (500 parts de 10 000 FCFA) : Awa détient 250 parts, Malick 150, Ibou 100. Bénéfice de l''exercice : 12 000 000 FCFA ; réserve légale existante : 400 000 FCFA ; pas de report ni de pertes antérieures. Plafond de la réserve légale : 5 000 000 / 5 = 1 000 000 FCFA. Dotation théorique : 12 000 000 / 10 = 1 200 000 FCFA, mais limitée à 1 000 000 − 400 000 = 600 000 FCFA. Bénéfice distribuable : 12 000 000 − 600 000 = 11 400 000 FCFA. Les associés décident de distribuer 8 000 000 FCFA et de porter 3 400 000 FCFA en réserves facultatives. Dividende par part : 8 000 000 / 500 = 16 000 FCFA. Awa : 250 × 16 000 = 4 000 000 FCFA ; Malick : 2 400 000 FCFA ; Ibou : 1 600 000 FCFA.

Les dirigeants engagent leur responsabilité civile envers la société et les tiers pour les infractions aux dispositions légales ou statutaires et pour les fautes de gestion. Sur le plan pénal, l''AUSCGIE définit des incriminations (par exemple l''abus de biens sociaux ou la distribution de dividendes fictifs), et chaque État fixe les peines.

## Exercices pratiques

- Exercice 1. Citez les trois éléments spécifiques du contrat de société.
- Exercice 2. À quel moment une société acquiert-elle la personnalité morale ? Quel est le sort des actes passés avant ?
- Exercice 3. Comparez la direction d''une SARL, d''une SA avec conseil d''administration et d''une SAS.
- Exercice 4 (chiffré). Une SA au capital de 50 000 000 FCFA a un bénéfice de 9 000 000 FCFA, une réserve légale existante de 9 500 000 FCFA, un report bénéficiaire de 700 000 FCFA. Avec le mécanisme d''un dixième jusqu''à un cinquième du capital, calculez la dotation et le bénéfice distribuable.
- Exercice 5 (chiffré). Dans la SARL Kër Bati, les associés distribuent 6 000 000 FCFA. Calculez le dividende par part et la part de chacun.
- Exercice 6 (cas pratique). Trois amis veulent créer à Dakar une start-up de livraison. Ils veulent une direction souple, la possibilité d''accueillir plus tard un investisseur et d''exclure un associé qui ne s''implique pas. Quelle forme conseiller ?

## Corrigé

- Exercice 1. Les apports, la vocation aux bénéfices et la contribution aux pertes, l''affectio societatis.
- Exercice 2. À son immatriculation au RCCM. Les actes accomplis pour la société en formation peuvent être repris par elle dans les conditions prévues par l''AUSCGIE ; ils sont alors réputés avoir été souscrits par elle dès l''origine. À défaut de reprise, leurs auteurs en restent personnellement tenus.
- Exercice 3. SARL : un ou plusieurs gérants personnes physiques. SA avec conseil d''administration : un conseil, et un PDG ou un président du conseil et un directeur général. SAS : un président obligatoire et les autres organes librement fixés par les statuts.
- Exercice 4. Plafond : 50 000 000 / 5 = 10 000 000 FCFA. Dotation théorique : 900 000 FCFA, limitée à 10 000 000 − 9 500 000 = 500 000 FCFA. Distribuable : 9 000 000 − 500 000 + 700 000 = 9 200 000 FCFA.
- Exercice 5. 6 000 000 / 500 = 12 000 FCFA par part. Awa : 3 000 000 FCFA ; Malick : 1 800 000 FCFA ; Ibou : 1 200 000 FCFA.
- Exercice 6. La SAS : liberté statutaire de direction, président obligatoire mais organes adaptables, clauses d''agrément et d''exclusion possibles, entrée d''investisseurs facilitée par des actions. La SARL serait plus rigide (règles impératives de majorité, cession aux tiers soumise à agrément légal) ; la SA est plus lourde (conseil, commissaire aux comptes, capital minimum élevé).', 'texte', 60, false, 20
from public.courses c where c.slug = 'lic-droit-l3'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Droit des sociétés commerciales OHADA : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Droit des sûretés et des procédures collectives OHADA : l''essentiel pour l''examen', '## Objectifs de la leçon

- Présenter les sûretés OHADA et la logique de l''ordre de paiement.
- Présenter les procédures collectives OHADA.

## 1. Les sûretés : notions générales

Une sûreté est l''affectation d''un bien ou d''un patrimoine à la garantie d''une obligation. Sans sûreté, le créancier est chirographaire : il n''a que le droit de gage général sur le patrimoine de son débiteur, en concours avec tous les autres créanciers. La matière est régie par l''Acte uniforme portant organisation des sûretés (AUS), révisé en 2010.

## 2. Les sûretés personnelles

- Le cautionnement : une personne, la caution, s''engage envers le créancier à exécuter l''obligation du débiteur si celui-ci n''y satisfait pas. C''est un engagement accessoire : la caution peut opposer les exceptions qui appartiennent au débiteur. Il ne se présume pas : l''AUS exige un écrit comportant la mention, par la caution, de la somme maximale garantie en lettres et en chiffres. Le cautionnement peut être simple (la caution peut exiger que le créancier poursuive d''abord le débiteur : bénéfice de discussion) ou solidaire, selon les règles de l''Acte uniforme et les stipulations.
- La garantie autonome (ou lettre de garantie) : le garant s''engage à payer sur première demande ou selon des modalités convenues, de manière indépendante de l''obligation garantie ; il ne peut pas opposer les exceptions du débiteur, sauf abus ou fraude manifestes.

## 3. Les sûretés réelles

- Le droit de rétention : le créancier qui détient légitimement un bien du débiteur peut le retenir jusqu''au paiement (le garagiste qui garde le véhicule réparé et impayé), sous les conditions de l''AUS.
- La propriété retenue ou cédée à titre de garantie : le vendeur se réserve la propriété jusqu''au paiement complet du prix (clause de réserve de propriété).
- Le gage : affectation d''un bien meuble corporel (stock, matériel, véhicule) en garantie ; il peut être avec ou sans dépossession, l''opposabilité aux tiers étant assurée, selon les cas, par la remise du bien ou l''inscription au RCCM.
- Le nantissement : affectation d''un bien meuble incorporel (créances, comptes bancaires, parts sociales, fonds de commerce, propriété intellectuelle), avec les formalités de publicité prévues.
- Les privilèges : droits de préférence accordés par la loi en raison de la qualité de la créance (frais de justice, salaires, créances du Trésor, selon les cas prévus).
- L''hypothèque : affectation d''un immeuble, sans dépossession. Elle est conventionnelle (constituée par acte notarié ou selon les formes prévues), légale ou judiciaire, et doit être inscrite au livre foncier pour être opposable.

Le créancier titulaire d''une sûreté réelle bénéficie d''un droit de préférence (être payé avant les autres sur le prix du bien) et, pour les sûretés publiées, d''un droit de suite (saisir le bien entre les mains d''un tiers acquéreur).

## 4. L''ordre de paiement : une logique à comprendre

L''AUS organise un ordre de distribution du prix des immeubles et des meubles. Logique simplifiée (détail à vérifier dans le texte) : on paie en premier les frais de justice engagés pour réaliser le bien et distribuer le prix, puis les créances de salaires bénéficiant d''un superprivilège, puis les créanciers titulaires de sûretés sur le bien vendu selon leur rang, puis les créanciers privilégiés généraux selon leur ordre, et enfin les créanciers chirographaires, au prorata de leurs créances.

## 5. Les procédures collectives

L''Acte uniforme portant organisation des procédures collectives d''apurement du passif (AUPCAP), révisé en 2015, organise des procédures adaptées au degré de difficulté :

- La conciliation : procédure confidentielle et amiable, sous l''égide d''un conciliateur, pour un débiteur qui connaît des difficultés, dans les conditions fixées par l''Acte uniforme.
- Le règlement préventif : pour un débiteur en difficulté sérieuse mais pas encore en cessation des paiements ; il vise à conclure un concordat préventif avec les créanciers ; il suspend les poursuites individuelles.
- Le redressement judiciaire : pour le débiteur en cessation des paiements dont l''entreprise peut être sauvée, par un concordat de redressement.
- La liquidation des biens : pour le débiteur en cessation des paiements dont la situation est irrémédiablement compromise ; les biens sont vendus pour payer les créanciers.
- Des procédures simplifiées existent pour les petites entreprises.

La cessation des paiements est l''état du débiteur qui se trouve dans l''impossibilité de faire face à son passif exigible avec son actif disponible, en tenant compte, selon l''AUPCAP, des réserves de crédit ou délais dont il bénéficie. Le débiteur doit la déclarer dans le délai fixé par l''Acte uniforme.

Effets principaux de l''ouverture : suspension des poursuites individuelles, obligation pour les créanciers de déclarer leurs créances, désignation d''organes (juge-commissaire, mandataire judiciaire), contrôle des actes accomplis pendant la période suspecte (entre la date de cessation des paiements et le jugement d''ouverture), qui peuvent être annulés. Des sanctions frappent les dirigeants fautifs : comblement du passif, faillite personnelle, et sanctions pénales pour banqueroute.

## 6. Exemple chiffré simplifié

La SARL fictive Sahel Meubles, à Kaolack, est en liquidation des biens. Le prix de vente de son immeuble et de ses biens s''élève à 60 000 000 FCFA. Créances : frais de justice 3 000 000 FCFA ; salaires superprivilégiés 7 000 000 FCFA ; banque titulaire d''une hypothèque sur l''immeuble 35 000 000 FCFA ; fournisseurs chirographaires 50 000 000 FCFA. Schéma simplifié (en pratique, on distingue le prix de chaque bien) : 60 000 000 − 3 000 000 − 7 000 000 − 35 000 000 = 15 000 000 FCFA restent pour les chirographaires, soit 15 000 000 / 50 000 000 = 30 % de leur créance. Un fournisseur à qui l''on doit 8 000 000 FCFA recevra 2 400 000 FCFA.

## Exercices pratiques

- Exercice 1. Distinguez cautionnement et garantie autonome en trois critères.
- Exercice 2. Gage ou nantissement ? a) un stock de riz ; b) des parts sociales ; c) un camion ; d) un fonds de commerce.
- Exercice 3. Qu''est-ce que la cessation des paiements ? Quelles procédures supposent qu''elle soit constatée ?
- Exercice 4 (chiffré). Une entreprise dispose de 12 000 000 FCFA de trésorerie et d''une autorisation de découvert inutilisée de 5 000 000 FCFA. Son passif exigible est de 26 000 000 FCFA. Est-elle en cessation des paiements ?
- Exercice 5 (chiffré). Prix de réalisation : 40 000 000 FCFA. Frais de justice 2 000 000 ; salaires superprivilégiés 4 500 000 ; créancier hypothécaire 21 000 000 ; chirographaires 25 000 000. Calculez le pourcentage reçu par les chirographaires (schéma simplifié).
- Exercice 6 (cas pratique). Un garagiste de Thiès refuse de rendre un camion réparé tant que la facture de 1 800 000 FCFA n''est pas payée. Le propriétaire est mis en redressement judiciaire. Que peut faire le garagiste ?

## Corrigé

- Exercice 1. Le cautionnement est accessoire (la caution peut opposer les exceptions du débiteur), la garantie autonome est indépendante ; la caution paie la dette du débiteur, le garant paie une somme selon les termes de son engagement ; le cautionnement suit le sort de la dette, la garantie autonome est soumise à ses propres conditions, sauf abus ou fraude manifestes.
- Exercice 2. a) gage ; b) nantissement ; c) gage ; d) nantissement.
- Exercice 3. L''impossibilité de faire face au passif exigible avec l''actif disponible, compte tenu des réserves de crédit. Le redressement judiciaire et la liquidation des biens supposent la cessation des paiements ; le règlement préventif suppose au contraire qu''elle ne soit pas encore survenue.
- Exercice 4. Actif disponible avec réserve de crédit : 12 000 000 + 5 000 000 = 17 000 000 FCFA, inférieur à 26 000 000 FCFA : oui, elle est en cessation des paiements (insuffisance de 9 000 000 FCFA).
- Exercice 5. Reste : 40 000 000 − 2 000 000 − 4 500 000 − 21 000 000 = 12 500 000 FCFA ; 12 500 000 / 25 000 000 = 50 %.
- Exercice 6. Le garagiste détient légitimement le camion et sa créance est née à l''occasion de la réparation : il bénéficie d''un droit de rétention. Il doit déclarer sa créance dans la procédure. Le droit de rétention reste un moyen de pression efficace, car le mandataire judiciaire qui veut récupérer le camion devra en principe payer la créance, dans les conditions prévues par l''AUPCAP.', 'texte', 60, false, 30
from public.courses c where c.slug = 'lic-droit-l3'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Droit des sûretés et des procédures collectives OHADA : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Droit fiscal des affaires : l''essentiel pour l''examen', '## Objectifs de la leçon

- Énoncer les principes généraux du droit fiscal et les éléments d''un impôt.
- Calculer un résultat fiscal et l''impôt sur les sociétés (IS) à partir du résultat comptable.
- Maîtriser le mécanisme de la TVA.
- Connaître les grandes étapes du contrôle et du contentieux fiscal.

Avertissement : tous les taux utilisés dans cette leçon sont fictifs pour l''exemple. Vérifiez toujours les taux, seuils et délais dans le Code général des impôts (CGI) en vigueur et dans la loi de finances de l''année.

## 1. Les principes généraux

L''impôt est un prélèvement pécuniaire, obligatoire, sans contrepartie directe, opéré par voie d''autorité au profit des personnes publiques pour couvrir les charges publiques. Il se distingue de la taxe (liée à un service rendu, comme l''enlèvement des ordures) et de la redevance (prix d''un service effectivement utilisé).

Principes à connaître :

- La légalité de l''impôt : seul le législateur peut créer un impôt et en fixer l''assiette, le taux et les modalités de recouvrement (principe de valeur constitutionnelle, le consentement à l''impôt passant par la loi de finances).
- L''égalité devant l''impôt : les contribuables placés dans la même situation sont traités de la même manière.
- L''annualité : l''autorisation de percevoir les impôts est donnée chaque année par la loi de finances.
- La territorialité : en principe, l''impôt frappe les bénéfices réalisés au Sénégal, sous réserve des conventions fiscales internationales.

Au Sénégal, la fiscalité est codifiée dans le CGI, et la TVA comme certaines règles d''imposition des entreprises sont encadrées par les directives de l''UEMOA, qui harmonisent les législations des États membres.

Les éléments d''un impôt : le fait générateur (l''événement qui fait naître la dette fiscale), l''assiette (la base imposable), la liquidation (le calcul, assiette × taux) et le recouvrement (le paiement).

## 2. Les principaux impôts de l''entreprise

- L''impôt sur les sociétés (IS) frappe les bénéfices des sociétés de capitaux (SARL, SA, SAS).
- L''impôt sur le revenu frappe les bénéfices des entrepreneurs individuels (bénéfices industriels et commerciaux) et les revenus des personnes physiques.
- La TVA est un impôt sur la consommation, collecté par les entreprises.
- Les retenues à la source, notamment l''impôt sur le revenu des valeurs mobilières (IRVM) prélevé sur les dividendes.
- Les droits d''enregistrement (cessions de fonds de commerce, actes de société), les impôts locaux sur l''activité, les impôts et contributions assis sur les salaires.

## 3. Du résultat comptable au résultat fiscal

Le résultat fiscal se calcule à partir du résultat comptable :

Résultat fiscal = résultat comptable + réintégrations − déductions.

- Réintégrations : charges comptabilisées mais non déductibles fiscalement (amendes et pénalités, certaines charges excessives ou somptuaires, l''IS lui-même s''il a été comptabilisé en charge).
- Déductions : produits comptabilisés mais non imposables ou déjà imposés (certains produits exonérés, certains dividendes reçus de filiales selon le régime prévu).
- Les déficits peuvent, selon les règles du CGI, être reportés sur les bénéfices des exercices suivants dans une limite de durée.

Exemple chiffré (taux fictif). La SA fictive Cap-Vert Industries a un résultat comptable de 48 000 000 FCFA. Réintégrations : amendes 1 500 000 FCFA, charges somptuaires 2 000 000 FCFA. Déductions : produits exonérés 2 500 000 FCFA. Résultat fiscal : 48 000 000 + 1 500 000 + 2 000 000 − 2 500 000 = 49 000 000 FCFA. IS au taux fictif de 25 % : 49 000 000 × 0,25 = 12 250 000 FCFA. Acomptes déjà versés : 9 000 000 FCFA ; solde à payer : 3 250 000 FCFA.

## 4. La TVA

La TVA frappe la valeur ajoutée à chaque stade de la production et de la distribution, mais elle est supportée en définitive par le consommateur final. L''entreprise est un collecteur :

TVA due = TVA collectée sur les ventes − TVA déductible sur les achats et les immobilisations.

Si la TVA déductible dépasse la TVA collectée, l''entreprise dispose d''un crédit de TVA, imputable sur les périodes suivantes ou remboursable dans les conditions prévues. Le droit à déduction suppose notamment une facture régulière et une dépense engagée pour les besoins d''opérations imposables.

Exemple (taux fictif de 20 %). Ventes du mois : 30 000 000 FCFA HT, TVA collectée 6 000 000 FCFA. Achats de marchandises : 18 000 000 FCFA HT, TVA déductible 3 600 000 FCFA. Achat d''une machine : 5 000 000 FCFA HT, TVA déductible 1 000 000 FCFA. TVA due : 6 000 000 − (3 600 000 + 1 000 000) = 1 400 000 FCFA.

Pour retrouver un prix hors taxes à partir d''un prix TTC : HT = TTC / (1 + taux). Avec un taux de 20 %, un prix TTC de 2 400 000 FCFA correspond à 2 000 000 FCFA HT et 400 000 FCFA de TVA.

## 5. Contrôle et contentieux

L''administration fiscale contrôle les déclarations : contrôle sur pièces (depuis les bureaux) et vérification de comptabilité (dans l''entreprise). La procédure doit être contradictoire : le contribuable reçoit une notification motivée des redressements et peut présenter ses observations. Il dispose ensuite de recours : réclamation auprès de l''administration, puis recours devant le juge. L''administration ne peut reprendre que dans le délai de prescription fixé par le CGI.

## Exercices pratiques

- Exercice 1. Énoncez trois principes généraux du droit fiscal.
- Exercice 2. Un client paie 2 875 000 FCFA TTC. Avec un taux fictif de 15 %, calculez le prix HT et la TVA.
- Exercice 3 (chiffré, taux fictif 25 %). Résultat comptable 15 000 000 FCFA ; amendes 1 200 000 FCFA ; charges excessives 800 000 FCFA ; produits exonérés 600 000 FCFA. Calculez le résultat fiscal et l''IS.
- Exercice 4 (chiffré, taux fictif 20 %). Ventes 12 500 000 FCFA HT ; achats 14 000 000 FCFA HT. Calculez la TVA due ou le crédit.
- Exercice 5 (chiffré, taux fictif 10 %). Une SARL distribue 5 000 000 FCFA de dividendes. Calculez la retenue au titre de l''IRVM et le net perçu par les associés.
- Exercice 6 (cas pratique). Une SAS fictive reçoit une notification de redressement qui ne précise ni les motifs ni les montants par catégorie. Le dirigeant veut savoir s''il peut contester.

## Corrigé

- Exercice 1. Légalité (l''impôt est établi par la loi), égalité devant l''impôt, annualité (autorisation annuelle par la loi de finances) ; on peut ajouter la territorialité.
- Exercice 2. HT = 2 875 000 / 1,15 = 2 500 000 FCFA ; TVA = 375 000 FCFA.
- Exercice 3. Résultat fiscal : 15 000 000 + 1 200 000 + 800 000 − 600 000 = 16 400 000 FCFA. IS : 16 400 000 × 0,25 = 4 100 000 FCFA.
- Exercice 4. Collectée : 2 500 000 FCFA ; déductible : 2 800 000 FCFA ; crédit de TVA : 300 000 FCFA, reportable ou remboursable selon les conditions prévues.
- Exercice 5. Retenue : 500 000 FCFA ; net : 4 500 000 FCFA.
- Exercice 6. Problème : une notification de redressement non motivée est-elle régulière ? Règle : la procédure de contrôle est contradictoire ; la notification doit être motivée pour permettre au contribuable de présenter ses observations. Application : ni motifs ni montants détaillés. Conclusion : la SAS peut présenter ses observations en invoquant l''irrégularité de la procédure, puis former une réclamation et, le cas échéant, saisir le juge, dans les délais du CGI.', 'texte', 60, false, 40
from public.courses c where c.slug = 'lic-droit-l3'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Droit fiscal des affaires : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Sujet type d''examen de Licence 3 en droit des affaires (entraînement, corrigé détaillé)', '## Présentation du sujet

Ce sujet d''entraînement couvre les trois matières clés de la Licence 3. Ce n''est pas un sujet officiel. Durée conseillée : 4 heures. Barème indicatif, non officiel : 20 points. Calculatrice autorisée. Personnes et entreprises fictives ; tous les taux fiscaux sont fictifs pour l''exemple. Pour la réserve légale, on applique le mécanisme suivant : dotation d''un dixième du bénéfice jusqu''à ce que la réserve atteigne un cinquième du capital.

## Énoncé commun

La SARL Niokobok Agro, à Thiès, transforme et commercialise des produits céréaliers locaux. Capital : 10 000 000 FCFA, divisé en 1 000 parts de 10 000 FCFA. Associés : Seynabou (500 parts), gérante ; Lamine (300 parts) ; Coumba (200 parts).

## Dossier 1 : Droit des sociétés (7 points)

Au titre de l''exercice N, le résultat comptable avant impôt est de 24 000 000 FCFA (voir dossier 3 pour l''IS). La réserve légale existante s''élève à 1 700 000 FCFA ; le report à nouveau bénéficiaire est de 500 000 FCFA. Les associés envisagent de distribuer 10 000 000 FCFA. Par ailleurs, Lamine veut céder ses parts à un investisseur extérieur, et les associés envisagent de transformer la société en SAS.

- 1.1 Après calcul de l''IS au dossier 3, déterminez la dotation à la réserve légale et le bénéfice distribuable. (2 points)
- 1.2 Calculez le dividende par part et la part de chaque associé. (1 point)
- 1.3 Lamine peut-il céder librement ses parts à l''investisseur ? (2 points)
- 1.4 Présentez deux avantages de la SAS pour Niokobok Agro. (2 points)

## Dossier 2 : Sûretés et procédures collectives (6 points)

Un client, la SARL Sine Distribution, doit 6 000 000 FCFA à Niokobok Agro. Son gérant s''est porté caution solidaire de cette dette, par un acte écrit mentionnant de sa main une somme maximale de 4 000 000 FCFA, en lettres et en chiffres. Sine Distribution est placée en liquidation des biens. Le prix de réalisation de ses biens atteint 25 000 000 FCFA. Créances : frais de justice 1 500 000 FCFA ; salaires superprivilégiés 3 500 000 FCFA ; banque hypothécaire 12 000 000 FCFA ; créanciers chirographaires 40 000 000 FCFA au total (dont Niokobok Agro).

- 2.1 Qu''est-ce que la liquidation des biens, et en quoi se distingue-t-elle du redressement judiciaire ? (2 points)
- 2.2 Selon un schéma simplifié, calculez le pourcentage reçu par les chirographaires et la somme perçue par Niokobok Agro. (2 points)
- 2.3 Que peut obtenir Niokobok Agro de la caution ? Quelle perte définitive subit-elle ? (2 points)

## Dossier 3 : Droit fiscal des affaires (7 points)

Retraitements de l''exercice N : amendes 600 000 FCFA ; charges somptuaires 400 000 FCFA ; produits exonérés 1 000 000 FCFA. Taux fictif d''IS : 25 %. TVA du mois de décembre (taux fictif 20 %) : ventes 40 000 000 FCFA HT ; achats de céréales 25 000 000 FCFA HT ; frais généraux 3 000 000 FCFA HT, avec factures régulières. Retenue fictive sur dividendes (IRVM) : 10 %.

- 3.1 Calculez le résultat fiscal et l''IS. (2 points)
- 3.2 Calculez la TVA due pour décembre. (2 points)
- 3.3 Calculez la retenue sur le dividende de Seynabou et son dividende net. (1 point)
- 3.4 Énoncez et expliquez le principe de légalité de l''impôt. (2 points)

## Corrigé détaillé

3.1 (traité en premier, car il conditionne le dossier 1). Résultat fiscal : 24 000 000 + 600 000 + 400 000 − 1 000 000 = 24 000 000 FCFA. IS : 24 000 000 × 0,25 = 6 000 000 FCFA. Bénéfice net : 24 000 000 − 6 000 000 = 18 000 000 FCFA.

1.1 Plafond de la réserve légale : 10 000 000 / 5 = 2 000 000 FCFA. Dotation théorique : 18 000 000 / 10 = 1 800 000 FCFA, limitée à 2 000 000 − 1 700 000 = 300 000 FCFA. Bénéfice distribuable : 18 000 000 − 300 000 + 500 000 = 18 200 000 FCFA. La distribution envisagée (10 000 000 FCFA) est possible ; le solde (8 200 000 FCFA) peut être affecté en réserves facultatives ou en report à nouveau.

1.2 Dividende par part : 10 000 000 / 1 000 = 10 000 FCFA. Seynabou : 5 000 000 FCFA ; Lamine : 3 000 000 FCFA ; Coumba : 2 000 000 FCFA.

1.3 Non. Dans la SARL, la cession de parts à un tiers étranger à la société est soumise à l''agrément des associés, dans les conditions de majorité et de procédure prévues par l''AUSCGIE et les statuts. Lamine doit notifier son projet ; en cas de refus, l''Acte uniforme organise des solutions pour qu''il ne reste pas prisonnier de ses parts (rachat par les associés ou par la société). Il doit aussi respecter les formalités d''opposabilité de la cession.

1.4 Liberté statutaire d''organisation (président et organes adaptés), facilité d''accueil d''investisseurs grâce aux actions, clauses statutaires d''agrément, d''inaliénabilité ou d''exclusion. La transformation doit respecter les conditions prévues par l''AUSCGIE.

2.1 La liquidation des biens s''applique au débiteur en cessation des paiements dont la situation est irrémédiablement compromise : ses biens sont réalisés pour payer les créanciers, et l''activité cesse en principe. Le redressement judiciaire s''applique au débiteur en cessation des paiements dont l''entreprise peut être sauvée, au moyen d''un concordat de redressement.

2.2 Reste pour les chirographaires : 25 000 000 − 1 500 000 − 3 500 000 − 12 000 000 = 8 000 000 FCFA. Pourcentage : 8 000 000 / 40 000 000 = 20 %. Niokobok Agro, ayant déclaré sa créance de 6 000 000 FCFA : 6 000 000 × 0,20 = 1 200 000 FCFA.

2.3 Le cautionnement est valable en la forme (écrit, somme maximale en lettres et en chiffres). La caution est solidaire : Niokobok Agro peut l''actionner sans poursuivre d''abord le débiteur, dans la limite de 4 000 000 FCFA. Hypothèse simplificatrice : le dividende de liquidation porte sur la créance déclarée en totalité. Perte définitive : 6 000 000 − 1 200 000 − 4 000 000 = 800 000 FCFA. La caution qui a payé dispose d''un recours contre le débiteur, peu utile ici en raison de la liquidation.

3.2 TVA collectée : 40 000 000 × 0,20 = 8 000 000 FCFA. TVA déductible : (25 000 000 + 3 000 000) × 0,20 = 5 600 000 FCFA. TVA due : 2 400 000 FCFA.

3.3 Retenue : 5 000 000 × 0,10 = 500 000 FCFA ; net : 4 500 000 FCFA.

3.4 Seule la loi peut créer un impôt et en fixer l''assiette, le taux et les modalités de recouvrement. Ce principe, de valeur constitutionnelle, protège le contribuable contre l''arbitraire de l''administration : un décret ou une instruction ne peut pas créer un impôt nouveau.

## Exercices pratiques

- Exercice 1. Si la réserve légale existante était de 2 000 000 FCFA, quel serait le bénéfice distribuable de Niokobok Agro ?
- Exercice 2. Si le prix de réalisation avait été de 29 000 000 FCFA, quel pourcentage les chirographaires recevraient-ils ?
- Exercice 3. Quel serait l''IS si les produits exonérés étaient de 2 000 000 FCFA ?

## Corrigé

- Exercice 1. La réserve a atteint son plafond : dotation nulle. Distribuable : 18 000 000 + 500 000 = 18 500 000 FCFA.
- Exercice 2. 29 000 000 − 17 000 000 = 12 000 000 FCFA ; 12 000 000 / 40 000 000 = 30 %.
- Exercice 3. Résultat fiscal : 23 000 000 FCFA ; IS : 5 750 000 FCFA.', 'texte', 60, false, 50
from public.courses c where c.slug = 'lic-droit-l3'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Sujet type d''examen de Licence 3 en droit des affaires (entraînement, corrigé détaillé)');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Droit des sociétés commerciales OHADA', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : étudiants de Licence 3 en droit des affaires, gestion, finance ou comptabilité.
- Objectifs : expliquer le contrat de société et la constitution, comparer SARL, SA et SAS, déterminer l''organe compétent pour une décision, calculer l''affectation du résultat et les dividendes, conseiller le choix d''une forme sociale.
- Matériel : diaporama (frise de constitution, tableau comparatif des trois formes, organigrammes des organes), tableau blanc, calculatrice, fiche d''exercices.
- Prérequis : la leçon « Droit des sociétés commerciales OHADA : l''essentiel pour l''examen » et le droit commercial général de L2.

## Déroulé minuté

## 00:00 – 05:00 · Accueil et objectifs

Bonjour à toutes et à tous. Le droit des sociétés est la matière reine de la L3 en droit des affaires. Son texte de référence est l''Acte uniforme relatif au droit des sociétés commerciales et du groupement d''intérêt économique, l''AUSCGIE, révisé en 2014. Aujourd''hui, nous allons répondre à quatre questions : comment naît une société ? quelle forme choisir entre SARL, SA et SAS ? qui décide quoi ? comment répartir le bénéfice ? Toutes les sociétés citées sont fictives, et je ne citerai aucun numéro d''article : nous raisonnons sur les règles.

## 05:00 – 17:00 · Le contrat de société

Une société commerciale naît d''un contrat entre deux ou plusieurs personnes qui affectent des biens à une activité commune pour partager le bénéfice ou profiter de l''économie qui en résulte, en s''engageant à contribuer aux pertes. Certaines formes, comme la SARL, la SA et la SAS, peuvent être constituées par une seule personne.

Trois éléments spécifiques. Les apports : en numéraire, en nature, en industrie. Les apports en nature doivent être évalués, avec l''intervention d''un commissaire aux apports dans les cas prévus. L''apport en industrie, c''est-à-dire le travail ou le savoir-faire, ne concourt pas à la formation du capital. Ensuite, la vocation aux bénéfices et la contribution aux pertes. Enfin, l''affectio societatis : la volonté de collaborer sur un pied d''égalité.

Question à la salle : un « associé » qui ne reçoit qu''une somme fixe chaque année, quels que soient les résultats, et ne supporte jamais les pertes, est-il vraiment associé ? Non, sa situation ressemble à celle d''un prêteur. Une clause qui priverait totalement un associé des bénéfices ou l''exonérerait totalement des pertes serait contraire à l''essence du contrat de société.

## 17:00 – 27:00 · La constitution

Visuel : frise en cinq étapes.

Étape 1 : rédiger les statuts, avec les mentions obligatoires : forme, dénomination, objet, siège, capital, apports, durée, organes. Étape 2 : souscrire et libérer les apports, selon les règles propres à chaque forme ; dans la SARL, l''AUSCGIE exige la libération intégrale des parts à la souscription ; dans la SA, au moins un quart des actions en numéraire, le solde dans le délai prévu. Étape 3 : déposer les fonds selon les règles applicables. Étape 4 : accomplir les formalités, au Sénégal souvent via le guichet unique. Étape 5 : immatriculer la société au RCCM. C''est l''immatriculation qui lui donne la personnalité morale.

Entre la signature des statuts et l''immatriculation, la société est « en formation ». Les actes passés pour son compte peuvent être repris après l''immatriculation ; sinon, ceux qui les ont accomplis en restent personnellement tenus. Conseil pratique : listez ces actes dans un état annexé aux statuts ou faites-les reprendre par une décision des associés, selon les modalités prévues par l''Acte uniforme.

## 27:00 – 42:00 · SARL, SA, SAS : le tableau comparatif

Visuel : tableau à trois colonnes.

La SARL. Associés responsables à hauteur de leurs apports. Capital divisé en parts sociales ; la réforme de 2014 a assoupli le capital minimum, avec une marge laissée aux États : vérifiez le montant applicable. Direction : un ou plusieurs gérants, personnes physiques. Décisions collectives des associés, aux majorités de l''AUSCGIE, plus exigeantes pour modifier les statuts. Cession des parts à des tiers soumise à agrément. C''est la forme des PME familiales.

La SA. Capital divisé en actions, avec un capital minimum fixé par l''AUSCGIE. Deux modes de direction : avec conseil d''administration, dirigé par un président-directeur général ou par un président du conseil et un directeur général ; ou avec un administrateur général, pour les sociétés à faible nombre d''actionnaires. Assemblée générale ordinaire et extraordinaire. Commissaire aux comptes obligatoire. C''est la forme des grandes entreprises, des banques et des sociétés cotées.

La SAS. Créée en 2014 dans l''espace OHADA. Liberté statutaire : seul le président est imposé. Les décisions les plus importantes, comme l''approbation des comptes, les modifications du capital, la fusion ou la dissolution, sont prises collectivement par les associés, dans les conditions prévues par les statuts. Pas d''appel public à l''épargne. Possibilité de clauses d''agrément, d''inaliénabilité temporaire, d''exclusion. C''est la forme des start-up et des filiales de groupes.

## 42:00 – 50:00 · Pause interactive : quiz

- Question 1 : à quel moment la société acquiert-elle la personnalité morale ?
- Question 2 : quel est le seul organe imposé dans une SAS ?
- Question 3 : un gérant de SARL peut-il être une personne morale ?
- Question 4 : la SAS peut-elle faire appel public à l''épargne ?
- Question 5 : quels sont les deux modes de direction de la SA ?

Réponses : 1) à son immatriculation au RCCM ; 2) le président ; 3) non, le gérant est une personne physique ; 4) non ; 5) avec conseil d''administration, ou avec administrateur général.

## 50:00 – 1:02:00 · Qui décide quoi ?

Un réflexe d''examen : pour chaque décision, demandez-vous si c''est un acte de gestion courante, qui relève du dirigeant, ou une décision qui touche aux statuts, au capital ou aux comptes, qui relève des associés.

Exemples. La SARL fictive Kër Bati veut acheter un camion : décision de gestion du gérant, dans la limite de l''objet social et des clauses statutaires. Elle veut transférer son siège de Thiès à Dakar et changer d''objet : modification des statuts, décision collective des associés à la majorité renforcée prévue. Dans une SA, la nomination des administrateurs relève de l''assemblée générale ordinaire ; la nomination du directeur général relève du conseil d''administration.

Point important sur la représentation : à l''égard des tiers, la société est engagée même par les actes du dirigeant qui ne relèvent pas de l''objet social, sauf si elle prouve que le tiers savait que l''acte dépassait cet objet ou ne pouvait l''ignorer. Les limitations statutaires des pouvoirs des dirigeants sont inopposables aux tiers. C''est une protection de la sécurité des affaires.

## 1:02:00 – 1:14:00 · Correction commentée : l''affectation du résultat

Énoncé : SA fictive Atlantique Emballages, capital 60 000 000 FCFA, 6 000 actions de 10 000 FCFA. Bénéfice net : 14 000 000 FCFA. Réserve légale existante : 11 500 000 FCFA. Report à nouveau bénéficiaire : 1 000 000 FCFA. On applique le mécanisme d''un dixième du bénéfice jusqu''à un cinquième du capital. L''assemblée décide de distribuer 9 000 000 FCFA.

Calculons. Plafond de la réserve légale : 60 000 000 / 5 = 12 000 000 FCFA. Dotation théorique : 14 000 000 / 10 = 1 400 000 FCFA. Mais il ne manque que 12 000 000 − 11 500 000 = 500 000 FCFA : la dotation est donc de 500 000 FCFA. Bénéfice distribuable : 14 000 000 − 500 000 + 1 000 000 = 14 500 000 FCFA. Distribution : 9 000 000 FCFA, soit 9 000 000 / 6 000 = 1 500 FCFA par action. Solde : 5 500 000 FCFA en réserves facultatives ou en report à nouveau.

Commentaire : l''erreur classique consiste à doter 1 400 000 FCFA sans vérifier le plafond, ou à oublier le report à nouveau. Autre erreur grave : distribuer plus que le bénéfice distribuable. Ce serait une distribution de dividendes fictifs, que l''AUSCGIE incrimine pénalement, les peines étant fixées par chaque État.

## 1:14:00 – 1:22:00 · Mini-cas de conseil

Trois associés créent à Ziguinchor une entreprise de transformation de noix de cajou. Ils veulent démarrer petit, garder le contrôle familial, mais accueillir dans trois ans un fonds d''investissement. Que conseiller ?

Méthode : identifier les besoins (contrôle, souplesse, entrée d''investisseurs), puis comparer les formes. La SARL convient pour démarrer, mais la cession à des tiers est soumise à agrément et l''organisation est rigide. La SA est lourde : capital minimum élevé, conseil, commissaire aux comptes. La SAS permet d''écrire des statuts sur mesure : clause d''agrément pour garder le contrôle, actions de préférence ou clauses de sortie pour l''investisseur, président unique. Conclusion argumentée : la SAS paraît la plus adaptée, sous réserve des coûts de rédaction des statuts et de l''avis d''un professionnel.

## 1:22:00 – 1:27:00 · Synthèse

La société naît d''un contrat fondé sur les apports, le partage des résultats et l''affectio societatis, et acquiert la personnalité morale à l''immatriculation. La SARL est la forme des PME, avec un gérant et des parts soumises à agrément ; la SA est la forme des grandes entreprises, avec conseil ou administrateur général et commissaire aux comptes ; la SAS est la forme de la liberté statutaire, avec un président obligatoire. L''affectation du résultat suit un ordre : réserve légale dans la limite du plafond, puis distribution dans la limite du bénéfice distribuable.

## 1:27:00 – 1:30:00 · Évaluation finale

- Question 1 : citez les trois éléments spécifiques du contrat de société.
- Question 2 : qui nomme le directeur général d''une SA à conseil d''administration ?
- Question 3 : les limitations statutaires des pouvoirs du gérant sont-elles opposables aux tiers ?
- Question 4 : capital 20 000 000 FCFA, réserve légale 3 800 000 FCFA, bénéfice 5 000 000 FCFA : dotation ?
- Question 5 : qu''est-ce qu''une distribution de dividendes fictifs ?

Réponses : 1) apports, vocation aux bénéfices et contribution aux pertes, affectio societatis ; 2) le conseil d''administration ; 3) non ; 4) plafond 4 000 000 FCFA, il manque 200 000 FCFA, la dotation théorique de 500 000 FCFA est ramenée à 200 000 FCFA ; 5) une distribution qui dépasse le bénéfice distribuable, pénalement incriminée. Merci et bonnes révisions.', 'video', 90, false, 60
from public.courses c where c.slug = 'lic-droit-l3'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Droit des sociétés commerciales OHADA');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Droit des sûretés et des procédures collectives OHADA', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : étudiants de Licence 3 en droit des affaires, banque, finance ou gestion.
- Objectifs : distinguer sûretés personnelles et réelles, choisir une sûreté adaptée, comprendre la logique de l''ordre de paiement, identifier la procédure collective applicable, calculer une répartition simplifiée entre créanciers.
- Matériel : diaporama (carte des sûretés OHADA, échelle des procédures collectives, cascade de distribution), tableau blanc, calculatrice, fiche d''exercices.
- Prérequis : la leçon « Droit des sûretés et des procédures collectives OHADA : l''essentiel pour l''examen ».

## Déroulé minuté

## 00:00 – 05:00 · Accueil et objectifs

Bonjour à toutes et à tous. Aujourd''hui, nous nous mettons à la place d''un banquier et d''un fournisseur. Le banquier se demande : si mon client ne rembourse pas, comment récupérer mon argent ? C''est le droit des sûretés. Et quand le client est en difficulté grave, que se passe-t-il ? C''est le droit des procédures collectives. Deux Actes uniformes de l''OHADA : l''Acte uniforme portant organisation des sûretés, révisé en 2010, et l''Acte uniforme portant organisation des procédures collectives d''apurement du passif, révisé en 2015. Je ne citerai aucun numéro d''article ; les entreprises sont fictives et les ordres de paiement présentés sont simplifiés.

## 05:00 – 15:00 · Pourquoi des sûretés ?

Sans sûreté, le créancier est chirographaire. Il n''a que le droit de gage général sur le patrimoine de son débiteur, en concours avec tous les autres. Si le patrimoine est insuffisant, chacun reçoit un pourcentage, souvent faible. La sûreté améliore sa position de deux façons : soit en ajoutant un second patrimoine, celui d''une caution, c''est la sûreté personnelle ; soit en lui réservant la valeur d''un bien, c''est la sûreté réelle.

Exemple : une banque prête 30 000 000 FCFA à la SARL fictive Thiès Céramique. Sans garantie, si la société fait faillite avec 20 % de dividende pour les chirographaires, la banque récupère 6 000 000 FCFA. Avec une hypothèque de premier rang sur un entrepôt vendu 40 000 000 FCFA, elle peut, sous réserve des créances qui la priment, être payée intégralement.

## 15:00 – 28:00 · Les sûretés personnelles

Le cautionnement. La caution s''engage à payer si le débiteur ne paie pas. C''est un engagement accessoire : la caution peut opposer les exceptions qui appartiennent au débiteur, par exemple la nullité de la dette. Il ne se présume pas : l''Acte uniforme exige un écrit avec la mention, par la caution, de la somme maximale garantie, en lettres et en chiffres. Le cautionnement peut être simple, et la caution peut alors exiger que le créancier poursuive d''abord le débiteur, c''est le bénéfice de discussion, ou solidaire, et le créancier peut alors s''adresser directement à la caution. Vérifiez dans le texte la règle applicable à défaut de précision dans l''acte. La caution qui a payé dispose d''un recours contre le débiteur.

La garantie autonome. Le garant s''engage à payer une somme sur demande, selon les termes de son engagement, indépendamment de la dette garantie. Il ne peut pas opposer les exceptions du débiteur, sauf abus ou fraude manifestes. On la rencontre dans les marchés publics, par exemple pour garantir la bonne exécution de travaux, et dans le commerce international.

## 28:00 – 40:00 · Les sûretés réelles

Visuel : carte à deux branches, meubles et immeubles.

Sur les meubles : le droit de rétention, qui permet au garagiste de garder le véhicule impayé ; la propriété retenue à titre de garantie, la fameuse clause de réserve de propriété ; le gage, sur les meubles corporels comme un stock ou un véhicule, avec ou sans dépossession, l''opposabilité étant assurée par la remise ou l''inscription au RCCM ; le nantissement, sur les meubles incorporels, comme les créances, les comptes bancaires, les parts sociales ou le fonds de commerce.

Sur les immeubles : l''hypothèque, sans dépossession, qui doit être inscrite au livre foncier. Elle confère un droit de préférence et un droit de suite.

Et les privilèges : des droits de préférence accordés par la loi en raison de la qualité de la créance, comme les frais de justice ou les salaires.

## 40:00 – 48:00 · Pause interactive : quiz

- Question 1 : la caution peut-elle opposer la nullité de la dette principale ?
- Question 2 : le garant autonome le peut-il ?
- Question 3 : un nantissement porte-t-il sur un bien corporel ou incorporel ?
- Question 4 : quels droits confère une hypothèque inscrite ?
- Question 5 : un fournisseur veut récupérer ses marchandises impayées chez son client : quelle clause aurait-il dû prévoir ?

Réponses : 1) oui, le cautionnement est accessoire ; 2) non, sauf abus ou fraude manifestes ; 3) incorporel ; 4) un droit de préférence et un droit de suite ; 5) une clause de réserve de propriété.

## 48:00 – 1:00:00 · L''échelle des procédures collectives

Visuel : échelle de quatre marches, de la plus légère à la plus grave.

Première marche : la conciliation, procédure confidentielle et amiable, sous l''égide d''un conciliateur, dans les conditions fixées par l''Acte uniforme. Deuxième marche : le règlement préventif, pour l''entreprise en difficulté sérieuse mais pas encore en cessation des paiements ; il suspend les poursuites et vise un concordat préventif. Troisième marche : le redressement judiciaire, pour l''entreprise en cessation des paiements mais redressable, par un concordat de redressement. Quatrième marche : la liquidation des biens, quand la situation est irrémédiablement compromise. Des procédures simplifiées sont prévues pour les petites entreprises.

La notion pivot est la cessation des paiements : l''impossibilité de faire face au passif exigible avec l''actif disponible, en tenant compte des réserves de crédit ou délais dont bénéficie le débiteur. Le débiteur doit la déclarer dans le délai prévu par l''Acte uniforme.

## 1:00:00 – 1:10:00 · Les effets de l''ouverture

L''ouverture d''un redressement ou d''une liquidation produit des effets puissants. Les poursuites individuelles sont suspendues : un créancier ne peut plus saisir seul. Les créanciers doivent déclarer leurs créances, faute de quoi ils s''exposent à de graves conséquences. Des organes sont désignés, notamment le juge-commissaire et le mandataire judiciaire. Les actes accomplis pendant la période suspecte, entre la date de cessation des paiements et le jugement d''ouverture, sont contrôlés : certains sont nuls de plein droit, d''autres peuvent être annulés, par exemple un paiement anormal ou une sûreté consentie pour une dette antérieure. Enfin, les dirigeants fautifs s''exposent à l''action en comblement du passif, à la faillite personnelle et à des sanctions pénales pour banqueroute.

Exemple de raisonnement : la SARL fictive Delta Négoce, déjà en cessation des paiements, consent une hypothèque à un fournisseur pour une dette ancienne, deux mois avant le jugement d''ouverture. Ce type d''acte fait partie de ceux que l''Acte uniforme soumet aux nullités de la période suspecte : le mandataire pourra en demander l''annulation.

## 1:10:00 – 1:22:00 · Correction commentée d''un exercice chiffré

Énoncé : la SA fictive Fleuve Textiles est en liquidation des biens. Prix de réalisation : 90 000 000 FCFA. Frais de justice : 4 000 000 FCFA. Salaires superprivilégiés : 11 000 000 FCFA. Banque hypothécaire : 45 000 000 FCFA. Créanciers chirographaires : 60 000 000 FCFA au total, dont un fournisseur, Kaolack Coton, pour 9 000 000 FCFA. Schéma simplifié, à un seul prix global.

Calculons. Après frais de justice : 90 000 000 − 4 000 000 = 86 000 000 FCFA. Après salaires superprivilégiés : 86 000 000 − 11 000 000 = 75 000 000 FCFA. Après la banque hypothécaire : 75 000 000 − 45 000 000 = 30 000 000 FCFA. Pourcentage des chirographaires : 30 000 000 / 60 000 000 = 50 %. Kaolack Coton reçoit 9 000 000 × 0,50 = 4 500 000 FCFA.

Variante : si le prix n''avait été que de 50 000 000 FCFA, il resterait 50 000 000 − 4 000 000 − 11 000 000 = 35 000 000 FCFA pour la banque, qui ne serait pas payée intégralement : il lui manquerait 10 000 000 FCFA, pour lesquels elle viendrait en principe au rang des chirographaires, qui eux ne recevraient rien sur ce prix.

Commentaire : en pratique, on distingue le prix de chaque bien, car l''hypothèque ne porte que sur l''immeuble, et l''ordre de distribution diffère selon qu''il s''agit d''immeubles ou de meubles. À l''examen, signalez que votre schéma est simplifié et suivez exactement l''ordre donné par l''énoncé.

## 1:22:00 – 1:27:00 · Synthèse

Les sûretés personnelles ajoutent un patrimoine : cautionnement accessoire, garantie autonome indépendante. Les sûretés réelles affectent un bien : rétention, réserve de propriété, gage, nantissement, hypothèque, et la loi accorde des privilèges. Les procédures collectives forment une échelle : conciliation, règlement préventif, redressement judiciaire, liquidation des biens, avec la cessation des paiements comme ligne de partage. L''ouverture suspend les poursuites, impose la déclaration des créances et permet de remettre en cause certains actes de la période suspecte.

## 1:27:00 – 1:30:00 · Évaluation finale

- Question 1 : définissez la cessation des paiements.
- Question 2 : quelle procédure suppose l''absence de cessation des paiements ?
- Question 3 : qu''est-ce que la période suspecte ?
- Question 4 : citez deux sûretés réelles mobilières.
- Question 5 : 18 000 000 FCFA restent pour 45 000 000 FCFA de créances chirographaires : pourcentage ?

Réponses : 1) l''impossibilité de faire face au passif exigible avec l''actif disponible, compte tenu des réserves de crédit ; 2) le règlement préventif ; 3) la période entre la date de cessation des paiements et le jugement d''ouverture, pendant laquelle certains actes peuvent être annulés ; 4) par exemple le gage et le nantissement ; 5) 18 000 000 / 45 000 000 = 40 %. Merci, et à bientôt pour la fiscalité.', 'video', 90, false, 70
from public.courses c where c.slug = 'lic-droit-l3'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Droit des sûretés et des procédures collectives OHADA');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Droit fiscal des affaires', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : étudiants de Licence 3 en droit des affaires, comptabilité, finance ou gestion.
- Objectifs : énoncer les principes du droit fiscal, identifier les principaux impôts de l''entreprise, passer du résultat comptable au résultat fiscal, calculer l''IS, la TVA et une retenue sur dividendes, connaître les garanties du contribuable lors d''un contrôle.
- Matériel : diaporama (tableau des impôts, schéma de passage au résultat fiscal, chaîne de la TVA), tableau blanc, calculatrice, fiche d''exercices.
- Prérequis : la leçon « Droit fiscal des affaires : l''essentiel pour l''examen » ; notions de comptabilité générale.

## Déroulé minuté

## 00:00 – 05:00 · Accueil et avertissement

Bonjour à toutes et à tous. Le droit fiscal fait peur aux juristes parce qu''il y a des chiffres, et aux comptables parce qu''il y a du droit. Aujourd''hui, nous allons réconcilier les deux. Un avertissement d''abord : tous les taux que j''utiliserai sont fictifs pour l''exemple. Les taux, seuils et délais réels figurent dans le Code général des impôts et dans la loi de finances de l''année ; vérifiez-les toujours. À l''examen, utilisez exclusivement les taux donnés par l''énoncé. Les entreprises citées sont fictives.

## 05:00 – 17:00 · Qu''est-ce que l''impôt ? Les grands principes

L''impôt est un prélèvement pécuniaire, obligatoire, sans contrepartie directe, opéré par voie d''autorité pour couvrir les charges publiques. Sans contrepartie directe : c''est ce qui le distingue de la redevance, prix d''un service utilisé, et de la taxe, liée à un service public.

Quatre principes. La légalité : seule la loi crée l''impôt et fixe son assiette, son taux et ses modalités de recouvrement. L''égalité : les contribuables dans la même situation sont traités de la même façon. L''annualité : chaque année, la loi de finances autorise la perception des impôts. La territorialité : en principe, on impose les bénéfices réalisés au Sénégal, sous réserve des conventions fiscales.

Le cadre régional compte aussi : les directives de l''UEMOA harmonisent notamment la TVA et certaines règles de l''imposition des entreprises dans les États membres.

Vocabulaire à maîtriser : le fait générateur, l''événement qui fait naître la dette d''impôt ; l''assiette, la base imposable ; la liquidation, le calcul de l''impôt ; le recouvrement, son paiement.

## 17:00 – 27:00 · La carte des impôts de l''entreprise

Visuel : tableau à deux colonnes, ce que l''entreprise paie pour elle-même, ce qu''elle collecte pour l''État.

Ce que l''entreprise paie : l''impôt sur les sociétés pour les sociétés de capitaux ; l''impôt sur le revenu, catégorie des bénéfices industriels et commerciaux, pour l''entrepreneur individuel ; les droits d''enregistrement sur certains actes ; des impôts locaux sur l''activité ; certains impôts et contributions assis sur les salaires.

Ce que l''entreprise collecte : la TVA, payée en définitive par le consommateur ; les retenues à la source, par exemple sur les salaires ou, avec l''IRVM, sur les dividendes versés aux associés. Retenez cette distinction : quand l''entreprise collecte, elle agit comme intermédiaire de l''État, et ne pas reverser constitue une faute grave.

## 27:00 – 40:00 · Du résultat comptable au résultat fiscal

Visuel : schéma « résultat comptable + réintégrations − déductions = résultat fiscal ».

La comptabilité donne un résultat comptable. Le droit fiscal y apporte des corrections. On réintègre les charges comptabilisées mais non déductibles : les amendes et pénalités, certaines charges excessives ou somptuaires, l''IS lui-même s''il a été passé en charge. On déduit les produits comptabilisés mais non imposables ou déjà imposés, selon les régimes prévus.

Exemple : la SARL fictive Sénégal Agro-Services a un résultat comptable de 32 000 000 FCFA. Réintégrations : pénalités de retard 900 000 FCFA, charges somptuaires 1 100 000 FCFA. Déductions : produits exonérés 1 500 000 FCFA. Résultat fiscal : 32 000 000 + 900 000 + 1 100 000 − 1 500 000 = 32 500 000 FCFA. IS au taux fictif de 25 % : 32 500 000 × 0,25 = 8 125 000 FCFA.

Question à la salle : pourquoi l''amende n''est-elle pas déductible ? Parce qu''admettre sa déduction reviendrait à faire supporter une partie de la sanction par l''État, à travers une baisse de l''impôt. La sanction doit rester entièrement à la charge de son auteur.

## 40:00 – 48:00 · Pause interactive : quiz

- Question 1 : citez les quatre principes vus.
- Question 2 : quelle différence entre un impôt et une redevance ?
- Question 3 : une amende fiscale est-elle déductible ?
- Question 4 : résultat comptable 10 000 000, réintégrations 500 000, déductions 300 000 : résultat fiscal ?
- Question 5 : qui supporte en définitive la TVA ?

Réponses : 1) légalité, égalité, annualité, territorialité ; 2) l''impôt est sans contrepartie directe, la redevance est le prix d''un service utilisé ; 3) non, elle est réintégrée ; 4) 10 200 000 FCFA ; 5) le consommateur final.

## 48:00 – 1:00:00 · La TVA, mécanisme

Visuel : chaîne de trois entreprises, producteur, grossiste, détaillant, puis consommateur.

Prenons un taux fictif de 20 %. Le producteur vend au grossiste pour 1 000 000 FCFA HT : il facture 200 000 FCFA de TVA et la reverse. Le grossiste revend au détaillant pour 1 500 000 FCFA HT : il collecte 300 000 FCFA, déduit les 200 000 FCFA payés au producteur et reverse 100 000 FCFA. Le détaillant vend au consommateur pour 2 000 000 FCFA HT : il collecte 400 000 FCFA, déduit 300 000 FCFA et reverse 100 000 FCFA. Total reversé à l''État : 200 000 + 100 000 + 100 000 = 400 000 FCFA, soit exactement 20 % du prix final hors taxes, payé par le consommateur. Chaque entreprise n''a été taxée que sur sa valeur ajoutée.

Formule : TVA due = TVA collectée − TVA déductible. Si le résultat est négatif, c''est un crédit de TVA, imputable ou remboursable selon les conditions prévues. Le droit à déduction suppose une facture régulière et une dépense engagée pour les besoins d''opérations imposables.

Calcul inverse : HT = TTC / (1 + taux). Avec 20 %, un prix TTC de 3 600 000 FCFA correspond à 3 000 000 FCFA HT et 600 000 FCFA de TVA.

## 1:00:00 – 1:12:00 · Correction commentée d''un exercice complet

Énoncé, taux fictifs : la SAS fictive Cap Skirring Hôtellerie a un résultat comptable de 50 000 000 FCFA. Réintégrations : amendes 2 000 000 FCFA. Déductions : produits exonérés 4 000 000 FCFA. IS au taux de 25 %, acomptes versés 10 000 000 FCFA. TVA du mois, taux de 20 % : ventes 22 000 000 FCFA HT, achats 9 000 000 FCFA HT, travaux de rénovation 6 000 000 FCFA HT. Dividendes distribués : 20 000 000 FCFA, retenue de 10 %.

Correction. Résultat fiscal : 50 000 000 + 2 000 000 − 4 000 000 = 48 000 000 FCFA. IS : 48 000 000 × 0,25 = 12 000 000 FCFA ; solde à payer : 12 000 000 − 10 000 000 = 2 000 000 FCFA. TVA collectée : 22 000 000 × 0,20 = 4 400 000 FCFA ; déductible : (9 000 000 + 6 000 000) × 0,20 = 3 000 000 FCFA ; TVA due : 1 400 000 FCFA. Retenue sur dividendes : 20 000 000 × 0,10 = 2 000 000 FCFA, à reverser par la société ; net versé aux associés : 18 000 000 FCFA.

Commentaire : beaucoup d''étudiants appliquent le taux d''IS au résultat comptable : 50 000 000 × 0,25 = 12 500 000 FCFA, ce qui est faux. D''autres oublient de déduire les acomptes. Et certains déduisent la retenue sur dividendes du résultat de la société : c''est une erreur, la retenue est prélevée sur le revenu des associés, la société n''est que collectrice.

## 1:12:00 – 1:22:00 · Le contrôle fiscal et les garanties du contribuable

Le système est déclaratif : l''entreprise déclare, l''administration contrôle. Contrôle sur pièces, depuis les bureaux, à partir des déclarations et des documents détenus ; vérification de comptabilité, sur place. La procédure est contradictoire : l''administration notifie des redressements motivés, le contribuable peut présenter ses observations, se faire assister d''un conseil, et l''administration répond. Le contribuable conteste ensuite par une réclamation, puis, si nécessaire, devant le juge. L''administration ne peut reprendre que dans le délai de prescription prévu par le CGI.

Mini-cas : la SARL fictive Ndar Logistique reçoit une notification de redressement qui se borne à indiquer un montant global, sans motifs. Elle peut faire valoir que la notification n''est pas motivée et que ses droits de défense ne sont pas respectés, en présentant ses observations puis, si besoin, une réclamation. Conseil d''examen : raisonnez sur la finalité de la règle, le respect du contradictoire, plutôt que sur des délais que vous n''êtes pas sûrs de connaître.

## 1:22:00 – 1:27:00 · Synthèse

L''impôt est un prélèvement obligatoire sans contrepartie directe, établi par la loi. L''entreprise paie l''IS ou l''impôt sur le revenu, et collecte la TVA et des retenues à la source. Le résultat fiscal se calcule à partir du résultat comptable, par réintégrations et déductions. La TVA due est la différence entre TVA collectée et TVA déductible. Le contrôle fiscal est encadré par le principe du contradictoire.

## 1:27:00 – 1:30:00 · Évaluation finale

- Question 1 : énoncez le principe de légalité de l''impôt.
- Question 2 : quelle est la formule du résultat fiscal ?
- Question 3 : TVA collectée 2 000 000 FCFA, déductible 2 600 000 FCFA : situation ?
- Question 4 : prix TTC 1 200 000 FCFA, taux fictif de 20 % : prix HT ?
- Question 5 : la retenue sur dividendes est-elle une charge de la société ?

Réponses : 1) seule la loi peut créer un impôt et en fixer l''assiette, le taux et le recouvrement ; 2) résultat comptable + réintégrations − déductions ; 3) un crédit de TVA de 600 000 FCFA ; 4) 1 200 000 / 1,20 = 1 000 000 FCFA ; 5) non, elle est prélevée sur le revenu des associés, la société la collecte et la reverse. Merci et bonne préparation de vos examens.', 'video', 90, false, 80
from public.courses c where c.slug = 'lic-droit-l3'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Droit fiscal des affaires');

-- Cours : Marketing et commerce Licence 1 : réussir ses examens
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'lic-mkt-l1', (select id from public.levels where name = 'Licence 1'), null, 'Marketing et commerce', 'Marketing et commerce Licence 1 : réussir ses examens', 'Préparation aux partiels et examens semestriels de première année de Licence en marketing et commerce (universités et écoles du Sénégal et de l''espace UEMOA, système LMD). Le cours couvre trois matières clés : les fondamentaux du marketing (besoins, marché, segmentation-ciblage-positionnement, mix 4P/7P), le comportement du consommateur et les techniques de vente et de négociation commerciale. Fiches de cours, cas d''entreprises sénégalaises fictives, exercices corrigés aux calculs vérifiés, sujet type et trois cours vidéo de 1h30. Prérequis : niveau Baccalauréat et aisance avec les pourcentages.', true, 381
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Réussir ses examens de Licence 1 en Marketing et commerce', '## Objectifs de la leçon

- Comprendre comment est organisée la première année de Licence dans le système LMD.
- Identifier les trois matières clés de l''année en marketing et commerce et ce que les correcteurs attendent.
- Connaître les différents types d''épreuves et la bonne manière d''y répondre.
- Construire un plan de révision réaliste sur six semaines.

## 1. La Licence 1 dans le système LMD

Les universités publiques et les écoles de commerce du Sénégal, comme celles des autres pays de l''espace UEMOA, appliquent le système LMD : Licence, Master, Doctorat. La Licence se déroule en trois années, soit six semestres. Chaque semestre regroupe des unités d''enseignement (UE), et chaque UE contient une ou plusieurs matières, appelées aussi éléments constitutifs (EC).

Chaque UE donne droit à des crédits lorsqu''elle est validée. Les crédits mesurent la charge de travail de l''étudiant : cours, travaux dirigés, travail personnel. Le nombre de crédits par UE, les coefficients, les règles de compensation entre matières et les conditions de passage en deuxième année varient d''un établissement à l''autre. Votre premier réflexe doit donc être de lire le règlement des études et la maquette de votre filière, disponibles auprès de la scolarité ou du département.

En général, la note d''une matière combine un contrôle continu (devoirs, exposés, travaux dirigés, participation) et un examen de fin de semestre. Une session de rattrapage est souvent prévue pour les UE non validées. Retenez une règle simple : une note faible dans une matière peut parfois être compensée par d''autres notes de la même UE, mais une absence à un examen ne se compense presque jamais.

## 2. Les matières clés de l''année

La première année installe le vocabulaire et les raisonnements de base du marketing et de la vente. Ce cours se concentre sur trois matières qui pèsent lourd dans la plupart des maquettes :

- Fondamentaux du marketing : besoins et demande, notion de marché, part de marché, segmentation, ciblage, positionnement, et marketing-mix (4P puis 7P pour les services).
- Comportement du consommateur : motivations, processus de décision d''achat, facteurs d''influence, attitudes, fidélité.
- Techniques de vente et négociation commerciale : étapes de l''entretien de vente, découverte des besoins, argumentation, traitement des objections, conclusion, préparation d''une négociation et calcul de l''impact d''une remise.

Selon les établissements, l''année comprend aussi l''économie générale, la comptabilité générale, les mathématiques et statistiques, l''expression écrite et orale, l''informatique et l''anglais commercial.

## 3. Les types d''épreuves et ce qu''on attend de vous

- La question de cours : définir une notion et l''illustrer. Exemple : « Définissez la segmentation et donnez trois critères. » Le correcteur attend une définition précise, une structure et un exemple concret.
- Le QCM ou le vrai-faux : il teste la précision du vocabulaire. Lisez chaque proposition jusqu''au bout ; un seul mot change souvent le sens.
- L''exercice chiffré : part de marché, taux de pénétration, score d''attitude, taux de transformation, impact d''une remise sur la marge. Écrivez toujours la formule, puis le calcul, puis le résultat avec son unité, puis une phrase d''interprétation.
- Le cas pratique : une entreprise, souvent sénégalaise, avec un problème. Il faut faire un diagnostic court, proposer des actions justifiées et rester réaliste au regard du contexte (budget, circuits de distribution, habitudes des clients).
- La dissertation ou question de réflexion : par exemple « Le marketing crée-t-il des besoins ? ». On attend une introduction avec définition des termes et problématique, un plan en deux ou trois parties, des exemples, une conclusion.
- Le projet ou le dossier en groupe : étude d''un produit, plan de lancement, jeu de rôle de vente filmé. La forme compte : rapport structuré, sources citées, répartition des tâches.

## 4. La méthode de révision

Réviser le marketing, ce n''est pas réciter des définitions. Il faut savoir les appliquer à un cas. Voici une méthode en quatre temps.

- Fiche : pour chaque chapitre, une page maximum avec les définitions, les formules et un schéma décrit avec vos mots.
- Exemples : associez à chaque notion un exemple sénégalais tiré de votre quotidien (boutique de quartier, marché Sandaga, vendeur de crédit téléphonique, restaurant de dibiterie).
- Entraînement : refaites les exercices de TD sans regarder le corrigé, puis comparez.
- Oral : expliquez une notion à un camarade en deux minutes. Si vous n''y arrivez pas, vous ne la maîtrisez pas encore.

Exemple de mini-fiche. Part de marché en valeur = chiffre d''affaires de l''entreprise / chiffre d''affaires total du marché × 100. Si une laiterie fictive de Thiès réalise 360 000 000 FCFA sur un marché de 2 400 000 000 FCFA, sa part de marché est de 15 %. Une ligne d''interprétation : l''entreprise est un acteur moyen, loin d''un leader qui détiendrait 35 %.

## 5. Plan de révision sur six semaines

- Semaine 1 : bilan. Rassemblez cours, TD et anciens sujets. Listez les chapitres et notez pour chacun votre niveau (acquis, fragile, non vu).
- Semaine 2 : fondamentaux du marketing. Fiches sur le marché, les indicateurs, la démarche segmentation-ciblage-positionnement et le mix. Exercices de part de marché.
- Semaine 3 : comportement du consommateur. Fiches sur les motivations, le processus d''achat, les influences et les attitudes. Exercices de score multi-attributs.
- Semaine 4 : techniques de vente et négociation. Fiches sur les étapes de la vente, la méthode SONCAS, la reformulation, les objections. Jeux de rôle à deux et calculs de remise.
- Semaine 5 : sujets types en temps limité. Un sujet complet par séance de trois heures, puis correction sérieuse.
- Semaine 6 : consolidation. Relecture des fiches, reprise des erreurs fréquentes, repos la veille de l''épreuve.

Prévoyez des séances courtes et régulières, par exemple deux heures par jour, plutôt que des nuits blanches. Travaillez en petit groupe une fois par semaine pour les jeux de rôle de vente : c''est la meilleure préparation aux oraux.

## Points clés

- Lisez le règlement des études de votre établissement : crédits, coefficients et compensation y sont fixés.
- Trois matières clés cette année : fondamentaux du marketing, comportement du consommateur, vente et négociation.
- Pour chaque calcul : formule, application, résultat avec unité, interprétation.
- Six semaines suffisent si le travail est régulier et tourné vers l''application.

## Exercices pratiques

- Exercice 1. Citez quatre types d''épreuves que vous pouvez rencontrer en Licence 1 et, pour chacune, une erreur à éviter.
- Exercice 2. Une boutique fictive de cosmétiques de la Médina réalise 54 000 000 FCFA de ventes annuelles sur un marché local estimé à 360 000 000 FCFA. Calculez sa part de marché en valeur et interprétez-la.
- Exercice 3. Rédigez une mini-fiche (cinq lignes maximum) sur la notion de besoin.
- Exercice 4. Cas pratique. Awa, étudiante en Licence 1, révise uniquement en relisant ses cours la nuit précédant chaque examen. Ses notes en exercices chiffrés sont faibles. Diagnostiquez ses erreurs de méthode et proposez-lui trois changements concrets.

## Corrigé

- Exercice 1. Question de cours : éviter la définition approximative sans exemple. QCM : éviter de répondre sans lire chaque proposition en entier. Exercice chiffré : ne pas oublier la formule et l''interprétation. Cas pratique : ne pas proposer d''actions déconnectées du budget et de la cible. Dissertation : ne pas écrire sans problématique ni plan.
- Exercice 2. Part de marché = 54 000 000 / 360 000 000 × 100 = 15 %. La boutique détient près d''un sixième du marché local : c''est un acteur significatif mais pas dominant ; il faut connaître la part des concurrents pour savoir si elle est leader.
- Exercice 3. Exemple : « Le besoin est un sentiment de manque ressenti par une personne (avoir faim, se protéger, être reconnu). Il existe avant le marketing. Le désir est la forme que prend la réponse au besoin selon la culture (manger un thiéboudienne). La demande est un désir accompagné d''un pouvoir d''achat. Le marketing agit surtout sur les désirs et la demande. »
- Exercice 4. Diagnostic : révision tardive, passive (relecture) et sans entraînement aux calculs, plus le manque de sommeil. Propositions : réviser dès six semaines avant l''examen, deux heures par jour ; refaire les exercices de TD sans corrigé ; rédiger des fiches avec formules et exemples ; faire un sujet complet chronométré par semaine ; dormir la veille de l''épreuve.', 'texte', 45, true, 10
from public.courses c where c.slug = 'lic-mkt-l1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Réussir ses examens de Licence 1 en Marketing et commerce');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Fondamentaux du marketing : l''essentiel pour l''examen', '## Objectifs de la leçon

- Définir le marketing et distinguer besoin, désir et demande.
- Analyser un marché et calculer ses principaux indicateurs.
- Maîtriser la démarche segmentation, ciblage, positionnement.
- Construire un marketing-mix cohérent (4P pour un produit, 7P pour un service).

## 1. Qu''est-ce que le marketing ?

Le marketing est l''ensemble des méthodes par lesquelles une organisation comprend les besoins de ses clients, conçoit une offre qui y répond mieux que la concurrence, la fait connaître et la rend accessible, avec profit. Le marketing ne se limite pas à la publicité : il commence par l''écoute du marché et va jusqu''au service après-vente.

On distingue trois notions souvent confondues :

- Le besoin : sentiment de manque (se nourrir, se déplacer, être reconnu). Il n''est pas créé par l''entreprise.
- Le désir : moyen privilégié de satisfaire un besoin, façonné par la culture et l''environnement. Pour se déplacer à Dakar, l''un désire un taxi, l''autre un bus rapide, un troisième une moto.
- La demande : désir solvable, c''est-à-dire appuyé par un pouvoir d''achat.

L''approche marketing s''oppose à l''approche produit (« je fabrique ce que je sais faire et je cherche des acheteurs »). Elle part du client.

## 2. Le marché et ses indicateurs

Au sens marketing, le marché est l''ensemble des clients actuels et potentiels d''un produit, ainsi que les concurrents et les intermédiaires. On distingue :

- Le marché principal : produits identiques (yaourt).
- Le marché environnant : produits de substitution (lait caillé artisanal, jus).
- Le marché générique : le besoin satisfait (desserts et boissons lactées).
- Le marché support : produits nécessaires à la consommation (réfrigérateurs).

Le marché actuel regroupe les consommateurs du produit. Le marché potentiel ajoute les non-consommateurs relatifs (ils pourraient acheter mais ne le font pas encore). Les non-consommateurs absolus ne consommeront jamais le produit (raisons physiques, religieuses, culturelles).

Formules à connaître :

- Part de marché (PDM) en valeur = chiffre d''affaires de l''entreprise / chiffre d''affaires du marché × 100. On peut aussi la calculer en volume (quantités).
- Part de marché relative = ventes de l''entreprise / ventes du principal concurrent (ou du leader si l''entreprise n''est pas leader). Supérieure à 1, l''entreprise est leader.
- Taux de pénétration = nombre d''acheteurs du produit / population de référence × 100.

Exemple chiffré. Teranga Lait SARL, laiterie fictive de Thiès, vend des yaourts. Le marché régional pèse 2 400 000 000 FCFA par an. Teranga Lait réalise 360 000 000 FCFA ; le leader, 840 000 000 FCFA.

- PDM de Teranga Lait = 360 000 000 / 2 400 000 000 × 100 = 15 %.
- PDM du leader = 840 000 000 / 2 400 000 000 × 100 = 35 %.
- PDM relative de Teranga Lait = 360 000 000 / 840 000 000 = 0,43 : elle vend moins de la moitié du leader.
- Dans sa zone, 18 000 ménages sur 50 000 achètent du yaourt au moins une fois par mois : taux de pénétration = 18 000 / 50 000 × 100 = 36 %. Il reste 64 % de ménages à convaincre, dont une partie de non-consommateurs relatifs.

## 3. Segmentation, ciblage, positionnement

Schéma décrit : trois marches d''escalier. Marche 1 « Segmenter » (découper le marché en groupes homogènes), marche 2 « Cibler » (choisir les groupes à servir), marche 3 « Positionner » (définir l''image voulue dans l''esprit de la cible). Le mix vient ensuite comme mise en œuvre.

Segmenter consiste à découper le marché en sous-ensembles homogènes à l''intérieur, hétérogènes entre eux. Critères usuels :

- Sociodémographiques : âge, sexe, revenu, profession, taille du ménage, milieu urbain ou rural.
- Géographiques : région, ville, quartier.
- Psychographiques : style de vie, valeurs, personnalité.
- Comportementaux : fréquence d''achat, fidélité, avantage recherché, occasion d''usage.

Un bon segment est mesurable, accessible (on peut l''atteindre par la communication et la distribution), suffisamment rentable et réellement différent des autres.

Cibler, c''est choisir. Trois stratégies classiques :

- Marketing indifférencié : une seule offre pour tout le marché (coûts faibles, risque d''être moyen pour tous).
- Marketing différencié : une offre adaptée à chaque segment retenu (meilleure adaptation, coûts plus élevés).
- Marketing concentré : un seul segment (idéal pour une PME, mais dépendance forte).

Positionner, c''est définir la place que l''on veut occuper dans l''esprit des clients par rapport aux concurrents. Un positionnement efficace est simple, crédible, différent et attractif. On l''illustre par une carte perceptuelle : deux axes (par exemple prix bas ou élevé, produit traditionnel ou moderne), sur lesquels on place les marques.

Exemple. Teranga Lait segmente selon l''âge et l''occasion : enfants (goûter scolaire), jeunes actifs (en-cas), familles (dessert). Elle choisit un marketing concentré sur les familles de Thiès et Mbour, avec le positionnement « le yaourt frais de la région, au goût d''autrefois, à prix familial ».

## 4. Le marketing-mix

Le marketing-mix est la combinaison cohérente des décisions opérationnelles. Pour un produit, on retient les 4P :

- Produit : caractéristiques, qualité, gamme, emballage, marque, services associés.
- Prix : niveau, remises, conditions de paiement.
- Place (distribution) : canaux, points de vente, logistique.
- Promotion (communication) : publicité, promotion des ventes, relations publiques, réseaux sociaux, force de vente.

Pour un service, on ajoute trois P :

- Personnel : compétence et attitude des employés en contact.
- Processus : déroulement du service, délais, files d''attente.
- Preuve physique (Physical evidence) : locaux, tenue, documents, tout ce qui rend le service tangible.

La règle d''or est la cohérence : un positionnement « prix familial » est incompatible avec un pot de luxe vendu uniquement en supermarché haut de gamme.

## Points clés

- Besoin, désir, demande : trois niveaux distincts.
- PDM = ventes entreprise / ventes marché ; PDM relative = ventes entreprise / ventes du leader ou du premier concurrent.
- Segmenter, cibler, positionner, puis décliner le mix.
- 4P pour les produits, 7P pour les services, et toujours la cohérence.

## Exercices pratiques

- Exercice 1. Donnez un exemple sénégalais de besoin, de désir et de demande pour le besoin « se désaltérer ».
- Exercice 2. Sur le marché fictif du jus local en bouteille à Saint-Louis (3 600 millions de FCFA), Bissap Ndar réalise 540 millions et le leader 1 260 millions. Calculez la PDM de chacun et la PDM relative de Bissap Ndar.
- Exercice 3. Une ville compte 40 000 ménages ; 10 000 achètent du jus en bouteille. Calculez le taux de pénétration. Que représentent les 30 000 autres ménages ?
- Exercice 4. Proposez trois critères de segmentation pertinents pour un service de livraison de repas à Dakar et justifiez-les.
- Exercice 5. Cas pratique. Kër Coiffure, salon fictif de Ziguinchor, veut se positionner « salon moderne et rapide pour femmes actives ». Proposez son mix 7P.

## Corrigé

- Exercice 1. Besoin : avoir soif. Désir : boire un jus de bissap bien frais plutôt que de l''eau. Demande : acheter une bouteille de bissap à 500 FCFA car on dispose de l''argent.
- Exercice 2. PDM Bissap Ndar = 540 / 3 600 × 100 = 15 %. PDM du leader = 1 260 / 3 600 × 100 = 35 %. PDM relative = 540 / 1 260 = 0,43. Bissap Ndar vend moins de la moitié du leader ; elle est challenger ou suiveur.
- Exercice 3. Taux de pénétration = 10 000 / 40 000 × 100 = 25 %. Les 30 000 autres ménages sont des non-consommateurs : une partie est relative (à convaincre par le prix, la disponibilité, la communication), une partie peut être absolue (raisons de santé, par exemple).
- Exercice 4. Quartier de résidence et de travail (géographique : délais de livraison), revenu (sociodémographique : capacité à payer la livraison), occasion d''usage (comportemental : déjeuner au bureau ou dîner familial). Chaque critère est mesurable et conduit à des offres différentes.
- Exercice 5. Produit : coupes et tresses rapides, soins express, prise de rendez-vous. Prix : grille claire, forfaits mensuels. Place : local près des bureaux, ouvert tôt et après 18 h. Promotion : page sur les réseaux sociaux avec photos avant-après, parrainage. Personnel : coiffeuses formées et ponctuelles. Processus : rendez-vous par message, attente limitée, paiement par mobile money. Preuve physique : salon propre et climatisé, tenue uniforme, carte de fidélité.', 'texte', 60, false, 20
from public.courses c where c.slug = 'lic-mkt-l1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Fondamentaux du marketing : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Comportement du consommateur : l''essentiel pour l''examen', '## Objectifs de la leçon

- Expliquer les motivations et les freins à l''achat.
- Décrire le processus de décision d''achat et les rôles dans l''achat.
- Identifier les facteurs qui influencent le consommateur.
- Mesurer une attitude par un modèle multi-attributs et mesurer la fidélité.

## 1. Besoins, motivations et freins

Le comportement du consommateur étudie la manière dont les individus et les ménages choisissent, achètent, utilisent et abandonnent des produits. Le point de départ est le besoin. La pyramide de Maslow classe les besoins en cinq niveaux : physiologiques, sécurité, appartenance, estime, accomplissement. Elle est utile pour l''examen, mais il faut en connaître la limite : les besoins ne sont pas satisfaits dans un ordre strict.

Les motivations sont les forces qui poussent à acheter. On les classe souvent en trois types :

- Hédonistes : le plaisir (savourer une pâtisserie).
- Oblatives : faire plaisir aux autres (offrir un pagne pour la Tabaski).
- D''autoexpression : affirmer son identité (porter une marque de baskets).

Les freins s''opposent aux motivations : peurs (risque financier, risque pour la santé), inhibitions (gêne sociale), manque d''information. Une bonne action marketing renforce les motivations et lève les freins. Exemple : une mutuelle de santé fictive lève la peur « je paie sans rien recevoir » en affichant des témoignages et un délai de remboursement.

## 2. Le processus de décision d''achat

Schéma décrit : une flèche horizontale en cinq étapes. 1) Reconnaissance du besoin, 2) Recherche d''information, 3) Évaluation des solutions, 4) Décision d''achat, 5) Comportement après l''achat.

- Reconnaissance du besoin : écart entre la situation actuelle et la situation souhaitée (le téléphone est cassé).
- Recherche d''information : sources personnelles (famille, amis), commerciales (vendeurs, publicités), publiques (avis en ligne), expérience.
- Évaluation : comparaison des marques selon des critères (prix, autonomie, qualité de l''appareil photo, service après-vente).
- Décision : choix de la marque, du point de vente, du moment, du mode de paiement. L''intention peut être modifiée par une rupture de stock ou l''avis d''un proche.
- Après l''achat : satisfaction ou dissonance cognitive (doute après un achat important). Le client satisfait rachète et recommande ; le mécontent se plaint ou en parle autour de lui.

L''intensité du processus dépend de l''implication. Un achat de sachet d''eau est routinier, faiblement impliquant. L''achat d''une moto ou d''une parcelle est fortement impliquant : longue recherche, nombreuses comparaisons.

Les rôles dans l''achat : initiateur (l''enfant qui réclame), influenceur (l''ami qui conseille), décideur, acheteur, utilisateur. Dans un ménage sénégalais, ces rôles sont souvent tenus par des personnes différentes : le marketing doit savoir à qui parler.

## 3. Les facteurs d''influence

- Facteurs culturels : culture, sous-cultures (ethniques, religieuses, régionales), classes sociales. Les fêtes religieuses et familiales rythment la consommation (Tabaski, Korité, Magal, baptêmes, mariages).
- Facteurs sociaux : groupes de référence (amis, tontines, associations), leaders d''opinion, famille, statut.
- Facteurs personnels : âge, cycle de vie, profession, revenu, style de vie.
- Facteurs psychologiques : motivation, perception, apprentissage, croyances et attitudes.

## 4. Mesurer une attitude : le modèle multi-attributs

Une attitude est une évaluation durable, favorable ou défavorable, d''un objet. Le modèle multi-attributs compensatoire (inspiré des travaux de Fishbein) calcule un score global : Score = somme des (poids du critère × note de la marque sur ce critère). Un point faible peut être compensé par un point fort.

Exemple. Fatou, étudiante à Dakar, hésite entre trois téléphones fictifs A, B et C. Elle accorde les poids suivants : prix 0,4 ; autonomie 0,3 ; appareil photo 0,2 ; service après-vente 0,1 (total 1). Elle note chaque téléphone sur 10.

- A : prix 8, autonomie 6, photo 5, service 7. Score = 0,4 × 8 + 0,3 × 6 + 0,2 × 5 + 0,1 × 7 = 3,2 + 1,8 + 1,0 + 0,7 = 6,7.
- B : prix 5, autonomie 8, photo 8, service 6. Score = 2,0 + 2,4 + 1,6 + 0,6 = 6,6.
- C : prix 7, autonomie 7, photo 6, service 4. Score = 2,8 + 2,1 + 1,2 + 0,4 = 6,5.

Fatou devrait préférer A, mais l''écart est faible : une promotion sur B ou une meilleure garantie sur C peut renverser le choix. Pour le vendeur de B, deux leviers : baisser le prix ou convaincre Fatou que l''appareil photo compte plus (modifier les poids).

D''autres modèles sont non compensatoires : par exemple, le modèle conjonctif élimine toute marque qui n''atteint pas un seuil minimal sur un critère (« pas en dessous de 6 en autonomie »).

## 5. Satisfaction et fidélité

La satisfaction résulte de la comparaison entre la performance perçue et les attentes. La fidélité est la répétition d''achat accompagnée d''une attitude favorable. On distingue la fidélité vraie de l''inertie (on rachète faute d''alternative).

Indicateur simple : taux de réachat = clients qui rachètent sur la période / clients de la période précédente × 100. Exemple : sur 1 200 clients d''une boulangerie fictive de Kaolack en janvier, 780 reviennent en février. Taux de réachat = 780 / 1 200 × 100 = 65 %.

## Points clés

- Motivations (hédonistes, oblatives, d''autoexpression) contre freins (peurs, inhibitions).
- Cinq étapes du processus d''achat ; son intensité dépend de l''implication.
- Facteurs culturels, sociaux, personnels, psychologiques.
- Score multi-attributs = somme des poids × notes ; vérifiez que les poids totalisent 1.

## Exercices pratiques

- Exercice 1. Classez chaque motivation : offrir un mouton à sa mère ; s''acheter une glace par grosse chaleur ; porter une tenue à la mode pour un concert.
- Exercice 2. Décrivez les cinq étapes du processus d''achat d''une moto par un livreur de Touba.
- Exercice 3. Identifiez les rôles d''achat dans la situation suivante : un adolescent voit une publicité de céréales, sa tante dit qu''elles sont trop sucrées, son père donne l''argent, sa mère fait les courses, toute la famille en mange.
- Exercice 4. Deux réfrigérateurs fictifs X et Y. Poids : prix 0,5 ; consommation électrique 0,3 ; garantie 0,2. Notes de X : 6, 9, 7. Notes de Y : 8, 6, 6. Calculez les scores et conclure.
- Exercice 5. Un salon de thé fictif de Saint-Louis avait 600 clients en mars ; 390 sont revenus en avril. Calculez le taux de réachat. Proposez deux actions pour l''améliorer.
- Exercice 6. Cas pratique. Une marque fictive de couches pour bébés lancée à Dakar se vend mal malgré un prix inférieur à la concurrence. Une enquête révèle que les mères craignent une qualité médiocre. Analysez le frein et proposez trois actions.

## Corrigé

- Exercice 1. Mouton offert : oblative. Glace : hédoniste. Tenue à la mode : autoexpression.
- Exercice 2. Besoin : sa vieille moto tombe en panne et il perd des courses. Information : il interroge d''autres livreurs, visite des revendeurs, regarde des annonces. Évaluation : prix, consommation, robustesse, pièces disponibles, crédit possible. Décision : il choisit un modèle et un vendeur qui accepte un paiement échelonné. Après l''achat : s''il est satisfait, il recommande le vendeur ; sinon dissonance et bouche-à-oreille négatif.
- Exercice 3. Initiateur : l''adolescent. Influenceur : la tante. Décideur et payeur : le père. Acheteur : la mère. Utilisateurs : toute la famille.
- Exercice 4. X = 0,5 × 6 + 0,3 × 9 + 0,2 × 7 = 3,0 + 2,7 + 1,4 = 7,1. Y = 0,5 × 8 + 0,3 × 6 + 0,2 × 6 = 4,0 + 1,8 + 1,2 = 7,0. X est préféré de peu : sa faible consommation compense son prix plus élevé. Le vendeur de X doit mettre en avant les économies d''électricité.
- Exercice 5. Taux de réachat = 390 / 600 × 100 = 65 %. Actions : carte de fidélité (dixième thé offert), accueil personnalisé et nouveautés régulières annoncées sur les réseaux sociaux.
- Exercice 6. Le frein est une peur liée au risque perçu (santé et confort du bébé) ; le prix bas renforce même le doute (« trop bon marché pour être bon »). Actions : échantillons gratuits en pharmacie et en maternité, témoignages de mères et avis de sages-femmes, garantie « satisfaite ou remboursée ». On peut aussi revoir le prix pour qu''il signale mieux la qualité.', 'texte', 60, false, 30
from public.courses c where c.slug = 'lic-mkt-l1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Comportement du consommateur : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Techniques de vente et négociation commerciale : l''essentiel pour l''examen', '## Objectifs de la leçon

- Connaître les étapes d''un entretien de vente et les techniques associées.
- Découvrir les besoins avec la méthode SONCAS et argumenter avec la méthode CAP.
- Traiter les objections et conclure.
- Préparer une négociation et mesurer l''impact chiffré d''une remise.

## 1. La vente : définitions

La vente est l''acte par lequel un vendeur aide un client à prendre une décision d''achat satisfaisante pour les deux parties. On distingue la vente en magasin, la vente terrain, la vente à distance et la vente entre entreprises (B to B).

La négociation commerciale est une discussion entre parties aux intérêts en partie divergents, qui cherchent un accord sur plusieurs variables : prix, quantités, délais, conditions de paiement, services.

## 2. Les étapes de l''entretien de vente

Schéma décrit : une échelle de sept barreaux, du bas vers le haut. Préparation, prise de contact, découverte, argumentation, traitement des objections, conclusion, prise de congé et suivi.

- Préparation : connaître son produit, ses concurrents, le client (historique d''achats), fixer un objectif et préparer ses outils (catalogue, échantillons, tarifs).
- Prise de contact : la règle des quatre vingt (vingt premières secondes, vingt premiers mots, vingt centimètres du visage, vingt premiers gestes) rappelle l''importance de la première impression. Salutations respectueuses, sourire, présentation.
- Découverte : questionner pour comprendre la situation, les besoins et les motivations. On alterne questions ouvertes (« Comment utilisez-vous… ? »), fermées (« Est-ce pour la maison ? ») et de contrôle. On termine par une reformulation.
- Argumentation : présenter l''offre en partant des besoins exprimés.
- Traitement des objections.
- Conclusion : obtenir l''engagement.
- Prise de congé et suivi : remercier, rassurer, planifier la relance.

## 3. Découvrir avec SONCAS

La grille SONCAS classe les motivations d''achat du client :

- Sécurité : peur du risque (garantie, solidité, marque connue).
- Orgueil : besoin d''être valorisé (produit exclusif, prestige).
- Nouveauté : goût du changement et de l''innovation.
- Confort : recherche de facilité et de bien-être.
- Argent : économie, rapport qualité-prix.
- Sympathie : relation avec le vendeur, attachement affectif.

Pendant la découverte, le vendeur repère les deux ou trois motivations dominantes et construit son argumentation dessus.

## 4. Argumenter avec CAP

La méthode CAP (Caractéristique, Avantage, Preuve), appelée aussi CAB (B pour bénéfice), transforme une caractéristique technique en bénéfice pour le client :

- Caractéristique : « Ce congélateur a une isolation renforcée. »
- Avantage : « Il garde le froid plus de vingt heures en cas de coupure d''électricité. »
- Preuve : « Voici le résultat du test du fabricant, et le témoignage d''une poissonnière de Mbour. »

Un argument sans lien avec les motivations du client est inutile.

## 5. Traiter les objections et conclure

Une objection n''est pas un refus : c''est souvent une demande d''information. Méthode générale : écouter sans interrompre, reformuler, répondre, vérifier. Techniques classiques :

- Oui, mais : on reconnaît une part de vérité puis on nuance (« Oui, le prix est plus élevé, mais la consommation est deux fois plus faible »).
- Boomerang : on retourne l''objection en argument (« C''est justement parce que vous êtes petit commerçant que ce crédit fournisseur vous aide »).
- Questionnement : « Trop cher par rapport à quoi ? »

La conclusion se fait au bon moment, quand le client envoie des signaux d''achat (questions sur la livraison, le paiement). Techniques : l''alternative (« Livraison mardi ou jeudi ? »), le résumé des avantages, la conclusion implicite (rédiger le bon de commande).

## 6. Préparer une négociation

- Objectifs : position d''ouverture, objectif réaliste, point de rupture (limite au-delà de laquelle on refuse).
- Meilleure solution de rechange (MESORE, en anglais BATNA) : ce que l''on fera si l''accord échoue. Plus elle est bonne, plus on est fort.
- Zone d''accord possible : intervalle entre le prix maximal de l''acheteur et le prix minimal du vendeur.
- Monnaie d''échange : concessions peu coûteuses pour soi mais précieuses pour l''autre (délai de paiement, livraison gratuite, formation).
- Règle : ne jamais concéder sans contrepartie (« Si je baisse le prix, vous commandez quel volume ? »).

Exemple. Sénégal Froid Services, entreprise fictive de Dakar, vend une chambre froide. Son prix plancher est 4 200 000 FCFA. L''acheteur, une coopérative de pêcheurs, est prêt à payer au plus 4 800 000 FCFA. Zone d''accord = 4 800 000 − 4 200 000 = 600 000 FCFA. Tout prix entre ces deux bornes est acceptable pour les deux ; la négociation détermine qui capte la plus grande part de ces 600 000 FCFA.

## 7. Calculs commerciaux

Impact d''une remise. Un ventilateur est vendu 10 000 FCFA HT et coûte 7 000 FCFA. Marge unitaire = 3 000 FCFA. Le vendeur en vend 300 par mois : marge totale = 900 000 FCFA. S''il accorde une remise de 10 %, le prix devient 9 000 FCFA et la marge unitaire 2 000 FCFA. Pour garder 900 000 FCFA de marge, il faut vendre 900 000 / 2 000 = 450 unités, soit 50 % de ventes en plus. Une petite remise exige souvent une forte hausse des volumes.

Ratios d''activité. Un commercial fait 80 visites, remet 30 devis et signe 12 ventes pour un chiffre d''affaires de 5 400 000 FCFA. Taux de transformation des visites = 12 / 80 × 100 = 15 %. Taux de transformation des devis = 12 / 30 × 100 = 40 %. Panier moyen = 5 400 000 / 12 = 450 000 FCFA.

## Points clés

- Sept étapes : préparation, contact, découverte, argumentation, objections, conclusion, suivi.
- SONCAS pour découvrir, CAP pour argumenter.
- Une objection est une demande d''information ; on écoute, reformule, répond, vérifie.
- En négociation : MESORE, zone d''accord, jamais de concession sans contrepartie.

## Exercices pratiques

- Exercice 1. Associez une motivation SONCAS à chaque phrase : « Je ne veux pas de panne » ; « Je veux le dernier modèle » ; « Combien je vais économiser ? »
- Exercice 2. Rédigez un argument CAP pour un panneau solaire vendu à un boutiquier de Kolda.
- Exercice 3. Un fournisseur fictif de climatiseurs vend 25 000 FCFA HT un kit d''installation qui lui coûte 18 000 FCFA. Il accorde une remise de 5 %. Calculez la nouvelle marge unitaire et la hausse des ventes nécessaire pour maintenir la marge totale.
- Exercice 4. Un acheteur est prêt à payer au plus 2 750 000 FCFA ; le vendeur ne descendra pas sous 2 500 000 FCFA. Calculez la zone d''accord. Que se passe-t-il si le prix plancher du vendeur monte à 2 900 000 FCFA ?
- Exercice 5. Cas pratique. Baobab Équipements, PME fictive de Thiès, vend des moulins à mil. Une association de femmes transformatrices veut acheter trois moulins mais exige 15 % de remise. Préparez la négociation : objectifs, MESORE, monnaies d''échange, contreparties à demander.

## Corrigé

- Exercice 1. Sécurité ; Nouveauté ; Argent.
- Exercice 2. Caractéristique : panneau de 200 watts avec batterie. Avantage : la boutique reste éclairée et le réfrigérateur fonctionne pendant les coupures, donc moins de pertes. Preuve : démonstration sur place et témoignage d''un commerçant voisin équipé.
- Exercice 3. Marge initiale = 25 000 − 18 000 = 7 000 FCFA. Prix remisé = 25 000 × 0,95 = 23 750 FCFA ; nouvelle marge = 5 750 FCFA. Volume nécessaire = 7 000 / 5 750 = 1,217 fois le volume initial, soit environ 21,7 % de ventes en plus.
- Exercice 4. Zone d''accord = 2 750 000 − 2 500 000 = 250 000 FCFA. Si le plancher monte à 2 900 000 FCFA, il dépasse le maximum de l''acheteur : il n''y a plus de zone d''accord. Il faut alors élargir la négociation (autre modèle, paiement échelonné, services) ou constater l''échec.
- Exercice 5. Objectifs : ouverture à 3 % de remise, objectif 6 %, point de rupture 9 %. MESORE de l''entreprise : vendre ces moulins à d''autres clients en saison de récolte ; MESORE de l''association : un concurrent moins cher mais sans service. Monnaies d''échange : formation des utilisatrices, livraison et installation, pièces d''usure offertes, paiement en deux fois. Contreparties : commande ferme de trois moulins, acompte, témoignage et recommandation auprès d''autres groupements.', 'texte', 60, false, 40
from public.courses c where c.slug = 'lic-mkt-l1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Techniques de vente et négociation commerciale : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Sujet type d''examen de Licence 1 en Marketing et commerce (corrigé)', '## Présentation

Ce sujet d''entraînement n''est pas un sujet officiel. Il reproduit le format fréquent d''un examen semestriel de trois heures combinant plusieurs matières. Le barème est indicatif, non officiel. Calculatrice non programmable autorisée.

## Le sujet

Dossier 1 – Fondamentaux du marketing (7 points)

Salam Biscuits SA, entreprise fictive de Rufisque, fabrique des biscuits. Le marché national des biscuits est estimé à 12 000 millions de FCFA. Salam Biscuits réalise 1 800 millions ; son principal concurrent, leader, 4 200 millions.

- 1.1 Calculez la part de marché de Salam Biscuits, celle du leader et la part de marché relative de Salam Biscuits. (2 points)
- 1.2 L''entreprise veut lancer un biscuit enrichi en céréales locales pour les enfants scolarisés. Proposez deux critères de segmentation et une stratégie de ciblage. (2 points)
- 1.3 Proposez un positionnement et un mix 4P cohérent. (3 points)

Dossier 2 – Comportement du consommateur (6 points)

Une enquête auprès de mères de famille donne les poids des critères d''achat d''un biscuit : prix 0,3 ; valeur nutritive 0,5 ; goût 0,2. Notes sur 10 : biscuit Salam (prix 7, nutrition 8, goût 6) ; biscuit concurrent (prix 8, nutrition 5, goût 9).

- 2.1 Calculez le score d''attitude de chaque biscuit et concluez. (3 points)
- 2.2 Identifiez les rôles d''achat lorsque l''enfant réclame le biscuit vu à la télévision. (1 point)
- 2.3 Citez deux freins possibles à l''achat du nouveau biscuit et une action pour chacun. (2 points)

Dossier 3 – Vente et négociation (7 points)

Le commercial de Salam Biscuits visite des grossistes. Le paquet est vendu 1 200 FCFA HT aux grossistes pour un coût de 900 FCFA. Un grossiste de Kaolack commande habituellement 2 000 paquets par mois et demande une remise de 5 %.

- 3.1 Calculez la marge mensuelle actuelle réalisée sur ce grossiste et celle après remise à volume constant. (2 points)
- 3.2 Combien de paquets faut-il vendre pour garder la même marge ? (1 point)
- 3.3 Proposez trois contreparties à demander au grossiste. (2 points)
- 3.4 Rédigez une réponse à l''objection « Votre concurrent me fait de meilleurs prix ». (2 points)

## Corrigé détaillé

Dossier 1

- 1.1 PDM Salam = 1 800 / 12 000 × 100 = 15 %. PDM leader = 4 200 / 12 000 × 100 = 35 %. PDM relative = 1 800 / 4 200 = 0,43. Salam Biscuits est un challenger qui vend moins de la moitié du leader.
- 1.2 Critères : âge des enfants (sociodémographique) et avantage recherché par les parents (comportemental : nutrition contre plaisir). Stratégie : marketing concentré sur les parents soucieux de nutrition d''enfants de 6 à 12 ans en zone urbaine, segment accessible par les écoles et les boutiques de quartier.
- 1.3 Positionnement : « le biscuit qui nourrit vraiment, fait avec nos céréales ». Produit : biscuits au mil et au fonio, petits paquets individuels pour le goûter, valeurs nutritionnelles affichées. Prix : petit format accessible, proche des biscuits ordinaires. Distribution : boutiques de quartier, abords des écoles via les grossistes, supermarchés. Communication : radio locale et réseaux sociaux à destination des mères, dégustations dans les écoles avec l''accord des directions.

Dossier 2

- 2.1 Salam = 0,3 × 7 + 0,5 × 8 + 0,2 × 6 = 2,1 + 4,0 + 1,2 = 7,3. Concurrent = 0,3 × 8 + 0,5 × 5 + 0,2 × 9 = 2,4 + 2,5 + 1,8 = 6,7. Salam est préféré grâce au critère le plus important (nutrition) : il doit communiquer sur ce point.
- 2.2 Initiateur : l''enfant. Décideur et acheteuse : la mère (souvent). Utilisateur : l''enfant. Influenceurs possibles : publicité, enseignants, autres parents.
- 2.3 Frein 1 : doute sur le goût (« les céréales, les enfants n''aiment pas »), levé par des dégustations gratuites. Frein 2 : méfiance envers une marque nouvelle, levée par l''affichage d''un contrôle qualité et des témoignages de parents.

Dossier 3

- 3.1 Marge unitaire = 1 200 − 900 = 300 FCFA ; marge mensuelle = 300 × 2 000 = 600 000 FCFA. Après remise : prix = 1 200 × 0,95 = 1 140 FCFA ; marge unitaire = 240 FCFA ; marge mensuelle = 240 × 2 000 = 480 000 FCFA, soit 120 000 FCFA de moins.
- 3.2 Quantité nécessaire = 600 000 / 240 = 2 500 paquets, soit 25 % de plus.
- 3.3 Contreparties : engagement de volume (au moins 2 500 paquets par mois), mise en avant des produits Salam dans le magasin, paiement comptant ou à délai réduit.
- 3.4 « Je comprends que le prix compte pour vous. Pour comparer, parlons-nous du même produit et des mêmes conditions de livraison ? Nos biscuits tournent vite grâce à la demande des écoles, nous livrons chaque semaine sans minimum, et nous reprenons les paquets abîmés. Au final, c''est votre marge par mètre de rayon qui compte. »

## Exercices pratiques

- Exercice 1. Vrai ou faux : « La part de marché relative d''un leader est toujours supérieure à 1. »
- Exercice 2. Donnez la différence entre marketing différencié et marketing concentré en une phrase.
- Exercice 3. Un vendeur réalise 9 ventes sur 60 visites. Calculez son taux de transformation.
- Exercice 4. Citez les trois P ajoutés pour les services.
- Exercice 5. Qu''est-ce que la dissonance cognitive ?

## Corrigé

- Exercice 1. Vrai si elle est calculée par rapport au premier concurrent : le leader vend plus que lui, donc le rapport dépasse 1 (sauf égalité parfaite, où il vaut 1).
- Exercice 2. Le différencié propose une offre adaptée à chacun de plusieurs segments ; le concentré se consacre à un seul segment.
- Exercice 3. 9 / 60 × 100 = 15 %.
- Exercice 4. Personnel, processus, preuve physique.
- Exercice 5. C''est le doute ou l''inconfort ressenti après un achat important, quand le client se demande s''il a fait le bon choix ; le vendeur le réduit par le suivi, la garantie et la confirmation des avantages.', 'texte', 60, false, 50
from public.courses c where c.slug = 'lic-mkt-l1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Sujet type d''examen de Licence 1 en Marketing et commerce (corrigé)');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Fondamentaux du marketing', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : étudiants de Licence 1 en marketing, commerce, gestion.
- Objectifs : distinguer besoin, désir et demande ; analyser un marché et calculer parts de marché et taux de pénétration ; mener une démarche segmentation-ciblage-positionnement ; construire un mix 4P ou 7P cohérent.
- Matériel : tableau ou diaporama, carte perceptuelle vierge, calculatrice.
- Prérequis : leçon « Fondamentaux du marketing : l''essentiel pour l''examen ».

## Déroulé minuté

## 00:00 – 05:00 · Accueil et objectifs

Bonjour à toutes et à tous, et bienvenue dans ce cours vidéo sur les fondamentaux du marketing. Dans une heure et demie, vous serez capables de répondre aux trois grandes questions que pose tout examen de première année : qu''est-ce que le marketing, comment analyser un marché, et comment construire une offre cohérente pour une cible précise. Notre fil rouge sera Teranga Lait, une laiterie fictive de Thiès qui fabrique des yaourts.

Visuel : diapositive titre et plan en six parties : définitions, marché, indicateurs, segmentation-ciblage-positionnement, mix, exercices.

## 05:00 – 15:00 · Le marketing n''est pas la publicité

Commençons par une question que je vous pose souvent en amphithéâtre : si je vous dis « marketing », à quoi pensez-vous ? La plupart répondent « publicité ». C''est une partie, mais une petite partie. Le marketing, c''est d''abord écouter le marché, comprendre ce dont les clients ont besoin, concevoir une offre adaptée, fixer un prix, la rendre disponible, puis la faire connaître. La publicité arrive à la fin.

Prenons trois mots. Le besoin, c''est le manque : j''ai faim. Le désir, c''est la forme culturelle de la réponse : j''ai envie d''un yaourt frais, d''un thiakry ou d''un pain au chocolat. La demande, c''est le désir solvable : j''ai 300 francs en poche et j''achète le yaourt. Notez bien : le marketing ne crée pas le besoin de manger, mais il oriente fortement les désirs et stimule la demande. C''est une excellente problématique de dissertation.

Question à poser : donnez un exemple où le désir existe mais pas la demande. Réponse attendue : un étudiant qui rêve d''un ordinateur récent mais n''a pas les moyens de l''acheter.

## 15:00 – 25:00 · Le marché et ses niveaux

Le marché, pour un marketeur, ce n''est pas seulement un lieu comme Sandaga ou Tilène. C''est l''ensemble des clients actuels et potentiels, des concurrents et des intermédiaires. Pour Teranga Lait, le marché principal, ce sont les yaourts. Le marché environnant, ce sont les substituts : lait caillé vendu en sachet, jus locaux. Le marché générique, c''est le besoin de dessert et de boisson lactée. Le marché support, ce sont les réfrigérateurs : sans froid, pas de yaourt.

Visuel : quatre cercles concentriques, avec au centre le marché principal.

Ensuite, les consommateurs. Les consommateurs actuels achètent déjà. Les non-consommateurs relatifs pourraient acheter : ils ne le font pas par manque d''information, de moyens ou de disponibilité du produit. Les non-consommateurs absolus n''achèteront jamais, par exemple les personnes allergiques au lait. Marché potentiel = consommateurs actuels + non-consommateurs relatifs. Retenez cette formule, elle tombe souvent.

## 25:00 – 40:00 · Les indicateurs : exercices commentés

Passons aux calculs. Le marché régional du yaourt pèse 2 400 millions de francs. Teranga Lait fait 360 millions. Le leader fait 840 millions.

Part de marché de Teranga Lait : 360 divisé par 2 400, multiplié par 100, égale 15 %. Part du leader : 840 sur 2 400, soit 35 %. Part de marché relative de Teranga Lait : 360 divisé par 840, égale 0,43. Attention à l''erreur classique : la part relative n''est pas en pourcentage, c''est un rapport. Inférieure à 1, l''entreprise n''est pas leader.

Et le leader, quelle est sa part relative ? On la calcule par rapport à son premier concurrent. Si le deuxième acteur du marché est Teranga Lait, elle vaut 840 sur 360, soit 2,33. Le leader vend plus de deux fois plus que son suivant.

Taux de pénétration : sur 50 000 ménages de la zone, 18 000 achètent du yaourt au moins une fois par mois. 18 000 sur 50 000 égale 36 %. Interprétation : il reste un réservoir de 32 000 ménages, dont une partie de non-consommateurs relatifs à conquérir.

Exercice à faire en pause courte : le marché du jus local à Saint-Louis pèse 3 600 millions ; Bissap Ndar fait 540 millions, le leader 1 260 millions. Calculez. Correction : 15 %, 35 %, et 0,43. Vous remarquez que ce sont les mêmes proportions que Teranga Lait : c''est volontaire, pour vérifier que vous maîtrisez la méthode et non les chiffres.

## 40:00 – 45:00 · Quiz interactif

Petit quiz, mettez la vidéo en pause et répondez.

- Question 1 : la part de marché relative se calcule par rapport à quoi ? Réponse : par rapport aux ventes du leader, ou du premier concurrent si l''on est soi-même leader.
- Question 2 : un ménage qui ne boit pas de lait pour raison médicale est-il un non-consommateur relatif ou absolu ? Réponse : absolu.
- Question 3 : vrai ou faux, le marketing commence par la publicité ? Réponse : faux, il commence par l''étude des besoins.

## 45:00 – 1:00:00 · Segmenter, cibler, positionner

Visuel : trois marches d''escalier avec les mots segmenter, cibler, positionner.

Segmenter, c''est découper le marché en groupes homogènes. Teranga Lait peut segmenter par âge : les enfants pour le goûter, les jeunes actifs pour un en-cas, les familles pour le dessert. Elle peut aussi segmenter par zone géographique, par revenu, ou par occasion d''usage, comme les cérémonies familiales où l''on sert beaucoup de desserts lactés. Un segment utile est mesurable, accessible, rentable et différent des autres.

Cibler, c''est choisir. Trois stratégies. Indifférenciée : un seul yaourt pour tout le monde. Différenciée : un yaourt à boire pour les jeunes, un pot familial pour les mères, un petit format pour les enfants. Concentrée : uniquement les familles de Thiès et de Mbour. Pour une PME comme Teranga Lait, la stratégie concentrée est souvent la plus raisonnable : budget limité, connaissance fine du client, réputation de spécialiste.

Positionner, c''est décider de l''image que l''on veut avoir dans l''esprit de la cible face aux concurrents. Dessinons une carte perceptuelle : axe horizontal « industriel » à gauche, « traditionnel » à droite ; axe vertical « prix bas » en bas, « prix élevé » en haut. Les grandes marques importées sont en haut à gauche. Teranga Lait se place en bas à droite : traditionnel et accessible. Son positionnement : « le yaourt frais de la région, au goût d''autrefois, à prix familial ». Simple, crédible, différent, attractif.

Question à poser : quel risque si Teranga Lait se positionne aussi « luxe » ? Réponse : incohérence avec sa cible familiale et perte de crédibilité.

## 1:00:00 – 1:15:00 · Le mix : du 4P au 7P

Le mix, c''est la traduction concrète du positionnement. Pour un produit, quatre P.

Produit : yaourt nature et sucré, au lait local, pot de 500 grammes pour la famille, emballage aux couleurs régionales. Prix : légèrement inférieur aux marques importées, pour coller au mot « familial ». Place : boutiques de quartier équipées de réfrigérateurs, supérettes, marchés hebdomadaires, avec une tournée de livraison réfrigérée. Promotion : radio communautaire en wolof et en sérère, dégustations les jours de marché, page sur les réseaux sociaux avec recettes.

Pour un service, trois P supplémentaires. Imaginez que Teranga Lait ouvre un bar laitier à Thiès. Personnel : serveurs accueillants et formés à l''hygiène. Processus : commande rapide, paiement par mobile money, temps d''attente court. Preuve physique : salle propre, vitrine réfrigérée visible, tenue des serveurs. Le client d''un service ne peut pas toucher le service avant de l''acheter : ces éléments le rassurent.

La règle d''or, je la répète : cohérence. Chaque P doit servir le même positionnement.

## 1:15:00 – 1:25:00 · Correction commentée d''un cas

Cas : Kër Coiffure, salon fictif de Ziguinchor, veut cibler les femmes actives. Je vous donne la correction en direct. Positionnement : « salon moderne et rapide ». Produit : coupes, tresses express, soins rapides. Prix : forfaits clairs affichés. Place : près des bureaux, ouvert tôt et après la journée de travail. Promotion : réseaux sociaux avec photos avant-après. Personnel : coiffeuses ponctuelles. Processus : rendez-vous par message. Preuve physique : salon climatisé et carte de fidélité. Ce qui fait gagner des points : la justification de chaque P par rapport à la cible « femmes actives », qui manquent de temps.

## 1:25:00 – 1:30:00 · Synthèse et évaluation finale

Retenez : besoin, désir, demande ; PDM et PDM relative ; segmenter, cibler, positionner ; 4P ou 7P cohérents. Voici cinq questions d''évaluation.

- Question 1 : définissez la demande. Réponse : un désir accompagné du pouvoir d''achat nécessaire.
- Question 2 : une entreprise vend 600 millions sur un marché de 4 000 millions. Sa part de marché ? Réponse : 15 %.
- Question 3 : citez quatre critères de segmentation de familles différentes. Réponse : âge, région, style de vie, fréquence d''achat.
- Question 4 : quels sont les trois P ajoutés pour les services ? Réponse : personnel, processus, preuve physique.
- Question 5 : citez deux qualités d''un bon positionnement. Réponse : simple et crédible (ou différent, attractif).

Merci pour votre attention, et rendez-vous dans le prochain cours vidéo.', 'video', 90, false, 60
from public.courses c where c.slug = 'lic-mkt-l1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Fondamentaux du marketing');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Comportement du consommateur', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : étudiants de Licence 1 en marketing, commerce, gestion.
- Objectifs : expliquer motivations et freins ; décrire le processus d''achat et les rôles d''achat ; analyser les facteurs d''influence ; calculer un score d''attitude multi-attributs et un taux de réachat.
- Matériel : tableau ou diaporama, grille vierge de score multi-attributs, calculatrice.
- Prérequis : leçon « Comportement du consommateur : l''essentiel pour l''examen ».

## Déroulé minuté

## 00:00 – 05:00 · Accueil et objectifs

Bonjour et bienvenue. Aujourd''hui, nous entrons dans la tête du client. Pourquoi achète-t-il ? Comment décide-t-il ? Qui l''influence ? Et comment mesurer son attitude envers une marque ? À la fin de la séance, vous saurez traiter les questions de cours et les exercices chiffrés de cette matière. Notre personnage fil rouge est Fatou, étudiante à Dakar, qui doit remplacer son téléphone.

Visuel : diapositive titre, photo d''illustration d''une rue commerçante, plan en cinq parties.

## 05:00 – 15:00 · Besoins et motivations

Commençons par Maslow. Sa pyramide compte cinq étages : besoins physiologiques, sécurité, appartenance, estime, accomplissement. Elle sert à classer les besoins, mais attention à sa limite, que les correcteurs aiment voir : les gens ne montent pas les étages dans l''ordre. On voit tous des personnes aux revenus modestes acheter un bel habit pour une cérémonie, besoin d''estime et d''appartenance, avant d''autres dépenses de base. C''est rationnel socialement.

Ensuite, les motivations. Trois familles. Hédonistes : le plaisir pour soi, comme une glace à la plage de Ngor. Oblatives : faire plaisir aux autres, comme offrir un boubou à son père pour la Korité. D''autoexpression : montrer qui l''on est, par exemple porter les baskets que portent les artistes que l''on admire.

Face aux motivations, il y a les freins : peurs (risque financier, risque de santé, risque social), inhibitions (gêne de demander un produit intime) et manque d''information. Le rôle du marketing est d''augmenter les motivations et de réduire les freins.

Question à poser : quel frein principal pour l''achat d''un produit financier comme une assurance ? Réponse : la peur de payer sans rien recevoir, donc un manque de confiance.

Comment lever ce frein ? Prenons une mutuelle de santé fictive de Kaolack. Elle peut afficher des témoignages d''adhérents remboursés, publier ses délais de remboursement, et faire présenter l''offre par une personne respectée dans le quartier, par exemple la présidente d''une association de femmes. Chaque action répond directement à la peur identifiée. Dans vos copies, faites toujours ce lien explicite entre le frein et l''action : c''est ce que le correcteur cherche.

## 15:00 – 30:00 · Le processus de décision d''achat

Visuel : flèche en cinq étapes.

Suivons Fatou. Étape 1, la reconnaissance du besoin : son téléphone tombe et l''écran se casse. Étape 2, la recherche d''information : elle demande à sa cousine, regarde des vidéos de tests, passe dans les boutiques du centre-ville. Étape 3, l''évaluation : elle compare le prix, l''autonomie, l''appareil photo, le service après-vente. Étape 4, la décision : choix du modèle, mais aussi du vendeur, du moment et du mode de paiement. Étape 5, l''après-achat : si le téléphone tient ses promesses, elle sera satisfaite et le recommandera ; sinon, elle ressentira une dissonance cognitive, ce doute désagréable qui suit un achat important.

Ce processus est long pour un achat impliquant, comme un téléphone, une moto ou un terrain. Il est très court pour un achat routinier comme du pain ou un sachet d''eau. Retenez le lien : plus l''implication est forte, plus la recherche d''information est longue.

Les rôles d''achat maintenant : initiateur, influenceur, décideur, acheteur, utilisateur. Dans beaucoup de familles, ce ne sont pas les mêmes personnes. Un vendeur de fournitures scolaires doit séduire l''enfant qui réclame, rassurer la mère qui achète, et convaincre le père qui finance. Bien identifier les rôles, c''est savoir à qui parler.

## 30:00 – 40:00 · Les facteurs d''influence

Quatre groupes de facteurs. Culturels : la culture, les sous-cultures religieuses et régionales, les classes sociales. Au Sénégal, les grands moments religieux et familiaux font varier la demande de façon très nette : moutons, tissus, denrées alimentaires, transport. Sociaux : la famille, les groupes de référence comme les tontines et les associations, les leaders d''opinion. Personnels : âge, cycle de vie, revenu, profession. Psychologiques : motivation, perception, apprentissage, croyances et attitudes.

Exemple d''application : une marque fictive de riz parfumé local veut se développer. Facteur culturel : le riz est au cœur du repas familial, donc la qualité gustative prime. Facteur social : les femmes échangent des avis lors des tontines. Facteur personnel : les familles nombreuses préfèrent les grands sacs. Facteur psychologique : certains associent encore « local » à « moins bon ». Chaque facteur suggère une action : dégustations, sacs de différentes tailles, communication sur la qualité.

Insistez dans vos copies sur le bouche-à-oreille. Dans un environnement où la confiance passe par les relations, l''avis d''un proche vaut souvent plus qu''une publicité. Aujourd''hui, il circule aussi par les groupes de messagerie et les vidéos courtes.

## 40:00 – 45:00 · Quiz interactif

Mettez en pause et répondez.

- Question 1 : offrir un cadeau à sa mère, c''est quelle motivation ? Réponse : oblative.
- Question 2 : à quelle étape du processus apparaît la dissonance cognitive ? Réponse : après l''achat.
- Question 3 : un achat de pain quotidien est-il fortement impliquant ? Réponse : non, il est routinier.

## 45:00 – 1:05:00 · Le score multi-attributs : exercice commenté

Visuel : tableau à quatre lignes (critères) et trois colonnes (téléphones A, B, C), plus une colonne de poids.

L''attitude est une évaluation durable d''un objet. Pour la mesurer, on utilise un modèle multi-attributs compensatoire. Le score global est la somme des poids multipliés par les notes.

Fatou donne les poids suivants : prix 0,4 ; autonomie 0,3 ; appareil photo 0,2 ; service après-vente 0,1. Premier réflexe : vérifier que les poids totalisent 1. 0,4 plus 0,3 plus 0,2 plus 0,1 égale 1. Parfait.

Téléphone A : notes 8, 6, 5, 7. Calculons : 0,4 fois 8 égale 3,2 ; 0,3 fois 6 égale 1,8 ; 0,2 fois 5 égale 1,0 ; 0,1 fois 7 égale 0,7. Total : 6,7.

Téléphone B : notes 5, 8, 8, 6. 0,4 fois 5 égale 2,0 ; 0,3 fois 8 égale 2,4 ; 0,2 fois 8 égale 1,6 ; 0,1 fois 6 égale 0,6. Total : 6,6.

Téléphone C : notes 7, 7, 6, 4. 2,8 plus 2,1 plus 1,2 plus 0,4 égale 6,5.

Conclusion : A l''emporte, mais de très peu. C''est le prix, critère le plus lourd, qui fait la différence. Que peut faire le fabricant de B ? Deux leviers. Agir sur les notes : baisser le prix ou proposer un paiement échelonné. Agir sur les poids : convaincre Fatou que l''appareil photo est essentiel pour ses réseaux sociaux. C''est exactement ce que fait la publicité.

Deuxième exercice, deux réfrigérateurs X et Y. Poids : prix 0,5 ; consommation 0,3 ; garantie 0,2. X a 6, 9, 7 ; Y a 8, 6, 6. X égale 3,0 plus 2,7 plus 1,4, soit 7,1. Y égale 4,0 plus 1,8 plus 1,2, soit 7,0. X gagne grâce à sa faible consommation électrique, argument à mettre en avant.

Dernier point : il existe des modèles non compensatoires. Dans le modèle conjonctif, on élimine toute marque sous un seuil : « en dessous de 6 en autonomie, je n''achète pas ». Avec ce seuil, le téléphone A, noté 6, passe de justesse.

## 1:05:00 – 1:18:00 · Satisfaction, fidélité et taux de réachat

La satisfaction naît de la comparaison entre ce que le client attendait et ce qu''il perçoit. Si la performance dépasse les attentes, il est ravi. Si elle est inférieure, il est déçu. Conséquence pratique : ne promettez jamais plus que ce que vous pouvez tenir.

La fidélité, c''est racheter avec une attitude favorable. Attention à l''inertie : un client qui rachète faute de choix n''est pas vraiment fidèle ; il partira à l''arrivée d''un concurrent.

Mesure simple : le taux de réachat. Une boulangerie fictive de Kaolack a 1 200 clients en janvier ; 780 reviennent en février. 780 divisé par 1 200, fois 100, égale 65 %. Un salon de thé de Saint-Louis : 390 clients revenus sur 600, soit également 65 %. Pour améliorer ce taux : carte de fidélité, accueil personnalisé, nouveautés régulières.

## 1:18:00 – 1:26:00 · Correction commentée d''un cas

Une marque fictive de couches pour bébés se vend mal à Dakar malgré un prix bas. Les mères craignent une qualité médiocre. Analyse : c''est un frein lié au risque perçu, et le prix bas renforce le doute. Actions : échantillons gratuits en maternité, avis de sages-femmes, garantie de remboursement. Ce qui fait la différence dans la copie : relier explicitement chaque action au frein identifié.

## 1:26:00 – 1:30:00 · Synthèse et évaluation finale

Retenez : motivations contre freins, cinq étapes du processus, rôles d''achat, quatre familles de facteurs, score multi-attributs et taux de réachat.

- Question 1 : citez les cinq étages de la pyramide de Maslow. Réponse : physiologiques, sécurité, appartenance, estime, accomplissement.
- Question 2 : qu''est-ce qu''un non-consommateur absolu ? Question piège, c''est une notion du chapitre marché ; réponse : une personne qui ne consommera jamais le produit.
- Question 3 : poids 0,6 et 0,4 ; notes 5 et 10. Score ? Réponse : 3 + 4 = 7.
- Question 4 : citez deux rôles d''achat. Réponse : initiateur et décideur (ou influenceur, acheteur, utilisateur).
- Question 5 : 450 clients sur 600 rachètent. Taux de réachat ? Réponse : 75 %.

Merci et à bientôt pour le cours sur la vente et la négociation.', 'video', 90, false, 70
from public.courses c where c.slug = 'lic-mkt-l1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Comportement du consommateur');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Techniques de vente et négociation commerciale', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : étudiants de Licence 1 en marketing, commerce, gestion.
- Objectifs : maîtriser les étapes de l''entretien de vente ; utiliser SONCAS et CAP ; traiter les objections ; préparer une négociation ; calculer l''impact d''une remise et des ratios commerciaux.
- Matériel : tableau ou diaporama, fiche de préparation de négociation, calculatrice, deux volontaires pour un jeu de rôle.
- Prérequis : leçon « Techniques de vente et négociation commerciale : l''essentiel pour l''examen ».

## Déroulé minuté

## 00:00 – 05:00 · Accueil et objectifs

Bonjour à toutes et à tous. Ce cours est le plus pratique de l''année : la vente s''apprend en vendant. À la fin, vous saurez dérouler un entretien de vente complet, préparer une négociation et calculer ce que coûte réellement une remise. Notre fil rouge : Sénégal Froid Services, une entreprise fictive de Dakar qui vend des congélateurs et des chambres froides.

Visuel : diapositive titre et l''échelle des sept étapes de la vente.

## 05:00 – 15:00 · Préparer et prendre contact

Un bon entretien se gagne avant de commencer. Préparer, c''est connaître son produit par cœur, ses concurrents, et son client : que fait-il, qu''a-t-il acheté avant, quels sont ses problèmes ? C''est aussi fixer un objectif réaliste pour la visite et prévoir ses outils : catalogue, tarifs, échantillons, bon de commande.

La prise de contact est rapide mais décisive. On parle de la règle des quatre vingt : vingt secondes, vingt mots, vingt gestes, vingt centimètres du visage. Au Sénégal, les salutations ont une grande importance : les écourter peut être perçu comme un manque de respect. Prenez le temps de saluer, de vous présenter, et d''expliquer le but de votre visite.

Un point de méthode pour l''examen : on vous demande souvent de rédiger une fiche de préparation de visite. Elle comporte l''identité du client, son historique d''achats, l''objectif de la visite (par exemple obtenir une commande d''essai), les arguments prévus, les objections probables avec leurs réponses, et les documents à emporter. Une fiche bien structurée vaut des points faciles.

Question à poser : pourquoi fixer un objectif précis pour chaque visite ? Réponse attendue : pour pouvoir mesurer le résultat et préparer la visite suivante, même si le client n''achète pas aujourd''hui.

## 15:00 – 30:00 · Découvrir avec SONCAS

La découverte est l''étape la plus importante et la plus négligée. Le vendeur débutant parle ; le bon vendeur questionne. On alterne questions ouvertes, « Comment conservez-vous votre poisson aujourd''hui ? », et questions fermées, « Avez-vous des coupures d''électricité fréquentes ? ».

On écoute pour repérer les motivations SONCAS. Sécurité : « Je ne veux pas perdre ma marchandise. » Orgueil : « Je veux le plus grand modèle du quartier. » Nouveauté : « Qu''est-ce qui existe de nouveau ? » Confort : « Je veux quelque chose de simple à utiliser. » Argent : « Combien ça consomme ? » Sympathie : « Je vous fais confiance, vous connaissez mon frère. »

On termine par la reformulation : « Si je vous ai bien comprise, vous cherchez un congélateur qui garde le froid pendant les coupures et qui consomme peu, c''est bien cela ? » Le client dit oui : vous avez gagné le droit d''argumenter.

## 30:00 – 40:00 · Argumenter avec CAP

Visuel : trois colonnes, caractéristique, avantage, preuve.

Pour la poissonnière de Mbour, motivations sécurité et argent. Caractéristique : isolation renforcée. Avantage : le froid tient plus de vingt heures pendant une coupure, donc pas de poisson perdu. Preuve : le test du fabricant et le témoignage d''une autre commerçante. Deuxième argument. Caractéristique : compresseur basse consommation. Avantage : une facture d''électricité plus faible chaque mois. Preuve : la fiche technique et une simulation de facture.

Erreur à éviter : réciter toutes les caractéristiques. Ne choisissez que celles qui répondent aux motivations découvertes.

Exercice rapide à faire avec moi : un boutiquier de Kolda, motivation argent et sécurité, regarde un panneau solaire. Caractéristique : panneau de 200 watts avec batterie. Avantage : la boutique reste éclairée et le réfrigérateur fonctionne pendant les coupures, donc moins de produits perdus et des ventes le soir. Preuve : démonstration sur place et témoignage d''un commerçant voisin déjà équipé. Vous voyez que l''avantage est formulé dans le langage du client, pas dans celui de l''ingénieur.

## 40:00 – 45:00 · Quiz interactif

Mettez en pause et répondez.

- Question 1 : que signifie le A de SONCAS ? Réponse : argent.
- Question 2 : que signifie le P de CAP ? Réponse : preuve.
- Question 3 : quelle étape vient juste avant l''argumentation ? Réponse : la découverte, terminée par une reformulation.

## 45:00 – 58:00 · Objections et conclusion : jeu de rôle commenté

Visuel : liste des techniques de traitement des objections.

Une objection n''est pas un refus. Méthode : écouter, reformuler, répondre, vérifier. Jeu de rôle. La cliente dit : « C''est trop cher. » Mauvaise réponse : baisser immédiatement le prix. Bonne réponse par questionnement : « Trop cher par rapport à quoi, madame ? » Elle répond : « Par rapport au modèle d''à côté. » Réponse « oui, mais » : « Oui, il coûte plus cher à l''achat, mais il consomme moins et garde le froid deux fois plus longtemps ; en un an, vous récupérez la différence. » Vérification : « Est-ce que cela répond à votre inquiétude ? »

Autres techniques : le boomerang, qui transforme l''objection en argument ; le report, quand le prix est demandé trop tôt ; la preuve par la démonstration.

Conclure ensuite. Guettez les signaux d''achat : « Vous livrez à Mbour ? » « On peut payer en deux fois ? » Utilisez l''alternative : « Je vous livre mardi ou jeudi ? » Puis prenez congé en remerciant, confirmez la livraison, et notez la date de relance.

## 58:00 – 1:12:00 · Préparer une négociation

Visuel : fiche de préparation en cinq cases.

Sénégal Froid Services négocie une chambre froide avec une coopérative de pêcheurs. Case 1, objectifs : prix d''ouverture 5 000 000, objectif 4 600 000, prix plancher 4 200 000 francs. Case 2, la MESORE, la meilleure solution de rechange : si nous n''obtenons pas l''accord, nous avons un autre client intéressé. Celle de la coopérative : un concurrent plus lointain, sans service après-vente local. Case 3, la zone d''accord : la coopérative peut payer au plus 4 800 000. Zone d''accord égale 4 800 000 moins 4 200 000, soit 600 000 francs. Case 4, les monnaies d''échange : installation, formation, contrat d''entretien, paiement en trois fois. Case 5, les contreparties : acompte, engagement d''entretien, recommandation auprès d''autres coopératives.

Règle d''or : jamais de concession sans contrepartie. « Je peux faire un effort sur le prix si vous versez un acompte de 40 % à la commande. »

## 1:12:00 – 1:24:00 · Les calculs commerciaux : exercices corrigés

Exercice 1. Un ventilateur à 10 000 francs HT coûte 7 000 francs. Marge unitaire : 3 000. On en vend 300 par mois : 900 000 francs de marge. Remise de 10 % : prix 9 000, marge unitaire 2 000. Pour garder 900 000 de marge, il faut 900 000 divisé par 2 000, soit 450 ventilateurs. 50 % de plus ! Une remise de 10 % sur le prix fait perdre un tiers de la marge unitaire.

Exercice 2. Kit de climatisation à 25 000 francs, coût 18 000, remise de 5 %. Prix remisé 23 750, marge 5 750 au lieu de 7 000. Volume nécessaire : 7 000 divisé par 5 750, soit 1,217 fois le volume initial, environ 21,7 % de ventes en plus.

Exercice 3, les ratios. 80 visites, 30 devis, 12 ventes, 5 400 000 francs de chiffre d''affaires. Taux de transformation des visites : 12 sur 80, soit 15 %. Des devis : 12 sur 30, soit 40 %. Panier moyen : 5 400 000 divisé par 12, soit 450 000 francs. Interprétation : le commercial convertit bien ses devis, il doit surtout multiplier les visites qualifiées.

## 1:24:00 – 1:30:00 · Synthèse et évaluation finale

Retenez les sept étapes, SONCAS, CAP, la méthode écouter-reformuler-répondre-vérifier, la MESORE et la zone d''accord, et le coût réel des remises.

- Question 1 : citez les sept étapes de l''entretien de vente. Réponse : préparation, prise de contact, découverte, argumentation, traitement des objections, conclusion, prise de congé et suivi.
- Question 2 : que veut dire MESORE ? Réponse : meilleure solution de rechange en cas d''échec de la négociation.
- Question 3 : prix maximum acheteur 3 000 000, plancher vendeur 2 600 000. Zone d''accord ? Réponse : 400 000 francs.
- Question 4 : prix 2 000, coût 1 500, remise 10 %. Nouvelle marge unitaire ? Réponse : 1 800 − 1 500 = 300 francs au lieu de 500.
- Question 5 : quelle technique utilise « Je vous livre mardi ou jeudi ? » ? Réponse : la conclusion par l''alternative.

Merci pour votre participation, et bonne préparation de vos examens.', 'video', 90, false, 80
from public.courses c where c.slug = 'lic-mkt-l1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Techniques de vente et négociation commerciale');

-- Cours : Marketing et commerce Licence 2 : réussir ses examens
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'lic-mkt-l2', (select id from public.levels where name = 'Licence 2'), null, 'Marketing et commerce', 'Marketing et commerce Licence 2 : réussir ses examens', 'Préparation aux partiels et examens semestriels de deuxième année de Licence en marketing et commerce (Sénégal, espace UEMOA, système LMD). Trois matières clés : les études de marché (questionnaire, échantillonnage, analyse chiffrée des résultats), le marketing opérationnel (prix, marges, seuil de rentabilité, distribution, communication) et le marketing digital (réseaux sociaux, référencement, indicateurs de performance, mobile money et e-commerce en Afrique). Fiches, cas d''entreprises sénégalaises fictives, exercices corrigés aux calculs vérifiés, sujet type et trois cours vidéo de 1h30. Prérequis : les fondamentaux du marketing de Licence 1.', true, 382
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Réussir ses examens de Licence 2 en Marketing et commerce', '## Objectifs de la leçon

- Situer la deuxième année de Licence dans le parcours LMD et comprendre ce qui change par rapport à la première année.
- Identifier les trois matières clés de l''année et leurs exigences.
- Adapter sa méthode aux épreuves de Licence 2, plus chiffrées et plus appliquées.
- Organiser six semaines de révision efficaces.

## 1. La Licence 2 dans le système LMD

La Licence 2 correspond aux semestres 3 et 4 de la Licence. Comme en première année, chaque semestre regroupe des unités d''enseignement (UE) composées de matières, et chaque UE validée apporte des crédits. Le nombre de crédits, les coefficients, la place du contrôle continu et les règles de compensation et de rattrapage sont fixés par chaque établissement : consultez la maquette de votre filière et le règlement des études.

Ce qui change en Licence 2, c''est le niveau d''exigence. En première année, on vérifiait que vous connaissiez le vocabulaire : marché, segmentation, mix. En deuxième année, on vous demande de produire des outils : un questionnaire, un plan d''échantillonnage, un prix calculé, un seuil de rentabilité, un tableau de bord de campagne digitale. Les copies qui récitent sans calculer ni justifier plafonnent vite.

## 2. Les matières clés de l''année

- Études de marché : objectifs d''une étude, études documentaires, qualitatives et quantitatives, rédaction d''un questionnaire, méthodes d''échantillonnage, taille d''échantillon, analyse des résultats (tri à plat, tri croisé, moyenne, écart-type, intervalle de confiance, test du khi-deux).
- Marketing opérationnel : politique de prix (coûts, marges, coefficient multiplicateur, seuil de rentabilité, élasticité), politique de distribution (canaux, circuits, marges des intermédiaires), politique de communication (cibles, messages, médias, budget, coût pour mille contacts).
- Marketing digital : présence sur les réseaux sociaux, référencement naturel et payant, indicateurs de performance (taux de clic, taux de conversion, coût par clic, coût d''acquisition, retour sur dépenses publicitaires), mobile money et e-commerce en Afrique.

D''autres matières figurent souvent au programme : statistiques, comptabilité analytique, droit commercial, communication écrite, anglais des affaires, informatique de gestion. Elles sont utiles ici, notamment les statistiques pour les études de marché et les coûts pour la fixation des prix.

## 3. Les épreuves de Licence 2

- Exercice chiffré : taille d''échantillon, intervalle de confiance, prix de vente à partir d''un taux de marque, seuil de rentabilité, indicateurs digitaux. Présentez toujours : formule, application numérique, résultat avec unité, interprétation.
- Rédaction d''outil : écrire cinq questions d''un questionnaire, construire un plan de quotas, rédiger un brief de campagne.
- Cas pratique : une entreprise fictive souhaite lancer un produit ; vous devez proposer une étude, puis un mix chiffré.
- Questions de réflexion : « Les réseaux sociaux remplacent-ils la publicité traditionnelle ? » Introduction, problématique, plan, exemples.
- Dossier ou projet : réalisation d''une petite enquête de terrain en groupe, avec rapport et soutenance.

## 4. Méthode de travail

- Construisez un formulaire unique d''une ou deux pages avec toutes les formules de l''année : taille d''échantillon, intervalle de confiance, khi-deux, taux de marge et de marque, seuil de rentabilité, élasticité, coût pour mille, taux de clic, taux de conversion, coût d''acquisition, retour sur dépenses publicitaires.
- Pour chaque formule, inventez un exemple en FCFA et refaites-le de tête une semaine plus tard.
- Entraînez-vous à rédiger : un bon questionnaire ne s''improvise pas le jour de l''examen.
- Observez votre environnement : affiches, promotions dans les boutiques, publications sponsorisées sur votre téléphone. Ce sont des exemples réels à analyser (sans citer les marques comme modèles à copier).

Exemple de ligne de formulaire. Seuil de rentabilité en valeur = charges fixes / taux de marge sur coûts variables. Une entreprise fictive avec 36 000 000 FCFA de charges fixes et un taux de marge sur coûts variables d''un tiers doit réaliser 36 000 000 / (1/3) = 108 000 000 FCFA de chiffre d''affaires pour ne pas perdre d''argent.

## 5. Plan de révision sur six semaines

- Semaine 1 : bilan des cours et TD, constitution du formulaire, repérage des chapitres fragiles.
- Semaine 2 : études de marché. Questionnaire, échantillonnage, taille d''échantillon, traitement des résultats.
- Semaine 3 : marketing opérationnel, partie prix et seuil de rentabilité ; puis distribution.
- Semaine 4 : communication et marketing digital : indicateurs, campagnes, mobile money, e-commerce.
- Semaine 5 : deux sujets complets en temps limité, avec correction.
- Semaine 6 : reprise des erreurs, révision du formulaire, repos avant les épreuves.

## Points clés

- En Licence 2, on attend des outils et des calculs, pas seulement des définitions.
- Trois matières clés : études de marché, marketing opérationnel, marketing digital.
- Un formulaire personnel et des exemples en FCFA sont vos meilleurs alliés.
- Chaque calcul se termine par une phrase d''interprétation et, si possible, une décision.

## Exercices pratiques

- Exercice 1. Expliquez en trois phrases la différence d''exigence entre la Licence 1 et la Licence 2.
- Exercice 2. Une entreprise fictive a 18 000 000 FCFA de charges fixes et un taux de marge sur coûts variables de 30 %. Calculez son seuil de rentabilité en valeur.
- Exercice 3. Listez six formules que doit contenir votre formulaire et précisez la matière de chacune.
- Exercice 4. Cas pratique. Moussa, étudiant en Licence 2, connaît ses définitions mais perd des points sur les calculs et les cas. Il dispose de six semaines et peut travailler deux heures par jour en semaine. Proposez-lui un plan de travail détaillé.
- Exercice 5. Donnez un exemple d''action de marketing digital que vous avez observée au Sénégal (sans citer de marque) et analysez sa cible et son objectif.

## Corrigé

- Exercice 1. En Licence 1, on attend surtout la maîtrise du vocabulaire et des démarches de base. En Licence 2, on attend la production d''outils (questionnaire, plan de quotas, prix, budget) et des calculs exacts. La justification des choix et l''interprétation des résultats deviennent décisives.
- Exercice 2. Seuil de rentabilité = 18 000 000 / 0,30 = 60 000 000 FCFA de chiffre d''affaires.
- Exercice 3. Exemples : taille d''échantillon n = z² × p × (1 − p) / e² (études de marché) ; intervalle de confiance d''une proportion (études de marché) ; taux de marque = marge / prix de vente HT (marketing opérationnel) ; seuil de rentabilité = charges fixes / taux de marge sur coûts variables (marketing opérationnel) ; taux de clic = clics / impressions (marketing digital) ; coût d''acquisition = dépense / nombre de conversions (marketing digital).
- Exercice 4. Semaine 1 : formulaire et liste des exercices de TD ratés. Semaines 2 à 4 : chaque jour, trente minutes de fiche puis une heure trente d''exercices chiffrés, en suivant l''ordre études, prix et distribution, communication et digital. Le samedi, un cas pratique complet. Semaine 5 : deux sujets types chronométrés. Semaine 6 : reprise des erreurs et révision du formulaire. Il doit rédiger chaque calcul avec formule et interprétation.
- Exercice 5. Exemple : une pâtisserie de quartier publie des vidéos courtes de ses gâteaux le vendredi avec un numéro de commande par messagerie. Cible : familles et jeunes actifs du quartier qui préparent les fêtes du week-end. Objectif : générer des commandes directes et fidéliser. Indicateurs utiles : nombre de messages reçus, commandes, panier moyen.', 'texte', 45, true, 10
from public.courses c where c.slug = 'lic-mkt-l2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Réussir ses examens de Licence 2 en Marketing et commerce');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Études de marché : l''essentiel pour l''examen', '## Objectifs de la leçon

- Choisir le bon type d''étude selon le problème posé.
- Rédiger un questionnaire clair et sans biais.
- Choisir une méthode d''échantillonnage et calculer une taille d''échantillon.
- Analyser des résultats : tri à plat, moyenne, écart-type, intervalle de confiance, tri croisé et khi-deux.

## 1. Les types d''études

Une étude de marché collecte et analyse des informations pour éclairer une décision (lancer un produit, fixer un prix). On part toujours du problème à résoudre.

- Étude documentaire : exploitation de sources existantes (rapports publics, statistiques nationales, données internes, articles). Peu coûteuse, à faire en premier.
- Étude qualitative : entretiens individuels ou réunions de groupe sur un petit nombre de personnes, pour comprendre les motivations, les freins, le vocabulaire des clients. Résultats riches mais non généralisables.
- Étude quantitative : questionnaire administré à un échantillon représentatif, pour mesurer (combien, quelle proportion, quelle moyenne). Résultats chiffrés et extrapolables, dans une marge d''erreur.

Schéma décrit : un entonnoir. En haut, l''étude documentaire ; au milieu, le qualitatif qui fait émerger les hypothèses ; en bas, le quantitatif qui les mesure.

## 2. Le questionnaire

Un bon questionnaire est court, compréhensible par tous, neutre et ordonné. Structure conseillée :

- Introduction : qui mène l''enquête, objectif, durée, anonymat.
- Questions filtres : vérifier que la personne fait partie de la cible.
- Questions générales puis précises (technique de l''entonnoir).
- Questions d''identification à la fin : âge, sexe, quartier, profession, tranche de revenu.

Types de questions :

- Fermée unique ou multiple : « Achetez-vous du jus local en bouteille ? Oui / Non. »
- Échelle de Likert : « Je trouve le prix acceptable : pas du tout d''accord … tout à fait d''accord » (cinq niveaux).
- Échelle de notation : « Notez votre satisfaction de 1 à 5. »
- Ouverte : « Que faudrait-il améliorer ? »

Erreurs à éviter : question orientée (« Vous aimez sûrement notre délicieux jus ? »), question double (« Le jus est-il bon et pas cher ? »), vocabulaire technique, question trop indiscrète en début de questionnaire. Au Sénégal, pensez à la langue : le questionnaire peut être traduit en wolof ou dans d''autres langues nationales, et testé auprès de quelques personnes avant le lancement.

## 3. L''échantillonnage

- Méthodes probabilistes : chaque individu a une probabilité connue d''être tiré. Aléatoire simple (tirage au sort sur une liste), systématique (une personne sur k), stratifié (tirage dans chaque strate), par grappes (tirage de quartiers, puis enquête de tous les ménages tirés).
- Méthodes non probabilistes : quotas (l''échantillon reproduit la structure de la population sur quelques critères connus), méthode des itinéraires, échantillon de convenance. Très utilisées faute de listes exhaustives.

Exemple de quotas. Une enquête porte sur 500 personnes. La population de référence compte 52 % de femmes et 48 % d''hommes ; 30 % ont 18 à 24 ans, 45 % 25 à 39 ans, 25 % 40 ans et plus. Quotas : 260 femmes et 240 hommes ; 150, 225 et 125 personnes par tranche d''âge.

Taille d''échantillon pour estimer une proportion : n = z² × p × (1 − p) / e², avec z = 1,96 pour un niveau de confiance de 95 %, p la proportion supposée (0,5 si on ne sait rien, cas le plus prudent) et e la marge d''erreur.

- Pour e = 5 % : n = 1,96² × 0,5 × 0,5 / 0,05² = 384,16, arrondi à 385 personnes.
- Pour e = 4 % : n = 600,25, soit 601 personnes.
- Pour e = 3 % : n = 1 067,1, soit 1 068 personnes. Diviser la marge d''erreur par deux multiplie environ la taille par quatre.

## 4. Analyser les résultats

Tri à plat : distribution des réponses question par question (effectifs et pourcentages).

Moyenne et écart-type. Bissap Ndar, entreprise fictive de Saint-Louis, interroge 300 clients sur leur satisfaction (1 à 5). Réponses : note 1 : 10 ; note 2 : 30 ; note 3 : 80 ; note 4 : 120 ; note 5 : 60.

- Moyenne = (1 × 10 + 2 × 30 + 3 × 80 + 4 × 120 + 5 × 60) / 300 = 1 090 / 300 = 3,63.
- Variance = moyenne des carrés des écarts = 1,03 ; écart-type = 1,02 environ. Les avis sont assez dispersés.
- Part de satisfaits (notes 4 et 5) = 180 / 300 = 60 %.

Intervalle de confiance d''une proportion : p ± 1,96 × √(p × (1 − p) / n). Sur 400 personnes, 42 % se déclarent prêtes à acheter un nouveau jus au gingembre. Erreur type = √(0,42 × 0,58 / 400) = 0,0247. Marge = 1,96 × 0,0247 = 0,048. Intervalle à 95 % : de 37,2 % à 47,0 %.

Tri croisé et khi-deux. On croise la zone (urbaine, rurale) et l''achat de jus en bouteille, sur 400 personnes :

- Urbains : 120 acheteurs, 80 non-acheteurs (total 200).
- Ruraux : 60 acheteurs, 140 non-acheteurs (total 200).

Effectif théorique (si pas de lien) = total ligne × total colonne / total général. Acheteurs : 200 × 180 / 400 = 90 ; non-acheteurs : 200 × 220 / 400 = 110. Khi-deux = somme des (observé − théorique)² / théorique = 900/90 + 900/110 + 900/90 + 900/110 = 36,4. Pour un tableau 2 × 2 (un degré de liberté), la valeur critique au seuil de 5 % est 3,84. Comme 36,4 est supérieur à 3,84, on conclut à un lien significatif entre zone et achat.

## Points clés

- Documentaire, puis qualitatif, puis quantitatif.
- Questionnaire : neutre, court, en entonnoir, identification à la fin, pré-test.
- n = z² p (1 − p) / e² ; p = 0,5 par prudence.

## Exercices pratiques

- Exercice 1. Corrigez ces questions : « Ne pensez-vous pas que nos prix sont bas ? » ; « Le service est-il rapide et aimable ? »
- Exercice 2. Calculez la taille d''échantillon pour une marge d''erreur de 6 % au niveau de confiance de 95 % (p = 0,5).
- Exercice 3. Construisez les quotas d''un échantillon de 600 personnes : 55 % de femmes ; 40 % de 18 à 29 ans, 35 % de 30 à 49 ans, 25 % de 50 ans et plus.
- Exercice 4. Sur 500 personnes, 65 % connaissent une marque fictive de savon local. Calculez l''intervalle de confiance à 95 %.
- Exercice 5. Tri croisé sur 300 personnes. Hommes : 90 utilisent le paiement mobile, 60 non. Femmes : 70 oui, 80 non. Calculez le khi-deux et concluez au seuil de 5 %.
- Exercice 6. Cas pratique. Une entreprise fictive veut ouvrir une boulangerie moderne à Kaolack. Proposez une démarche d''étude complète (types d''études, méthode d''échantillonnage, cinq questions clés).

## Corrigé

- Exercice 1. « À votre avis, nos prix sont-ils : très bas, bas, corrects, élevés, très élevés ? » La seconde est double : la scinder en « Le service est-il rapide ? » et « Le personnel est-il aimable ? », chacune sur une échelle.
- Exercice 2. n = 1,96² × 0,25 / 0,06² = 266,8, arrondi à 267 personnes.
- Exercice 3. 330 femmes et 270 hommes ; 240, 210 et 150 personnes par tranche d''âge.
- Exercice 4. Erreur type = √(0,65 × 0,35 / 500) = 0,0213 ; marge = 1,96 × 0,0213 = 0,042. Intervalle : de 60,8 % à 69,2 %.
- Exercice 5. Totaux : hommes 150, femmes 150 ; oui 160, non 140. Théoriques : oui 150 × 160 / 300 = 80 ; non 70 (pour chaque sexe). Khi-deux = 100/80 + 100/70 + 100/80 + 100/70 = 5,36. Supérieur à 3,84 : le lien entre sexe et usage du paiement mobile est significatif au seuil de 5 % ; les hommes de l''échantillon l''utilisent davantage.
- Exercice 6. Documentaire : population du quartier, concurrents existants, prix pratiqués. Qualitatif : une dizaine d''entretiens avec des clients potentiels. Quantitatif : questionnaire auprès d''environ 385 personnes, échantillon par quotas (sexe, âge, quartier). Questions : fréquence d''achat de pain ; lieu d''achat actuel ; produits souhaités (pain, viennoiseries, gâteaux) ; prix acceptable pour une baguette améliorée ; intérêt pour la livraison ou la commande par messagerie.', 'texte', 60, false, 20
from public.courses c where c.slug = 'lic-mkt-l2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Études de marché : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Marketing opérationnel : l''essentiel pour l''examen', '## Objectifs de la leçon

- Fixer un prix à partir des coûts, de la demande et de la concurrence.
- Calculer taux de marge, taux de marque, coefficient multiplicateur, seuil de rentabilité et élasticité.
- Choisir des canaux de distribution et calculer les prix en cascade.
- Construire un plan de communication et calculer un coût pour mille contacts.

## 1. Le prix

Trois approches complémentaires :

- Par les coûts : prix = coût de revient + marge souhaitée.
- Par la demande : prix psychologique (celui que les clients jugent acceptable), élasticité.
- Par la concurrence : s''aligner, se placer au-dessus (image de qualité) ou en dessous (pénétration).

Stratégies de lancement : écrémage (prix élevé pour une clientèle restreinte, puis baisse) ou pénétration (prix bas pour conquérir vite des parts de marché).

Formules de base (prix hors taxes) :

- Marge unitaire = prix de vente HT − coût d''achat ou de revient.
- Taux de marge = marge / coût × 100.
- Taux de marque = marge / prix de vente HT × 100.
- Coefficient multiplicateur = prix de vente / coût.

Exemple. Bissap Ndar produit une bouteille de jus pour un coût variable de 400 FCFA et la vend 600 FCFA HT aux grossistes. Marge = 200 FCFA. Taux de marge = 200 / 400 = 50 %. Taux de marque = 200 / 600 = 33,3 %. Coefficient multiplicateur = 1,5.

Calculer un prix à partir d''un taux. Pour un coût de 1 500 FCFA : avec un taux de marge de 40 %, prix = 1 500 × 1,4 = 2 100 FCFA ; avec un taux de marque de 40 %, prix = 1 500 / (1 − 0,4) = 2 500 FCFA. Ne confondez jamais les deux.

Seuil de rentabilité. Bissap Ndar supporte 36 000 000 FCFA de charges fixes par an. Marge sur coût variable unitaire = 200 FCFA ; taux de marge sur coûts variables = 200 / 600 = 1/3.

- Seuil en quantité = 36 000 000 / 200 = 180 000 bouteilles.
- Seuil en valeur = 36 000 000 / (1/3) = 108 000 000 FCFA.
- Ventes prévues : 240 000 bouteilles, soit 144 000 000 FCFA. Résultat = 240 000 × 200 − 36 000 000 = 12 000 000 FCFA.
- Marge de sécurité = 144 000 000 − 108 000 000 = 36 000 000 FCFA ; indice de sécurité = 25 %.
- Point mort (ventes régulières sur l''année) = 12 × 108 / 144 = 9 mois, soit fin septembre.

Élasticité-prix = variation relative des quantités / variation relative du prix. Si le prix passe de 600 à 650 FCFA (+8,33 %) et les ventes de 240 000 à 216 000 bouteilles (−10 %), l''élasticité vaut −10 / 8,33 = −1,2 : la demande est élastique. Pourtant, la marge sur coûts variables passe de 48 000 000 à 216 000 × 250 = 54 000 000 FCFA : la hausse peut rester rentable. Il faut toujours raisonner en marge, pas seulement en chiffre d''affaires.

## 2. La distribution

Un canal est une voie d''acheminement ; un circuit est l''ensemble des canaux utilisés.

- Canal direct : producteur → consommateur (vente à la ferme, boutique propre, vente en ligne).
- Canal court : producteur → détaillant → consommateur.
- Canal long : producteur → grossiste → (demi-grossiste) → détaillant → consommateur. Très répandu en Afrique de l''Ouest pour les produits de grande consommation, avec un poids important des boutiques de quartier et des marchés.

Stratégies : distribution intensive (le plus de points de vente possible : produits de consommation courante), sélective (points choisis : électroménager), exclusive (un distributeur par zone : véhicules).

Prix en cascade. Bissap Ndar vend 600 FCFA HT. Le grossiste applique un taux de marge de 10 % : 660 FCFA. Le détaillant applique 25 % : 825 FCFA HT. Avec une TVA à 18 % (taux utilisé ici pour l''exemple ; vérifiez le taux en vigueur), le consommateur paie 973,50 FCFA, arrondi en pratique à un prix rond. Le prix final représente 1,62 fois le prix producteur : chaque intermédiaire est rémunéré pour un service (stockage, transport, crédit, proximité).

## 3. La communication

Démarche : objectifs (faire connaître, faire aimer, faire agir), cible, message (promesse, preuve, ton), choix des moyens, budget, calendrier, contrôle.

- Communication média : radio (très puissante, notamment en langues nationales), télévision, affichage, presse, internet.
- Hors média : promotion des ventes (dégustations, lots, jeux), relations publiques, parrainage d''événements, salons, marketing direct.

Coût pour mille contacts (CPM) = coût de la campagne / nombre de contacts × 1 000. Une campagne radio de 1 500 000 FCFA touche 600 000 contacts : CPM = 1 500 000 / 600 000 × 1 000 = 2 500 FCFA. Le CPM permet de comparer des supports, mais ne mesure ni l''attention ni les ventes.

## Points clés

- Taux de marge sur le coût, taux de marque sur le prix de vente.
- Seuil de rentabilité = charges fixes / taux de marge sur coûts variables.
- Distribution intensive, sélective ou exclusive ; prix en cascade.
- Communication : objectifs, cible, message, moyens, budget, contrôle.

## Exercices pratiques

- Exercice 1. Un article coûte 2 500 FCFA. Calculez le prix de vente HT pour un taux de marge de 30 %, puis pour un taux de marque de 30 %, et le coefficient multiplicateur dans le second cas.
- Exercice 2. Un fabricant vend 1 000 FCFA HT. Le grossiste prend 8 % de marge sur son coût d''achat, le détaillant 20 %. TVA de 18 % (taux utilisé pour l''exemple). Calculez le prix TTC payé par le consommateur.
- Exercice 3. Charges fixes 18 000 000 FCFA ; prix 5 000 FCFA ; coût variable 3 500 FCFA. Calculez le seuil en quantité et en valeur. Avec 15 000 unités vendues, calculez le résultat, l''indice de sécurité et le point mort.
- Exercice 4. Le prix passe de 1 000 à 900 FCFA et les ventes de 5 000 à 5 750 unités. Calculez l''élasticité et l''évolution du chiffre d''affaires.
- Exercice 5. Une campagne radio coûte 2 400 000 FCFA pour 800 000 contacts. Calculez le CPM et comparez au cas Bissap Ndar.
- Exercice 6. Cas pratique. Une coopérative fictive de Casamance lance une confiture de mangue. Proposez une stratégie de prix, un circuit de distribution et deux actions de communication.

## Corrigé

- Exercice 1. Taux de marge 30 % : 2 500 × 1,3 = 3 250 FCFA. Taux de marque 30 % : 2 500 / 0,7 = 3 571 FCFA (3 571,43). Coefficient = 3 571,43 / 2 500 = 1,43.
- Exercice 2. Grossiste : 1 000 × 1,08 = 1 080 FCFA. Détaillant : 1 080 × 1,20 = 1 296 FCFA HT. TTC = 1 296 × 1,18 = 1 529,28 FCFA.
- Exercice 3. Marge unitaire = 1 500 FCFA ; taux = 30 %. Seuil = 18 000 000 / 1 500 = 12 000 unités, soit 60 000 000 FCFA. Résultat = 15 000 × 1 500 − 18 000 000 = 4 500 000 FCFA. Indice de sécurité = (15 000 − 12 000) / 15 000 = 20 %. Point mort = 12 × 12 000 / 15 000 = 9,6 mois, soit vers la mi-octobre.
- Exercice 4. Variation des quantités = +15 % ; du prix = −10 % ; élasticité = −1,5 (demande élastique). Le chiffre d''affaires passe de 5 000 000 à 5 175 000 FCFA (+3,5 %). Il faut vérifier la marge avant de conclure.
- Exercice 5. CPM = 2 400 000 / 800 000 × 1 000 = 3 000 FCFA, plus cher que 2 500 FCFA. Ce support se justifie seulement s''il touche mieux la cible.
- Exercice 6. Prix : légèrement inférieur aux confitures importées, positionnement « fruit local de qualité » ; petit pot pour l''essai. Distribution : canal court vers supérettes et boutiques de produits locaux de Dakar et Ziguinchor, plus vente en ligne avec livraison. Communication : dégustations en magasin et foires, vidéos courtes montrant la récolte et la fabrication.', 'texte', 60, false, 30
from public.courses c where c.slug = 'lic-mkt-l2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Marketing opérationnel : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Marketing digital : l''essentiel pour l''examen', '## Objectifs de la leçon

- Comprendre l''écosystème du marketing digital : médias possédés, payés et gagnés.
- Utiliser les réseaux sociaux et le référencement de façon professionnelle.
- Calculer et interpréter les principaux indicateurs de performance.
- Analyser les spécificités du mobile money et de l''e-commerce en Afrique.

## 1. Les fondements

Le marketing digital regroupe les actions marketing menées sur les supports numériques : site web, réseaux sociaux, moteurs de recherche, messageries, courriels, applications. On distingue trois types de médias :

- Médias possédés : ceux que l''entreprise contrôle (site, page, compte, liste de contacts).
- Médias payés : la publicité en ligne (annonces sur les moteurs de recherche, publications sponsorisées).
- Médias gagnés : ce que les autres disent de vous (partages, avis, recommandations, articles).

En Afrique de l''Ouest, l''accès à internet se fait surtout par le téléphone mobile. Conséquences : contenus légers, formats verticaux, vidéos courtes, sites rapides et adaptés au mobile, place centrale de la messagerie dans la relation client.

## 2. Les réseaux sociaux

Une stratégie social media suit une démarche : objectifs, cible, choix des plateformes, ligne éditoriale (thèmes, ton, fréquence), calendrier de publication, animation de la communauté, mesure.

Bonnes pratiques :

- Publier régulièrement des contenus utiles ou divertissants, pas seulement des promotions (règle souvent citée : beaucoup de contenus de valeur pour une minorité de contenus commerciaux).
- Répondre vite et poliment aux commentaires et messages, y compris aux critiques.
- Travailler avec des créateurs de contenu ou des influenceurs adaptés à la cible, en exigeant la transparence sur le caractère commercial de la publication.
- Utiliser les langues des clients : français, wolof ou autres langues nationales selon la cible.

Taux d''engagement = interactions (mentions j''aime, commentaires, partages) / abonnés × 100 (ou / personnes touchées, à préciser). Exemple : une publication de Teranga Mode, boutique fictive de prêt-à-porter à Dakar, génère 1 250 interactions pour 25 000 abonnés : taux = 5 %.

## 3. Le référencement

- Référencement naturel (SEO) : améliorer la position d''un site dans les résultats non payants des moteurs de recherche. Leviers : contenu de qualité répondant aux questions des internautes, mots-clés pertinents dans les titres, site rapide et adapté au mobile, structure claire, liens provenant d''autres sites. Le SEO est lent mais durable.
- Référencement payant (SEA) : annonces achetées sur des mots-clés, généralement facturées au clic. Effet immédiat, mais il s''arrête quand on cesse de payer.
- Référencement local : fiche d''établissement avec adresse, horaires, photos et avis clients, essentielle pour un restaurant ou une boutique.

## 4. Les indicateurs de performance

Schéma décrit : un entonnoir de conversion. Impressions en haut, puis clics, visites, ajouts au panier, commandes en bas.

- Taux de clic (CTR) = clics / impressions × 100.
- Coût par clic (CPC) = dépense / clics.
- Taux de conversion = conversions / clics (ou visites) × 100.
- Coût par acquisition (CPA) = dépense / conversions.
- Retour sur dépenses publicitaires (ROAS) = chiffre d''affaires généré / dépense publicitaire.
- Retour sur investissement (ROI) = (marge générée − dépense) / dépense.
- Taux de rebond = visites d''une seule page sans interaction / visites totales.

Exemple. Teranga Mode dépense 450 000 FCFA en publications sponsorisées. Résultat : 200 000 impressions, 3 000 clics, 90 commandes, panier moyen 15 000 FCFA.

- CTR = 3 000 / 200 000 = 1,5 %.
- CPC = 450 000 / 3 000 = 150 FCFA.
- Taux de conversion = 90 / 3 000 = 3 %.
- CPA = 450 000 / 90 = 5 000 FCFA.
- Chiffre d''affaires = 90 × 15 000 = 1 350 000 FCFA ; ROAS = 1 350 000 / 450 000 = 3.
- Avec un taux de marge brute de 40 %, marge = 540 000 FCFA ; ROI = (540 000 − 450 000) / 450 000 = 20 %.

Un ROAS de 3 paraît excellent, mais seule la marge dit si la campagne enrichit l''entreprise.

## 5. Mobile money et e-commerce en Afrique

Le mobile money permet d''envoyer, recevoir et payer de l''argent avec un téléphone, souvent sans compte bancaire. Il est largement utilisé dans l''espace UEMOA, où la BCEAO encadre les services de paiement et la monnaie électronique. Pour le commerçant, il facilite l''encaissement à distance, réduit la manipulation d''espèces et laisse une trace des paiements. Les frais varient selon les opérateurs et les offres : intégrez-les dans le calcul de la marge. Exemple avec un taux de frais de 1 % (taux fictif pour l''exemple) : sur 1 350 000 FCFA encaissés, les frais s''élèvent à 13 500 FCFA.

L''e-commerce africain présente des spécificités :

- Commande souvent passée par messagerie ou réseau social plutôt que sur un site marchand.
- Paiement à la livraison encore fréquent, par manque de confiance : risque de commandes non honorées.
- Logistique du dernier kilomètre difficile : adresses imprécises, embouteillages ; recours aux livreurs à moto et aux points relais.
- Confiance à construire : avis clients, politique de retour claire, service client réactif.

## Points clés

- Médias possédés, payés, gagnés ; priorité au mobile.
- CTR, CPC, taux de conversion, CPA, ROAS, ROI : savoir les calculer et les relier.
- SEO durable, SEA immédiat, référencement local indispensable pour les commerces physiques.
- Mobile money et livraison : leviers et contraintes de l''e-commerce africain.

## Exercices pratiques

- Exercice 1. Classez en médias possédés, payés ou gagnés : le site d''un hôtel de Saly ; un avis positif d''un client ; une annonce sur un moteur de recherche.
- Exercice 2. Une publication touche 16 000 personnes pour un compte de 40 000 abonnés et génère 1 800 interactions. Calculez le taux d''engagement par abonné et par personne touchée.
- Exercice 3. Campagne B : 120 000 impressions, 2 400 clics, 360 000 FCFA de dépense, 48 commandes, panier moyen 20 000 FCFA, taux de marge 35 %. Calculez CTR, CPC, taux de conversion, CPA, ROAS et ROI.
- Exercice 4. Sur 5 000 visites, 2 200 quittent le site sans interaction. Calculez le taux de rebond et proposez deux causes.
- Exercice 5. Une boutique encaisse 2 000 000 FCFA par mobile money ; frais de 1,5 % (taux fictif pour l''exemple). Calculez les frais.
- Exercice 6. Cas pratique. Une épicerie fine fictive de Dakar veut vendre en ligne. Ses clients se plaignent de livraisons en retard et 20 % des commandes payables à la livraison sont refusées. Proposez des solutions.

## Corrigé

- Exercice 1. Site : possédé. Avis : gagné. Annonce : payé.
- Exercice 2. Par abonné : 1 800 / 40 000 = 4,5 %. Par personne touchée : 1 800 / 16 000 = 11,25 %. Toujours préciser la base.
- Exercice 3. CTR = 2 %. CPC = 150 FCFA. Conversion = 48 / 2 400 = 2 %. CPA = 7 500 FCFA. CA = 960 000 FCFA ; ROAS = 2,67. Marge = 336 000 FCFA ; ROI = (336 000 − 360 000) / 360 000 = −6,7 %. Malgré un ROAS supérieur à 2, la campagne perd de l''argent : il faut améliorer la conversion ou la marge.
- Exercice 4. Taux de rebond = 2 200 / 5 000 = 44 %. Causes : page trop lente sur mobile ; contenu ne correspondant pas à l''annonce.
- Exercice 5. Frais = 2 000 000 × 1,5 % = 30 000 FCFA.
- Exercice 6. Livraison : créneaux annoncés, regroupement des tournées par zone, points relais dans des boutiques partenaires, suivi par message. Refus : confirmation de la commande par appel ou message, acompte ou paiement par mobile money avec petite remise, liste des clients à risque. Confiance : photos fidèles, avis clients, politique de retour claire.', 'texte', 60, false, 40
from public.courses c where c.slug = 'lic-mkt-l2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Marketing digital : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Sujet type d''examen de Licence 2 en Marketing et commerce (corrigé)', '## Présentation

Sujet d''entraînement, non officiel, conçu pour une épreuve de trois heures. Barème indicatif, non officiel. Calculatrice autorisée.

## Le sujet

Casamance Délices SARL, entreprise fictive de Ziguinchor, veut lancer un pot de confiture de mangue de 350 grammes sur le marché dakarois.

Dossier 1 – Études de marché (7 points)

- 1.1 Proposez trois questions fermées et une question ouverte pour l''enquête. (2 points)
- 1.2 Calculez la taille d''échantillon nécessaire pour une marge d''erreur de 5 % au niveau de confiance de 95 %, en supposant p = 0,3. (2 points)
- 1.3 L''enquête porte finalement sur 385 personnes ; 30 % déclarent qu''elles achèteraient certainement le produit. Calculez l''intervalle de confiance à 95 % et interprétez. (3 points)

Dossier 2 – Marketing opérationnel (7 points)

Le coût variable d''un pot est de 1 200 FCFA. L''entreprise vise un taux de marque de 25 %. Charges fixes annuelles : 24 000 000 FCFA. Ventes prévues : 80 000 pots.

- 2.1 Calculez le prix de vente HT et le taux de marge correspondant. (2 points)
- 2.2 Calculez le seuil de rentabilité en quantité et en valeur, le résultat prévisionnel, la marge de sécurité et le point mort. (4 points)
- 2.3 Proposez un circuit de distribution adapté. (1 point)

Dossier 3 – Marketing digital (6 points)

Campagne sponsorisée test : dépense 500 000 FCFA ; 250 000 impressions ; 5 000 clics ; 125 commandes ; panier moyen 8 000 FCFA.

- 3.1 Calculez CTR, CPC, taux de conversion, CPA et ROAS. (3 points)
- 3.2 Avec un taux de marque de 25 %, la campagne est-elle rentable ? Quel chiffre d''affaires minimal fallait-il ? (2 points)
- 3.3 Proposez une amélioration. (1 point)

## Corrigé détaillé

Dossier 1

- 1.1 Fermées : « Consommez-vous de la confiture ? Oui / Non » ; « À quelle fréquence ? Chaque semaine / chaque mois / plus rarement » ; « Quel prix maximum accepteriez-vous pour un pot de 350 grammes ? (tranches) ». Ouverte : « Qu''est-ce qui vous donnerait envie d''acheter une confiture produite au Sénégal ? »
- 1.2 n = 1,96² × 0,3 × 0,7 / 0,05² = 322,7, arrondi à 323 personnes. Avec p = 0,5 (hypothèse prudente), on aurait 385.
- 1.3 Erreur type = √(0,3 × 0,7 / 385) = 0,0234 ; marge = 1,96 × 0,0234 = 0,046. Intervalle : de 25,4 % à 34,6 %. Interprétation : avec 95 % de confiance, entre un quart et un tiers environ de la population cible achèterait certainement ; l''intention déclarée surestime souvent l''achat réel, il faut rester prudent dans les prévisions.

Dossier 2

- 2.1 Prix HT = 1 200 / (1 − 0,25) = 1 600 FCFA. Marge = 400 FCFA ; taux de marge = 400 / 1 200 = 33,3 %.
- 2.2 Seuil en quantité = 24 000 000 / 400 = 60 000 pots. Taux de marge sur coûts variables = 25 % ; seuil en valeur = 96 000 000 FCFA. CA prévu = 80 000 × 1 600 = 128 000 000 FCFA. Résultat = 80 000 × 400 − 24 000 000 = 8 000 000 FCFA. Marge de sécurité = 32 000 000 FCFA (indice 25 %). Point mort = 12 × 60 000 / 80 000 = 9 mois.
- 2.3 Canal court : vente directe aux supérettes et épiceries fines de Dakar, complétée par la vente en ligne avec livraison ; éventuellement un grossiste pour les régions.

Dossier 3

- 3.1 CTR = 5 000 / 250 000 = 2 %. CPC = 100 FCFA. Conversion = 125 / 5 000 = 2,5 %. CPA = 4 000 FCFA. CA = 1 000 000 FCFA ; ROAS = 2.
- 3.2 Marge = 1 000 000 × 25 % = 250 000 FCFA, inférieure à la dépense de 500 000 FCFA : perte de 250 000 FCFA (ROI = −50 %). Chiffre d''affaires minimal = 500 000 / 0,25 = 2 000 000 FCFA, soit 250 commandes à 8 000 FCFA.
- 3.3 Augmenter le panier moyen (lots de trois pots, coffrets cadeaux), mieux cibler les annonces, améliorer la page de commande pour relever la conversion, ou mettre en avant le premier achat comme investissement de fidélisation si les clients rachètent.

## Exercices pratiques

- Exercice 1. Quelle est la valeur critique du khi-deux pour un tableau 2 × 2 au seuil de 5 % ?
- Exercice 2. Différence entre écrémage et pénétration ?
- Exercice 3. Un produit coûte 800 FCFA ; coefficient multiplicateur 1,6. Prix de vente ?
- Exercice 4. 4 000 clics et 80 commandes : taux de conversion ?
- Exercice 5. Citez deux contraintes logistiques de l''e-commerce en Afrique.
- Exercice 6. Le prix de la confiture passe de 1 600 à 1 700 FCFA et les ventes prévues de 80 000 à 76 000 pots. Calculez l''élasticité et la nouvelle marge sur coûts variables (coût variable inchangé à 1 200 FCFA). Faut-il augmenter le prix ?

## Corrigé

- Exercice 1. 3,84 (un degré de liberté).
- Exercice 2. L''écrémage fixe un prix élevé pour une clientèle restreinte ; la pénétration fixe un prix bas pour conquérir rapidement le marché.
- Exercice 3. 800 × 1,6 = 1 280 FCFA.
- Exercice 4. 80 / 4 000 = 2 %.
- Exercice 5. Adresses imprécises ; embouteillages et coût du dernier kilomètre (ou refus à la livraison).
- Exercice 6. Variation des quantités = −5 % ; variation du prix = +6,25 % ; élasticité = −5 / 6,25 = −0,8 (demande inélastique). Marge sur coûts variables : avant 80 000 × 400 = 32 000 000 FCFA ; après 76 000 × 500 = 38 000 000 FCFA. Le résultat progresserait de 6 000 000 FCFA : la hausse est intéressante sur le plan financier, sous réserve de la réaction des concurrents et de l''image « prix accessible » du produit.', 'texte', 60, false, 50
from public.courses c where c.slug = 'lic-mkt-l2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Sujet type d''examen de Licence 2 en Marketing et commerce (corrigé)');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Études de marché', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : étudiants de Licence 2 en marketing, commerce, gestion.
- Objectifs : choisir un type d''étude ; rédiger un questionnaire ; construire un échantillon par quotas ; calculer une taille d''échantillon ; analyser des résultats avec moyenne, intervalle de confiance et khi-deux.
- Matériel : diaporama, exemple de questionnaire imprimé, calculatrice.
- Prérequis : leçon « Études de marché : l''essentiel pour l''examen » et notions de statistiques descriptives.

## Déroulé minuté

## 00:00 – 05:00 · Accueil et objectifs

Bonjour à toutes et à tous. Aujourd''hui, nous allons apprendre à poser les bonnes questions aux bonnes personnes, puis à faire parler les chiffres. Une étude de marché n''est pas un exercice académique : c''est ce qui évite à une entreprise de dépenser des millions pour un produit dont personne ne veut. Notre fil rouge : Bissap Ndar, entreprise fictive de Saint-Louis, qui envisage un nouveau jus au gingembre.

Visuel : diapositive titre et plan : types d''études, questionnaire, échantillon, taille, analyse.

## 05:00 – 15:00 · Partir du problème

Toute étude commence par une question de décision. Pour Bissap Ndar : « Faut-il lancer un jus au gingembre à Saint-Louis et à Dakar, et à quel prix ? » De cette question découlent les objectifs d''information : qui consomme du jus local, à quelle fréquence, quel prix est acceptable, quelle part de la population achèterait.

Ensuite, on choisit les types d''études, comme un entonnoir. En haut, la documentaire : statistiques publiques sur la population, rapports sectoriels, données de ventes internes. Elle coûte peu, faites-la toujours en premier. Au milieu, la qualitative : une dizaine d''entretiens, ou deux réunions de groupe, pour comprendre les habitudes et le vocabulaire. On découvre par exemple que les clients parlent de « jus naturel » et se méfient des « jus trop sucrés ». En bas, la quantitative : un questionnaire auprès de quelques centaines de personnes pour mesurer.

Question à poser : pourquoi faire le qualitatif avant le quantitatif ? Réponse : pour formuler des questions et des modalités de réponse qui correspondent à la réalité des clients.

Un mot sur le budget et le calendrier, souvent demandés dans les cas pratiques. Une étude quantitative mobilise des enquêteurs, des déplacements, la saisie des données et l''analyse. Pour une PME, on peut réduire les coûts en recrutant des étudiants formés, en administrant une partie du questionnaire par téléphone ou en ligne, et en limitant le nombre de questions. Mais attention : un questionnaire en ligne ne touche que les personnes connectées ; l''échantillon risque alors de surreprésenter les jeunes urbains. Dans votre copie, signalez toujours ce type de biais.

## 15:00 – 30:00 · Rédiger le questionnaire

Visuel : un questionnaire d''une page, annoté.

Je vous montre la structure. Introduction : « Bonjour, je suis étudiant et je réalise une enquête pour une entreprise de jus. Cela prend cinq minutes, vos réponses sont anonymes. » Question filtre : « Avez-vous bu un jus en bouteille au cours du dernier mois ? » Si non, on remercie et on arrête, ou on passe à un module non-consommateurs. Puis l''entonnoir : habitudes générales, puis produit précis, puis prix. Enfin l''identification : âge, sexe, quartier, profession.

Maintenant, les pièges. « Vous aimez sûrement notre délicieux jus ? » : question orientée. « Le jus est-il bon et pas cher ? » : question double, la personne peut penser oui pour l''un et non pour l''autre. « Quel est votre revenu exact ? » en première question : trop indiscrète, la personne refuse de continuer. Utilisez plutôt des tranches, en fin de questionnaire.

Les échelles : Likert à cinq niveaux, de « pas du tout d''accord » à « tout à fait d''accord » ; notation de 1 à 5. Et n''oubliez pas le pré-test : on fait passer le questionnaire à cinq ou dix personnes pour repérer les questions mal comprises. Pensez aussi à la traduction en wolof si les enquêteurs l''utilisent : les mots doivent garder le même sens.

## 30:00 – 42:00 · Échantillonnage et quotas

Deux grandes familles. Les méthodes probabilistes supposent une liste de la population : tirage aléatoire simple, systématique, stratifié, par grappes. Les méthodes non probabilistes, comme les quotas, sont les plus utilisées en pratique, car les listes manquent souvent.

Exercice commenté. On veut 500 personnes. La population compte 52 % de femmes et 48 % d''hommes ; 30 % de 18 à 24 ans, 45 % de 25 à 39 ans, 25 % de 40 ans et plus. Quotas : 500 fois 0,52, soit 260 femmes ; 240 hommes. Par âge : 150, 225 et 125. Vérifiez toujours que les totaux font bien 500 : 150 plus 225 plus 125, c''est 500. Les enquêteurs remplissent ces cases et s''arrêtent quand un quota est atteint.

## 42:00 – 47:00 · Quiz interactif

Mettez en pause.

- Question 1 : quelle étude réaliser en premier ? Réponse : l''étude documentaire.
- Question 2 : qu''est-ce qu''une question double ? Réponse : une question qui porte sur deux points à la fois.
- Question 3 : 40 % de 18-24 ans sur un échantillon de 300 : quota ? Réponse : 120 personnes.

## 47:00 – 1:00:00 · Calculer la taille de l''échantillon

Visuel : la formule n = z² × p × (1 − p) / e².

z vaut 1,96 pour 95 % de confiance. p est la proportion que l''on cherche à estimer ; si on ne la connaît pas, on prend 0,5, car c''est la valeur qui donne le plus grand échantillon, donc la plus prudente. e est la marge d''erreur acceptée.

Calculons ensemble. Pour e égale 5 % : 1,96 au carré égale 3,8416 ; fois 0,25 égale 0,9604 ; divisé par 0,0025 égale 384,16. On arrondit toujours à l''entier supérieur : 385 personnes. Pour 4 % : 601 personnes. Pour 3 % : 1 068 personnes. Retenez l''intuition : pour diviser la marge d''erreur par deux, il faut environ quatre fois plus de personnes. La précision coûte cher.

Si une étude antérieure indique que p est proche de 0,3, on calcule 3,8416 fois 0,21, divisé par 0,0025 : 322,7, donc 323 personnes.

## 1:00:00 – 1:15:00 · Analyser les résultats

Premier outil, la moyenne et l''écart-type. 300 clients notent leur satisfaction : 10 donnent 1, 30 donnent 2, 80 donnent 3, 120 donnent 4, 60 donnent 5. Somme des produits : 10 plus 60 plus 240 plus 480 plus 300, soit 1 090. Moyenne : 1 090 sur 300, égale 3,63. L''écart-type vaut environ 1,02. Et 180 personnes sur 300, soit 60 %, sont satisfaites.

Deuxième outil, l''intervalle de confiance. 42 % des 400 personnes interrogées achèteraient le jus au gingembre. Erreur type : racine de 0,42 fois 0,58 divisé par 400, soit 0,0247. Fois 1,96 : 0,048. L''intervalle va de 37,2 % à 47,0 %. Dans la copie, on écrit : « Avec 95 % de confiance, la proportion d''acheteurs potentiels dans la population est comprise entre 37 % et 47 %. »

Troisième outil, le khi-deux. Urbains : 120 acheteurs, 80 non-acheteurs. Ruraux : 60 et 140. Les effectifs théoriques, en l''absence de lien, valent total ligne fois total colonne divisé par total général : 90 et 110 pour chaque zone. Chaque écart vaut 30 en valeur absolue, donc chaque écart au carré vaut 900. Khi-deux : 900 sur 90, plus 900 sur 110, deux fois, soit 36,4. La valeur critique pour un degré de liberté au seuil de 5 % est 3,84. 36,4 est très au-dessus : le lien entre zone et achat est significatif. Décision marketing : concentrer le lancement en zone urbaine.

## 1:15:00 – 1:25:00 · Correction commentée d''un exercice

Sur 300 personnes : hommes 90 utilisateurs du paiement mobile et 60 non ; femmes 70 et 80. Totaux : 150 hommes, 150 femmes ; 160 oui, 140 non. Théoriques : 80 oui et 70 non pour chaque sexe. Écarts au carré : 100 partout. Khi-deux : 100 sur 80 plus 100 sur 70, deux fois, soit 5,36. Supérieur à 3,84 : lien significatif. Les erreurs fréquentes que je vois dans les copies : oublier de calculer les effectifs théoriques, ou conclure sans comparer à la valeur critique.

Dernière étape d''une étude : le rapport. Il comprend un résumé pour le dirigeant d''une page, le rappel du problème et des objectifs, la méthodologie avec ses limites, les résultats présentés en tableaux et graphiques commentés, puis les recommandations. Le dirigeant de Bissap Ndar ne veut pas un khi-deux : il veut savoir s''il lance le jus, où, et à quel prix. Terminez toujours par une recommandation claire et chiffrée.

## 1:25:00 – 1:30:00 · Synthèse et évaluation finale

Retenez : documentaire, qualitatif, quantitatif ; questionnaire neutre et testé ; quotas ; n = z² p (1 − p) / e² ; intervalle de confiance ; khi-deux comparé à 3,84.

- Question 1 : taille d''échantillon pour e = 5 %, p = 0,5, 95 % ? Réponse : 385.
- Question 2 : pourquoi prendre p = 0,5 ? Réponse : c''est le cas le plus prudent, qui maximise n.
- Question 3 : citez une méthode probabiliste et une non probabiliste. Réponse : aléatoire simple ; quotas.
- Question 4 : un khi-deux de 2,1 pour un tableau 2 × 2 est-il significatif à 5 % ? Réponse : non, car 2,1 est inférieur à 3,84.
- Question 5 : où placer les questions d''identification ? Réponse : à la fin du questionnaire.

Merci, et rendez-vous au prochain cours vidéo.', 'video', 90, false, 60
from public.courses c where c.slug = 'lic-mkt-l2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Études de marché');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Marketing opérationnel', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : étudiants de Licence 2 en marketing, commerce, gestion.
- Objectifs : calculer taux de marge, taux de marque, coefficient multiplicateur, seuil de rentabilité et élasticité ; construire un prix en cascade ; choisir une stratégie de distribution ; bâtir un plan de communication et comparer des supports par le CPM.
- Matériel : diaporama, tableau de seuil de rentabilité, calculatrice.
- Prérequis : leçon « Marketing opérationnel : l''essentiel pour l''examen » et notions de coûts variables et fixes.

## Déroulé minuté

## 00:00 – 05:00 · Accueil et objectifs

Bonjour à toutes et à tous. Le marketing opérationnel, c''est le moment où la stratégie devient concrète : un prix sur une étiquette, un produit dans un rayon, un message à la radio. C''est aussi la matière où les examens comportent le plus de calculs. Notre fil rouge reste Bissap Ndar, qui vend des bouteilles de jus.

Visuel : diapositive titre et trois blocs : prix, distribution, communication.

## 05:00 – 20:00 · Marge, marque, coefficient

Visuel : une barre horizontale coupée en deux : coût de 400, marge de 200, prix de 600.

La bouteille coûte 400 francs et se vend 600 francs hors taxes. Marge : 200. Le taux de marge rapporte la marge au coût : 200 sur 400, soit 50 %. Le taux de marque rapporte la marge au prix de vente : 200 sur 600, soit 33,3 %. Le coefficient multiplicateur : 600 sur 400, soit 1,5.

C''est le piège préféré des correcteurs. Un produit coûte 1 500 francs. Avec un taux de marge de 40 %, on multiplie le coût par 1,4 : 2 100 francs. Avec un taux de marque de 40 %, on divise le coût par 0,6 : 2 500 francs. Pourquoi diviser ? Parce que si la marque représente 40 % du prix, le coût en représente 60 %. Vérifions : 2 500 moins 1 500 égale 1 000, et 1 000 sur 2 500 égale bien 40 %.

Question à poser : un commerçant dit « je prends 25 % ». Que devez-vous lui demander ? Réponse : 25 % de quoi, du coût ou du prix de vente ?

Avant de passer au seuil, rappelons les trois approches du prix. Par les coûts, comme nous venons de le faire. Par la demande : quel prix les clients jugent-ils acceptable ? On le mesure par enquête, en demandant à partir de quel prix le produit paraît trop cher, et en dessous de quel prix on doute de sa qualité. Par la concurrence : si les jus concurrents sont à 500 francs en boutique, un jus à 1 000 francs devra justifier sa différence. Le bon prix se situe à l''intersection des trois : il couvre les coûts, il est accepté par les clients, il est cohérent avec le positionnement face aux concurrents.

Et deux stratégies de lancement : l''écrémage, prix élevé au départ pour une clientèle prête à payer la nouveauté, puis baisse progressive ; la pénétration, prix bas dès le départ pour conquérir vite le marché. Pour un jus de grande consommation, la pénétration est souvent plus adaptée.

## 20:00 – 35:00 · Le seuil de rentabilité

Les charges fixes de Bissap Ndar s''élèvent à 36 millions par an : loyer, salaires administratifs, amortissement des machines. Chaque bouteille vendue rapporte une marge sur coût variable de 200 francs. Combien de bouteilles faut-il pour couvrir 36 millions ? 36 000 000 divisé par 200 : 180 000 bouteilles. En valeur : 180 000 fois 600, soit 108 millions, ou 36 millions divisé par le taux de marge sur coûts variables, un tiers.

Bissap Ndar prévoit 240 000 bouteilles, soit 144 millions de chiffre d''affaires. Résultat : 240 000 fois 200 moins 36 millions, égale 12 millions. Marge de sécurité : 144 moins 108, soit 36 millions ; l''indice de sécurité est de 25 % : les ventes peuvent baisser d''un quart avant d''entraîner une perte. Point mort : 12 fois 108 sur 144, égale 9 mois. Si les ventes sont régulières, le seuil est atteint fin septembre. Attention, dans la réalité les ventes de jus sont saisonnières : plus fortes pendant la saison chaude et le Ramadan. Un bon étudiant le signale.

Visuel : graphique décrit avec en abscisse les quantités, une droite de chiffre d''affaires partant de zéro, une droite de coûts totaux partant de 36 millions ; elles se croisent à 180 000 bouteilles.

## 35:00 – 45:00 · L''élasticité et la décision de prix

Bissap Ndar envisage de passer de 600 à 650 francs. L''étude prévoit une baisse des ventes à 216 000 bouteilles. Variation du prix : plus 8,33 %. Variation des quantités : moins 10 %. Élasticité : moins 10 divisé par 8,33, soit moins 1,2. La demande est élastique : les quantités réagissent plus que proportionnellement.

Faut-il renoncer ? Calculons la marge sur coûts variables. Avant : 240 000 fois 200, soit 48 millions. Après : 216 000 fois 250, soit 54 millions. La hausse rapporte 6 millions de marge en plus. Le chiffre d''affaires, lui, baisse un peu : 140,4 millions contre 144. Leçon : on décide sur la marge, pas sur le chiffre d''affaires.

## 45:00 – 50:00 · Quiz interactif

Mettez en pause.

- Question 1 : coût 1 000, taux de marque 20 %. Prix ? Réponse : 1 000 / 0,8 = 1 250 francs.
- Question 2 : charges fixes 10 millions, marge unitaire 500. Seuil en quantité ? Réponse : 20 000 unités.
- Question 3 : élasticité de −0,5 : demande élastique ou inélastique ? Réponse : inélastique, car sa valeur absolue est inférieure à 1.

## 50:00 – 1:05:00 · La distribution et les prix en cascade

Trois types de canaux : direct, court, long. Pour un jus vendu dans tout le pays, le canal long domine : grossiste, demi-grossiste, boutique de quartier. La boutique de quartier est un acteur clé : proche, ouverte tard, elle fait parfois crédit. Mais elle a peu de place et souvent un réfrigérateur limité : il faut négocier la visibilité et parfois fournir le matériel de froid.

Calcul en cascade. Bissap Ndar vend 600. Le grossiste ajoute 10 % : 660. Le détaillant ajoute 25 % : 825 hors taxes. Avec une TVA de 18 %, taux utilisé pour l''exemple et à vérifier dans le texte en vigueur, on obtient 973,50 francs ; en pratique, le prix affiché sera arrondi. Rapport entre prix final et prix producteur : 973,50 sur 600, soit 1,62.

Stratégies : intensive pour le jus, sélective pour un réfrigérateur, exclusive pour une marque de motos avec un concessionnaire par région.

## 1:05:00 – 1:18:00 · La communication et le CPM

Démarche en six étapes : objectifs, cible, message, moyens, budget, contrôle. Pour le jus au gingembre : objectif, faire connaître le produit à 50 % de la cible urbaine en trois mois ; cible, jeunes actifs et familles des villes ; message, « le gingembre qui réveille, naturel et local » ; moyens, radio en wolof et en français, affichage près des arrêts de bus, dégustations dans les supérettes, vidéos courtes en ligne.

Comparer les supports : le CPM. Radio A : 1 500 000 francs pour 600 000 contacts, CPM 2 500 francs. Radio B : 2 400 000 francs pour 800 000 contacts, CPM 3 000 francs. A est moins chère au contact. Mais si B touche mieux les jeunes actifs, elle peut rester le meilleur choix. Le CPM est un outil de comparaison, pas une mesure de l''efficacité.

Pensez aussi au hors média. La promotion des ventes provoque l''achat immédiat : dégustation gratuite en supérette, lot « trois bouteilles pour le prix de deux et demie », jeu avec bouchons gagnants. Les relations publiques construisent l''image : visite de l''usine pour des journalistes, parrainage d''un tournoi de football de quartier ou de navétanes. Question à poser : quel est le risque d''une promotion permanente ? Réponse : le client s''habitue au prix promotionnel et n''achète plus au prix normal, ce qui détruit la marge et l''image.

Enfin, le contrôle : on mesure la notoriété avant et après la campagne par une petite enquête, et l''on suit les ventes par zone. Sans mesure, impossible de savoir si le budget a été bien employé.

## 1:18:00 – 1:26:00 · Correction commentée d''un exercice

Charges fixes 18 millions, prix 5 000, coût variable 3 500. Marge unitaire 1 500, taux 30 %. Seuil : 12 000 unités, 60 millions. Avec 15 000 unités : résultat 4,5 millions ; indice de sécurité 20 % ; point mort 9,6 mois, vers la mi-octobre. Erreur fréquente : diviser les charges fixes par le prix de vente au lieu de la marge unitaire. Vérifiez toujours par le calcul inverse : 12 000 fois 1 500 égale bien 18 millions.

## 1:26:00 – 1:30:00 · Synthèse et évaluation finale

Retenez : marge sur le coût, marque sur le prix ; seuil égale charges fixes sur taux de marge sur coûts variables ; décider sur la marge ; cascade des prix ; CPM pour comparer.

- Question 1 : coût 400, prix 600 : taux de marque ? Réponse : 33,3 %.
- Question 2 : seuil en valeur avec 36 millions de charges fixes et un taux de marge sur coûts variables d''un tiers ? Réponse : 108 millions.
- Question 3 : citez les trois stratégies de distribution. Réponse : intensive, sélective, exclusive.
- Question 4 : 3 millions pour 1 million de contacts : CPM ? Réponse : 3 000 francs.
- Question 5 : une hausse de prix qui fait baisser le chiffre d''affaires est-elle forcément mauvaise ? Réponse : non, si la marge totale augmente.

Merci et bon travail.', 'video', 90, false, 70
from public.courses c where c.slug = 'lic-mkt-l2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Marketing opérationnel');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Marketing digital', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : étudiants de Licence 2 en marketing, commerce, gestion.
- Objectifs : distinguer médias possédés, payés et gagnés ; construire une ligne éditoriale ; expliquer SEO et SEA ; calculer et interpréter CTR, CPC, taux de conversion, CPA, ROAS, ROI ; analyser mobile money et e-commerce en Afrique.
- Matériel : diaporama, captures d''écran fictives d''une page de réseau social, calculatrice.
- Prérequis : leçon « Marketing digital : l''essentiel pour l''examen ».

## Déroulé minuté

## 00:00 – 05:00 · Accueil et objectifs

Bonjour à toutes et à tous. Vous passez tous plusieurs heures par jour sur votre téléphone : aujourd''hui, nous allons regarder cet écran avec les yeux d''un professionnel du marketing. Notre fil rouge : Teranga Mode, boutique fictive de prêt-à-porter à Dakar, qui vend en magasin et de plus en plus en ligne.

Visuel : diapositive titre et plan : écosystème, réseaux sociaux, référencement, indicateurs, mobile money et e-commerce.

## 05:00 – 15:00 · L''écosystème digital

Trois types de médias. Les médias possédés : la page de Teranga Mode, son site, sa liste de clients sur la messagerie. Elle les contrôle. Les médias payés : les publications sponsorisées et les annonces sur les moteurs de recherche. Elle les achète. Les médias gagnés : les avis, les partages, une cliente qui publie une photo de sa tenue. Elle les mérite. La stratégie consiste à combiner les trois : on paie pour amener des gens vers ce que l''on possède, et l''on soigne l''expérience pour gagner des recommandations.

Point clé pour l''Afrique de l''Ouest : on est « mobile d''abord ». La majorité des clients découvre, compare et commande depuis un téléphone, souvent avec une connexion limitée. Donc des images légères, des vidéos courtes, des pages rapides, et la messagerie comme canal de vente.

## 15:00 – 28:00 · Les réseaux sociaux

Une ligne éditoriale répond à quatre questions : de quoi parle-t-on, sur quel ton, à quelle fréquence, dans quelle langue ? Pour Teranga Mode : conseils de style, coulisses de l''atelier, présentation des nouveautés, témoignages de clientes, quelques offres. Ton chaleureux, en français avec des expressions en wolof. Rythme : trois à quatre publications par semaine, plus des vidéos courtes le week-end avant les cérémonies.

L''animation de communauté est essentielle : répondre aux messages dans l''heure si possible, remercier, et traiter les critiques publiquement avec calme, puis en privé pour régler le problème. Une critique bien traitée peut devenir une preuve de sérieux.

Calcul du taux d''engagement. 1 250 interactions pour 25 000 abonnés : 5 %. Mais attention à la base. Si une autre publication touche 16 000 personnes sur 40 000 abonnés avec 1 800 interactions, le taux est de 4,5 % par abonné et de 11,25 % par personne touchée. Dans une copie, précisez toujours la base.

Les influenceurs : choisissez-les pour la proximité avec la cible, pas seulement pour le nombre d''abonnés, et exigez que le partenariat commercial soit clairement signalé.

## 28:00 – 40:00 · Le référencement

Le référencement naturel, ou SEO, consiste à apparaître dans les résultats non payants des moteurs de recherche. Pour Teranga Mode, cela signifie des pages produits avec des titres clairs comme « robe en wax pour mariage », des textes qui répondent aux questions des clientes, un site rapide sur mobile, et des liens depuis des blogs de mode. C''est lent, plusieurs mois, mais durable.

Le référencement payant, ou SEA : on achète des mots-clés et l''on paie à chaque clic. Effet immédiat, utile pour un lancement ou une période de fête, mais tout s''arrête quand le budget s''arrête.

Enfin le référencement local : une fiche d''établissement complète avec adresse, horaires, photos et avis. Quand quelqu''un cherche « boutique de mode à Dakar » sur son téléphone, c''est souvent cette fiche qui apparaît en premier.

## 40:00 – 45:00 · Quiz interactif

Mettez en pause.

- Question 1 : un partage spontané par une cliente, c''est quel type de média ? Réponse : un média gagné.
- Question 2 : SEO ou SEA pour un effet immédiat ? Réponse : SEA.
- Question 3 : 600 interactions pour 20 000 abonnés : taux d''engagement par abonné ? Réponse : 3 %.

## 45:00 – 1:05:00 · Les indicateurs : exercice commenté

Visuel : l''entonnoir de conversion, impressions, clics, commandes.

Teranga Mode dépense 450 000 francs. 200 000 impressions, 3 000 clics, 90 commandes, panier moyen 15 000 francs.

CTR : 3 000 sur 200 000, soit 1,5 %. Il mesure l''attractivité de l''annonce. CPC : 450 000 sur 3 000, soit 150 francs. Taux de conversion : 90 sur 3 000, soit 3 %. Il mesure l''efficacité de la page et de l''offre. CPA : 450 000 sur 90, soit 5 000 francs pour obtenir une commande. Chiffre d''affaires : 90 fois 15 000, soit 1 350 000. ROAS : 1 350 000 sur 450 000, soit 3. Chaque franc dépensé génère trois francs de ventes.

Est-ce rentable ? Avec un taux de marge brute de 40 %, la marge est de 540 000 francs. ROI : 540 000 moins 450 000, divisé par 450 000, soit 20 %. Oui, c''est rentable.

Deuxième campagne : 120 000 impressions, 2 400 clics, 360 000 francs, 48 commandes à 20 000 francs, marge de 35 %. CTR 2 %, CPC 150, conversion 2 %, CPA 7 500, chiffre d''affaires 960 000, ROAS 2,67. Marge : 336 000 francs, inférieure à la dépense. ROI : moins 6,7 %. La campagne attire bien, mais convertit mal. Diagnostic : vérifier la page produit, les prix affichés, la simplicité de la commande et le mode de paiement.

Seuil de rentabilité d''une campagne : il faut que la marge couvre la dépense. Avec 25 % de taux de marque et 500 000 francs dépensés, il faut au moins 2 millions de chiffre d''affaires.

Comment améliorer ces indicateurs ? On procède par tests. Le test A/B consiste à diffuser deux versions d''une annonce, par exemple deux photos ou deux accroches, à deux groupes comparables, puis à garder celle qui obtient le meilleur taux de conversion. On teste une seule différence à la fois, sinon on ne sait pas ce qui a fait la différence. On suit ensuite un petit tableau de bord hebdomadaire : dépense, impressions, clics, commandes, chiffre d''affaires, marge, et les ratios associés. Une colonne commentaire explique les variations : fête, rupture de stock, nouvelle annonce.

## 1:05:00 – 1:20:00 · Mobile money et e-commerce en Afrique

Le mobile money a transformé le commerce. On peut payer à distance sans carte bancaire, la trace du paiement est conservée, et le commerçant manipule moins d''espèces. Dans l''espace UEMOA, la BCEAO encadre la monnaie électronique et les services de paiement. Pour le marketeur, deux conséquences : proposer le paiement mobile pour faciliter l''achat, et intégrer les frais dans la marge. Avec un taux de frais de 1 %, fictif pour l''exemple, 1 350 000 francs encaissés coûtent 13 500 francs de frais.

L''e-commerce africain a ses propres règles. Beaucoup de commandes passent par la messagerie : on envoie une photo, on discute, on confirme. Le paiement à la livraison reste courant par manque de confiance, avec un risque de refus à la porte. La livraison est difficile : adresses imprécises, embouteillages, coûts élevés pour de petites commandes.

Le taux de refus a un coût. Si Teranga Mode expédie 200 colis par mois avec un coût de livraison de 1 500 francs, fictif pour l''exemple, et que 20 % sont refusés, elle perd 40 livraisons, soit 60 000 francs, sans compter le temps et les produits abîmés.

Solutions : confirmer chaque commande par appel ou message, demander un acompte par paiement mobile avec un petit avantage, regrouper les tournées par quartier, utiliser des points relais dans des boutiques partenaires, et publier une politique de retour claire.

## 1:20:00 – 1:26:00 · Correction commentée d''un cas

Une épicerie fine fictive de Dakar : livraisons en retard, 20 % de commandes refusées. Correction : créneaux de livraison annoncés et respectés, suivi par message, acompte ou paiement mobile pour les nouveaux clients, liste des clients à risque. Ce qui fait la différence : chiffrer l''enjeu. Si 20 % des commandes sont refusées, ce sont des frais de livraison perdus et des produits frais parfois invendables.

## 1:26:00 – 1:30:00 · Synthèse et évaluation finale

Retenez : possédé, payé, gagné ; mobile d''abord ; SEO, SEA, local ; l''entonnoir et ses indicateurs ; la marge, juge final ; mobile money et logistique.

- Question 1 : 200 000 impressions et 4 000 clics : CTR ? Réponse : 2 %.
- Question 2 : 300 000 francs pour 60 commandes : CPA ? Réponse : 5 000 francs.
- Question 3 : ventes 900 000, dépense 300 000 : ROAS ? Réponse : 3.
- Question 4 : pourquoi un ROAS de 2 peut-il signifier une perte ? Réponse : parce que si le taux de marge est inférieur à 50 %, la marge générée est inférieure à la dépense.
- Question 5 : citez deux solutions contre les refus à la livraison. Réponse : confirmation de commande et acompte par paiement mobile.

Merci à toutes et à tous, et bonne préparation.', 'video', 90, false, 80
from public.courses c where c.slug = 'lic-mkt-l2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Marketing digital');

-- Cours : Marketing et commerce Licence 3 : réussir ses examens
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'lic-mkt-l3', (select id from public.levels where name = 'Licence 3'), null, 'Marketing et commerce', 'Marketing et commerce Licence 3 : réussir ses examens', 'Préparation aux partiels et examens semestriels de troisième année de Licence en marketing et commerce (Sénégal, espace UEMOA/OHADA, système LMD). Trois matières clés : le marketing stratégique (diagnostic, matrices BCG et Ansoff, plan marketing), la gestion de la relation client et de la force de vente (CRM, valeur client, dimensionnement, animation et rémunération des vendeurs) et le commerce international (principes des incoterms, techniques d''export, paiement international). Fiches, cas d''entreprises sénégalaises fictives, exercices corrigés aux calculs vérifiés, sujet type et trois cours vidéo de 1h30. Prérequis : Licence 2 en marketing ou gestion.', true, 383
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Réussir ses examens de Licence 3 en Marketing et commerce', '## Objectifs de la leçon

- Situer la troisième année dans le parcours LMD et comprendre ses enjeux (diplôme, poursuite en Master, insertion).
- Identifier les trois matières clés de l''année et leurs attentes.
- Maîtriser les épreuves de synthèse : cas d''entreprise, plan marketing, note de recommandation.
- Planifier six semaines de révision en tenant compte du stage ou du mémoire.

## 1. La Licence 3 dans le système LMD

La Licence 3 correspond aux semestres 5 et 6 et clôt le premier cycle. Sa validation donne le diplôme de Licence. Comme les années précédentes, elle est organisée en unités d''enseignement qui apportent des crédits ; le nombre de crédits, les coefficients, les règles de compensation, le poids du stage et du rapport de stage ou du mémoire sont propres à chaque établissement. Vérifiez la maquette et le règlement des études, en particulier les conditions d''admission en Master si vous visez une poursuite d''études.

La Licence 3 est une année de synthèse. Les correcteurs n''attendent plus seulement des calculs justes : ils veulent un raisonnement de décideur. Un diagnostic, des options, un choix argumenté, un plan d''action chiffré.

## 2. Les matières clés de l''année

- Marketing stratégique : diagnostic externe (PESTEL, forces concurrentielles) et interne (ressources, compétences), synthèse SWOT, segmentation stratégique en domaines d''activité, matrices de portefeuille (BCG), choix de développement (Ansoff), stratégies concurrentielles, plan marketing.
- Gestion de la relation client et de la force de vente : CRM et base de données clients, segmentation RFM, valeur vie client, fidélisation, satisfaction ; dimensionnement, organisation, animation, rémunération et contrôle des vendeurs.
- Commerce international : choix des marchés, modes d''entrée, techniques d''export, documents, principes des incoterms, calcul d''un prix export, moyens de paiement et gestion du risque de change.

Selon les établissements, l''année comporte aussi le marketing des services, le droit des contrats et de la concurrence dans l''espace OHADA et UEMOA, la gestion de projet, le management, l''anglais des affaires et la méthodologie du mémoire.

## 3. Les épreuves de Licence 3

- Cas d''entreprise de synthèse (trois ou quatre heures) : un dossier de plusieurs pages sur une entreprise fictive, souvent avec annexes chiffrées. On attend un diagnostic structuré, des calculs (portefeuille BCG, valeur client, prix export) et des recommandations.
- Plan marketing ou note de recommandation : rédaction professionnelle, destinée à un dirigeant.
- Questions de réflexion : « La fidélisation coûte-t-elle moins cher que la conquête ? », « Une PME sénégalaise doit-elle exporter ? ».
- Exercices techniques : choix d''un incoterm, calcul d''un prix CIF, rémunération d''un vendeur, taille de la force de vente.
- Soutenance de stage ou de projet : présentation orale, questions du jury.

## 4. Méthode : raisonner comme un décideur

Pour tout cas, appliquez la démarche suivante :

- Lire les questions avant le dossier, puis lire le dossier en annotant les chiffres.
- Diagnostiquer : opportunités et menaces de l''environnement, forces et faiblesses de l''entreprise.
- Calculer ce qui est demandé, proprement, avec formules et interprétation.
- Recommander : objectifs, stratégie, actions, budget, calendrier, indicateurs de suivi.
- Vérifier la cohérence : chaque action répond à un problème du diagnostic.

Exemple de phrase de recommandation : « Le DAS jus est un dilemme (part de marché relative de 0,5, croissance de 15 %). Nous recommandons d''investir pendant deux ans pour devenir leader sur la région de Dakar, financé par les liquidités du DAS huile, vache à lait. »

## 5. Plan de révision sur six semaines

- Semaine 1 : bilan, fiches de méthode (diagnostic, BCG, Ansoff, plan marketing, valeur client, prix export).
- Semaine 2 : marketing stratégique. Deux cas de diagnostic et un plan marketing complet.
- Semaine 3 : relation client et force de vente. Calculs de valeur client, d''attrition, de taille de force de vente, de rémunération.
- Semaine 4 : commerce international. Incoterms, prix export, crédit documentaire, risque de change.
- Semaine 5 : deux cas de synthèse chronométrés, corrigés en groupe.
- Semaine 6 : reprise des erreurs, préparation des oraux, repos.

Si vous êtes en stage, réservez au moins une heure chaque soir et une demi-journée le week-end. Utilisez votre entreprise d''accueil comme terrain d''exemples, en respectant la confidentialité.

## Points clés

- Licence 3 : année de synthèse, raisonnement de décideur.
- Trois matières clés : marketing stratégique, relation client et force de vente, commerce international.
- Démarche : diagnostic, calculs, recommandations chiffrées, cohérence.
- Révisions organisées autour de cas complets.

## Exercices pratiques

- Exercice 1. Expliquez la différence entre un diagnostic et une recommandation.
- Exercice 2. Citez trois types d''épreuves de Licence 3 et une attente du correcteur pour chacune.
- Exercice 3. Rédigez la structure (titres seulement) d''une note de recommandation de deux pages adressée au directeur commercial d''une PME.
- Exercice 4. Cas pratique. Khady, en stage dans une entreprise de distribution à Dakar, a six semaines avant ses examens et ne peut réviser que le soir. Proposez-lui un planning et deux façons d''utiliser son stage pour réviser.
- Exercice 5. Donnez deux arguments pour et deux arguments contre l''idée qu''une PME sénégalaise devrait exporter dans la sous-région.

## Corrigé

- Exercice 1. Le diagnostic décrit et analyse la situation (environnement, forces, faiblesses) sans prendre de décision. La recommandation propose des choix et des actions justifiés par le diagnostic, avec moyens, calendrier et indicateurs.
- Exercice 2. Cas de synthèse : un diagnostic structuré et des recommandations cohérentes. Exercice technique : des calculs justes et interprétés. Question de réflexion : une problématique, un plan, des exemples.
- Exercice 3. Objet et contexte ; constat et diagnostic ; options envisagées ; recommandation ; plan d''action (actions, responsables, calendrier, budget) ; indicateurs de suivi ; conclusion.
- Exercice 4. Lundi à jeudi : une heure de fiche et d''exercices sur la matière de la semaine (stratégie, puis relation client, puis international). Samedi : un cas complet de trois heures. Semaine 5 : deux sujets chronométrés. Semaine 6 : reprise des erreurs. Utiliser le stage : observer la segmentation des clients de l''entreprise et la rémunération des commerciaux, et analyser un dossier d''importation pour comprendre incoterms et paiements.
- Exercice 5. Pour : marché sous-régional plus large que le marché national ; libre circulation des produits originaires au sein de l''UEMOA et monnaie commune avec les pays de l''Union, qui supprime le risque de change dans cette zone. Contre : coûts logistiques et de prospection élevés ; concurrence de produits importés et besoin d''adapter l''offre aux goûts locaux.', 'texte', 45, true, 10
from public.courses c where c.slug = 'lic-mkt-l3'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Réussir ses examens de Licence 3 en Marketing et commerce');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Marketing stratégique : l''essentiel pour l''examen', '## Objectifs de la leçon

- Mener un diagnostic stratégique externe et interne, puis une synthèse SWOT.
- Découper l''entreprise en domaines d''activité stratégiques et les analyser avec la matrice BCG.
- Choisir une stratégie de développement avec la matrice d''Ansoff et une stratégie concurrentielle.
- Construire un plan marketing.

## 1. Le diagnostic stratégique

Le marketing stratégique fixe les orientations à moyen et long terme : quels marchés servir, avec quel avantage concurrentiel, quels produits développer ou abandonner. Il précède et encadre le marketing opérationnel.

Diagnostic externe. L''analyse PESTEL passe en revue l''environnement : politique, économique, socioculturel, technologique, écologique, légal. Pour une entreprise agroalimentaire sénégalaise : politiques de soutien à la transformation locale, pouvoir d''achat et inflation, urbanisation et nouveaux modes de consommation, diffusion du paiement mobile, contraintes environnementales sur les emballages, normes sanitaires. L''analyse des cinq forces concurrentielles de Porter examine l''intensité de la concurrence, la menace des nouveaux entrants, la menace des produits de substitution, le pouvoir de négociation des clients et celui des fournisseurs.

Diagnostic interne. On évalue les ressources (financières, humaines, matérielles, marques) et les compétences (savoir-faire de fabrication, réseau de distribution, connaissance des clients). On cherche les facteurs clés de succès du marché et l''on se compare aux concurrents.

Synthèse SWOT. Schéma décrit : un tableau de quatre cases. En haut, l''interne : forces (Strengths) et faiblesses (Weaknesses). En bas, l''externe : opportunités (Opportunities) et menaces (Threats). La SWOT n''est utile que si elle débouche sur des choix : s''appuyer sur ses forces pour saisir les opportunités, corriger les faiblesses qui exposent aux menaces.

## 2. Les domaines d''activité stratégiques et la matrice BCG

Un domaine d''activité stratégique (DAS) est un ensemble homogène de produits partageant les mêmes clients, concurrents et facteurs clés de succès. La matrice du Boston Consulting Group (BCG) positionne chaque DAS selon deux axes :

- Taux de croissance du marché (axe vertical) : seuil souvent retenu de 10 % par an, à adapter au contexte.
- Part de marché relative (axe horizontal) : ventes du DAS / ventes du principal concurrent (ou du suivant si l''on est leader). Seuil de 1.

Quatre cases :

- Vedette (croissance forte, PDM relative supérieure à 1) : rentable mais gourmande en investissements ; à maintenir.
- Vache à lait (croissance faible, PDM relative supérieure à 1) : génère des liquidités ; à rentabiliser.
- Dilemme (croissance forte, PDM relative inférieure à 1) : besoin de fonds important, avenir incertain ; investir massivement ou abandonner.
- Poids mort (croissance faible, PDM relative inférieure à 1) : rentabilité faible ; à abandonner ou maintenir sans investir.

Exemple. Groupe Ndiambour Industries, groupe fictif de Louga, a quatre DAS (chiffres en millions de FCFA).

- A, produits laitiers : CA 1 200 ; principal concurrent 800 ; croissance 14 %. PDM relative = 1 200 / 800 = 1,5 : vedette.
- B, huile alimentaire : CA 2 000 ; concurrent 1 000 ; croissance 3 %. PDM relative = 2,0 : vache à lait.
- C, jus de fruits : CA 300 ; leader 1 500 ; croissance 18 %. PDM relative = 0,2 : dilemme.
- D, biscuits : CA 250 ; leader 1 250 ; croissance 2 %. PDM relative = 0,2 : poids mort.

Le CA total est de 3 750 millions : B pèse 53,3 %, A 32 %, C 8 % et D 6,7 %. Le portefeuille est plutôt équilibré : la vache à lait finance la vedette et peut financer le dilemme C si le groupe décide d''y investir. D est candidat à la cession. Limites de la BCG : deux critères seulement, seuils arbitraires, hypothèse discutable selon laquelle la part de marché garantit la rentabilité.

## 3. Les choix stratégiques

Matrice d''Ansoff : quatre voies de croissance selon que le produit et le marché sont actuels ou nouveaux.

- Pénétration du marché (produit actuel, marché actuel) : vendre plus aux clients actuels ou prendre des clients aux concurrents.
- Développement de marché (produit actuel, marché nouveau) : nouvelles régions, export, nouveaux segments.
- Développement de produit (produit nouveau, marché actuel) : nouvelles références pour les mêmes clients.
- Diversification (produit nouveau, marché nouveau) : la voie la plus risquée.

Stratégies concurrentielles génériques (Porter) : domination par les coûts, différenciation, focalisation sur un segment. Selon la position sur le marché, on parle aussi de stratégies de leader, de challenger, de suiveur et de spécialiste.

## 4. Le plan marketing

Le plan marketing formalise la démarche, souvent pour un an :

- Analyse de la situation (diagnostic, SWOT).
- Objectifs SMART : spécifiques, mesurables, atteignables, réalistes, temporellement définis. Exemple : « Porter la part de marché du jus de 8 % à 12 % dans la région de Dakar d''ici décembre. »
- Stratégie : cible, positionnement, voie de croissance.
- Plan d''action : mix détaillé.
- Budget et calendrier.
- Contrôle : tableau de bord, indicateurs, revue trimestrielle.

## Points clés

- Diagnostic externe (PESTEL, cinq forces) et interne, synthèse SWOT orientée décision.
- BCG : croissance du marché × part de marché relative ; vedette, vache à lait, dilemme, poids mort.
- Ansoff : pénétration, développement de marché, de produit, diversification.
- Plan marketing : objectifs SMART, stratégie, actions, budget, contrôle.

## Exercices pratiques

- Exercice 1. Classez selon PESTEL : hausse des prix de l''énergie ; nouvelle norme d''étiquetage ; urbanisation rapide ; essor du paiement mobile.
- Exercice 2. Une entreprise fictive a trois DAS (millions de FCFA) : X (CA 500, concurrent 250, croissance 16 %), Y (CA 1 500, leader 1 800, croissance 4 %), Z (CA 200, leader 800, croissance 20 %). Positionnez-les dans la BCG, calculez leur poids dans le CA et commentez l''équilibre du portefeuille.
- Exercice 3. Classez selon Ansoff : une laiterie de Saint-Louis vend ses yaourts en Mauritanie ; elle lance un fromage local pour ses clients actuels ; elle ouvre une clinique vétérinaire.
- Exercice 4. Reformulez en objectif SMART : « Nous voulons vendre plus. »
- Exercice 5. Un budget marketing représente 5 % d''un CA prévu de 800 millions de FCFA. Répartissez-le : 40 % communication, 35 % force de vente, 25 % promotion. Calculez chaque poste.
- Exercice 6. Cas pratique. Teranga Céréales, PME fictive de Kaolack, transforme mil et maïs (forces : savoir-faire, image locale ; faiblesses : emballages peu attractifs, distribution limitée). Réalisez une SWOT et proposez une stratégie de croissance justifiée.

## Corrigé

- Exercice 1. Énergie : économique. Étiquetage : légal. Urbanisation : socioculturel (démographique). Paiement mobile : technologique.
- Exercice 2. X : PDM relative 2,0, croissance 16 % : vedette, 22,7 % du CA. Y : 1 500 / 1 800 = 0,83, croissance 4 % : poids mort, 68,2 % du CA. Z : 0,25, croissance 20 % : dilemme, 9,1 % du CA. Portefeuille déséquilibré : aucune vache à lait, et le DAS principal est un poids mort. L''entreprise doit améliorer la position de Y (réduction des coûts, différenciation) ou préparer la relève par X, et choisir de financer Z ou non.
- Exercice 3. Développement de marché ; développement de produit ; diversification.
- Exercice 4. « Augmenter le chiffre d''affaires des yaourts de 10 % dans la région de Thiès entre janvier et décembre, en gagnant 50 nouveaux points de vente. »
- Exercice 5. Budget = 40 000 000 FCFA ; communication 16 000 000 ; force de vente 14 000 000 ; promotion 10 000 000.
- Exercice 6. Forces : savoir-faire, image locale. Faiblesses : emballages, distribution. Opportunités : urbanisation, demande de produits locaux et pratiques, export dans la sous-région. Menaces : produits importés, hausse du prix des céréales. Stratégie : pénétration et développement de marché vers les villes (Dakar, Thiès) avec des emballages modernisés et un réseau de distributeurs ; différenciation sur l''origine locale et la qualité ; export ultérieur quand la distribution nationale sera solide.', 'texte', 60, false, 20
from public.courses c where c.slug = 'lic-mkt-l3'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Marketing stratégique : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Gestion de la relation client et force de vente : l''essentiel pour l''examen', '## Objectifs de la leçon

- Expliquer la gestion de la relation client (GRC ou CRM) et ses outils.
- Segmenter une clientèle par la méthode RFM et calculer la valeur vie client.
- Dimensionner et organiser une force de vente.
- Animer, rémunérer et contrôler les vendeurs.

## 1. La gestion de la relation client

La gestion de la relation client (en anglais Customer Relationship Management, CRM) est une démarche qui vise à connaître chaque client, à lui proposer une offre et une relation adaptées, et à le fidéliser de façon rentable. Elle repose sur une base de données clients, des processus (accueil, réclamations, relances) et des outils logiciels qui centralisent les interactions : appels, messages, commandes, visites.

Pourquoi fidéliser ? Conquérir un client coûte généralement plus cher que d''en garder un, et un client fidèle achète davantage, coûte moins à servir et recommande l''entreprise. Mais la fidélisation a aussi un coût : on ne fidélise que les clients rentables ou prometteurs.

Outils de fidélisation : programme de points, service client réactif, messages personnalisés, traitement efficace des réclamations.

Mesures : taux d''attrition = clients perdus sur la période / clients en début de période ; taux de rétention = 1 − taux d''attrition ; satisfaction (enquêtes) ; recommandation, par exemple l''indicateur net de promoteurs = % de promoteurs (notes 9 et 10 sur 10) − % de détracteurs (notes 0 à 6).

Exemple. Kër Électro, distributeur fictif d''électroménager à Dakar, comptait 2 000 clients actifs en janvier ; 300 n''ont rien acheté depuis douze mois. Attrition = 300 / 2 000 = 15 % ; rétention = 85 %. Sur 300 clients interrogés, 180 sont promoteurs et 60 détracteurs : indicateur = 60 % − 20 % = 40.

## 2. Segmenter par la méthode RFM

La méthode RFM classe les clients selon trois critères :

- Récence : date du dernier achat.
- Fréquence : nombre d''achats sur la période.
- Montant : somme dépensée.

On attribue à chaque critère une note (par exemple de 1 à 5) et l''on forme des groupes : les meilleurs clients (notes élevées partout) à choyer, les clients à réactiver (bons montants mais récence faible), les nouveaux clients à développer, les petits clients occasionnels à servir à moindre coût.

## 3. La valeur vie client

La valeur vie client (en anglais Customer Lifetime Value, CLV) estime la marge qu''un client rapportera pendant toute sa relation avec l''entreprise.

Version simple. Un client de Kër Électro achète en moyenne 6 fois par an pour 25 000 FCFA ; le taux de marge est de 30 %. Marge annuelle = 6 × 25 000 × 0,30 = 45 000 FCFA. Sur une durée de relation de 4 ans, sans actualisation : 180 000 FCFA.

Version avec rétention et actualisation : CLV = m × r / (1 + i − r), où m est la marge annuelle, r le taux de rétention et i le taux d''actualisation. Avec m = 45 000, r = 0,8 et i = 0,10 : CLV = 45 000 × 0,8 / 0,3 = 120 000 FCFA. Si conquérir un client coûte 30 000 FCFA, le rapport valeur / coût d''acquisition est de 4 : l''investissement est justifié. La formule suppose une marge et une rétention constantes ; c''est une approximation.

## 4. Dimensionner et organiser la force de vente

La force de vente regroupe les personnes chargées de vendre et de suivre les clients : vendeurs salariés, représentants, agents commerciaux, téléconseillers.

Méthode de la charge de travail. On calcule le nombre de visites nécessaires par an, puis on divise par la capacité d''un vendeur.

Exemple. Kër Électro sert des revendeurs : 120 clients A visités 24 fois par an, 300 clients B 12 fois, 600 clients C 4 fois. Charge = 120 × 24 + 300 × 12 + 600 × 4 = 2 880 + 3 600 + 2 400 = 8 880 visites. Un vendeur fait 5 visites par jour pendant 200 jours, soit 1 000 visites. Effectif = 8 880 / 1 000 = 8,88, donc 9 vendeurs.

Organisation : par zone géographique (simple, déplacements réduits), par produit (expertise technique), par type de clients (grands comptes, revendeurs, particuliers), ou mixte.

## 5. Animer, rémunérer et contrôler

Animer : recruter, former (produits, techniques de vente, outils numériques), motiver (objectifs clairs, reconnaissance, concours de ventes, réunions régulières), accompagner sur le terrain.

Rémunérer. Trois composantes :

- Fixe : sécurité pour le vendeur, rémunère aussi les tâches non commerciales (suivi, conseil) ; peu stimulant seul.
- Commission : pourcentage du chiffre d''affaires ou de la marge ; très motivante, mais revenu instable et risque de vente forcée.
- Prime : liée à un objectif (volume, nouveaux clients, recouvrement).

Exemple. Un vendeur de Kër Électro reçoit 250 000 FCFA de fixe mensuel, 2 % du chiffre d''affaires et une prime de 100 000 FCFA si le CA mensuel atteint 10 000 000 FCFA. Avec un CA de 12 000 000 FCFA : 250 000 + 240 000 + 100 000 = 590 000 FCFA. Avec 9 000 000 FCFA : 250 000 + 180 000 = 430 000 FCFA (pas de prime). Les montants sont fictifs ; la rémunération doit respecter le droit du travail en vigueur et les conventions applicables (le Sénégal prépare un nouveau Code du travail : se référer aux textes en vigueur).

Contrôler : indicateurs d''activité (visites, devis), de résultats (CA, marge, nouveaux clients), de qualité (satisfaction, réclamations, impayés), et coût de la force de vente rapporté au CA.

## Points clés

- CRM : connaître, personnaliser, fidéliser de façon rentable.
- RFM pour segmenter ; CLV = m × r / (1 + i − r) pour valoriser.
- Effectif = charge de visites / capacité d''un vendeur, arrondi au supérieur.
- Rémunération : fixe, commission, prime, à équilibrer selon les objectifs.

## Exercices pratiques

- Exercice 1. Une entreprise avait 1 500 clients au 1er janvier et en conserve 1 275 au 31 décembre (hors nouveaux). Calculez attrition et rétention.
- Exercice 2. Calculez la CLV avec m = 30 000 FCFA, r = 0,7, i = 12 %.
- Exercice 3. Clients : 80 A visités 24 fois par an, 250 B 12 fois, 400 C 6 fois. Un vendeur fait 6 visites par jour sur 210 jours. Combien de vendeurs ?
- Exercice 4. Option A : fixe 300 000 FCFA + 1 % du CA. Option B : fixe 150 000 FCFA + 3 % du CA. À partir de quel CA mensuel l''option B est-elle plus avantageuse pour le vendeur ? Comparez pour 5 000 000 et 10 000 000 FCFA.
- Exercice 5. Proposez trois actions de fidélisation pour une pharmacie de quartier à Thiès.
- Exercice 6. Cas pratique. Les vendeurs de Kër Électro, payés surtout à la commission sur le CA, accordent des remises excessives et négligent le recouvrement. Diagnostiquez et proposez une nouvelle formule de rémunération.

## Corrigé

- Exercice 1. Clients perdus = 225 ; attrition = 225 / 1 500 = 15 % ; rétention = 85 %.
- Exercice 2. CLV = 30 000 × 0,7 / (1 + 0,12 − 0,7) = 21 000 / 0,42 = 50 000 FCFA.
- Exercice 3. Charge = 1 920 + 3 000 + 2 400 = 7 320 visites. Capacité = 6 × 210 = 1 260. Effectif = 5,81, donc 6 vendeurs.
- Exercice 4. Égalité : 300 000 + 0,01 × CA = 150 000 + 0,03 × CA, d''où CA = 150 000 / 0,02 = 7 500 000 FCFA. Au-delà, B est plus avantageuse. À 5 000 000 : A = 350 000, B = 300 000. À 10 000 000 : A = 400 000, B = 450 000.
- Exercice 5. Carte de fidélité avec avantages sur la parapharmacie ; rappel par message du renouvellement des traitements, avec l''accord du client ; conseils gratuits (prise de tension) et accueil personnalisé.
- Exercice 6. Une commission sur le CA pousse à vendre à tout prix, même à perte, et ne récompense pas l''encaissement. Proposition : fixe pour la sécurité, commission calculée sur la marge (et non sur le CA), versée après encaissement, et prime sur objectifs de recouvrement et de nouveaux clients. Plafonner les remises que le vendeur peut accorder seul.', 'texte', 60, false, 30
from public.courses c where c.slug = 'lic-mkt-l3'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Gestion de la relation client et force de vente : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Commerce international : l''essentiel pour l''examen', '## Objectifs de la leçon

- Choisir un marché étranger et un mode d''entrée.
- Connaître les principes des incoterms et le transfert des frais et des risques.
- Calculer un prix export du départ usine au CIF.
- Choisir un moyen de paiement international et gérer le risque de change.

## 1. Pourquoi et comment exporter

Exporter permet d''élargir le marché et de réduire la dépendance au marché national. Pour une entreprise sénégalaise, les marchés proches de l''UEMOA et de la CEDEAO offrent des avantages (proximité, habitudes de consommation voisines, règles d''origine favorables entre pays membres sous conditions), tandis que l''Europe, l''Amérique ou l''Asie exigent souvent des normes plus strictes.

Démarche : diagnostic export, sélection des pays, étude du marché cible, adaptation de l''offre, choix du mode d''entrée, prospection.

Modes d''entrée :

- Export indirect : on vend à un intermédiaire national (société de commerce, centrale d''achat) qui exporte. Peu de risques, peu de contrôle.
- Export direct : on vend soi-même à des clients étrangers, via des agents commerciaux (rémunérés à la commission) ou des importateurs-distributeurs (qui achètent et revendent).
- Export concerté : groupement d''exportateurs, franchise, licence.
- Implantation : filiale commerciale ou de production. Contrôle maximal, risque maximal.

Documents courants : facture commerciale, liste de colisage, document de transport (connaissement maritime, lettre de transport aérien ou routier), certificat d''origine, certificats sanitaires ou phytosanitaires selon les produits, déclaration en douane. Les exigences varient selon le pays et le produit : on les vérifie auprès des services compétents.

## 2. Les incoterms en principes

Les incoterms sont des règles publiées par la Chambre de commerce internationale. Ils précisent la répartition entre vendeur et acheteur des frais, des risques et de certaines formalités (dédouanement, assurance) ; ils ne règlent ni le transfert de propriété ni le paiement. La version la plus récente est la version 2020, qui compte onze règles ; le contrat doit toujours préciser l''incoterm, le lieu et la version, par exemple « FOB Port de Dakar Incoterms 2020 ».

Règles utilisables pour tous modes de transport :

- EXW (à l''usine) : l''acheteur prend tout en charge depuis les locaux du vendeur, y compris le dédouanement export.
- FCA (franco transporteur) : le vendeur remet la marchandise dédouanée export au transporteur choisi par l''acheteur.
- CPT et CIP (port payé ; port payé, assurance comprise) : le vendeur paie le transport jusqu''à destination, mais le risque passe à l''acheteur dès la remise au premier transporteur ; avec CIP, le vendeur souscrit aussi l''assurance.
- DAP (rendu au lieu de destination), DPU (rendu au lieu de destination déchargé), DDP (rendu droits acquittés) : le vendeur supporte le risque jusqu''à destination ; en DDP, il paie aussi le dédouanement et les droits à l''importation.

Règles réservées au transport maritime et fluvial :

- FAS (franco le long du navire), FOB (franco à bord) : le risque passe au port d''embarquement.
- CFR (coût et fret), CIF (coût, assurance et fret) : le vendeur paie le fret jusqu''au port de destination (et l''assurance en CIF), mais le risque passe à l''acheteur dès le chargement à bord au port d''embarquement.

Schéma décrit : une ligne horizontale de l''usine du vendeur à l''entrepôt de l''acheteur. Les règles en E et F s''arrêtent tôt ; les règles en C font payer le transport au vendeur, sans lui laisser le risque ; les règles en D font tout supporter au vendeur jusqu''à destination.

## 3. Calculer un prix export

On construit le prix étape par étape. Exemple : Sahel Mangues SARL, entreprise fictive de Ziguinchor, exporte des mangues séchées vers l''Europe.

- Prix départ usine (EXW) : 9 800 000 FCFA.
- Plus transport jusqu''au port de Dakar : 1 200 000 FCFA.
- Plus formalités et dédouanement export : 600 000 FCFA.
- Plus frais portuaires et de mise à bord : 400 000 FCFA.
- Prix FOB Dakar : 12 000 000 FCFA.
- Plus fret maritime jusqu''au port européen : 1 500 000 FCFA. Prix CFR = 13 500 000 FCFA.

Pour le CIF, l''assurance porte souvent sur 110 % de la valeur CIF (pratique courante, minimum prévu en CIF). Avec un taux de prime de 0,5 % (taux fictif pour l''exemple) : CIF = CFR / (1 − 1,1 × taux) = 13 500 000 / (1 − 0,0055) = 13 574 661 FCFA, dont une prime d''assurance de 74 661 FCFA. Vérification : 1,1 × 13 574 661 × 0,005 = 74 661.

Conversion : la parité entre le franc CFA et l''euro est fixe, 1 € = 655,957 FCFA. Prix CIF ≈ 13 574 661 / 655,957 ≈ 20 694,44 €.

## 4. Le paiement international

Moyens et techniques, du moins sûr au plus sûr pour l''exportateur :

- Virement après livraison (paiement sur compte ouvert) : simple et peu coûteux, mais l''exportateur supporte tout le risque d''impayé.
- Remise documentaire (encaissement documentaire) : la banque remet les documents à l''acheteur contre paiement ou acceptation d''un effet. Risque : l''acheteur peut refuser de lever les documents.
- Crédit documentaire : la banque de l''acheteur s''engage à payer si l''exportateur présente des documents conformes aux conditions du crédit ; il peut être confirmé par une banque du pays de l''exportateur. Très sûr, mais coûteux et exigeant : la moindre divergence documentaire peut bloquer le paiement.
- Paiement d''avance : idéal pour l''exportateur, difficile à obtenir.

Le risque de change. Avec la zone euro, il est neutralisé par la parité fixe. Avec une devise flottante comme le dollar, il existe. Exemple : Sahel Mangues facture 50 000 dollars. Au moment du contrat, 1 dollar vaut 600 FCFA (cours fictif) : recette attendue 30 000 000 FCFA. Au paiement, le dollar vaut 580 FCFA : recette 29 000 000 FCFA, soit une perte de change de 1 000 000 FCFA. Couvertures possibles : facturer en euros ou en FCFA, couverture à terme auprès de la banque, clauses d''ajustement.

## Points clés

- Incoterms : frais, risques, formalités ; toujours préciser le lieu et la version.
- En C, le vendeur paie le transport mais le risque passe au départ.
- CIF = CFR / (1 − 1,1 × taux de prime) ; 1 € = 655,957 FCFA.

## Exercices pratiques

- Exercice 1. Avec FOB Dakar, qui supporte le risque d''une avarie pendant la traversée ? Et en CIF ? Et en DAP ?
- Exercice 2. Prix FOB 8 000 000 FCFA ; fret 900 000 FCFA ; prime 0,4 % (taux fictif) sur 110 % du CIF. Calculez le CIF, la prime et le prix en euros.
- Exercice 3. Un exportateur facture 40 000 dollars. Cours à la signature : 610 FCFA ; au paiement : 590 FCFA (cours fictifs). Calculez le résultat de change.
- Exercice 4. Classez du plus risqué au moins risqué pour l''exportateur : crédit documentaire confirmé, virement après livraison, remise documentaire.
- Exercice 5. Cas pratique. Une coopérative fictive de Kaolack veut exporter de la farine de mil vers un nouveau client au Mali, puis vers l''Europe. Proposez un mode d''entrée, un incoterm et un moyen de paiement pour chaque destination.

## Corrigé

- Exercice 1. FOB : l''acheteur, car le risque passe une fois la marchandise à bord à Dakar. CIF : l''acheteur aussi, même si le vendeur a payé fret et assurance. DAP : le vendeur, jusqu''au lieu de destination convenu.
- Exercice 2. CFR = 8 900 000 FCFA. CIF = 8 900 000 / (1 − 0,0044) = 8 939 333 FCFA. Prime = 1,1 × 8 939 333 × 0,004 = 39 333 FCFA. En euros : 8 939 333 / 655,957 ≈ 13 627,93 €.
- Exercice 3. Recette attendue 24 400 000 FCFA ; recette réelle 23 600 000 FCFA ; perte de change 800 000 FCFA.
- Exercice 4. Virement après livraison, puis remise documentaire, puis crédit documentaire confirmé.
- Exercice 5. Mali : export direct à un importateur-distributeur, incoterm DAP ou FCA selon la logistique choisie, transport routier, monnaie commune de l''UEMOA donc pas de risque de change, paiement par acompte puis virement ou remise documentaire. Europe : passer d''abord par un importateur spécialisé, incoterm FOB ou FCA, crédit documentaire confirmé pour un nouveau client, facturation en euros (parité fixe), vérification préalable des normes sanitaires et d''étiquetage.', 'texte', 60, false, 40
from public.courses c where c.slug = 'lic-mkt-l3'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Commerce international : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Sujet type d''examen de Licence 3 en Marketing et commerce (corrigé)', '## Présentation

Sujet d''entraînement, non officiel, sous forme de cas de synthèse de quatre heures. Barème indicatif, non officiel. Calculatrice autorisée.

## Le sujet

Sahel Agro Industries SA, groupe fictif installé à Dakar, transforme des produits agricoles. Il veut redéfinir sa stratégie, réorganiser sa force de vente et développer l''export.

Dossier 1 – Marketing stratégique (8 points). Données en millions de FCFA :

- Huile : CA 3 000 ; principal concurrent 2 000 ; croissance du marché 2 %.
- Jus : CA 600 ; leader 1 200 ; croissance 15 %.
- Farine infantile : CA 900 ; principal concurrent 600 ; croissance 12 %.

Questions :

- 1.1 Positionnez les DAS dans la matrice BCG (seuils : 10 % et 1) et calculez leur poids dans le CA. (3 points)
- 1.2 Commentez l''équilibre du portefeuille et recommandez une stratégie par DAS. (3 points)
- 1.3 Le groupe envisage de vendre sa farine infantile en Côte d''Ivoire. Situez ce choix dans la matrice d''Ansoff. (2 points)

Dossier 2 – Relation client et force de vente (6 points)

- 2.1 Un client détaillant achète 8 fois par an pour 12 000 FCFA ; taux de marge 25 % ; rétention 75 % ; taux d''actualisation 10 %. Calculez la valeur vie client. (2 points)
- 2.2 Clients : 200 A visités 12 fois par an, 500 B 6 fois, 800 C 2 fois. Un vendeur fait 4 visites par jour sur 220 jours. Calculez l''effectif nécessaire. (2 points)
- 2.3 Proposez une formule de rémunération cohérente avec l''objectif de conquérir de nouveaux détaillants. (2 points)

Dossier 3 – Commerce international (6 points). Expédition de farine vers l''Europe : FOB Dakar 15 000 000 FCFA ; fret 2 000 000 FCFA ; prime d''assurance 0,6 % (taux fictif) sur 110 % du CIF.

- 3.1 Calculez le prix CIF, la prime et le prix en euros. (3 points)
- 3.2 À quel moment le risque passe-t-il à l''acheteur en CIF ? (1 point)
- 3.3 Quel moyen de paiement recommandez-vous pour ce premier client ? (2 points)

## Corrigé détaillé

Dossier 1

- 1.1 Huile : PDM relative 3 000 / 2 000 = 1,5 ; croissance 2 % : vache à lait ; 66,7 % du CA (total 4 500). Jus : 600 / 1 200 = 0,5 ; croissance 15 % : dilemme ; 13,3 %. Farine infantile : 900 / 600 = 1,5 ; croissance 12 % : vedette ; 20 %.
- 1.2 Portefeuille globalement sain : la vache à lait finance la vedette et peut financer le dilemme. Risque : forte dépendance à l''huile (deux tiers du CA) sur un marché qui stagne. Recommandations : huile, rentabiliser et maîtriser les coûts ; farine infantile, investir pour garder le leadership (innovation, qualité, distribution en pharmacie) ; jus, décision à prendre : investir fortement sur un segment précis (jus locaux haut de gamme) ou se retirer si l''écart avec le leader est trop grand.
- 1.3 Produit actuel, marché nouveau : développement de marché.

Dossier 2

- 2.1 Marge annuelle = 8 × 12 000 × 0,25 = 24 000 FCFA. CLV = 24 000 × 0,75 / (1 + 0,10 − 0,75) = 18 000 / 0,35 = 51 429 FCFA.
- 2.2 Charge = 2 400 + 3 000 + 1 600 = 7 000 visites. Capacité = 4 × 220 = 880. Effectif = 7,95, soit 8 vendeurs.
- 2.3 Fixe modéré pour la sécurité ; commission sur la marge des ventes encaissées ; prime par nouveau détaillant actif (ayant passé au moins trois commandes) ; challenge trimestriel. Les montants doivent respecter la réglementation du travail en vigueur.

Dossier 3

- 3.1 CFR = 17 000 000 FCFA. CIF = 17 000 000 / (1 − 1,1 × 0,006) = 17 000 000 / 0,9934 = 17 112 945 FCFA. Prime = 1,1 × 17 112 945 × 0,006 = 112 945 FCFA. En euros : 17 112 945 / 655,957 ≈ 26 088,52 €.
- 3.2 Dès que la marchandise est à bord du navire au port de Dakar.
- 3.3 Crédit documentaire, de préférence confirmé, pour un premier client inconnu ; facturation en euros, sans risque de change grâce à la parité fixe.

## Exercices pratiques

- Exercice 1. Que signifie l''acronyme SMART ?
- Exercice 2. Quelle case de la BCG correspond à une croissance faible et une PDM relative de 0,4 ?
- Exercice 3. 120 promoteurs et 30 détracteurs sur 200 répondants : indicateur net de promoteurs ?
- Exercice 4. Quelle est la différence entre DAP et DDP ?
- Exercice 5. Citez deux documents d''exportation.
- Exercice 6. Un vendeur de Sahel Agro Industries peut choisir entre un fixe de 300 000 FCFA plus 1 % du CA mensuel et un fixe de 150 000 FCFA plus 3 % du CA. Il réalise en moyenne 6 000 000 FCFA par mois. Quelle option est la plus avantageuse pour lui ? À partir de quel CA l''autre option devient-elle meilleure ?

## Corrigé

- Exercice 1. Spécifique, mesurable, atteignable, réaliste, temporellement défini.
- Exercice 2. Poids mort.
- Exercice 3. 60 % − 15 % = 45.
- Exercice 4. En DDP, le vendeur supporte en plus le dédouanement à l''importation et les droits et taxes ; en DAP, ils restent à la charge de l''acheteur.
- Exercice 5. Facture commerciale et connaissement (ou liste de colisage, certificat d''origine).
- Exercice 6. À 6 000 000 FCFA : option 1 = 300 000 + 60 000 = 360 000 FCFA ; option 2 = 150 000 + 180 000 = 330 000 FCFA. L''option 1 est meilleure. Point d''égalité : 150 000 / 0,02 = 7 500 000 FCFA ; au-delà, l''option 2 devient plus avantageuse. Un vendeur qui pense progresser fortement peut préférer l''option 2, plus motivante.', 'texte', 60, false, 50
from public.courses c where c.slug = 'lic-mkt-l3'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Sujet type d''examen de Licence 3 en Marketing et commerce (corrigé)');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Marketing stratégique', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : étudiants de Licence 3 en marketing, commerce, gestion.
- Objectifs : mener un diagnostic PESTEL, cinq forces et SWOT ; positionner des DAS dans la matrice BCG ; choisir une voie de croissance avec Ansoff ; construire un plan marketing avec objectifs SMART.
- Matériel : diaporama, matrice BCG vierge, calculatrice.
- Prérequis : leçon « Marketing stratégique : l''essentiel pour l''examen ».

## Déroulé minuté

## 00:00 – 05:00 · Accueil et objectifs

Bonjour à toutes et à tous. Nous changeons d''altitude : jusqu''ici, vous avez appris à fixer un prix ou à lancer une campagne. Aujourd''hui, vous allez raisonner comme un directeur général : dans quelles activités investir, lesquelles abandonner, où aller chercher la croissance. Notre fil rouge : Groupe Ndiambour Industries, groupe fictif de Louga, présent dans les produits laitiers, l''huile, les jus et les biscuits.

Visuel : diapositive titre et plan : diagnostic, BCG, Ansoff, plan marketing.

## 05:00 – 20:00 · Le diagnostic externe

Visuel : six cases PESTEL.

Premier outil, le PESTEL. Politique : les pouvoirs publics encouragent la transformation locale des produits agricoles ; c''est une opportunité. Économique : le pouvoir d''achat est sous pression, les clients arbitrent sur le prix. Socioculturel : l''urbanisation et le travail des femmes augmentent la demande de produits pratiques. Technologique : le paiement mobile et les réseaux sociaux transforment la distribution et la communication. Écologique : les emballages plastiques sont de plus en plus critiqués. Légal : les normes sanitaires et d''étiquetage se renforcent.

Attention à l''erreur classique : faire une liste sans conclusion. Chaque facteur doit être qualifié d''opportunité ou de menace pour l''entreprise étudiée.

Deuxième outil, les cinq forces de Porter. Pour l''huile de Ndiambour : concurrence intense entre marques locales et importées ; menace de nouveaux entrants modérée, car il faut une usine et un réseau ; substituts limités ; clients, c''est-à-dire grossistes et grandes surfaces, puissants ; fournisseurs de graines plus ou moins puissants selon les récoltes. Conclusion : marché peu attractif en termes de marges, où il faut être très efficace sur les coûts.

Question à poser : un marché où les clients sont très concentrés, est-ce une opportunité ou une menace ? Réponse : plutôt une menace, car leur pouvoir de négociation est fort.

## 20:00 – 30:00 · Diagnostic interne et SWOT

Le diagnostic interne recense les ressources et les compétences. Ndiambour possède une marque connue dans le nord du pays, une usine récente pour les produits laitiers, un réseau de grossistes solide ; mais sa présence à Dakar est faible et ses emballages vieillissent.

Visuel : SWOT en quatre cases.

Forces : marque régionale, usine laitière, réseau de grossistes. Faiblesses : faible présence à Dakar, emballages. Opportunités : urbanisation, demande de produits locaux. Menaces : concurrence importée, hausse des coûts des matières premières. Et maintenant la question qui rapporte des points : que fait-on de cette SWOT ? On croise. Force et opportunité : utiliser l''usine laitière pour conquérir Dakar. Faiblesse et menace : moderniser les emballages avant que les produits importés ne prennent la place.

## 30:00 – 45:00 · La matrice BCG : exercice commenté

Visuel : matrice à quatre cases, croissance verticale, part de marché relative horizontale.

Calculons. Produits laitiers : 1 200 millions contre 800 pour le principal concurrent, part relative 1,5 ; croissance 14 %. Au-dessus de 10 % et au-dessus de 1 : vedette. Huile : 2 000 contre 1 000, part relative 2 ; croissance 3 % : vache à lait. Jus : 300 contre 1 500 pour le leader, part relative 0,2 ; croissance 18 % : dilemme. Biscuits : 250 contre 1 250, part relative 0,2 ; croissance 2 % : poids mort.

Poids dans le chiffre d''affaires : total 3 750 millions. Huile 53,3 %, produits laitiers 32 %, jus 8 %, biscuits 6,7 %.

Interprétation. Le portefeuille est plutôt équilibré : une vache à lait solide finance une vedette. Le jus est un pari : il faudrait beaucoup investir pour rattraper un leader cinq fois plus gros. Les biscuits pèsent peu et ne rapportent guère : candidats à la cession. Dans votre copie, n''oubliez pas les limites : deux critères seulement, des seuils conventionnels, et l''hypothèse que la part de marché garantit la rentabilité, ce qui n''est pas toujours vrai sur des marchés où les petits acteurs spécialisés réussissent.

## 45:00 – 50:00 · Quiz interactif

Mettez en pause.

- Question 1 : part relative 0,8 et croissance 4 %, quelle case ? Réponse : poids mort.
- Question 2 : quelle case finance les autres ? Réponse : la vache à lait.
- Question 3 : dans la SWOT, les opportunités sont-elles internes ou externes ? Réponse : externes.

## 50:00 – 1:03:00 · Ansoff et stratégies concurrentielles

Visuel : matrice d''Ansoff deux sur deux.

Quatre voies de croissance. Pénétration : vendre plus de yaourts aux clients actuels, par exemple avec de nouveaux formats ou une meilleure présence en boutique. Développement de marché : vendre les yaourts à Dakar ou en Mauritanie. Développement de produit : lancer un fromage frais pour les clients actuels. Diversification : se lancer dans une activité sans lien, comme une clinique vétérinaire ; c''est la voie la plus risquée car l''entreprise ne maîtrise ni le produit ni le marché.

Porter propose trois stratégies génériques. Domination par les coûts : être le moins cher à produire, ce qui convient à l''huile. Différenciation : offrir quelque chose de perçu comme unique, comme un yaourt au lait local. Focalisation : se concentrer sur un segment, par exemple les jus haut de gamme pour les hôtels et restaurants. Le danger, selon Porter, est de rester « coincé au milieu », ni moins cher ni différent.

Question à poser : pour le jus, dilemme face à un leader cinq fois plus gros, quelle stratégie ? Réponse possible : la focalisation sur un segment où le leader est faible, plutôt qu''un affrontement frontal.

On classe aussi les entreprises selon leur position. Le leader défend sa place et cherche à agrandir le marché. Le challenger attaque le leader, de front ou sur ses points faibles. Le suiveur s''aligne sans provoquer. Le spécialiste se concentre sur une niche qu''il domine. Ndiambour est challenger sur les produits laitiers à Dakar, mais leader de l''huile dans sa région : la stratégie n''est donc pas la même d''un DAS à l''autre.

## 1:03:00 – 1:18:00 · Le plan marketing

Visuel : les six rubriques du plan marketing.

Le plan marketing est le document qui transforme la stratégie en actions. Situation : diagnostic et SWOT. Objectifs SMART. Comparons. « Vendre plus » : mauvais objectif. « Porter la part de marché du yaourt à Dakar de 5 % à 9 % d''ici décembre, en référençant 300 nouveaux points de vente » : bon objectif, spécifique, mesurable, atteignable si les moyens suivent, réaliste, daté.

Stratégie : cible des familles urbaines, positionnement « lait local, fraîcheur garantie », développement de marché vers Dakar. Plan d''action : produit avec nouvel emballage, prix aligné sur les marques nationales, distribution par deux distributeurs dakarois, communication radio et réseaux sociaux, dégustations. Budget : par exemple 5 % du chiffre d''affaires prévu. Si le CA prévu est de 800 millions, le budget est de 40 millions, réparti en 16 millions de communication, 14 millions de force de vente et 10 millions de promotion. Contrôle : tableau de bord mensuel avec part de marché, nombre de points de vente, ventes par zone, notoriété.

## 1:18:00 – 1:26:00 · Correction commentée d''un portefeuille déséquilibré

Exercice : X, 500 contre 250, croissance 16 % ; Y, 1 500 contre 1 800, croissance 4 % ; Z, 200 contre 800, croissance 20 %. X a une part relative de 2 : vedette. Y, 0,83 : poids mort, et il représente 68,2 % du chiffre d''affaires. Z, 0,25 : dilemme. Diagnostic : aucune vache à lait, et le cœur de l''entreprise est un poids mort. C''est un portefeuille en danger : il faut soit redresser Y en réduisant ses coûts ou en le différenciant, soit accélérer X pour qu''il devienne la future vache à lait quand son marché ralentira. Ce que le correcteur valorise : un diagnostic global du portefeuille, pas seulement le classement des DAS un par un.

## 1:26:00 – 1:30:00 · Synthèse et évaluation finale

Retenez : PESTEL et cinq forces pour l''externe, ressources et compétences pour l''interne, SWOT croisée ; BCG ; Ansoff ; Porter ; plan marketing avec objectifs SMART.

- Question 1 : citez les six dimensions du PESTEL. Réponse : politique, économique, socioculturelle, technologique, écologique, légale.
- Question 2 : CA 900, principal concurrent 600, croissance 12 % : case BCG ? Réponse : vedette (1,5 et 12 %).
- Question 3 : lancer un nouveau produit pour les clients actuels, c''est quelle voie d''Ansoff ? Réponse : développement de produit.
- Question 4 : citez les trois stratégies génériques de Porter. Réponse : domination par les coûts, différenciation, focalisation.
- Question 5 : que signifie le T de SMART ? Réponse : temporellement défini, c''est-à-dire daté.

Merci et à bientôt.', 'video', 90, false, 60
from public.courses c where c.slug = 'lic-mkt-l3'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Marketing stratégique');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Gestion de la relation client et force de vente', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : étudiants de Licence 3 en marketing, commerce, gestion.
- Objectifs : expliquer la démarche CRM ; mesurer attrition, rétention et recommandation ; segmenter par RFM ; calculer la valeur vie client ; dimensionner une force de vente ; concevoir une rémunération et un contrôle des vendeurs.
- Matériel : diaporama, extrait fictif de base clients, calculatrice.
- Prérequis : leçon « Gestion de la relation client et force de vente : l''essentiel pour l''examen ».

## Déroulé minuté

## 00:00 – 05:00 · Accueil et objectifs

Bonjour à toutes et à tous. Aujourd''hui, nous parlons des deux piliers de la performance commerciale : les clients que l''on garde et les vendeurs qui les servent. Notre fil rouge est Kër Électro, distributeur fictif d''électroménager à Dakar, qui vend à des particuliers et à des revendeurs.

Visuel : diapositive titre, plan : CRM, mesures, RFM, valeur client, force de vente.

## 05:00 – 18:00 · La démarche CRM

Le CRM, c''est d''abord une philosophie : traiter chaque client comme une relation dans la durée, et non comme une transaction isolée. C''est ensuite un outil : une base de données qui enregistre qui est le client, ce qu''il a acheté, quand, ses appels, ses réclamations. Beaucoup de commerces sénégalais font du CRM sans le savoir : le boutiquier qui connaît chaque famille du quartier et lui fait crédit. Le défi d''une entreprise en croissance est de conserver cette connaissance quand on passe de cent à dix mille clients.

Pourquoi fidéliser ? Parce que conquérir coûte généralement plus cher que garder, et qu''un client fidèle achète plus, coûte moins à servir et recommande. Mais attention : on ne fidélise pas tout le monde à n''importe quel prix. Un client qui n''achète qu''en promotion et réclame sans cesse peut coûter plus qu''il ne rapporte.

Concrètement, comment démarrer ? Kër Électro commence par une fiche client unique : nom, téléphone, quartier, achats, garanties, réclamations. Chaque vendeur et chaque technicien du service après-vente l''alimente. Au bout de quelques mois, l''entreprise peut répondre à des questions simples mais décisives : qui sont nos vingt meilleurs clients ? Qui n''a rien acheté depuis six mois ? Quelles réclamations reviennent le plus souvent ? Le logiciel n''est qu''un outil : sans discipline de saisie, la base est vide ou fausse, et le CRM échoue.

Un point juridique important : collecter et utiliser des données personnelles impose de respecter la réglementation sur la protection des données en vigueur et d''obtenir l''accord du client pour les messages commerciaux. Renseignez-vous sur les textes applicables dans votre pays.

## 18:00 – 30:00 · Mesurer : attrition, rétention, recommandation

Kër Électro avait 2 000 clients actifs en janvier ; 300 n''ont plus rien acheté depuis un an. Attrition : 300 sur 2 000, soit 15 %. Rétention : 85 %.

La recommandation se mesure souvent par une question : « Sur une échelle de 0 à 10, recommanderiez-vous Kër Électro à un proche ? » Ceux qui répondent 9 ou 10 sont des promoteurs, de 0 à 6 des détracteurs. Sur 300 répondants, 180 promoteurs, soit 60 %, et 60 détracteurs, soit 20 %. Indicateur net : 60 moins 20, soit 40. On suit son évolution dans le temps et l''on contacte les détracteurs pour comprendre leur insatisfaction.

Le traitement des réclamations est un moment de vérité. Un client dont le problème est résolu vite et bien devient souvent plus fidèle qu''un client qui n''a jamais eu de problème. Méthode : accuser réception rapidement, s''excuser sans chercher de coupable, proposer une solution concrète et un délai, puis rappeler pour vérifier la satisfaction.

## 30:00 – 40:00 · La segmentation RFM

Visuel : extrait de base clients avec dernière date d''achat, nombre d''achats, montant.

Récence, fréquence, montant. Madame Diop a acheté la semaine dernière, six fois cette année, pour 600 000 francs : notes élevées partout, cliente à choyer, avec invitation aux ventes privées. Monsieur Fall a dépensé 900 000 francs l''an dernier mais rien depuis huit mois : bon montant, récence faible, client à réactiver avec un appel personnalisé. Un jeune couple a fait un premier achat le mois dernier : nouveau client à développer avec un message de bienvenue et une offre sur les accessoires. La RFM dit à qui parler, avec quel message, et combien dépenser.

## 40:00 – 45:00 · Quiz interactif

Mettez en pause.

- Question 1 : 400 clients perdus sur 2 500 : attrition ? Réponse : 16 %.
- Question 2 : que signifie le R de RFM ? Réponse : récence.
- Question 3 : 50 % de promoteurs et 30 % de détracteurs : indicateur net ? Réponse : 20.

## 45:00 – 58:00 · La valeur vie client

Un client achète 6 fois par an pour 25 000 francs, avec 30 % de marge : 45 000 francs de marge par an. Sur 4 ans, sans actualisation : 180 000 francs. Mais tous les clients ne restent pas 4 ans, et un franc futur vaut moins qu''un franc aujourd''hui. D''où la formule : marge annuelle fois rétention, divisé par un plus taux d''actualisation moins rétention. Avec 80 % de rétention et 10 % d''actualisation : 45 000 fois 0,8, soit 36 000, divisé par 0,3 : 120 000 francs.

À quoi sert ce chiffre ? À décider combien on peut dépenser pour conquérir un client. Si la conquête coûte 30 000 francs, le rapport est de 4 : c''est rentable. Si elle coûtait 150 000 francs, on détruirait de la valeur. Et regardez l''effet de la rétention : avec 70 % de rétention et 12 % d''actualisation pour une marge de 30 000 francs, on obtient 21 000 divisé par 0,42, soit 50 000 francs. Améliorer la rétention de quelques points augmente fortement la valeur du portefeuille clients.

## 58:00 – 1:10:00 · Dimensionner et organiser la force de vente

Méthode de la charge de travail. Kër Électro a 120 revendeurs A visités deux fois par mois, soit 24 fois par an ; 300 B visités chaque mois ; 600 C visités chaque trimestre. Charge : 2 880 plus 3 600 plus 2 400, soit 8 880 visites. Capacité d''un vendeur : 5 visites par jour, 200 jours par an, soit 1 000 visites. Effectif : 8,88. On arrondit toujours au supérieur : 9 vendeurs. Pourquoi ? Parce qu''avec 8, des clients ne seraient pas visités comme prévu.

Organisation. Par zone : Dakar Plateau, Pikine-Guédiawaye, Rufisque, régions ; simple et économique en déplacements. Par produit : un spécialiste froid, un spécialiste cuisson, utile si les produits sont techniques. Par client : une équipe grands comptes pour les chaînes de magasins, une équipe revendeurs. Souvent, on combine.

## 1:10:00 – 1:22:00 · Animer et rémunérer

Animer, c''est recruter les bons profils, former en continu, fixer des objectifs clairs, reconnaître les réussites et accompagner sur le terrain. Une réunion commerciale hebdomadaire courte, avec les chiffres de la semaine et le partage d''une bonne pratique, vaut mieux qu''un long discours mensuel.

Rémunérer. Exemple : fixe de 250 000 francs, commission de 2 % du chiffre d''affaires, prime de 100 000 francs au-delà de 10 millions de CA mensuel. Montants fictifs. À 12 millions : 250 000 plus 240 000 plus 100 000, soit 590 000 francs. À 9 millions : 250 000 plus 180 000, soit 430 000 francs. Toute formule doit respecter le droit du travail en vigueur ; le Sénégal prépare un nouveau Code du travail, référez-vous aux textes applicables au moment des faits.

Comparer deux formules. Option A : 300 000 plus 1 %. Option B : 150 000 plus 3 %. Point d''égalité : 150 000 divisé par 0,02, soit 7,5 millions. En dessous, A est meilleure pour le vendeur ; au-dessus, B. Un vendeur confiant choisira B. Pour l''entreprise, B motive davantage mais rend le coût plus variable.

Piège à éviter : commissionner sur le chiffre d''affaires quand les vendeurs peuvent accorder des remises. Ils vendent beaucoup, mais à marge faible. Mieux vaut commissionner sur la marge, après encaissement.

## 1:22:00 – 1:27:00 · Correction commentée d''un cas

Les vendeurs de Kër Électro accordent trop de remises et négligent le recouvrement. Diagnostic : la formule récompense le volume et non la rentabilité ni l''encaissement. Correction : fixe de sécurité ; commission sur la marge des ventes encaissées ; prime sur objectifs de recouvrement et de nouveaux clients ; plafonnement des remises accordées sans validation. Contrôle mensuel : CA, marge, délai d''encaissement, nombre de visites.

## 1:27:00 – 1:30:00 · Synthèse et évaluation finale

- Question 1 : formule de la CLV avec rétention et actualisation ? Réponse : m × r / (1 + i − r).
- Question 2 : charge de 7 000 visites, capacité de 880 par vendeur : effectif ? Réponse : 7,95, donc 8 vendeurs.
- Question 3 : citez les trois composantes de la rémunération. Réponse : fixe, commission, prime.
- Question 4 : pourquoi commissionner sur la marge plutôt que sur le CA ? Réponse : pour éviter les remises excessives et protéger la rentabilité.
- Question 5 : que signifie le M de RFM ? Réponse : montant.

Merci pour votre attention.', 'video', 90, false, 70
from public.courses c where c.slug = 'lic-mkt-l3'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Gestion de la relation client et force de vente');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Commerce international', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : étudiants de Licence 3 en marketing, commerce, gestion.
- Objectifs : choisir un mode d''entrée ; expliquer les principes des incoterms et le transfert des frais et des risques ; calculer un prix FOB, CFR et CIF ; choisir un moyen de paiement et gérer le risque de change.
- Matériel : diaporama, schéma du trajet de la marchandise, calculatrice.
- Prérequis : leçon « Commerce international : l''essentiel pour l''examen ».

## Déroulé minuté

## 00:00 – 05:00 · Accueil et objectifs

Bonjour à toutes et à tous. Le commerce international fait peur à beaucoup d''étudiants à cause des sigles. Promis : à la fin de cette séance, FOB, CIF ou DAP n''auront plus de secret pour vous, et vous saurez calculer un prix export. Notre fil rouge : Sahel Mangues SARL, entreprise fictive de Ziguinchor qui sèche des mangues et veut vendre en Europe et dans la sous-région.

Visuel : diapositive titre et plan : décider d''exporter, incoterms, prix, paiement.

## 05:00 – 18:00 · Décider d''exporter et choisir un mode d''entrée

Pourquoi Sahel Mangues exporterait-elle ? La saison de la mangue est courte, la production est abondante et le marché local ne peut pas tout absorber. Le séchage permet de conserver, et l''export permet de mieux valoriser. Mais avant de partir, un diagnostic : l''entreprise a-t-elle la capacité de production régulière, la trésorerie pour attendre les paiements, les compétences pour gérer les documents ?

Ensuite, le choix des pays. Dans l''UEMOA, la monnaie est commune et les produits originaires peuvent circuler sous conditions avec des avantages. L''Europe offre un marché plus riche, mais avec des normes sanitaires et d''étiquetage exigeantes.

Les modes d''entrée. Indirect : Sahel Mangues vend à une société de commerce dakaroise qui exporte. Peu de risques, peu de marge et aucune relation avec le client final. Direct : vente à un importateur européen, ou recours à un agent commercial payé à la commission. Concerté : groupement avec d''autres producteurs de Casamance pour partager les coûts de salon et de certification. Implantation : filiale à l''étranger, rarement réaliste pour une PME au début.

Les documents suivent la marchandise : facture commerciale, liste de colisage, document de transport comme le connaissement maritime, certificat d''origine, certificats sanitaires pour les produits alimentaires. Une erreur sur l''un d''eux peut bloquer la marchandise en douane ou retarder le paiement.

Question à poser : quel mode recommandez-vous pour une première expérience ? Réponse attendue : l''export indirect ou direct via un importateur, pour limiter le risque.

## 18:00 – 38:00 · Les incoterms

Visuel : une ligne horizontale de l''usine de Ziguinchor à l''entrepôt de l''acheteur en Europe, avec les étapes : usine, transport intérieur, port de Dakar, navire, port européen, transport final, entrepôt.

Les incoterms sont des règles de la Chambre de commerce internationale. La version actuelle date de 2020 et compte onze règles. Ils répondent à trois questions : qui paie quoi, qui supporte le risque jusqu''où, qui fait les formalités douanières et l''assurance. Ils ne disent rien du transfert de propriété ni du paiement. Toujours écrire l''incoterm, le lieu et la version : « FOB Port de Dakar Incoterms 2020 ».

Groupe E : EXW, à l''usine. Le vendeur met la marchandise à disposition chez lui ; l''acheteur fait tout le reste, même le dédouanement export. Peu pratique pour un acheteur étranger.

Groupe F : FCA, FAS, FOB. Le vendeur remet la marchandise au transporteur choisi par l''acheteur. En FOB, le risque passe quand la marchandise est à bord du navire au port de Dakar. Le transport principal est payé par l''acheteur.

Groupe C : CPT, CIP, CFR, CIF. C''est le piège classique. Le vendeur paie le transport principal, et en CIF ou CIP l''assurance, mais le risque passe à l''acheteur au départ, comme en F. Donc en CIF, si le navire subit une avarie, c''est l''acheteur qui supporte le risque, couvert par l''assurance souscrite par le vendeur à son profit.

Groupe D : DAP, DPU, DDP. Le vendeur supporte le risque jusqu''à destination. En DPU, il décharge ; en DDP, il paie même les droits à l''importation.

Enfin, quatre règles sont réservées au maritime : FAS, FOB, CFR, CIF. Pour un conteneur ou un camion, on préfère FCA, CPT, CIP.

## 38:00 – 43:00 · Quiz interactif

Mettez en pause.

- Question 1 : en CFR, qui paie le fret maritime ? Réponse : le vendeur.
- Question 2 : en CFR, qui supporte le risque pendant la traversée ? Réponse : l''acheteur.
- Question 3 : pour un camion vers Bamako, peut-on utiliser FOB ? Réponse : non, FOB est réservé au transport maritime et fluvial ; on choisit par exemple FCA, CPT ou DAP.

## 43:00 – 1:00:00 · Calculer un prix export : exercice commenté

Visuel : escalier de prix.

Prix départ usine : 9 800 000 francs. Transport jusqu''à Dakar : 1 200 000. Dédouanement export : 600 000. Frais portuaires et mise à bord : 400 000. Total FOB : 12 000 000 francs. Ajoutons le fret maritime, 1 500 000 : CFR, 13 500 000.

Pour le CIF, l''assurance porte sur 110 % de la valeur CIF. Le problème, c''est que la prime dépend du CIF, qui dépend de la prime. On résout : CIF égale CFR plus 1,1 fois taux fois CIF, donc CIF égale CFR divisé par un moins 1,1 fois le taux. Avec un taux de 0,5 %, fictif pour l''exemple : 1,1 fois 0,005 égale 0,0055. 13 500 000 divisé par 0,9945 égale 13 574 661 francs. La prime vaut 74 661 francs.

Conversion en euros, avec la parité fixe : 1 euro égale 655,957 francs CFA. 13 574 661 divisé par 655,957 donne environ 20 694,44 euros. Grâce à la parité fixe, Sahel Mangues n''a pas de risque de change si elle facture en euros.

Deuxième calcul, à faire seuls puis vérifier : FOB 8 000 000, fret 900 000, taux 0,4 %. CFR 8 900 000 ; CIF 8 900 000 divisé par 0,9956, égale 8 939 333 ; prime 39 333 ; environ 13 627,93 euros.

## 1:00:00 – 1:15:00 · Le paiement international

Visuel : échelle de sécurité pour l''exportateur, du virement après livraison au paiement d''avance.

Virement après livraison : simple, peu coûteux, mais l''exportateur fait entièrement confiance à l''acheteur. À réserver aux clients connus. Remise documentaire : la banque ne remet les documents qui permettent de retirer la marchandise que contre paiement ou acceptation d''un effet. Mieux, mais l''acheteur peut refuser de lever les documents, et la marchandise reste bloquée au port d''arrivée. Crédit documentaire : la banque de l''acheteur s''engage à payer si les documents sont conformes. S''il est confirmé par une banque du pays de l''exportateur, celui-ci est protégé même contre le risque lié à la banque ou au pays de l''acheteur. Revers : coût et rigueur ; une simple erreur de date ou de poids sur un document peut retarder le paiement. Paiement d''avance : idéal, mais rarement accepté.

Le risque de change. Avec la zone euro, la parité fixe le neutralise. Avec le dollar, il existe. Sahel Mangues facture 50 000 dollars à un client américain. Cours à la signature, fictif : 600 francs, soit 30 millions attendus. Au paiement : 580 francs, soit 29 millions. Perte : 1 million. Solutions : facturer en euros ou en francs CFA quand c''est possible, ou couvrir par une opération à terme avec sa banque.

## 1:15:00 – 1:25:00 · Correction commentée d''un cas

Une coopérative de Kaolack veut exporter de la farine de mil vers le Mali, puis vers l''Europe. Pour le Mali : vente à un importateur-distributeur, transport routier, incoterm FCA ou DAP selon qui organise le camion, pas de risque de change grâce à la monnaie commune, paiement par acompte puis solde à la livraison ou par remise documentaire. Pour l''Europe : importateur spécialisé, incoterm FCA ou FOB, crédit documentaire confirmé pour un premier client, facturation en euros, et vérification préalable des normes sanitaires et d''étiquetage. Ce que le correcteur valorise : des choix différents selon la destination, chacun justifié.

## 1:25:00 – 1:30:00 · Synthèse et évaluation finale

- Question 1 : que règlent les incoterms ? Réponse : la répartition des frais, des risques et de certaines formalités entre vendeur et acheteur.
- Question 2 : en FOB, quand le risque passe-t-il à l''acheteur ? Réponse : quand la marchandise est à bord du navire au port d''embarquement.
- Question 3 : CFR 10 000 000, taux 0,5 % sur 110 % : CIF ? Réponse : 10 000 000 / 0,9945 ≈ 10 055 304 francs.
- Question 4 : citez le moyen de paiement le plus sûr pour l''exportateur après le paiement d''avance. Réponse : le crédit documentaire confirmé.
- Question 5 : combien vaut un euro en francs CFA ? Réponse : 655,957 francs, parité fixe.

Un dernier conseil pour l''examen : dans tout exercice d''incoterm, dessinez rapidement la ligne du trajet sur votre brouillon et placez-y le point de transfert des frais et celui du risque. Ce petit schéma évite la plupart des erreurs.

Merci à toutes et à tous, et bonne réussite à vos examens de fin de Licence.', 'video', 90, false, 80
from public.courses c where c.slug = 'lic-mkt-l3'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Commerce international');

-- Cours : Logistique et transport Licence 1 : réussir ses examens
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'lic-log-l1', (select id from public.levels where name = 'Licence 1'), null, 'Logistique et transport', 'Logistique et transport Licence 1 : réussir ses examens', 'Préparation aux partiels et examens semestriels de la Licence 1 en logistique et transport (système LMD, contexte Sénégal et UEMOA). Le cours couvre l''introduction à la logistique et à la chaîne d''approvisionnement, la gestion des stocks (méthode ABC, quantité économique de Wilson, stock de sécurité, point de commande) et la géographie des transports avec les grands modes et corridors ouest-africains. Fiches, exercices corrigés, sujet type et trois cours vidéo de 1h30. Aucun prérequis en dehors des bases de calcul.', true, 391
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Réussir ses examens de Licence 1 en logistique et transport', '## Objectifs de la leçon

- Comprendre l''organisation de la Licence 1 dans le système LMD.
- Connaître les matières clés de la première année en logistique et transport.
- Adopter une méthode de révision efficace pour les exercices chiffrés et les questions de cours.
- Identifier les types d''épreuves et savoir comment les aborder.
- Suivre un plan de révision sur six semaines.

## Le système LMD en quelques mots

Les universités publiques et la plupart des écoles et instituts privés du Sénégal et de l''espace UEMOA appliquent le système LMD : Licence, Master, Doctorat. La Licence se prépare en trois ans, soit six semestres. Chaque semestre est découpé en unités d''enseignement (UE), qui regroupent plusieurs éléments constitutifs (les matières). Chaque UE donne droit à un nombre de crédits lorsqu''elle est validée.

Les règles précises (nombre de crédits par UE, compensation entre matières, note éliminatoire, session de rattrapage, conditions de passage en année supérieure) varient d''un établissement à l''autre. Votre premier réflexe doit donc être de lire le règlement des études de votre établissement et la maquette de votre parcours. Ne vous fiez pas aux rumeurs entre étudiants : demandez les documents officiels à la scolarité.

Retenez trois idées générales :

- La note d''une matière combine souvent un contrôle continu (devoirs, travaux dirigés, exposés) et un examen final.
- Une UE peut être validée par compensation entre ses matières, selon les règles de l''établissement.
- La session de rattrapage existe en général, mais il vaut mieux ne pas compter dessus.

## Les matières clés de la Licence 1

En première année, la maquette d''un parcours logistique et transport comprend des matières de tronc commun (économie générale, mathématiques, comptabilité, droit, informatique, langues, techniques d''expression) et des matières de spécialité. Ce cours se concentre sur trois matières de spécialité qui reviennent dans presque toutes les maquettes :

- Introduction à la logistique et à la chaîne d''approvisionnement : définitions, flux, acteurs, coûts logistiques, taux de service.
- Gestion des stocks : méthode ABC, quantité économique de Wilson, stock de sécurité, point de commande, indicateurs de rotation.
- Géographie des transports et modes de transport : route, rail, maritime, aérien, intermodalité, corridors ouest-africains.

Ces matières se complètent. Un sujet d''examen peut très bien vous demander de calculer une quantité économique de commande, puis de choisir un mode de transport pour livrer cette commande, puis d''en mesurer le coût logistique total.

## Méthode de révision

La logistique est une discipline à la fois descriptive et quantitative. Il faut donc réviser de deux façons.

Pour les notions de cours :

- Faites une fiche par chapitre avec les définitions exactes (logistique, chaîne d''approvisionnement, flux tendus, rupture de charge, corridor, etc.).
- Apprenez à illustrer chaque définition par un exemple sénégalais ou ouest-africain : un grossiste de Dakar, une coopérative agricole de la vallée du fleuve, un transporteur de la route de Tambacounda.
- Dessinez les schémas de mémoire : la chaîne fournisseur, production, distribution, client avec les trois flux (physique, d''information, financier).

Pour les exercices chiffrés :

- Écrivez toujours la formule avant de remplacer les lettres par les chiffres.
- Indiquez les unités (unités par an, FCFA par commande, FCFA par unité et par an, jours).
- Vérifiez la cohérence du résultat : une quantité économique supérieure à la demande annuelle est suspecte.
- Refaites les exercices corrigés sans regarder la solution, puis comparez.

## Les types d''épreuves

- Questions de cours : définir, distinguer, expliquer. Répondez par une définition précise suivie d''un exemple. Une réponse de cinq lignes bien construite vaut mieux qu''une page vague.
- QCM : lisez toutes les propositions ; méfiez-vous des mots absolus (toujours, jamais). Si le QCM comporte des points négatifs, ne répondez pas au hasard.
- Exercice chiffré : stocks (Wilson, point de commande), coûts logistiques, coût de transport à la tonne-kilomètre. Présentez les calculs ligne par ligne et concluez par une phrase.
- Cas pratique : une entreprise fictive, plusieurs questions liées. Il faut diagnostiquer, calculer puis recommander. La recommandation doit s''appuyer sur vos calculs.
- Dissertation ou question de réflexion : par exemple « Le transport est-il un frein au développement des pays enclavés d''Afrique de l''Ouest ? ». Plan en deux ou trois parties, arguments, exemples, conclusion nuancée.
- Projet ou dossier : étude d''une chaîne logistique réelle observée (marché, entrepôt, gare routière), rendue par écrit et parfois présentée oralement.

## Plan de révision sur six semaines

- Semaine 1 : introduction à la logistique. Fiches de définitions, schéma des flux, calcul du coût logistique et du taux de service.
- Semaine 2 : gestion des stocks, partie 1. Méthode ABC, indicateurs de stock (stock moyen, rotation, couverture).
- Semaine 3 : gestion des stocks, partie 2. Formule de Wilson, stock de sécurité, point de commande, remises sur quantité.
- Semaine 4 : géographie des transports. Comparaison des modes, intermodalité, corridors ouest-africains, calculs à la tonne-kilomètre.
- Semaine 5 : entraînement mixte. Un sujet type complet en temps limité, puis correction.
- Semaine 6 : révision ciblée de vos erreurs, relecture des fiches, repos la veille.

Chaque semaine, prévoyez au moins trois séances de deux heures, dont une consacrée uniquement aux exercices. Le jour de l''examen, lisez tout le sujet, répartissez le temps selon le barème et gardez dix minutes pour relire calculs et unités.

## Points clés

- Lisez le règlement des études de votre établissement : il fixe les règles de validation.
- Trois matières de spécialité structurent ce cours : logistique générale, stocks, transports.
- Toujours écrire la formule, les unités et une phrase de conclusion.
- Entraînez-vous en temps limité avant l''examen.

## Exercices pratiques

Exercice 1. Citez les trois flux qui circulent dans une chaîne logistique et donnez un exemple de chacun pour un grossiste en riz de Kaolack (entreprise fictive).

Exercice 2. Un sujet de 3 heures comporte quatre parties notées 4, 8, 4 et 4 points. Proposez une répartition du temps en gardant 15 minutes de lecture et 10 minutes de relecture.

Exercice 3. Un étudiant a obtenu 9 sur 20 en gestion des stocks et 13 sur 20 en géographie des transports, deux matières d''une même UE de coefficients 2 et 1. Calculez la moyenne de l''UE. Que faut-il vérifier dans le règlement pour savoir si l''UE est validée ?

Exercice 4. Rédigez une introduction de dix lignes pour le sujet de réflexion : « Le transport est-il un frein au développement des pays enclavés d''Afrique de l''Ouest ? ».

## Corrigé

Exercice 1. Le flux physique : les sacs de riz qui arrivent du port de Dakar par camion et repartent vers les boutiques. Le flux d''information : les bons de commande des boutiquiers, les bons de livraison, l''état des stocks. Le flux financier : les paiements des clients (espèces, mobile money, virement) et les règlements aux fournisseurs et aux transporteurs.

Exercice 2. Temps disponible pour composer : 180 − 15 − 10 = 155 minutes. Total des points : 20. Partie de 4 points : 155 × 4/20 = 31 minutes. Partie de 8 points : 155 × 8/20 = 62 minutes. Répartition : 31, 62, 31 et 31 minutes, soit 155 minutes.

Exercice 3. Moyenne de l''UE = (9 × 2 + 13 × 1) / (2 + 1) = 31/3 ≈ 10,33 sur 20. Il faut vérifier si la compensation entre matières est autorisée à l''intérieur de l''UE, et s''il existe une note éliminatoire par matière. Si la compensation est admise et qu''aucune note éliminatoire n''est fixée au-dessus de 9, l''UE est validée.

Exercice 4. Une bonne introduction comprend une accroche (par exemple : pour un importateur de Bamako ou de Ouagadougou, les marchandises débarquées dans un port côtier doivent encore parcourir plus de mille kilomètres), la définition des termes (transport, pays enclavé, développement), la problématique (le transport n''est-il qu''un coût supplémentaire ou peut-il devenir un levier d''intégration régionale ?) et l''annonce du plan (I. Un handicap réel en coûts et en délais ; II. Des corridors et des politiques régionales qui peuvent transformer la contrainte).', 'texte', 45, true, 10
from public.courses c where c.slug = 'lic-log-l1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Réussir ses examens de Licence 1 en logistique et transport');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Introduction à la logistique et à la chaîne d''approvisionnement : l''essentiel pour l''examen', '## Objectifs de la leçon

- Définir la logistique, la chaîne d''approvisionnement et le supply chain management.
- Décrire les flux et les acteurs d''une chaîne logistique.
- Calculer et interpréter le coût logistique et le taux de service.
- Raisonner sur l''arbitrage entre coût et niveau de service.

## Fiche 1 : définitions

La logistique est l''ensemble des activités qui permettent de mettre à disposition le bon produit, en bonne quantité, au bon endroit, au bon moment, dans le bon état et au meilleur coût. Cette formule, souvent appelée la règle des « bons », est à connaître par cœur.

La chaîne d''approvisionnement (supply chain) est l''ensemble des entreprises et des activités qui interviennent depuis les matières premières jusqu''au client final : fournisseurs, producteurs, distributeurs, transporteurs, détaillants. Le supply chain management consiste à coordonner ces acteurs pour que la chaîne entière soit performante, et pas seulement chaque maillon.

On distingue plusieurs domaines :

- La logistique d''approvisionnement : faire venir les matières et marchandises des fournisseurs.
- La logistique de production : alimenter les ateliers et gérer les en-cours.
- La logistique de distribution : livrer les clients.
- La logistique inverse (ou retour) : retours clients, emballages consignés, produits à recycler.

## Fiche 2 : les trois flux

Schéma décrit en texte : une ligne horizontale relie, de gauche à droite, le fournisseur, l''entreprise, le distributeur et le client. Une flèche épaisse va de gauche à droite : c''est le flux physique (les marchandises). Une flèche fine va dans les deux sens : c''est le flux d''information (commandes, prévisions, avis d''expédition). Une flèche en pointillés va de droite à gauche : c''est le flux financier (paiements).

- Le flux physique : transport, stockage, manutention, emballage.
- Le flux d''information : il précède, accompagne et suit le flux physique. Sans information fiable, les stocks gonflent ou les ruptures se multiplient.
- Le flux financier : il ferme la boucle. Des délais de paiement longs immobilisent la trésorerie de toute la chaîne.

## Fiche 3 : les acteurs

- Les chargeurs : entreprises qui ont des marchandises à expédier (industriels, commerçants, exportateurs).
- Les transporteurs : routiers, compagnies ferroviaires, armateurs, compagnies aériennes.
- Les auxiliaires de transport : transitaires, commissionnaires, consignataires, déclarants en douane.
- Les prestataires logistiques : entreposage, préparation de commandes, gestion de stocks pour le compte d''autrui.
- Les autorités : douane, ports, administrations du transport, collectivités.

Au Sénégal, une grande partie du transport de marchandises est assurée par des transporteurs individuels ou de petites entreprises ; la coordination entre acteurs et la fiabilité de l''information sont donc des enjeux majeurs.

## Fiche 4 : les coûts logistiques

Le coût logistique total regroupe :

- Les coûts de transport (approvisionnement et distribution).
- Les coûts d''entreposage et de manutention (loyers, personnel, équipements).
- Les coûts de possession du stock (immobilisation financière, assurance, obsolescence, pertes).
- Les coûts d''emballage.
- Les coûts administratifs logistiques (traitement des commandes, systèmes d''information).

Indicateur clé : coût logistique / chiffre d''affaires × 100.

Exemple chiffré. Teranga Distribution SA (entreprise fictive, Dakar) distribue des produits alimentaires. Chiffre d''affaires annuel : 4 000 millions FCFA ; tonnage livré : 20 000 tonnes. Coûts logistiques annuels en millions FCFA : transport 180 ; entreposage 95 ; possession du stock 60 ; emballage 40 ; administration logistique 25.

- Coût logistique total : 180 + 95 + 60 + 40 + 25 = 400 millions FCFA.
- Ratio : 400 / 4 000 × 100 = 10 % du chiffre d''affaires.
- Part du transport : 180 / 400 = 45 % du coût logistique.
- Coût par tonne livrée : 400 000 000 / 20 000 = 20 000 FCFA par tonne.

Interprétation : le transport est le premier poste ; c''est là qu''il faut chercher des économies en priorité (meilleur remplissage des camions, regroupement des livraisons).

## Fiche 5 : le niveau de service

Le taux de service mesure la capacité à satisfaire les clients. Une définition courante : nombre de commandes livrées complètes et à l''heure / nombre total de commandes × 100. On parle aussi d''OTIF (on time, in full).

Exemple : sur 2 000 commandes du mois, 1 850 ont été livrées complètes et à l''heure. Taux de service = 1 850 / 2 000 = 92,5 %.

L''arbitrage fondamental : augmenter le taux de service exige plus de stock, plus de transport rapide, donc plus de coûts. Le logisticien cherche le niveau de service qui satisfait les clients à un coût acceptable.

## Fiche 6 : l''effet de levier logistique

Une économie sur les coûts logistiques augmente directement le résultat. Pour obtenir le même gain par les ventes, il faudrait vendre beaucoup plus, car seule la marge nette s''ajoute au résultat. C''est un argument classique en cas pratique.

## Points clés

- Règle des « bons » : produit, quantité, lieu, moment, état, coût.
- Trois flux : physique, information, financier.
- Coût logistique / CA et taux de service sont les deux indicateurs de base.
- Coût et service sont en arbitrage permanent.

## Exercices pratiques

Exercice 1. Définissez la logistique et la chaîne d''approvisionnement. Quelle différence faites-vous entre les deux ?

Exercice 2. Classez dans les trois flux : un camion de ciment ; un bon de commande envoyé par messagerie ; un virement bancaire ; un état des stocks ; des palettes vides retournées au fournisseur ; une facture.

Exercice 3. Sahel Agro (entreprise fictive) réalise un chiffre d''affaires de 1 500 millions FCFA. Ses coûts logistiques sont, en millions FCFA : transport 75 ; stockage 30 ; manutention 15 ; administration 10. Calculez le coût logistique total et son poids dans le chiffre d''affaires.

Exercice 4. Toujours pour Sahel Agro, une meilleure organisation des tournées réduit le coût de transport de 15 %. Calculez le gain. La marge nette de l''entreprise est de 5 % du chiffre d''affaires : quel supplément de chiffre d''affaires faudrait-il réaliser pour obtenir le même gain ?

Exercice 5. Sur un trimestre, un distributeur a reçu 3 200 commandes : 2 880 livrées à l''heure, dont 2 784 complètes. Calculez le taux de livraison à l''heure et le taux OTIF.

Exercice 6 (cas pratique). Un grossiste de Thiès (fictif) hésite entre deux options : A) livrer ses clients deux fois par semaine, coût de transport annuel 24 millions FCFA, taux de service estimé 90 % ; B) livrer tous les jours, coût 38 millions FCFA, taux de service estimé 98 %. Les ventes perdues à cause des ruptures représentent une marge perdue estimée à 1,5 million FCFA par point de taux de service manquant (en dessous de 100 %). Quelle option recommandez-vous ?

## Corrigé

Exercice 1. La logistique organise les flux de l''entreprise pour mettre à disposition le bon produit, au bon endroit, au bon moment, au meilleur coût. La chaîne d''approvisionnement englobe tous les acteurs, du fournisseur de matières premières au client final. La logistique est une fonction de l''entreprise ; la chaîne d''approvisionnement est un réseau d''entreprises.

Exercice 2. Flux physique : le camion de ciment, les palettes vides retournées (logistique inverse). Flux d''information : le bon de commande, l''état des stocks, la facture (document d''information qui déclenche le paiement). Flux financier : le virement bancaire.

Exercice 3. Total : 75 + 30 + 15 + 10 = 130 millions FCFA. Poids : 130 / 1 500 × 100 ≈ 8,67 % du chiffre d''affaires.

Exercice 4. Gain : 75 × 15 % = 11,25 millions FCFA. Chiffre d''affaires supplémentaire équivalent : 11,25 / 0,05 = 225 millions FCFA, soit 15 % de ventes en plus. Une économie logistique modeste équivaut à une forte hausse des ventes.

Exercice 5. Taux de livraison à l''heure : 2 880 / 3 200 = 90 %. Taux OTIF : 2 784 / 3 200 = 87 %.

Exercice 6. Option A : manque 10 points de service, marge perdue 10 × 1,5 = 15 millions ; coût total 24 + 15 = 39 millions FCFA. Option B : manque 2 points, marge perdue 3 millions ; coût total 38 + 3 = 41 millions FCFA. L''option A est moins coûteuse de 2 millions FCFA. On peut toutefois discuter : l''option B fidélise davantage les clients, effet que le calcul ne mesure pas. Une option intermédiaire (trois livraisons par semaine) mériterait d''être étudiée.', 'texte', 60, false, 20
from public.courses c where c.slug = 'lic-log-l1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Introduction à la logistique et à la chaîne d''approvisionnement : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Gestion des stocks : l''essentiel pour l''examen', '## Objectifs de la leçon

- Maîtriser la méthode ABC, la formule de Wilson, le stock de sécurité, le point de commande et les indicateurs de stock.

## Fiche 1 : pourquoi gérer les stocks ?

Le stock protège contre les aléas mais coûte (argent immobilisé, entrepôt, assurance, casse, péremption). La gestion des stocks équilibre deux risques : la rupture et le surstock.

Deux coûts : le coût de passation d''une commande Cl (traitement, réception, contrôle), en FCFA par commande ; le coût de possession, proportionnel au stock moyen, souvent exprimé par un taux annuel t : h = t × prix unitaire, en FCFA par unité et par an.

## Fiche 2 : la méthode ABC

Principe (Pareto) : peu d''articles font l''essentiel de la valeur consommée. Méthode :

- Calculer pour chaque article la valeur annuelle consommée (quantité × prix unitaire).
- Classer les articles par valeur décroissante.
- Calculer les pourcentages et les pourcentages cumulés.
- Fixer les classes : A (environ 70 à 80 % de la valeur), B (environ 15 à 20 %), C (le reste). Seuils indicatifs.

Exemple. Quincaillerie Ndiaye et Fils (fictive, Rufisque), consommation annuelle :

- Tôles : 600 × 30 000 = 18 000 000 (45 % ; cumul 45 %).
- Fer à béton : 2 400 × 5 000 = 12 000 000 (30 % ; 75 %).
- Peinture : 500 × 9 000 = 4 500 000 (11,25 % ; 86,25 %).
- Robinets : 1 000 × 2 500 = 2 500 000 (6,25 % ; 92,5 %).
- Clous : 1 500 × 800 = 1 200 000 (3 % ; 95,5 %).
- Cadenas : 300 × 3 000 = 900 000 (2,25 % ; 97,75 %).
- Vis : 1 000 × 500 = 500 000 (1,25 % ; 99 %).
- Fil de fer : 200 × 2 000 = 400 000 (1 % ; 100 %).

Total : 40 000 000 FCFA. Classe A : tôles et fer (25 % des articles, 75 % de la valeur). Classe B : peinture et robinets (17,5 %). Classe C : les quatre autres (50 % des articles, 7,5 %). Suivi serré pour A, léger pour C.

## Fiche 3 : la formule de Wilson

Hypothèses : demande D régulière, délai constant, pas de rupture, prix fixe. Pour des commandes de Q unités :

- Nombre de commandes par an : N = D / Q. Coût de passation annuel : (D / Q) × Cl.
- Stock moyen : Q / 2. Coût de possession annuel : (Q / 2) × h.
- Coût de gestion total : CT = (D / Q) × Cl + (Q / 2) × h.

La quantité qui minimise CT, où les deux coûts sont égaux, est : Q* = √(2 × D × Cl / h).

Exemple. Un distributeur de Dakar (fictif) vend D = 24 000 cartons de lait par an. Cl = 30 000 FCFA par commande. Prix unitaire 5 000 FCFA, taux de possession 20 % par an, donc h = 1 000 FCFA par carton et par an.

- Q* = √(2 × 24 000 × 30 000 / 1 000) = √1 440 000 = 1 200 cartons.
- N = 24 000 / 1 200 = 20 commandes par an, soit une tous les 360 / 20 = 18 jours.
- Coût de passation : 20 × 30 000 = 600 000 FCFA ; coût de possession : 600 × 1 000 = 600 000 FCFA ; CT = 1 200 000 FCFA.

## Fiche 4 : remise sur quantité

En cas de remise au-delà d''un seuil, on compare le coût total achats compris, en recalculant h avec le nouveau prix. Exemple : 4 850 FCFA au lieu de 5 000 pour au moins 2 000 cartons. À Q = 1 200 : 120 000 000 + 1 200 000 = 121 200 000 FCFA. À Q = 2 000 (h = 970) : 116 400 000 + 360 000 + 970 000 = 117 730 000 FCFA. Gain : 3 470 000 FCFA, on accepte si la place et la trésorerie le permettent.

## Fiche 5 : stock de sécurité et point de commande

Le point de commande (stock d''alerte) est le niveau de stock auquel on doit passer commande : PC = consommation pendant le délai de livraison + stock de sécurité.

Suite de l''exemple : 240 jours ouvrés par an, donc consommation journalière 24 000 / 240 = 100 cartons. Délai de livraison : 6 jours. Stock de sécurité fixé à 150 cartons. PC = 100 × 6 + 150 = 750 cartons.

Version statistique : si la demande journalière varie avec un écart-type σ, et le délai L est fixe, SS = z × σ × √L, où z dépend du taux de service souhaité (z ≈ 1,65 pour environ 95 %). Avec σ = 20 cartons par jour : SS = 1,65 × 20 × √6 ≈ 80,8, arrondi à 81 cartons.

## Fiche 6 : indicateurs

- Stock moyen = (stock initial + stock final) / 2, ou Q / 2 + SS.
- Rotation = consommation annuelle / stock moyen.
- Couverture en jours = stock moyen / consommation journalière.

Exemple : stock moyen 600 + 150 = 750 ; rotation 24 000 / 750 = 32 ; couverture 750 / 100 = 7,5 jours.

## Exercices pratiques

Exercice 1. Une boutique d''électroménager (fictive, Saint-Louis) consomme par an : réfrigérateurs 50 à 210 000 FCFA ; ventilateurs 200 à 15 000 ; fers à repasser 150 à 10 000 ; bouilloires 60 à 10 000 ; rallonges 100 à 2 500 ; ampoules 300 à 500. Réalisez la classification ABC.

Exercice 2. D = 7 500 unités par an, Cl = 12 000 FCFA, prix unitaire 2 500 FCFA, taux de possession 20 %. Calculez Q*, N et le coût de gestion total.

Exercice 3. Consommation de 30 unités par jour, délai de livraison 8 jours, stock de sécurité 60 unités. Calculez le point de commande.

Exercice 4. La demande journalière a un écart-type de 12 unités, le délai est de 9 jours. Calculez le stock de sécurité pour un taux de service d''environ 95 % (z = 1,65).

Exercice 5. Reprenez l''exercice 2 : le fournisseur propose 2 400 FCFA l''unité pour des commandes d''au moins 1 500 unités. Faut-il accepter ?

Exercice 6 (cas pratique). Pour l''exercice 2, le stock de sécurité est de 100 unités. Calculez le stock moyen, la rotation et la couverture (360 jours).

## Corrigé

Exercice 1. Valeurs : réfrigérateurs 10 500 000 (65,63 %) ; ventilateurs 3 000 000 (18,75 %, cumul 84,38 %) ; fers 1 500 000 (9,38 %, cumul 93,75 %) ; bouilloires 600 000 (3,75 %, cumul 97,5 %) ; rallonges 250 000 (1,56 %, cumul 99,06 %) ; ampoules 150 000 (0,94 %, cumul 100 %). Total 16 000 000 FCFA. Classe A : réfrigérateurs (1 article sur 6, 65,63 %). Classe B : ventilateurs et fers (cumul 93,75 %). Classe C : les trois derniers (6,25 %).

Exercice 2. h = 20 % × 2 500 = 500 FCFA. Q* = √(2 × 7 500 × 12 000 / 500) = √360 000 = 600 unités. N = 7 500 / 600 = 12,5 commandes par an. Passation : 12,5 × 12 000 = 150 000 ; possession : 300 × 500 = 150 000 ; CT = 300 000 FCFA.

Exercice 3. PC = 30 × 8 + 60 = 300 unités.

Exercice 4. SS = 1,65 × 12 × √9 = 1,65 × 12 × 3 = 59,4, soit 60 unités.

Exercice 5. Sans remise : achats 7 500 × 2 500 = 18 750 000 + 300 000 = 19 050 000 FCFA. Avec remise à Q = 1 500 : h = 480 ; achats 7 500 × 2 400 = 18 000 000 ; passation 5 × 12 000 = 60 000 ; possession 750 × 480 = 360 000 ; total 18 420 000 FCFA. Gain : 630 000 FCFA, on accepte.

Exercice 6. Stock moyen = 600 / 2 + 100 = 400 unités. Rotation = 7 500 / 400 = 18,75 fois par an. Couverture = 360 / 18,75 = 19,2 jours.', 'texte', 60, false, 30
from public.courses c where c.slug = 'lic-log-l1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Gestion des stocks : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Géographie des transports et modes de transport : l''essentiel pour l''examen', '## Objectifs de la leçon

- Comparer les modes de transport (route, rail, maritime, aérien) selon le coût, le délai, la capacité et la fiabilité.
- Expliquer les notions d''intermodalité, de rupture de charge, de hub et de corridor.
- Décrire en termes généraux les corridors ouest-africains et la situation des pays enclavés.
- Calculer un coût de transport à la tonne-kilomètre et intégrer le coût du temps.

## Fiche 1 : la géographie des transports

La géographie des transports étudie les réseaux (routes, voies ferrées, lignes maritimes et aériennes), les nœuds (ports, gares, aéroports, plateformes) et les flux qui les parcourent. Trois notions sont incontournables :

- Le réseau : ensemble d''axes et de nœuds. Sa densité et sa connectivité déterminent l''accessibilité d''un territoire.
- Le nœud : point où les flux se concentrent et changent souvent de mode (port, gare, aéroport, port sec).
- Le hinterland (arrière-pays) : la zone desservie par un port. Le hinterland d''un port ouest-africain peut s''étendre à plusieurs pays voisins sans accès à la mer.

## Fiche 2 : les quatre grands modes

Le transport routier :

- Avantages : porte-à-porte, souplesse, réseau dense.
- Limites : coût à la tonne-kilomètre élevé sur longue distance, sensibilité à l''état des routes, accidents, surcharge des camions, contrôles nombreux.
- Il assure la très grande majorité du transport de marchandises en Afrique de l''Ouest.

Le transport ferroviaire :

- Avantages : grande capacité, coût faible à la tonne-kilomètre pour les pondéreux (minerais, ciment, céréales, conteneurs), moindre consommation d''énergie.
- Limites : réseau peu étendu, investissements lourds, ruptures de charge aux extrémités. Dans la région, plusieurs lignes historiques ont connu de longues interruptions d''exploitation et font l''objet de projets de réhabilitation.

Le transport maritime :

- Avantages : très grands volumes, coût unitaire le plus faible sur longue distance ; il porte l''essentiel du commerce extérieur de la région.
- Limites : lenteur, dépendance aux ports, nécessité d''un pré- et post-acheminement terrestre.

Le transport aérien :

- Avantages : rapidité, sécurité, adapté aux produits de forte valeur ou périssables (médicaments, pièces urgentes, produits frais exportés).
- Limites : coût élevé, capacité limitée, poids et volume contraints.

Grille de choix à retenir : nature du produit (valeur, poids, volume, fragilité, périssabilité), distance, délai exigé, coût, fiabilité, disponibilité de l''infrastructure.

## Fiche 3 : intermodalité et ruptures de charge

La rupture de charge est le transfert de la marchandise d''un véhicule à un autre. Elle coûte (manutention, temps, risque de casse ou de vol). Le conteneur a réduit ces coûts en permettant de transférer une boîte standard sans toucher à la marchandise.

- Transport multimodal : plusieurs modes successifs sous un contrat unique.
- Intermodalité : usage combiné de plusieurs modes avec la même unité de chargement (conteneur, caisse mobile).
- Port sec : plateforme intérieure reliée à un port, où l''on peut effectuer des opérations douanières et de stockage, plus près des clients.
- Hub : plateforme qui concentre puis redistribue les flux (schéma en étoile).

## Fiche 4 : les corridors ouest-africains

Un corridor est un axe de transport (souvent route et parfois rail) reliant un port à un ou plusieurs pays de l''intérieur, avec des infrastructures, des postes frontières et des règles de transit. Pour les pays enclavés de la région, en particulier le Mali, le Burkina Faso et le Niger, les corridors sont vitaux : la quasi-totalité de leurs importations par mer transite par les ports de pays côtiers.

On cite généralement :

- Le corridor Dakar – Bamako, par la route, avec une ligne ferroviaire historique.
- Les corridors desservant le Burkina Faso et le Niger depuis Abidjan, Tema, Lomé et Cotonou.
- Le corridor côtier Abidjan – Lagos, qui relie plusieurs capitales du golfe de Guinée.

Les difficultés classiques : temps d''attente aux frontières et aux ports, contrôles routiers multiples, état variable des routes, surcharge des véhicules, coûts informels. Les réponses discutées dans les politiques régionales (UEMOA, CEDEAO) : postes de contrôle juxtaposés, régimes de transit régional, observatoires des pratiques anormales, réhabilitation des infrastructures. À l''examen, restez général et prudent sur les chiffres.

Schéma décrit en texte : une carte simplifiée de l''Afrique de l''Ouest avec, sur la côte, les ports de Dakar, Abidjan, Tema, Lomé et Cotonou ; des flèches partent de ces ports vers Bamako, Ouagadougou et Niamey ; des cercles marquent les frontières où se forment les attentes.

## Fiche 5 : calculs de base

- Tonne-kilomètre (t.km) : déplacement d''une tonne sur un kilomètre. Coût = tonnage × distance × tarif par t.km.
- Coût du temps (immobilisation du stock en transit) : valeur de la marchandise × taux annuel du coût du capital × nombre de jours / 360.

Exemple. Un exportateur fictif doit envoyer 25 tonnes de Dakar vers Bamako. Distance retenue pour l''exercice : 1 250 km. Tarif routier : 45 FCFA par t.km (fictif pour l''exemple). Tarif ferroviaire : 30 FCFA par t.km (fictif), plus 300 000 FCFA de pré- et post-acheminement et de manutention.

- Route : 25 × 1 250 × 45 = 1 406 250 FCFA.
- Rail : 25 × 1 250 × 30 = 937 500 + 300 000 = 1 237 500 FCFA.

Le rail est moins cher de 168 750 FCFA, sous réserve de disponibilité et de fiabilité.

Coût du temps : une marchandise de 50 millions FCFA, taux du capital de 12 % par an (fictif), arrive 20 jours plus tard par un mode plus lent : 50 000 000 × 12 % × 20 / 360 ≈ 333 333 FCFA. Ce coût doit être ajouté au mode lent dans la comparaison.

## Points clés

- Choisir un mode, c''est arbitrer entre coût, délai, capacité et fiabilité.
- Coût total = coût de transport + coûts annexes + coût du temps.

## Exercices pratiques

Exercice 1. Définissez : hinterland, rupture de charge, port sec, corridor.

Exercice 2. Proposez un mode de transport pour : a) 30 000 tonnes de clinker ; b) 200 kg de vaccins pour Ziguinchor en urgence ; c) 18 tonnes de produits d''épicerie de Dakar à Kaolack ; d) un conteneur de pièces détachées venant d''Asie. Justifiez.

Exercice 3. Calculez le coût de transport de 12 tonnes sur 460 km à 52 FCFA par t.km (tarif fictif).

Exercice 4. Une marchandise valant 80 millions FCFA peut voyager par mer (coût 2,4 millions, 35 jours) ou par avion (coût 9 millions, 3 jours). Le coût du capital est de 15 % par an (fictif). Comparez les coûts totaux.

Exercice 5 (cas pratique). Un importateur fictif de Ouagadougou reçoit ses conteneurs par un port côtier. Citez quatre facteurs qui allongent le délai total et proposez une action pour chacun.

## Corrigé

Exercice 1. Hinterland : zone intérieure desservie par un port. Rupture de charge : transfert de la marchandise d''un véhicule ou d''un mode à un autre. Port sec : plateforme intérieure reliée à un port, avec opérations douanières et stockage. Corridor : axe de transport reliant un port à des territoires intérieurs, avec ses infrastructures et ses règles de transit.

Exercice 2. a) Rail ou maritime (pondéreux, gros volume, faible valeur) ; à défaut, route en convois. b) Aérien ou route express sous froid : urgence, faible poids, forte valeur. c) Route : distance moyenne, porte-à-porte. d) Maritime en conteneur, puis route jusqu''à l''entrepôt.

Exercice 3. 12 × 460 × 52 = 287 040 FCFA.

Exercice 4. Mer : coût du temps 80 000 000 × 15 % × 35 / 360 ≈ 1 166 667 ; total ≈ 3 566 667 FCFA. Avion : coût du temps 80 000 000 × 15 % × 3 / 360 = 100 000 ; total 9 100 000 FCFA. La mer reste nettement moins chère ; l''avion ne se justifie qu''en cas d''urgence ou de risque de rupture coûteuse.

Remarque sur l''exercice 4. Si une rupture de stock coûte plus de 5,5 millions FCFA environ, l''avion peut devenir rationnel : c''est l''écart entre les deux totaux.

Exercice 5. Attente du navire et du déchargement au port : prévoir une réservation et un suivi du navire. Formalités douanières : préparer les documents à l''avance, recourir à un commissionnaire agréé fiable. Contrôles et attentes aux frontières : utiliser les régimes de transit et les postes juxtaposés lorsqu''ils existent. Disponibilité des camions et état des routes : contractualiser avec des transporteurs fiables et planifier les retours de conteneurs vides.', 'texte', 60, false, 40
from public.courses c where c.slug = 'lic-log-l1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Géographie des transports et modes de transport : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Sujet type d''examen de Licence 1 logistique et transport (entraînement, corrigé détaillé)', '## Présentation

Ce sujet d''entraînement reproduit la forme d''un examen semestriel de Licence 1 en logistique et transport. Il ne s''agit pas d''un sujet officiel. Durée conseillée : 3 heures. Calculatrice non programmable autorisée. Barème indicatif, non officiel, sur 20 points. Toutes les entreprises sont fictives et les tarifs sont fictifs pour l''exemple.

## Sujet

Dossier 1. Questions de cours (4 points)

- 1.1 Définissez la logistique en citant la règle des « bons ». (1 point)
- 1.2 Distinguez transport multimodal et intermodalité. (1 point)
- 1.3 Expliquez pourquoi les corridors sont essentiels pour les pays enclavés d''Afrique de l''Ouest. (2 points)

Dossier 2. Gestion des stocks (8 points)

La société Dakar Emballages (fictive) consomme 36 000 rouleaux de film plastique par an, sur 300 jours ouvrés. Coût de passation : 40 000 FCFA par commande. Prix unitaire : 4 000 FCFA. Taux de possession : 25 % par an. Délai de livraison : 5 jours. Stock de sécurité : 2 jours de consommation.

- 2.1 Calculez la quantité économique de commande, le nombre de commandes et le coût de gestion total. (3 points)
- 2.2 Calculez le stock de sécurité et le point de commande. (2 points)
- 2.3 Le fournisseur propose une remise de 2 % pour les commandes d''au moins 2 400 rouleaux. Faut-il l''accepter ? (3 points)

Dossier 3. Coûts logistiques (4 points)

Dakar Emballages réalise un chiffre d''affaires de 2 200 millions FCFA. Coûts logistiques annuels en millions FCFA : transport 96 ; entreposage 44 ; possession des stocks 30 ; administration 14.

- 3.1 Calculez le coût logistique total et son poids dans le chiffre d''affaires. (2 points)
- 3.2 La marge nette est de 4 %. Quel chiffre d''affaires supplémentaire faudrait-il pour égaler une économie de 10 % sur le transport ? (2 points)

Dossier 4. Choix du mode de transport (4 points)

Un lot de 20 tonnes doit être livré à 900 km. Route : 48 FCFA par t.km, 3 jours. Rail : 32 FCFA par t.km plus 250 000 FCFA de pré- et post-acheminement, 8 jours. Valeur du lot : 60 millions FCFA ; coût du capital : 12 % par an (fictif).

- 4.1 Calculez le coût total de chaque option, coût du temps inclus. (3 points)
- 4.2 Quels critères non chiffrés pourraient modifier votre choix ? (1 point)

## Corrigé détaillé

Dossier 1.

1.1 La logistique est l''ensemble des activités qui mettent à disposition le bon produit, en bonne quantité, au bon endroit, au bon moment, dans le bon état et au meilleur coût.

1.2 Le transport multimodal combine plusieurs modes successifs sous un contrat unique. L''intermodalité désigne l''usage combiné de plusieurs modes avec une même unité de chargement (conteneur), sans manipuler la marchandise elle-même.

1.3 Les pays enclavés (Mali, Burkina Faso, Niger) dépendent des ports de pays côtiers pour leur commerce maritime. Les corridors concentrent infrastructures, postes frontières et régimes de transit ; leur efficacité détermine les délais, les coûts d''importation et donc les prix et la compétitivité de ces économies.

Dossier 2.

2.1 h = 25 % × 4 000 = 1 000 FCFA. Q* = √(2 × 36 000 × 40 000 / 1 000) = √2 880 000 ≈ 1 697 rouleaux. N = 36 000 / 1 697 ≈ 21,2 commandes par an. Coût de passation ≈ 21,21 × 40 000 ≈ 848 528 FCFA ; coût de possession ≈ 848,5 × 1 000 ≈ 848 528 FCFA ; CT ≈ 1 697 056 FCFA. On vérifie l''égalité des deux coûts.

2.2 Consommation journalière : 36 000 / 300 = 120 rouleaux. Stock de sécurité : 2 × 120 = 240 rouleaux. Point de commande : 120 × 5 + 240 = 840 rouleaux.

2.3 Sans remise : achats 36 000 × 4 000 = 144 000 000 ; total ≈ 144 000 000 + 1 697 056 = 145 697 056 FCFA. Avec remise : prix 3 920 FCFA, h = 980. Q = 2 400 : passation 15 × 40 000 = 600 000 ; possession 1 200 × 980 = 1 176 000 ; achats 141 120 000 ; total 142 896 000 FCFA. Gain ≈ 2 801 056 FCFA : on accepte, sous réserve de place en entrepôt.

Dossier 3.

3.1 Total : 96 + 44 + 30 + 14 = 184 millions FCFA, soit 184 / 2 200 ≈ 8,36 % du chiffre d''affaires.

3.2 Économie : 9,6 millions FCFA. Chiffre d''affaires équivalent : 9,6 / 0,04 = 240 millions FCFA.

Dossier 4.

4.1 Route : 20 × 900 × 48 = 864 000 ; coût du temps 60 000 000 × 12 % × 3 / 360 = 60 000 ; total 924 000 FCFA. Rail : 20 × 900 × 32 = 576 000 + 250 000 = 826 000 ; coût du temps 60 000 000 × 12 % × 8 / 360 = 160 000 ; total 986 000 FCFA. La route est moins chère de 62 000 FCFA une fois le coût du temps intégré.

4.2 Fiabilité des délais, disponibilité du service ferroviaire, risques de casse et de vol, exigences du client, impact environnemental.

## Exercices pratiques

Exercice 1. Que devient Q* si la demande annuelle est multipliée par 4 ?

Exercice 2. Un stock moyen de 900 unités pour une consommation de 27 000 unités par an : calculez la rotation et la couverture (360 jours).

Exercice 3. Citez deux avantages et deux limites du transport aérien.

Exercice 4. Sur 1 250 commandes, 1 175 sont livrées complètes et à l''heure. Calculez le taux de service.

## Corrigé

Exercice 1. Q* est proportionnelle à la racine carrée de D : elle est multipliée par √4 = 2.

Exercice 2. Rotation = 27 000 / 900 = 30 fois par an ; couverture = 360 / 30 = 12 jours.

Exercice 3. Avantages : rapidité, sécurité pour les produits de valeur. Limites : coût élevé, capacité limitée.

Exercice 4. 1 175 / 1 250 = 94 %.', 'texte', 60, false, 50
from public.courses c where c.slug = 'lic-log-l1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Sujet type d''examen de Licence 1 logistique et transport (entraînement, corrigé détaillé)');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Introduction à la logistique et à la chaîne d''approvisionnement', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : étudiants de Licence 1 en logistique et transport, gestion ou commerce.
- Objectifs : définir la logistique et la chaîne d''approvisionnement, décrire les trois flux et les acteurs, calculer le coût logistique, le coût par tonne et le taux de service, raisonner sur l''arbitrage coût et service.
- Matériel : diaporama (schéma des flux, tableau des coûts), tableau blanc, calculatrice, fiche d''exercices.
- Prérequis : avoir lu la leçon « Introduction à la logistique et à la chaîne d''approvisionnement : l''essentiel pour l''examen ».

## Déroulé minuté

## 00:00 – 05:00 · Accueil et objectifs

Bonjour à toutes et à tous. Bienvenue dans ce cours vidéo consacré à l''introduction à la logistique. Pendant une heure et demie, nous allons poser les fondations de toute votre Licence. À la fin de la séance, vous saurez définir la logistique sans hésiter, dessiner une chaîne d''approvisionnement avec ses trois flux, nommer les acteurs, calculer un coût logistique et un taux de service, et utiliser ces chiffres pour argumenter dans un cas pratique. Préparez une feuille, un stylo et une calculatrice. Toutes les entreprises citées sont fictives, et les montants sont construits pour l''exercice.

Visuel : diapositive avec les objectifs et le plan en cinq parties.

## 05:00 – 15:00 · Qu''est-ce que la logistique ?

Je vous pose une question : quand vous achetez un sachet de lait dans une boutique de quartier à Pikine, combien d''opérations ont été nécessaires pour qu''il soit là ? Prenez trente secondes et notez-en le plus possible. Vous avez sans doute écrit : produire le lait, l''emballer, le stocker, le transporter vers un grossiste, puis vers la boutique, le conserver au frais, payer chacun. Tout cela, c''est la logistique.

Voici la définition à retenir : la logistique est l''ensemble des activités qui permettent de mettre à disposition le bon produit, en bonne quantité, au bon endroit, au bon moment, dans le bon état et au meilleur coût. Comptez les « bons » sur vos doigts : produit, quantité, lieu, moment, état, coût. Six. À l''examen, une définition qui oublie le coût est incomplète, car la logistique est toujours un arbitrage économique.

Distinguons ensuite logistique et chaîne d''approvisionnement. La logistique est une fonction de l''entreprise. La chaîne d''approvisionnement est un réseau d''entreprises, du fournisseur de matières premières au client final. Le supply chain management, c''est la coordination de tout ce réseau.

Visuel : la règle des six « bons » sous forme de pictogrammes.

## 15:00 – 25:00 · Les trois flux

Dessinons ensemble. À gauche, un fournisseur ; puis l''entreprise ; puis un distributeur ; enfin le client. Tracez une grosse flèche de gauche à droite : c''est le flux physique, les marchandises. Tracez une flèche fine à double sens : c''est le flux d''information, avec les commandes, les prévisions, les avis d''expédition, les états de stock. Tracez enfin une flèche en pointillés de droite à gauche : c''est le flux financier, les paiements.

Pourquoi insister sur l''information ? Parce qu''elle commande tout le reste. Si le grossiste ne sait pas ce que vendent les boutiques, il commande trop ou trop peu. Des stocks gonflent d''un côté, des ruptures apparaissent de l''autre. Et le flux financier compte aussi : un client qui paie à quatre-vingt-dix jours oblige son fournisseur à financer le stock plus longtemps.

Question au public : dans quel flux classez-vous une facture ? Réfléchissez. La facture est un document d''information ; c''est le paiement qu''elle déclenche qui appartient au flux financier.

## 25:00 – 35:00 · Les acteurs et les domaines

Passons aux acteurs. Les chargeurs sont les entreprises qui ont des marchandises à expédier. Les transporteurs exécutent le déplacement : routiers, compagnies ferroviaires, armateurs, compagnies aériennes. Les auxiliaires organisent : transitaires, commissionnaires, consignataires, déclarants en douane. Les prestataires logistiques stockent et préparent les commandes pour le compte d''autrui. Enfin les autorités : douane, ports, administrations.

Quatre domaines de la logistique : approvisionnement, production, distribution, et logistique inverse. La logistique inverse traite les retours : bouteilles consignées, palettes, produits défectueux, déchets à recycler. Elle prend de l''importance avec les préoccupations environnementales.

Au Sénégal, beaucoup de transport routier est réalisé par des transporteurs individuels. Cela offre de la souplesse mais complique la coordination : c''est un point intéressant à mentionner dans une copie. Exercice éclair : classez un transitaire, un armateur et une coopérative qui exporte des mangues. Réponse : auxiliaire, transporteur, chargeur.

## 35:00 – 45:00 · Le coût logistique : exemple guidé

Prenons Teranga Distribution SA, entreprise fictive de Dakar. Chiffre d''affaires : 4 000 millions FCFA. Tonnage livré : 20 000 tonnes. Coûts annuels, en millions : transport 180, entreposage 95, possession du stock 60, emballage 40, administration logistique 25.

Additionnez avec moi : 180 plus 95, 275 ; plus 60, 335 ; plus 40, 375 ; plus 25, 400 millions. Le ratio coût logistique sur chiffre d''affaires vaut 400 sur 4 000, soit 10 %. La part du transport : 180 sur 400, soit 45 %. Le coût par tonne livrée : 400 millions divisés par 20 000 tonnes, soit 20 000 FCFA par tonne.

Que conclure ? Le transport est le premier poste. Les pistes d''amélioration : mieux remplir les camions, regrouper les livraisons, optimiser les tournées. Remarquez ma méthode : un calcul, puis une interprétation, puis une recommandation. C''est exactement ce qu''attend le correcteur.

## 45:00 – 50:00 · Pause quiz

Petite pause active. Trois questions, une minute chacune.

Question 1 : citez les six « bons ». Réponse : produit, quantité, lieu, moment, état, coût.

Question 2 : une palette vide renvoyée au fournisseur, quel flux et quel domaine ? Réponse : flux physique, logistique inverse.

Question 3 : coût logistique de 60 millions pour un chiffre d''affaires de 750 millions, quel ratio ? Réponse : 60 divisé par 750, soit 8 %.

## 50:00 – 1:00:00 · Le taux de service

Le taux de service mesure la satisfaction des clients. La définition la plus exigeante est l''OTIF : commandes livrées à l''heure et complètes, divisées par le total des commandes. Sur 2 000 commandes, 1 850 sont parfaites : taux de service de 92,5 %.

Attention à la définition utilisée : un taux de livraison à l''heure peut être bon alors que le taux OTIF est moyen, parce que certaines commandes arrivent à l''heure mais incomplètes. Exemple : 3 200 commandes, 2 880 à l''heure, dont 2 784 complètes. Taux à l''heure : 90 %. Taux OTIF : 2 784 sur 3 200, soit 87 %. À l''examen, précisez toujours la définition choisie.

## 1:00:00 – 1:10:00 · L''arbitrage coût et service

Plus de service coûte plus cher : plus de stock, des livraisons plus fréquentes, des transports plus rapides. Prenons le grossiste fictif de Thiès. Option A : deux livraisons par semaine, 24 millions de transport, taux de service 90 %. Option B : livraison quotidienne, 38 millions, 98 %. Chaque point de service manquant coûte 1,5 million de marge perdue.

Option A : 10 points manquants, donc 15 millions ; total 39 millions. Option B : 2 points manquants, 3 millions ; total 41 millions. A est moins chère de 2 millions. Mais je vous invite à nuancer : la fidélisation des clients n''est pas chiffrée. Et une option intermédiaire, trois livraisons par semaine, pourrait être la meilleure. Une copie qui nuance gagne des points.

## 1:10:00 – 1:20:00 · L''effet de levier logistique : exercice corrigé

Sahel Agro, entreprise fictive : chiffre d''affaires 1 500 millions, transport 75 millions, marge nette 5 %. On réduit le transport de 15 %. Gain : 75 fois 0,15, soit 11,25 millions. Pour gagner autant par les ventes, il faudrait 11,25 divisé par 0,05, soit 225 millions de chiffre d''affaires supplémentaires, 15 % de ventes en plus.

Retenez la leçon : un franc économisé en logistique va directement au résultat ; un franc de ventes supplémentaires n''apporte que sa marge. C''est pourquoi les directions générales s''intéressent de plus en plus à la logistique.

## 1:20:00 – 1:27:00 · Évaluation finale

Cinq questions. Notez vos réponses, puis comparez.

- Question 1 : définissez la chaîne d''approvisionnement. Réponse : réseau des entreprises et activités qui interviennent du fournisseur de matières premières jusqu''au client final.
- Question 2 : citez les trois flux. Réponse : physique, d''information, financier.
- Question 3 : coût logistique de 130 millions pour 1 500 millions de chiffre d''affaires, quel ratio ? Réponse : environ 8,67 %.
- Question 4 : 1 175 commandes parfaites sur 1 250, quel taux OTIF ? Réponse : 94 %.
- Question 5 : citez deux auxiliaires de transport. Réponse : transitaire, commissionnaire en douane, consignataire.

## 1:27:00 – 1:30:00 · Synthèse et consignes

Récapitulons : la logistique, ce sont les six « bons » ; la chaîne d''approvisionnement relie plusieurs entreprises ; trois flux circulent ; le coût logistique se mesure en pourcentage du chiffre d''affaires et par tonne ; le taux de service doit être défini précisément ; coût et service sont en arbitrage permanent. Pour la prochaine séance, refaites les exercices de la leçon sans regarder le corrigé. Merci de votre attention et bon courage.', 'video', 90, false, 60
from public.courses c where c.slug = 'lic-log-l1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Introduction à la logistique et à la chaîne d''approvisionnement');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Gestion des stocks', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : étudiants de Licence 1 en logistique et transport.
- Objectifs : réaliser une classification ABC, appliquer la formule de Wilson, traiter une remise sur quantité, calculer un stock de sécurité, un point de commande et les indicateurs de rotation et de couverture.
- Matériel : diaporama (tableau ABC, courbe des coûts de Wilson, courbe en dents de scie), tableur ou calculatrice, fiche d''exercices.
- Prérequis : pourcentages, racine carrée, avoir lu la leçon « Gestion des stocks : l''essentiel pour l''examen ».

## Déroulé minuté

## 00:00 – 05:00 · Accueil et objectifs

Bonjour à toutes et à tous. Aujourd''hui, nous travaillons la matière la plus calculatoire de votre première année : la gestion des stocks. Elle tombe presque à chaque examen, et c''est une bonne nouvelle, car avec de la méthode on y gagne facilement des points. Au programme : la méthode ABC, la formule de Wilson, la remise sur quantité, le stock de sécurité, le point de commande et les indicateurs. Calculatrice en main. Les entreprises sont fictives.

## 05:00 – 12:00 · Pourquoi un stock ?

Commençons par une question : un stock, est-ce une bonne ou une mauvaise chose ? Les deux. Le stock protège contre les aléas, par exemple un navire en retard au port ou une demande qui augmente avant la Tabaski. Mais il coûte : argent immobilisé, loyer de l''entrepôt, assurance, vol, casse, péremption. Toute la gestion des stocks consiste à équilibrer deux risques : la rupture et le surstock.

Deux coûts structurent nos calculs. Le coût de passation, Cl, payé à chaque commande. Le coût de possession, proportionnel au stock moyen, souvent exprimé par un taux annuel t appliqué à la valeur : h égale t fois le prix unitaire.

## 12:00 – 25:00 · La méthode ABC pas à pas

Prenons la Quincaillerie Ndiaye et Fils, à Rufisque, entreprise fictive. Huit articles. Première étape : valeur annuelle consommée, quantité fois prix. Les tôles : 600 fois 30 000, 18 millions. Le fer à béton : 2 400 fois 5 000, 12 millions. La peinture : 4,5 millions. Les robinets : 2,5 millions. Les clous : 1,2 million. Les cadenas : 900 000. Les vis : 500 000. Le fil de fer : 400 000. Total : 40 millions.

Deuxième étape : classer par valeur décroissante, c''est déjà fait. Troisième étape : pourcentages et cumuls. Tôles 45 %, cumul 45. Fer 30 %, cumul 75. Peinture 11,25 %, cumul 86,25. Robinets 6,25 %, cumul 92,5. Puis 95,5 ; 97,75 ; 99 ; 100.

Quatrième étape : les classes. A : tôles et fer, 2 articles sur 8, soit 25 % des articles pour 75 % de la valeur. B : peinture et robinets, 17,5 % de la valeur. C : les quatre derniers, la moitié des articles pour 7,5 % de la valeur.

Visuel : la courbe ABC, en abscisse le pourcentage cumulé d''articles, en ordonnée le pourcentage cumulé de valeur ; la courbe monte très vite puis s''aplatit.

Et surtout, la conséquence managériale : inventaires fréquents et négociation serrée pour A, gestion simplifiée pour C. Une classification sans conclusion perd des points.

## 25:00 – 40:00 · La formule de Wilson

Hypothèses : demande régulière et connue, délai constant, pas de rupture, prix fixe. Si je commande Q unités à chaque fois, je passe D sur Q commandes par an, donc le coût de passation est D sur Q fois Cl. Le stock varie de Q à zéro, en dents de scie : le stock moyen vaut Q sur 2, et le coût de possession Q sur 2 fois h.

Visuel : deux courbes. Le coût de passation décroît quand Q augmente ; le coût de possession croît. Leur somme forme une cuvette dont le minimum est au croisement.

La formule : Q étoile égale racine de 2 D Cl sur h.

Application : un distributeur de lait, 24 000 cartons par an, Cl de 30 000 FCFA, prix 5 000, taux 20 %. h vaut 1 000. Q étoile : racine de 2 fois 24 000 fois 30 000 sur 1 000, racine de 1 440 000, soit 1 200 cartons. Nombre de commandes : 20. Une commande tous les 18 jours. Coût de passation : 600 000. Coût de possession : 600 fois 1 000, 600 000. Total : 1 200 000 FCFA. Les deux coûts sont égaux : c''est votre contrôle.

Question au public : si la demande est multipliée par quatre, que devient Q étoile ? Elle double, puisque D est sous la racine. Et si le coût de passation baisse, grâce par exemple à des commandes passées par une plateforme en ligne ? Q étoile diminue : on commande plus souvent, en plus petites quantités. C''est la logique des approvisionnements fréquents.

Attention aux limites du modèle. La demande réelle n''est jamais parfaitement régulière : ventes plus fortes pendant le Ramadan ou la Tabaski, saison des pluies qui ralentit les livraisons. Les délais varient. Les fournisseurs imposent des minimums de commande ou des multiples de palette. La formule donne un ordre de grandeur, que le gestionnaire ajuste. À l''examen, une phrase sur ces limites montre votre recul.

## 40:00 – 45:00 · Pause quiz

Trois questions rapides.

Question 1 : D = 7 500, Cl = 12 000, h = 500. Q étoile ? Réponse : racine de 360 000, soit 600.

Question 2 : combien de commandes par an ? Réponse : 12,5.

Question 3 : coût total de gestion ? Réponse : 150 000 plus 150 000, soit 300 000 FCFA.

## 45:00 – 57:00 · La remise sur quantité

Le fournisseur du distributeur de lait propose 4 850 FCFA au lieu de 5 000 pour au moins 2 000 cartons. La formule de Wilson ne suffit plus : il faut comparer les coûts totaux achats compris.

À 1 200 cartons : achats 120 millions, gestion 1,2 million, total 121,2 millions. À 2 000 cartons : attention, h change, 20 % de 4 850, soit 970. Achats : 116,4 millions. Passation : 12 commandes, 360 000. Possession : 1 000 fois 970, 970 000. Total : 117,73 millions. Gain : 3,47 millions FCFA. On accepte, à condition d''avoir la place et la trésorerie, et que le produit ne se périme pas.

Erreur fréquente : oublier de recalculer h avec le nouveau prix. Une autre : oublier les achats dans la comparaison, alors que c''est là que se trouve le gain.

Méthode à retenir pour toute remise : premièrement, calculer Q étoile au prix normal et son coût total achats compris ; deuxièmement, pour chaque seuil de remise, prendre la quantité égale au seuil, ou la quantité de Wilson recalculée si elle dépasse déjà le seuil ; troisièmement, comparer les totaux et retenir le plus faible ; quatrièmement, vérifier les contraintes pratiques : surface de stockage, trésorerie, durée de vie du produit.

## 57:00 – 1:10:00 · Stock de sécurité et point de commande

Le point de commande est le niveau auquel on déclenche la commande. Formule : consommation pendant le délai plus stock de sécurité. Distributeur de lait : 240 jours ouvrés, donc 100 cartons par jour ; délai 6 jours ; stock de sécurité 150. PC : 600 plus 150, soit 750 cartons.

Version statistique : stock de sécurité égale z fois sigma fois racine du délai. Avec z égal 1,65 pour environ 95 % de service, sigma de 20 cartons par jour et 6 jours : 1,65 fois 20 fois racine de 6, environ 80,8, donc 81 cartons. On arrondit toujours au-dessus.

Visuel : courbe en dents de scie avec une ligne horizontale pour le stock de sécurité et une autre pour le point de commande ; la flèche du délai part du point de commande.

Deux méthodes de réapprovisionnement à connaître. La méthode du point de commande : quantité fixe, date variable ; on commande Q dès que le stock atteint le point de commande. La méthode du recomplètement périodique : date fixe, quantité variable ; tous les quinze jours par exemple, on commande de quoi remonter à un niveau cible. La première convient bien aux articles A suivis en permanence ; la seconde simplifie la gestion des articles C, qu''on peut regrouper chez un même fournisseur.

## 1:10:00 – 1:20:00 · Indicateurs et exercice de synthèse

Stock moyen dans le modèle : Q sur 2 plus stock de sécurité, 600 plus 150, soit 750 cartons. Rotation : 24 000 sur 750, 32 fois par an. Couverture : 750 sur 100, 7,5 jours ouvrés.

Exercice à faire seul pendant cinq minutes : données de l''exercice 2 de la leçon, stock de sécurité de 100 unités, 360 jours. Correction : stock moyen 300 plus 100, 400 unités ; rotation 7 500 sur 400, 18,75 ; couverture 360 sur 18,75, 19,2 jours.

## 1:20:00 – 1:27:00 · Évaluation finale

- Question 1 : que représente la classe A ? Réponse : les quelques articles qui concentrent l''essentiel de la valeur consommée, environ 70 à 80 %.
- Question 2 : écrivez la formule de Wilson. Réponse : Q étoile égale racine de 2 D Cl sur h.
- Question 3 : consommation 30 par jour, délai 8 jours, stock de sécurité 60 : point de commande ? Réponse : 300.
- Question 4 : sigma 12, délai 9 jours, z 1,65 : stock de sécurité ? Réponse : 59,4, arrondi à 60.
- Question 5 : à l''optimum de Wilson, quelle égalité vérifie-t-on ? Réponse : coût de passation égal coût de possession.

## 1:27:00 – 1:30:00 · Synthèse

Retenez quatre réflexes : écrire la formule, mettre les unités, contrôler l''égalité des coûts à l''optimum, conclure par une recommandation. Pour la prochaine séance, refaites tous les exercices de la leçon en temps limité. Merci et à bientôt.', 'video', 90, false, 70
from public.courses c where c.slug = 'lic-log-l1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Gestion des stocks');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Géographie des transports et modes de transport', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : étudiants de Licence 1 en logistique et transport.
- Objectifs : comparer les modes de transport, maîtriser les notions de réseau, nœud, hinterland, rupture de charge, intermodalité et corridor, décrire en termes généraux les corridors ouest-africains, calculer un coût à la tonne-kilomètre et un coût du temps.
- Matériel : carte simplifiée de l''Afrique de l''Ouest, tableau comparatif des modes, calculatrice, fiche d''exercices.
- Prérequis : avoir lu la leçon « Géographie des transports et modes de transport : l''essentiel pour l''examen ».

## Déroulé minuté

## 00:00 – 05:00 · Accueil et objectifs

Bonjour à toutes et à tous. Aujourd''hui, nous prenons de la hauteur : nous regardons la carte. Le transport n''est pas seulement un camion ou un navire, c''est un réseau qui façonne les territoires et les économies. À la fin de la séance, vous saurez comparer les modes, utiliser le vocabulaire de la géographie des transports, présenter les corridors ouest-africains et faire les calculs de coût qui accompagnent un choix de mode. Rappel : les tarifs utilisés sont fictifs pour l''exemple.

## 05:00 – 15:00 · Réseaux, nœuds et hinterland

Un réseau, ce sont des axes et des nœuds. Les axes : routes, voies ferrées, lignes maritimes et aériennes. Les nœuds : ports, gares, aéroports, gares routières, plateformes logistiques. C''est dans les nœuds que les flux se concentrent et changent souvent de mode.

Le hinterland est l''arrière-pays desservi par un port. Pour un port ouest-africain, ce hinterland peut dépasser les frontières : des marchandises débarquées sur la côte poursuivent leur route vers des pays sans accès à la mer. C''est une source d''activité pour les ports, et une concurrence entre eux pour capter ces flux.

Question au public : citez un nœud logistique que vous connaissez dans votre ville. Une gare routière, un marché de gros, un port, un aéroport : tous sont des nœuds.

La géographie des transports s''intéresse aussi à l''accessibilité : un territoire bien relié attire les entreprises, un territoire isolé paie ses produits plus cher. Pensez à une région éloignée de Dakar : les produits importés y arrivent après un long trajet routier, avec un coût qui se retrouve dans le prix final. Pensez aussi à la saison des pluies, qui peut rendre certaines pistes difficiles. Le transport crée donc des inégalités territoriales, et les politiques d''infrastructure cherchent à les réduire.

## 15:00 – 30:00 · Les quatre modes comparés

Visuel : tableau à quatre colonnes, route, rail, maritime, aérien ; en lignes coût, vitesse, capacité, souplesse, fiabilité.

La route : souple, porte-à-porte, réseau dense. Elle domine largement le transport de marchandises dans la région. Ses faiblesses : un coût à la tonne-kilomètre élevé sur longue distance, l''usure des routes, la surcharge des véhicules, les accidents et les contrôles répétés.

Le rail : grande capacité et faible coût unitaire pour les pondéreux, comme les minerais, le ciment, les céréales ou les conteneurs. Mais le réseau est peu étendu et plusieurs lignes historiques ont connu de longues interruptions ; des projets de réhabilitation sont régulièrement discutés. Restez prudents à l''examen : parlez de tendance, pas de chiffres non vérifiés.

Le maritime : le mode du commerce international, avec des volumes énormes et un coût unitaire très faible sur longue distance, mais lent et dépendant des ports.

L''aérien : rapide et sûr, réservé aux produits de forte valeur, urgents ou périssables. Exemple : des produits horticoles frais exportés vers l''Europe, ou des médicaments urgents.

Retenez la grille de choix : nature du produit, distance, délai, coût, fiabilité, infrastructure disponible.

Faisons un exercice oral. Dix-huit tonnes d''épicerie de Dakar à Kaolack : la route, car distance moyenne et besoin de livrer porte-à-porte. Deux cents kilos de vaccins pour Ziguinchor en urgence : l''avion ou une route express sous froid. Un conteneur de pièces détachées venant d''Asie : le maritime, puis la route jusqu''à l''entrepôt. Vous voyez que la réponse n''est presque jamais un mode unique : c''est une chaîne de modes. Et dans chaque cas, justifiez par au moins deux critères.

## 30:00 – 40:00 · Rupture de charge et intermodalité

Chaque fois qu''on transfère une marchandise d''un véhicule à un autre, il y a rupture de charge : temps, manutention, risque de casse et de vol. Le conteneur a révolutionné ce problème : on transfère la boîte, pas la marchandise.

Trois notions à bien distinguer. Le transport multimodal : plusieurs modes sous un contrat unique. L''intermodalité : plusieurs modes avec la même unité de chargement. Le port sec : une plateforme intérieure reliée au port, où l''on peut dédouaner et stocker près des clients. Et le hub : une plateforme qui concentre puis redistribue les flux, en étoile.

## 40:00 – 45:00 · Pause quiz

Question 1 : quel mode pour 30 000 tonnes de clinker ? Réponse : rail ou maritime, pondéreux de faible valeur.

Question 2 : qu''est-ce qu''un hinterland ? Réponse : la zone intérieure desservie par un port.

Question 3 : quelle différence entre multimodal et intermodal ? Réponse : le multimodal repose sur un contrat unique, l''intermodal sur une unité de chargement unique.

## 45:00 – 58:00 · Les corridors ouest-africains

Visuel : carte simplifiée. Sur la côte, Dakar, Abidjan, Tema, Lomé, Cotonou. À l''intérieur, Bamako, Ouagadougou, Niamey. Des flèches relient les ports aux capitales enclavées.

Un corridor, c''est un axe de transport avec ses infrastructures, ses postes frontières et ses règles de transit. Le Mali, le Burkina Faso et le Niger dépendent des ports de leurs voisins côtiers pour leur commerce maritime. On cite généralement le corridor Dakar – Bamako, par la route et avec une ligne ferroviaire historique, les corridors qui desservent le Burkina Faso et le Niger depuis Abidjan, Tema, Lomé et Cotonou, et le corridor côtier Abidjan – Lagos.

Les difficultés : attentes aux ports et aux frontières, contrôles multiples, état variable des routes, surcharge, coûts informels. Les réponses discutées par l''UEMOA et la CEDEAO : postes de contrôle juxtaposés, régimes de transit régional, suivi des pratiques anormales, investissements d''infrastructure. Et les ports se font concurrence pour attirer le trafic des pays enclavés : la qualité du corridor devient un argument commercial.

Sujet de réflexion possible : « Le transport est-il un frein au développement des pays enclavés ? ». Plan suggéré : d''abord un handicap réel en coûts et en délais ; ensuite des corridors et des politiques régionales qui peuvent transformer la contrainte en levier d''intégration.

Exercice de groupe de quatre minutes : un importateur fictif de Ouagadougou reçoit ses conteneurs par un port côtier ; listez quatre causes d''allongement du délai et une action pour chacune. Correction : attente au port, d''où réservation et suivi du navire ; formalités douanières, d''où documents préparés à l''avance et commissionnaire agréé fiable ; attentes aux frontières, d''où régimes de transit et postes juxtaposés ; manque de camions, d''où contrats avec des transporteurs fiables et planification des retours de conteneurs vides.

## 58:00 – 1:10:00 · Calculs : tonne-kilomètre

Le coût de transport se calcule souvent par tonne-kilomètre : tonnage fois distance fois tarif. Exemple : 25 tonnes de Dakar vers Bamako, distance retenue pour l''exercice 1 250 km. Route à 45 FCFA par t.km : 25 fois 1 250 fois 45, soit 1 406 250 FCFA. Rail à 30 FCFA par t.km : 937 500, plus 300 000 de pré- et post-acheminement, soit 1 237 500 FCFA. Le rail économise 168 750 FCFA, si le service est disponible et fiable.

Exercice corrigé : 12 tonnes sur 460 km à 52 FCFA par t.km. 12 fois 460, 5 520 t.km ; fois 52, 287 040 FCFA.

## 1:10:00 – 1:20:00 · Le coût du temps

Le temps coûte : la marchandise en transit immobilise de l''argent. Formule : valeur fois taux du capital fois jours sur 360.

Exercice : marchandise de 80 millions, taux fictif 15 % par an. Mer : 2,4 millions de fret, 35 jours. Coût du temps : 80 millions fois 0,15 fois 35 sur 360, environ 1 166 667. Total environ 3 566 667 FCFA. Avion : 9 millions, 3 jours. Coût du temps : 100 000. Total 9,1 millions. La mer l''emporte. L''avion ne devient rationnel que si une rupture de stock coûterait plus d''environ 5,5 millions, l''écart entre les deux totaux.

## 1:20:00 – 1:27:00 · Évaluation finale

- Question 1 : citez deux avantages du transport routier. Réponse : porte-à-porte, souplesse, réseau dense.
- Question 2 : qu''est-ce qu''une rupture de charge ? Réponse : le transfert de la marchandise d''un véhicule ou d''un mode à un autre.
- Question 3 : citez trois pays enclavés d''Afrique de l''Ouest. Réponse : Mali, Burkina Faso, Niger.
- Question 4 : 20 tonnes, 900 km, 48 FCFA par t.km : coût ? Réponse : 864 000 FCFA.
- Question 5 : coût du temps pour 60 millions, 12 %, 8 jours ? Réponse : 160 000 FCFA.

## 1:27:00 – 1:30:00 · Synthèse

Retenez : choisir un mode, c''est arbitrer entre coût, délai, capacité et fiabilité ; le conteneur réduit le coût des ruptures de charge ; les corridors sont vitaux pour les pays enclavés ; le coût total inclut le coût du temps. Révisez la carte, les définitions et les deux formules. Merci et bonne révision.', 'video', 90, false, 80
from public.courses c where c.slug = 'lic-log-l1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Géographie des transports et modes de transport');
