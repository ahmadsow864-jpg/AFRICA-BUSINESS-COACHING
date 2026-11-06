-- Fichier généré par tools/generate-seed.mjs — ne pas modifier à la main.
-- Cours (partie 4/4). À exécuter après seed.sql.

-- Cours : Vendre des véhicules : du stock à l'après-vente
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'formation-vente-vehicules', (select id from public.levels where name = 'Formation professionnelle'), 'vente-vehicules', 'Commerce automobile', 'Vendre des véhicules : du stock à l''après-vente', 'Cette formation couvre tout le cycle de la vente automobile : gestion du stock de véhicules neufs (VN) et d''occasion (VO), cotation et reprise d''un véhicule d''occasion, prospection et techniques de vente, devis, financement et échéanciers avec calculs de mensualités, puis après-vente et garanties. Elle s''adresse aux vendeurs, chefs des ventes, gérants de parcs automobiles et entrepreneurs du négoce de véhicules. Prérequis : calculs de base et pourcentages.', true, 100
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Gérer un stock de véhicules neufs et d''occasion', '## Objectifs de la leçon

- Distinguer la gestion d''un stock de véhicules neufs (VN) et d''occasion (VO).
- Calculer le prix de revient, la rotation et le coût de détention du stock.
- Mettre en place une politique de vieillissement du stock.

## Le stock, premier actif du vendeur de véhicules

Un parc de vente automobile immobilise beaucoup d''argent : vingt véhicules d''occasion à 6 000 000 FCFA représentent 120 000 000 FCFA. Tant qu''un véhicule n''est pas vendu, il coûte : intérêts sur l''argent emprunté ou immobilisé, gardiennage, assurance, entretien courant, et perte de valeur. Un bon vendeur de véhicules est donc d''abord un bon gestionnaire de stock : acheter les bons véhicules, au bon prix, et les vendre vite.

## VN et VO : deux logiques différentes

Le véhicule neuf (VN) est acheté auprès d''un constructeur ou d''un importateur. Son prix d''achat et son prix de vente conseillé sont connus ; la marge est encadrée par le contrat de distribution. Le stock se pilote avec les commandes, les délais de livraison et les objectifs fixés par le fournisseur.

Le véhicule d''occasion (VO) provient de reprises de clients, d''achats auprès de particuliers ou d''entreprises, de ventes aux enchères ou d''importations. Au Sénégal, une grande partie des VO est importée ; la réglementation encadre notamment l''âge des véhicules importés, et il faut vérifier la règle en vigueur avant tout achat à l''étranger. Chaque VO est unique : son prix d''achat se négocie, sa remise en état varie, et sa marge dépend de la qualité de l''achat.

## La fiche de stock

Chaque véhicule entre en stock avec une fiche : numéro de stock, numéro de châssis, immatriculation, marque, modèle, version, année, kilométrage, couleur, options, date d''entrée, photos, documents reçus, et surtout le prix de revient.

Prix de revient = prix d''achat + transport + frais de dédouanement et d''immatriculation éventuels + remise en état + préparation (nettoyage, contrôle).

Exemple : un VO importé acheté 4 200 000 FCFA, transport 450 000 FCFA, frais de dédouanement et formalités 1 100 000 FCFA (montant d''exemple, il varie selon le véhicule et la réglementation), remise en état 350 000 FCFA, préparation 50 000 FCFA. Prix de revient : 4 200 000 + 450 000 + 1 100 000 + 350 000 + 50 000 = 6 150 000 FCFA. Si le véhicule se vend 7 000 000 FCFA, la marge brute est 850 000 FCFA, soit 850 000 / 7 000 000 ≈ 12,1 % du prix de vente.

## La rotation du stock

La rotation mesure combien de fois le stock se renouvelle dans l''année : rotation = coût des véhicules vendus dans l''année / valeur moyenne du stock au prix de revient.

La durée moyenne de stockage en jours = 365 / rotation.

Exemple : une entreprise a vendu dans l''année des véhicules dont le prix de revient total est de 720 000 000 FCFA ; son stock moyen vaut 180 000 000 FCFA. Rotation = 720 000 000 / 180 000 000 = 4. Durée moyenne = 365 / 4 ≈ 91 jours.

## Le coût de détention

Chaque jour de stock coûte. Prenons un VO de 6 000 000 FCFA financé à un taux fictif de 10 % par an : coût financier par jour = 6 000 000 × 0,10 / 365 ≈ 1 644 FCFA. Ajoutons 500 FCFA par jour de gardiennage et d''assurance, et une perte de valeur estimée à 1 % par mois, soit environ 2 000 FCFA par jour. Le véhicule coûte environ 4 144 FCFA par jour. Après 90 jours : environ 373 000 FCFA, soit près de la moitié d''une marge de 850 000 FCFA.

## La politique de vieillissement

On classe le stock par ancienneté et on applique des actions prédéfinies :

- De 0 à 30 jours : prix normal, mise en avant sur les annonces.
- De 31 à 60 jours : analyse (prix, présentation, photos), première baisse de prix si nécessaire.
- De 61 à 90 jours : baisse de prix plus marquée, offre de financement ou de garantie.
- Au-delà de 90 jours : vente à un marchand ou aux enchères pour libérer la trésorerie.

Cette politique évite l''attachement au prix d''achat : ce qui compte, c''est le prix que le marché accepte aujourd''hui.

## Le stock idéal

On achète en priorité les modèles qui se vendent vite dans sa clientèle : en Afrique de l''Ouest, les berlines économiques, les SUV robustes, les pick-up et les utilitaires pour les commerçants sont souvent très demandés. Le suivi des ventes par modèle, par tranche de prix et par durée de vente oriente les achats.

## Points clés

- Le prix de revient inclut tous les frais jusqu''à la mise en vente.
- Rotation = coût des ventes / stock moyen ; durée de stockage = 365 / rotation.
- Chaque jour de stock coûte : financement, gardiennage, perte de valeur.
- La politique de vieillissement fixe à l''avance les actions par tranche d''ancienneté.

## Exercices

- Exercice 1 : VO acheté 3 800 000 FCFA, transport 400 000 FCFA, formalités 900 000 FCFA, remise en état 250 000 FCFA, préparation 50 000 FCFA. Calculez le prix de revient. Quelle marge pour une vente à 6 000 000 FCFA ?
- Exercice 2 : coût des ventes annuel 540 000 000 FCFA, stock moyen 90 000 000 FCFA. Calculez la rotation et la durée moyenne de stockage.
- Exercice 3 : un véhicule coûte 3 500 FCFA par jour de détention. Combien a-t-il coûté après 75 jours ?
- Exercice 4 : un véhicule est en stock depuis 70 jours. Quelles actions prévoit la politique de vieillissement ?

## Corrigé

Exercice 1 : prix de revient = 3 800 000 + 400 000 + 900 000 + 250 000 + 50 000 = 5 400 000 FCFA. Marge = 6 000 000 - 5 400 000 = 600 000 FCFA, soit 10 % du prix de vente.

Exercice 2 : rotation = 540 000 000 / 90 000 000 = 6 ; durée = 365 / 6 ≈ 61 jours.

Exercice 3 : 3 500 × 75 = 262 500 FCFA.

Exercice 4 : il est dans la tranche 61 à 90 jours : baisse de prix plus marquée et offre commerciale (financement, garantie) ; s''il n''est pas vendu à 90 jours, on le cède à un marchand ou aux enchères.', 'texte', 50, true, 10
from public.courses c where c.slug = 'formation-vente-vehicules'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Gérer un stock de véhicules neufs et d''occasion');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Coter et reprendre un véhicule d''occasion', '## Objectifs de la leçon

- Inspecter un véhicule d''occasion avec méthode.
- Établir une cotation de marché et calculer un prix de reprise.
- Présenter une offre de reprise argumentée au client.

## Pourquoi la cotation est décisive

Dans le commerce du VO, on dit souvent que la marge se fait à l''achat. Un véhicule repris trop cher ne se vendra qu''à perte ; un véhicule repris trop bas fera fuir le client. La cotation consiste à estimer la valeur d''un véhicule, puis à en déduire le prix auquel on peut le reprendre en gardant une marge.

## L''inspection du véhicule

L''inspection suit une fiche, toujours dans le même ordre, pour ne rien oublier :

- Documents : carte grise au nom du vendeur, concordance du numéro de châssis avec le véhicule, carnet d''entretien, factures, absence de gage ou d''opposition à vérifier selon les moyens disponibles.
- Extérieur : carrosserie (chocs, rouille, différences de teinte révélant des réparations), vitrage, éclairage, pneus (usure, date, homogénéité).
- Intérieur : sièges, tableau de bord, voyants au démarrage, climatisation, vitres électriques, odeurs d''humidité (véhicule inondé).
- Mécanique : démarrage à froid, bruits, fumées à l''échappement, fuites, niveau et aspect des huiles, embrayage, boîte de vitesses, freins, direction, suspensions.
- Essai routier : comportement en ligne droite et au freinage, passage des vitesses, bruits de roulement.
- Kilométrage : cohérence entre compteur, usure (pédales, volant, sièges) et factures. Un compteur trafiqué est une fraude fréquente ; le moindre doute se note sur la fiche.

Chaque défaut est chiffré en frais de remise en état à partir des tarifs de l''atelier ou des devis.

## La cotation de marché

La valeur de marché est le prix auquel des véhicules comparables (même modèle, année, motorisation, kilométrage proche, état similaire) se vendent réellement. On l''établit en relevant plusieurs annonces et transactions récentes : sites d''annonces, parcs concurrents, ventes de son propre parc. On retient une valeur centrale, en écartant les annonces anormalement hautes ou basses. Les prix affichés sont souvent négociés : il faut raisonner sur les prix de vente constatés.

On ajuste ensuite pour les différences : kilométrage, options, état, couleur peu demandée. Chaque entreprise fixe ses propres règles d''ajustement à partir de son expérience. Par exemple, une règle interne peut retirer 1 % de la valeur par tranche de 10 000 km au-delà du kilométrage de référence du modèle et de l''année.

## La méthode du prix de reprise

On part du prix de revente attendu et l''on remonte vers le prix de reprise :

Prix de reprise maximal = prix de revente attendu - frais de remise en état - frais fixes de mise en vente (préparation, garantie, frais administratifs) - marge visée.

## Exemple chiffré

Un client souhaite faire reprendre son SUV pour en acheter un plus récent. Le véhicule affiche 140 000 km. Les ventes constatées de modèles comparables à 100 000 km tournent autour de 7 500 000 FCFA.

- Ajustement kilométrage (règle interne : 1 % par tranche de 10 000 km au-delà de 100 000 km) : 4 tranches, soit 4 % de 7 500 000 = 300 000 FCFA. Prix de revente attendu : 7 200 000 FCFA.
- Remise en état : 4 pneus 240 000 FCFA, plaquettes et disques 85 000 FCFA, carrosserie (pare-chocs) 150 000 FCFA, nettoyage complet 25 000 FCFA, soit 500 000 FCFA.
- Frais fixes : garantie commerciale 100 000 FCFA, frais administratifs 50 000 FCFA, soit 150 000 FCFA.
- Marge visée : 12 % du prix de revente, soit 864 000 FCFA.

Prix de reprise maximal = 7 200 000 - 500 000 - 150 000 - 864 000 = 5 686 000 FCFA. Le vendeur propose 5 650 000 FCFA.

## Présenter l''offre au client

Le client a souvent une idée de prix plus élevée, fondée sur les annonces. Il faut expliquer la démarche avec transparence : montrer les ventes constatées, l''ajustement de kilométrage, les frais de remise en état chiffrés. On peut aussi souligner les avantages de la reprise : pas d''annonce à publier, pas de visites d''inconnus, pas de risque d''impayé, et la valeur de reprise directement déduite du nouvel achat.

## Points clés

- L''inspection suit une fiche : documents, extérieur, intérieur, mécanique, essai, kilométrage.
- La valeur de marché se fonde sur des ventes réelles de véhicules comparables.
- Le prix de reprise se calcule à rebours : revente - remise en état - frais fixes - marge.
- L''offre se présente avec transparence et arguments.

## Exercices

- Exercice 1 : citez cinq points de contrôle mécanique lors de l''inspection.
- Exercice 2 : valeur de référence 5 000 000 FCFA à 80 000 km ; le véhicule a 110 000 km ; règle interne 1 % par tranche de 10 000 km. Calculez le prix de revente attendu.
- Exercice 3 : avec le résultat de l''exercice 2, une remise en état de 320 000 FCFA, des frais fixes de 130 000 FCFA et une marge de 10 % du prix de revente, calculez le prix de reprise maximal.
- Exercice 4 : quels indices peuvent révéler un compteur kilométrique trafiqué ?

## Corrigé

Exercice 1 : démarrage à froid, fumées à l''échappement, fuites, état des huiles, embrayage, boîte de vitesses, freins, direction, suspensions.

Exercice 2 : 3 tranches de 10 000 km, soit 3 % de 5 000 000 = 150 000 FCFA ; prix de revente attendu = 4 850 000 FCFA.

Exercice 3 : marge = 10 % × 4 850 000 = 485 000 FCFA ; reprise maximale = 4 850 000 - 320 000 - 130 000 - 485 000 = 3 915 000 FCFA.

Exercice 4 : usure du volant, du pommeau, des pédales ou du siège conducteur incohérente avec le kilométrage ; factures d''entretien mentionnant un kilométrage supérieur ; carnet absent ; vis du tableau de bord démontées ; pneus et disques très usés pour un faible kilométrage.', 'texte', 55, false, 20
from public.courses c where c.slug = 'formation-vente-vehicules'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Coter et reprendre un véhicule d''occasion');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Prospection et techniques de vente automobile', '## Objectifs de la leçon

- Organiser une prospection régulière et mesurer ses résultats.
- Conduire un entretien de vente en étapes.
- Traiter les objections et conclure.

## La prospection

Attendre que les clients entrent dans le parc ne suffit pas. La prospection consiste à aller chercher des acheteurs potentiels, que l''on appelle des prospects ou des contacts. Les sources sont nombreuses :

- Les clients existants : un client satisfait rachète et recommande ; on le recontacte au bout de quelques années pour un renouvellement.
- Le fichier des personnes venues sans acheter.
- Les annonces en ligne et les réseaux sociaux, très utilisés en Afrique de l''Ouest pour la vente automobile.
- Les entreprises, ONG et administrations qui renouvellent leurs flottes.
- Les commerçants, transporteurs et artisans qui ont besoin d''utilitaires.
- Les salons, foires et événements locaux.
- Les partenaires : banques, assureurs, garages.

Chaque contact est enregistré dans un fichier (tableur ou logiciel de gestion de la relation client) : nom, téléphone, besoin, budget, source, date du prochain rappel. Les données personnelles des prospects doivent être traitées dans le respect de la réglementation sur la protection des données.

## L''entonnoir de vente

On mesure la prospection avec l''entonnoir : contacts, visites ou rendez-vous, essais, ventes. Exemple pour un mois : 400 contacts, 120 visites, 40 essais, 12 ventes.

- Taux de visite : 120 / 400 = 30 %.
- Taux d''essai : 40 / 120 ≈ 33 %.
- Taux de conclusion après essai : 12 / 40 = 30 %.
- Taux global : 12 / 400 = 3 %.

Si l''objectif est de 18 ventes par mois avec les mêmes taux, il faut 18 / 0,03 = 600 contacts. L''entonnoir montre aussi où agir : un faible taux d''essai révèle souvent une mauvaise découverte des besoins.

## Les étapes de l''entretien de vente

L''accueil : saluer rapidement, se présenter, mettre à l''aise. Le client doit sentir qu''on s''intéresse à lui et non seulement à sa carte bancaire.

La découverte : c''est l''étape la plus importante. Le vendeur pose des questions ouvertes pour comprendre l''usage (ville, piste, longs trajets), le nombre de passagers, le budget, le mode de paiement, le véhicule actuel, les critères de choix. Une grille souvent utilisée en formation commerciale est SONCAS, qui rappelle six motivations d''achat : sécurité, orgueil, nouveauté, confort, argent, sympathie. Elle aide à repérer ce qui compte vraiment pour le client.

La présentation : on présente le véhicule en reliant chaque caractéristique au besoin exprimé, selon la méthode caractéristique, avantage, bénéfice. Exemple : "Ce pick-up a une garde au sol élevée (caractéristique), il passe facilement les pistes en saison des pluies (avantage), vous pourrez livrer vos clients des villages toute l''année (bénéfice)."

L''essai : il fait passer le client de l''imagination à l''expérience. On prépare un parcours représentatif et on laisse le client conduire, après vérification de son permis.

Le traitement des objections : voir ci-dessous.

La conclusion : quand le client montre des signaux d''achat (il parle des couleurs, des délais, du financement), on propose de passer au devis et à la commande.

## Traiter les objections

Une objection n''est pas un refus : c''est une demande d''information ou de réassurance. La méthode en quatre temps :

- Écouter jusqu''au bout sans interrompre.
- Reformuler pour vérifier qu''on a compris.
- Répondre avec des faits : preuve, comparaison, calcul.
- Vérifier que la réponse convient.

Exemple. Le client : "C''est trop cher." Le vendeur : "Vous trouvez le prix élevé par rapport à quoi ?" Le client : "J''ai vu le même modèle moins cher sur internet." Le vendeur compare : le véhicule du parc a un kilométrage contrôlé, une révision faite, des pneus neufs et une garantie de trois mois ; il chiffre ces éléments et propose de calculer la mensualité d''un financement.

## L''éthique du vendeur

Le vendeur ne cache pas un défaut connu, n''invente pas un historique et respecte la parole donnée. Au-delà de l''obligation légale d''information et de loyauté, c''est la condition de la recommandation, principal moteur des ventes dans un marché où la confiance est rare.

## Points clés

- La prospection est régulière, tracée dans un fichier et mesurée par l''entonnoir.
- L''entretien suit six étapes : accueil, découverte, présentation, essai, objections, conclusion.
- La découverte des besoins conditionne toute la suite.
- L''objection se traite par l''écoute, la reformulation, les faits et la vérification.

## Exercices

- Exercice 1 : citez cinq sources de prospects pour un vendeur de pick-up.
- Exercice 2 : 250 contacts, 75 visites, 30 essais, 9 ventes. Calculez les taux de l''entonnoir.
- Exercice 3 : avec un taux global de 4 %, combien de contacts faut-il pour 20 ventes ?
- Exercice 4 : transformez en caractéristique, avantage et bénéfice : "climatisation automatique" pour un taxi.
- Exercice 5 : un client dit "Je dois réfléchir". Proposez une réponse.

## Corrigé

Exercice 1 : clients existants, transporteurs et commerçants, entreprises de BTP, annonces en ligne, réseaux sociaux, foires agricoles, partenaires bancaires.

Exercice 2 : visites 75 / 250 = 30 % ; essais 30 / 75 = 40 % ; conclusion 9 / 30 = 30 % ; global 9 / 250 = 3,6 %.

Exercice 3 : 20 / 0,04 = 500 contacts.

Exercice 4 : caractéristique : climatisation automatique ; avantage : température agréable maintenue sans réglage ; bénéfice : les clients du taxi sont satisfaits, donnent plus volontiers un pourboire et reviennent.

Exercice 5 : reformuler et chercher le point de doute : "Bien sûr. Pour vous aider, sur quel point souhaitez-vous réfléchir : le modèle, le prix ou le financement ?" Puis répondre au point précis et fixer un rendez-vous ou un rappel daté.', 'texte', 50, false, 30
from public.courses c where c.slug = 'formation-vente-vehicules'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Prospection et techniques de vente automobile');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Devis, financement et échéanciers', '## Objectifs de la leçon

- Rédiger un devis complet et conforme.
- Présenter les solutions de financement.
- Calculer une mensualité et construire un tableau d''amortissement.

## Le devis

Le devis (ou bon de commande proposé) formalise l''offre. Il comprend :

- L''identité du vendeur (raison sociale, NINEA, adresse) et celle du client.
- La désignation précise du véhicule : marque, modèle, version, année, kilométrage pour un VO, numéro de châssis, couleur, options.
- Le prix hors taxes, la TVA et le prix toutes taxes comprises, ou la mention du régime fiscal applicable.
- Les frais annexes : immatriculation, préparation, accessoires.
- La valeur de reprise éventuelle, déduite du prix.
- L''acompte demandé et le solde.
- Le délai de livraison et la date de validité de l''offre.
- Les garanties accordées.
- Les conditions de paiement et de financement.

Exemple de calcul de taxe : pour l''exemple, nous retenons un taux de TVA de 18 %, qui correspond au taux normal au Sénégal ; vérifiez toujours le régime applicable à l''opération (véhicule neuf ou d''occasion, statut du vendeur). Un véhicule à 10 593 220 FCFA hors taxes donne une TVA de 10 593 220 × 0,18 ≈ 1 906 780 FCFA et un prix TTC de 12 500 000 FCFA.

## Les solutions de financement

- Le paiement comptant, parfois avec une remise.
- Le crédit bancaire : une banque ou un établissement financier prête au client, qui rembourse par mensualités ; le véhicule sert souvent de garantie.
- Le crédit-bail ou location avec option d''achat : le client loue le véhicule et peut l''acheter en fin de contrat pour une valeur résiduelle.
- La vente à tempérament par le vendeur lui-même : le client paie en plusieurs versements, ce qui fait porter le risque d''impayé au vendeur.
- Les produits de financement conformes à la finance islamique, proposés par certains établissements, qui reposent sur une marge convenue plutôt que sur un intérêt.

Les taux, frais de dossier et assurances varient selon les établissements : on les obtient par offre écrite.

## Le calcul de la mensualité

Pour un prêt à mensualités constantes, on utilise la formule :

M = C × t / (1 - (1 + t)^(-n))

où C est le capital emprunté, t le taux mensuel (taux annuel / 12) et n le nombre de mensualités. La notation (1 + t)^(-n) signifie 1 divisé par (1 + t) multiplié par lui-même n fois.

## Exemple chiffré

Prix TTC 12 500 000 FCFA, apport 2 500 000 FCFA, capital emprunté 10 000 000 FCFA, taux annuel fictif pour l''exemple de 12 %, soit 1 % par mois, durée 36 mois.

(1,01)^36 ≈ 1,43077 ; donc (1,01)^(-36) ≈ 1 / 1,43077 ≈ 0,69892. 1 - 0,69892 = 0,30108. M = 10 000 000 × 0,01 / 0,30108 ≈ 332 143 FCFA.

Coût total des remboursements : 332 143 × 36 = 11 957 148 FCFA. Coût des intérêts : 11 957 148 - 10 000 000 = 1 957 148 FCFA (hors frais de dossier et assurance).

## Le tableau d''amortissement

Chaque mensualité contient des intérêts (calculés sur le capital restant dû) et un remboursement de capital.

- Mois 1 : intérêts 10 000 000 × 1 % = 100 000 ; capital remboursé 332 143 - 100 000 = 232 143 ; capital restant 9 767 857.
- Mois 2 : intérêts 9 767 857 × 1 % ≈ 97 679 ; capital remboursé ≈ 234 464 ; capital restant ≈ 9 533 393.
- Mois 3 : intérêts ≈ 95 334 ; capital remboursé ≈ 236 809 ; capital restant ≈ 9 296 584.

La part d''intérêts diminue chaque mois, la part de capital augmente. Un tableur calcule facilement les 36 lignes.

## La capacité de remboursement

Avant de proposer un financement, on vérifie que la mensualité est supportable. On compare la mensualité aux revenus réguliers du client, en tenant compte de ses autres crédits. Chaque établissement fixe sa propre limite d''endettement ; beaucoup utilisent une règle prudente proche d''un tiers des revenus, mais il faut vérifier la politique de l''établissement concerné. Exemple : un client gagne 900 000 FCFA par mois et n''a pas d''autre crédit ; une mensualité de 332 143 FCFA représente 332 143 / 900 000 ≈ 37 % de ses revenus, au-dessus d''un tiers. On peut allonger la durée, augmenter l''apport ou choisir un véhicule moins cher.

## Points clés

- Le devis est complet, daté, chiffré HT et TTC, avec reprise, acompte, délais et garanties.
- Plusieurs solutions de financement existent ; on obtient les conditions par offre écrite.
- M = C × t / (1 - (1 + t)^(-n)) avec t taux mensuel et n nombre de mois.
- On vérifie la capacité de remboursement avant de conclure.

## Exercices

- Exercice 1 : citez huit mentions d''un devis de vente de véhicule.
- Exercice 2 : calculez la mensualité d''un prêt de 6 000 000 FCFA sur 24 mois au taux mensuel fictif de 1,5 %. On donne (1,015)^24 ≈ 1,42950.
- Exercice 3 : calculez le coût total des intérêts du prêt de l''exercice 2.
- Exercice 4 : pour le prêt de l''exercice 2, calculez la première ligne du tableau d''amortissement.
- Exercice 5 : un client gagne 750 000 FCFA par mois. La mensualité de l''exercice 2 représente quelle part de ses revenus ?

## Corrigé

Exercice 1 : identité du vendeur et du client, désignation du véhicule, numéro de châssis, prix HT, TVA, prix TTC, frais annexes, reprise, acompte, délai de livraison, validité de l''offre, garanties, conditions de paiement.

Exercice 2 : (1,015)^(-24) ≈ 1 / 1,42950 ≈ 0,69955 ; 1 - 0,69955 = 0,30045 ; M = 6 000 000 × 0,015 / 0,30045 = 90 000 / 0,30045 ≈ 299 550 FCFA. Un calcul plus précis au tableur donne 299 545 FCFA.

Exercice 3 : 299 545 × 24 = 7 189 080 FCFA ; intérêts = 7 189 080 - 6 000 000 = 1 189 080 FCFA.

Exercice 4 : intérêts du mois 1 = 6 000 000 × 1,5 % = 90 000 FCFA ; capital remboursé = 299 545 - 90 000 = 209 545 FCFA ; capital restant = 5 790 455 FCFA.

Exercice 5 : 299 545 / 750 000 ≈ 0,40, soit environ 40 % : c''est élevé ; il faut proposer un apport plus important, une durée plus longue ou un autre véhicule.', 'texte', 60, false, 40
from public.courses c where c.slug = 'formation-vente-vehicules'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Devis, financement et échéanciers');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Après-vente, garanties et fidélisation', '## Objectifs de la leçon

- Organiser la livraison et le suivi après-vente.
- Distinguer les différentes garanties et gérer les réclamations.
- Mesurer la satisfaction et la fidélisation.

## L''après-vente, source de revenus et de fidélité

La vente ne s''arrête pas à la remise des clés. L''après-vente (livraison, entretien, réparations, pièces, gestion des garanties, suivi du client) représente une part importante de la rentabilité des concessionnaires et des garages. Surtout, c''est pendant l''après-vente que se construit la confiance qui amène le client à racheter et à recommander. Un client mal traité après la vente en parlera autour de lui.

## La livraison

La livraison est un moment clé. Elle se prépare : véhicule propre, plein fait selon la politique de l''entreprise, documents prêts, accessoires montés. Le vendeur consacre du temps au client :

- Contrôle contradictoire du véhicule et signature du procès-verbal de livraison.
- Remise des documents : facture, carte grise ou documents d''immatriculation, certificat de garantie, carnet d''entretien, double des clés.
- Explication des commandes, des voyants, des intervalles d''entretien.
- Présentation de l''atelier et de la personne à contacter.
- Prise de rendez-vous pour le premier entretien.

## Les garanties

La garantie constructeur s''applique aux véhicules neufs : elle couvre les défauts de fabrication pendant une durée ou un kilométrage fixés par le constructeur, à condition de respecter le programme d''entretien. Ses conditions figurent dans le carnet de garantie.

La garantie commerciale du vendeur s''applique souvent aux véhicules d''occasion : c''est un engagement librement proposé par le vendeur, par exemple 3 mois ou 5 000 km sur le moteur et la boîte de vitesses. Son contenu, ses exclusions et sa durée doivent être écrits clairement.

La garantie légale contre les vices cachés protège l''acheteur lorsque le véhicule présente un défaut grave, caché et antérieur à la vente. Au Sénégal, elle relève du droit des obligations (Code des obligations civiles et commerciales). Le vendeur ne peut pas tromper l''acheteur ; en cas de litige, il faut consulter un juriste sur les conditions et délais applicables.

## Gérer une réclamation

- Accueillir le client et écouter sans contester.
- Enregistrer la réclamation : date, véhicule, kilométrage, description.
- Diagnostiquer à l''atelier et déterminer si le problème est couvert.
- Informer le client de la décision avec une explication claire, par écrit si nécessaire.
- Réparer dans un délai annoncé, avec véhicule de prêt si possible.
- Vérifier la satisfaction après la réparation et clôturer la réclamation.

Toutes les réclamations sont suivies dans un registre. Leur analyse révèle les modèles fragiles ou les défauts de préparation.

## Le coût des garanties

La garantie commerciale a un coût qu''il faut intégrer dans le prix de vente. Exemple : un parc a vendu 120 VO avec une garantie de 3 mois. 15 % des véhicules ont fait l''objet d''une intervention sous garantie, au coût moyen de 180 000 FCFA. Coût total : 120 × 0,15 × 180 000 = 3 240 000 FCFA, soit 3 240 000 / 120 = 27 000 FCFA par véhicule vendu. Ce montant est provisionné dans chaque prix de revient. Si l''on améliore la préparation (contrôle plus complet avant la vente) et que le taux descend à 10 %, le coût par véhicule tombe à 18 000 FCFA.

## Les services d''après-vente

- Entretien et réparations à l''atelier, avec rappel des échéances par SMS ou messagerie.
- Vente de pièces et d''accessoires.
- Contrats d''entretien à prix forfaitaire, intéressants pour les flottes d''entreprise.
- Assistance et dépannage.
- Reprise du véhicule pour un renouvellement futur.

## Mesurer la satisfaction et la fidélisation

- Taux de satisfaction : enquête courte après livraison et après chaque passage à l''atelier.
- Taux de réclamation : réclamations / véhicules vendus.
- Taux de retour atelier : part des clients qui reviennent faire l''entretien chez le vendeur.
- Taux de fidélisation : part des ventes réalisées auprès d''anciens clients.
- Nombre de recommandations : nouveaux clients venus sur conseil d''un client.

## Exemple : un garage-concession à Thiès

Un garage qui vend 200 véhicules par an constate que seuls 35 % de ses clients reviennent pour l''entretien. Il met en place : présentation de l''atelier à chaque livraison, premier entretien offert pour les VO, rappels automatiques, contrats d''entretien pour les entreprises. Un an plus tard, 55 % des clients reviennent ; le chiffre d''affaires de l''atelier progresse et les ventes à d''anciens clients augmentent.

## Points clés

- L''après-vente construit la rentabilité et la fidélité.
- La livraison est préparée et formalisée par un procès-verbal.
- Trois niveaux de garantie : constructeur, commerciale, légale contre les vices cachés.
- Le coût des garanties se calcule et s''intègre au prix ; la satisfaction se mesure.

## Exercices

- Exercice 1 : citez cinq documents ou éléments remis au client à la livraison.
- Exercice 2 : expliquez la différence entre garantie commerciale et garantie légale contre les vices cachés.
- Exercice 3 : 80 VO vendus, 20 % d''interventions sous garantie, coût moyen 150 000 FCFA. Calculez le coût total et le coût par véhicule.
- Exercice 4 : 240 véhicules vendus, 18 réclamations. Calculez le taux de réclamation.

## Corrigé

Exercice 1 : facture, documents d''immatriculation, certificat de garantie, carnet d''entretien, double des clés, procès-verbal de livraison signé.

Exercice 2 : la garantie commerciale est un engagement volontaire du vendeur, dont il fixe le contenu et la durée par écrit. La garantie légale contre les vices cachés découle de la loi : elle protège l''acheteur contre un défaut grave, caché et antérieur à la vente, même sans garantie commerciale.

Exercice 3 : 80 × 0,20 = 16 interventions ; 16 × 150 000 = 2 400 000 FCFA ; par véhicule 2 400 000 / 80 = 30 000 FCFA.

Exercice 4 : 18 / 240 = 0,075, soit 7,5 %.', 'texte', 45, false, 50
from public.courses c where c.slug = 'formation-vente-vehicules'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Après-vente, garanties et fidélisation');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : du stock à l''après-vente, vendre un véhicule pas à pas', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : vendeurs automobiles, chefs des ventes, gérants de parcs VO, entrepreneurs du négoce automobile.
- Objectifs : piloter un stock VN et VO, coter un véhicule d''occasion, mener un entretien de vente, chiffrer un financement et organiser l''après-vente.
- Matériel : diaporama, tableur avec modèle de stock et simulateur de crédit, fiche d''inspection VO imprimée, tableau blanc.
- Prérequis : pourcentages ; avoir suivi les leçons du module est conseillé.

## Déroulé minuté

## 00:00 – 05:00 · Introduction et cas fil rouge

Bonjour et bienvenue. Notre cas fil rouge s''appelle Teranga Auto, un parc de véhicules fictif situé sur la route de Rufisque. Il vend des véhicules neufs d''une marque généraliste et une quarantaine de véhicules d''occasion. Le gérant a deux soucis : sa trésorerie est tendue, et ses vendeurs se plaignent de perdre des ventes au moment du financement. Pendant cette séance, nous allons suivre un véhicule du moment où il entre en stock jusqu''à son premier entretien après la vente.

Visuel : photo du parc et chiffres clés. Question d''ouverture : selon vous, d''où vient une trésorerie tendue dans un parc automobile ? Notez une réponse.

## 05:00 – 18:00 · Le stock et son coût

La réponse la plus fréquente, c''est le stock. Je projette le tableau du stock VO de Teranga Auto trié par ancienneté. Sur 40 véhicules, 12 sont en stock depuis plus de 90 jours. Leur prix de revient total est de 72 000 000 FCFA.

Calculons ce que coûte un jour de stock pour un véhicule de 6 000 000 FCFA. Avec un financement au taux fictif de 10 % par an, le coût financier est 6 000 000 fois 0,10 divisé par 365, environ 1 644 FCFA par jour. Ajoutons 500 FCFA de gardiennage et d''assurance et environ 2 000 FCFA de perte de valeur : plus de 4 100 FCFA par jour. Après 120 jours, c''est près de 500 000 FCFA.

Calculons aussi la rotation. L''an dernier, le coût des VO vendus a été de 600 000 000 FCFA pour un stock moyen de 200 000 000 FCFA. Rotation : 3. Durée moyenne de stockage : 365 divisé par 3, environ 122 jours. L''objectif du gérant est d''atteindre une rotation de 5, soit environ 73 jours.

Visuel : la politique de vieillissement en quatre tranches. Décision : les 12 véhicules de plus de 90 jours sont proposés à des marchands ou baissés fortement cette semaine. Question : pourquoi est-il difficile pour un vendeur d''accepter de vendre en dessous de son prix d''achat ? Réponse : on raisonne sur le passé alors que seule compte la valeur de marché d''aujourd''hui.

## 18:00 – 32:00 · Coter et reprendre un véhicule d''occasion

Un client, monsieur Diallo, veut acheter un SUV neuf et propose de faire reprendre sa berline. Je projette la fiche d''inspection. Ensemble, nous la parcourons : documents, carrosserie, intérieur, mécanique, essai, cohérence du kilométrage. La berline affiche 120 000 km. Nous trouvons des pneus à remplacer pour 200 000 FCFA, une rayure profonde à reprendre pour 120 000 FCFA, et un nettoyage complet à 30 000 FCFA. Total remise en état : 350 000 FCFA.

Cotation : des berlines comparables à 90 000 km se vendent autour de 5 800 000 FCFA. Avec la règle interne de 1 % par tranche de 10 000 km au-delà de la référence, nous avons 3 tranches, soit 3 % de 5 800 000, ou 174 000 FCFA. Prix de revente attendu : 5 626 000 FCFA.

Frais fixes : garantie et frais administratifs pour 150 000 FCFA. Marge visée : 12 % de 5 626 000, soit 675 120 FCFA. Prix de reprise maximal : 5 626 000 moins 350 000 moins 150 000 moins 675 120, soit 4 450 880 FCFA. Le vendeur proposera 4 450 000 FCFA.

Visuel : le calcul à rebours en escalier. Jeu de rôle : un participant joue monsieur Diallo, qui avait vu des annonces à 5 500 000 FCFA. Comment lui présenter l''offre ? Montrer les ventes réelles, la décote kilométrique, les frais chiffrés, et rappeler les avantages de la reprise : aucune annonce, aucun risque, déduction immédiate.

## 32:00 – 45:00 · L''entretien de vente

Passons à la vente du SUV neuf. Nous reprenons les six étapes : accueil, découverte, présentation, essai, objections, conclusion.

La découverte d''abord. Je vous propose dix questions ouvertes pour monsieur Diallo : pour quel usage ? combien de passagers ? quels trajets fréquents ? quel budget mensuel ? comment comptez-vous payer ? qu''est-ce qui vous a déplu dans votre véhicule actuel ? Nous apprenons qu''il fait souvent le trajet vers Touba avec sa famille, que la sécurité des enfants est sa priorité et qu''il veut une mensualité raisonnable.

La présentation ensuite, avec la méthode caractéristique, avantage, bénéfice. Exemple : six airbags et contrôle de stabilité, c''est la caractéristique ; une meilleure protection en cas de choc et moins de risque de perte de contrôle, c''est l''avantage ; votre famille voyage plus sereinement vers Touba, c''est le bénéfice.

Puis l''objection : "C''est au-dessus de mon budget." Écouter, reformuler : "Si je comprends bien, c''est le montant mensuel qui vous inquiète ?" Répondre avec un calcul de financement, que nous allons faire juste après la pause.

## 45:00 – 50:00 · Pause et quiz interactif

Petite pause active. Répondez dans le chat.

Question 1 : coût des ventes 400 000 000 FCFA, stock moyen 100 000 000 FCFA : rotation ? Réponse : 4.

Question 2 : un VO coûte 4 000 FCFA par jour ; combien après 60 jours ? Réponse : 240 000 FCFA.

Question 3 : que signifie le B dans la méthode caractéristique, avantage, bénéfice ? Réponse : ce que le client y gagne personnellement.

Question 4 : 300 contacts et 9 ventes : taux global ? Réponse : 3 %.

Question 5 : vrai ou faux, une objection est un refus ? Réponse : faux, c''est une demande d''information ou de réassurance.

## 50:00 – 1:05:00 · Devis, financement et échéancier

Le SUV coûte 16 000 000 FCFA TTC. La reprise vaut 4 450 000 FCFA. Monsieur Diallo ajoute un apport de 1 550 000 FCFA. Capital à financer : 16 000 000 moins 4 450 000 moins 1 550 000, soit 10 000 000 FCFA.

Visuel : le simulateur de crédit. Taux annuel fictif pour l''exemple : 12 %, soit 1 % par mois. Formule : M égale C fois t divisé par 1 moins 1 plus t puissance moins n. Sur 36 mois, (1,01) puissance 36 vaut environ 1,43077, son inverse 0,69892, et 1 moins 0,69892 donne 0,30108. M égale 100 000 divisé par 0,30108, soit environ 332 143 FCFA. Coût total des intérêts : 332 143 fois 36 moins 10 000 000, soit 1 957 148 FCFA.

Monsieur Diallo gagne 1 200 000 FCFA par mois sans autre crédit. La mensualité représente 332 143 divisé par 1 200 000, environ 28 % de ses revenus. Elle est inférieure à un tiers, règle prudente souvent utilisée, sous réserve de la politique de la banque.

Montrons les trois premières lignes du tableau d''amortissement : mois 1, intérêts 100 000 et capital 232 143 ; mois 2, intérêts environ 97 679 et capital 234 464 ; mois 3, intérêts environ 95 334 et capital 236 809. Question : pourquoi la part d''intérêts baisse-t-elle ? Réponse : parce qu''elle est calculée sur un capital restant qui diminue.

Enfin, le devis : identité des parties, désignation du véhicule et numéro de châssis, prix HT, TVA au taux applicable et prix TTC, reprise, acompte, financement, délai de livraison, validité de l''offre, garanties.

## 1:05:00 – 1:18:00 · Livraison, garanties et après-vente

La commande est signée. Préparons la livraison : véhicule propre, documents prêts, procès-verbal contradictoire, explication des équipements, présentation du chef d''atelier, rendez-vous du premier entretien.

Rappelons les trois garanties. La garantie constructeur couvre le SUV neuf selon les conditions du carnet. Pour la berline reprise, que Teranga Auto revendra, le parc offrira une garantie commerciale de 3 mois sur le moteur et la boîte. Et dans tous les cas, la garantie légale contre les vices cachés prévue par le droit sénégalais des obligations protège l''acheteur.

Calculons le coût de la garantie commerciale. L''an dernier, Teranga Auto a vendu 150 VO garantis, dont 12 % ont eu une intervention au coût moyen de 200 000 FCFA. Coût total : 150 fois 0,12 fois 200 000, soit 3 600 000 FCFA, ou 24 000 FCFA par véhicule, à intégrer dans le prix de revient.

Visuel : le tableau de bord après-vente avec le taux de satisfaction, le taux de réclamation et le taux de retour atelier. Question : quelle action mettriez-vous en place pour faire revenir les clients à l''atelier ? Réponses possibles : premier entretien offert, rappels automatiques, contrats d''entretien pour les entreprises.

## 1:18:00 – 1:30:00 · Synthèse et évaluation finale

Résumons le parcours du véhicule : il entre en stock avec un prix de revient complet ; il ne doit pas vieillir ; la reprise se calcule à rebours depuis la valeur de marché ; la vente repose sur la découverte des besoins ; le financement se chiffre précisément et se vérifie au regard des revenus ; l''après-vente transforme un acheteur en client fidèle.

Évaluation finale.

Question 1 : écrivez la formule du prix de reprise maximal. Réponse : prix de revente attendu moins remise en état moins frais fixes moins marge visée.

Question 2 : rotation de 6 : durée moyenne de stockage ? Réponse : 365 divisé par 6, environ 61 jours.

Question 3 : prêt de 5 000 000 FCFA à 1 % par mois : intérêts du premier mois ? Réponse : 50 000 FCFA.

Question 4 : citez les six étapes de l''entretien de vente. Réponse : accueil, découverte, présentation, essai, traitement des objections, conclusion.

Question 5 : 100 VO vendus, 10 % d''interventions sous garantie à 250 000 FCFA en moyenne : coût par véhicule ? Réponse : 100 fois 0,10 fois 250 000 égale 2 500 000 FCFA, soit 25 000 FCFA par véhicule.

Merci à toutes et à tous. Votre exercice : coter un véhicule d''occasion réel de votre entourage avec la fiche d''inspection et la méthode à rebours.', 'video', 90, false, 60
from public.courses c where c.slug = 'formation-vente-vehicules'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : du stock à l''après-vente, vendre un véhicule pas à pas');

-- Cours : Géolocalisation et télématique des véhicules
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'formation-gps-avance', (select id from public.levels where name = 'Formation professionnelle'), 'gps', 'Géolocalisation et télématique', 'Géolocalisation et télématique des véhicules', 'Cette formation explique le fonctionnement du GPS (satellites, temps, trilatération), les traceurs et la télématique embarquée, le géofencing et les alertes, l''analyse des trajets et du comportement de conduite, ainsi que la protection des données personnelles des conducteurs. Elle s''adresse aux gestionnaires de flotte, responsables sécurité, exploitants de transport et techniciens qui déploient ou exploitent une solution de géolocalisation. Prérequis : calculs de base, notion de vitesse (distance / temps) et racine carrée.', true, 110
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Comment fonctionne le GPS : satellites, temps et trilatération', '## Objectifs de la leçon

- Expliquer comment un récepteur GPS calcule sa position.
- Comprendre le rôle du temps et de la vitesse de la lumière.
- Résoudre un exemple simple de trilatération et connaître les sources d''erreur.

## Le système GPS

Le GPS (Global Positioning System) est le système de positionnement par satellites des États-Unis. Il appartient à la famille des GNSS (systèmes mondiaux de navigation par satellites), avec GLONASS (Russie), Galileo (Union européenne) et BeiDou (Chine). Les récepteurs modernes utilisent souvent plusieurs constellations à la fois, ce qui améliore la précision.

Le GPS comprend trois segments :

- Le segment spatial : une constellation d''au moins 24 satellites opérationnels (en pratique davantage), répartis sur six plans orbitaux, à environ 20 200 km d''altitude. Chacun fait le tour de la Terre en un peu moins de 12 heures.
- Le segment de contrôle : des stations au sol qui suivent les satellites, corrigent leurs orbites et synchronisent leurs horloges.
- Le segment utilisateur : tous les récepteurs, qui ne font qu''écouter. Un récepteur GPS n''émet rien vers les satellites.

## Le principe : mesurer des distances avec le temps

Chaque satellite porte des horloges atomiques très précises. Il diffuse en permanence un signal contenant l''heure exacte d''émission et sa position sur son orbite (les éphémérides). Le récepteur note l''heure de réception. La différence entre les deux est le temps de trajet du signal. Comme le signal voyage à la vitesse de la lumière, environ 300 000 km/s, on obtient la distance :

distance = vitesse de la lumière × temps de trajet.

Exemple : un satellite situé à 20 200 km à la verticale du récepteur envoie un signal qui met 20 200 / 300 000 ≈ 0,0673 s, soit environ 67 millisecondes, pour arriver.

Cette méthode exige une précision extrême sur le temps : une erreur d''une microseconde (un millionième de seconde) produit une erreur de 300 000 km/s × 0,000001 s = 0,3 km, soit 300 m.

## La trilatération

Connaître sa distance à un satellite place le récepteur quelque part sur une sphère centrée sur ce satellite. Avec deux satellites, on est sur l''intersection de deux sphères (un cercle). Avec trois, on obtient deux points, dont un seul est plausible (l''autre est loin dans l''espace). C''est la trilatération : déterminer une position à partir de distances, sans mesurer d''angles.

Mais l''horloge du récepteur est une simple horloge à quartz, beaucoup moins précise que celles des satellites. Son décalage est une inconnue de plus. On a donc quatre inconnues : les trois coordonnées de position et le décalage d''horloge. Il faut au moins quatre satellites pour résoudre le problème. Les distances mesurées avant correction de l''horloge s''appellent des pseudo-distances.

## Exemple en deux dimensions

Pour comprendre le calcul, simplifions en plan. Trois balises sont placées en A(0 ; 0), B(10 ; 0) et C(0 ; 10), en kilomètres. Un récepteur mesure : distance à A = 5 km, à B = √65 km, à C = √45 km. Où est-il ?

Les équations des cercles sont :

- x² + y² = 25
- (x - 10)² + y² = 65
- x² + (y - 10)² = 45

En soustrayant la première de la deuxième : (x - 10)² - x² = 40, soit -20x + 100 = 40, donc x = 3.

En soustrayant la première de la troisième : (y - 10)² - y² = 20, soit -20y + 100 = 20, donc y = 4.

Vérification : 3² + 4² = 9 + 16 = 25. Le récepteur est en (3 ; 4). Le GPS fait le même type de calcul en trois dimensions, avec le décalage d''horloge en plus.

## Les coordonnées

Le GPS donne une position en latitude, longitude et altitude, dans le système de référence WGS 84. La latitude va de 0° à l''équateur à 90° aux pôles (positive au nord) ; la longitude va de 0° au méridien de Greenwich à 180° (négative à l''ouest). Dakar se trouve vers 14,7° de latitude nord et 17,4° de longitude ouest, soit environ (14,7 ; -17,4) en degrés décimaux.

Un degré de latitude correspond à environ 111 km. Un degré de longitude vaut environ 111 × cos(latitude) km : à la latitude de Dakar, cos(14,7°) ≈ 0,967, donc environ 107 km.

## Les sources d''erreur

- La traversée de l''ionosphère et de la troposphère ralentit le signal.
- Les trajets multiples : le signal rebondit sur les immeubles avant d''arriver, ce qui allonge la distance mesurée.
- Les masques : tunnels, parkings souterrains, rues étroites entre immeubles, végétation dense.
- La géométrie des satellites : des satellites regroupés dans une même région du ciel donnent une position moins précise que des satellites bien répartis.

En ciel dégagé, un récepteur civil courant atteint une précision de quelques mètres.

## Points clés

- Le GPS calcule des distances à partir du temps de trajet des signaux.
- Il faut au moins quatre satellites : trois coordonnées et le décalage d''horloge.
- Une microseconde d''erreur représente 300 m.
- Bâtiments, tunnels et atmosphère dégradent la précision.

## Exercices

- Exercice 1 : quelle distance correspond à un temps de trajet de 0,07 s ?
- Exercice 2 : quelle erreur de position produit une erreur d''horloge de 10 nanosecondes (0,00000001 s) ?
- Exercice 3 : pourquoi faut-il quatre satellites et non trois ?
- Exercice 4 : balises A(0 ; 0) et B(8 ; 0) ; distances mesurées 5 km à A et 5 km à B. Trouvez les deux positions possibles.
- Exercice 5 : deux points ont la même longitude et des latitudes de 14,70° et 14,75°. Quelle distance les sépare ?

## Corrigé

Exercice 1 : 300 000 × 0,07 = 21 000 km.

Exercice 2 : 300 000 000 m/s × 0,00000001 s = 3 m.

Exercice 3 : parce que l''horloge du récepteur n''est pas synchronisée avec celles des satellites : son décalage est une quatrième inconnue qui s''ajoute aux trois coordonnées.

Exercice 4 : x² + y² = 25 et (x - 8)² + y² = 25. En soustrayant : -16x + 64 = 0, donc x = 4. Puis y² = 25 - 16 = 9, donc y = 3 ou y = -3. Positions possibles : (4 ; 3) et (4 ; -3). Une troisième balise permettrait de trancher.

Exercice 5 : écart de 0,05° de latitude ; 0,05 × 111 = 5,55 km.', 'texte', 50, true, 10
from public.courses c where c.slug = 'formation-gps-avance'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Comment fonctionne le GPS : satellites, temps et trilatération');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Traceurs et télématique embarquée', '## Objectifs de la leçon

- Décrire les composants d''une solution de télématique embarquée.
- Choisir un traceur et une offre adaptés aux besoins.
- Estimer les volumes de données et le retour sur investissement.

## De la géolocalisation à la télématique

Un récepteur GPS seul calcule une position mais ne la transmet à personne. Un traceur ajoute un moyen de communication (généralement un modem mobile avec une carte SIM) pour envoyer cette position à un serveur. La télématique combine la géolocalisation avec d''autres données du véhicule (contact moteur, régime, consommation, température, portes) sur une plateforme de suivi.

## Les composants d''une solution

- Le boîtier embarqué : récepteur GNSS, modem cellulaire, carte SIM, mémoire, accéléromètre, batterie de secours.
- Les antennes : GNSS et cellulaire, intégrées ou déportées.
- Les entrées et sorties : fil de contact (détection moteur allumé), boutons d''alerte, capteurs de porte, sortie pour couper le démarreur à l''arrêt en cas de vol, selon les règles de sécurité.
- Les capteurs optionnels : sonde de niveau de carburant, sonde de température pour le transport frigorifique, lecteur d''identification du conducteur.
- La connexion au réseau du véhicule : prise de diagnostic OBD ou bus CAN, qui donnent accès au kilométrage réel, au régime moteur, à la consommation ou aux codes défaut, selon les véhicules.
- La plateforme : serveur et application web ou mobile qui affichent les cartes, les historiques, les alertes et les rapports.

## Le fonctionnement

Le boîtier calcule régulièrement sa position et l''enregistre avec l''heure, la vitesse, le cap et l''état des entrées. Il envoie ces données selon des règles paramétrables : par exemple toutes les 30 secondes en roulant, toutes les 30 minutes à l''arrêt, et immédiatement en cas d''événement (allumage, coupure d''alimentation, choc). Quand le réseau mobile est absent, en zone rurale par exemple, le boîtier stocke les positions et les envoie dès que la couverture revient.

## Estimer les volumes de données

Exemple : un véhicule roule 10 heures par jour avec une position toutes les 30 secondes. Nombre de positions : 10 × 3 600 / 30 = 1 200 par jour. Si chaque message pèse environ 100 octets (valeur d''ordre de grandeur, elle varie selon le protocole), le volume quotidien est 1 200 × 100 = 120 000 octets, soit environ 120 ko par jour, et environ 3,6 Mo pour 30 jours. Ce calcul aide à choisir le forfait de données de la carte SIM.

Plus la fréquence est élevée, plus le tracé est précis et plus le volume de données augmente. Une fréquence trop faible rend l''analyse des trajets et des vitesses peu fiable.

## Choisir un traceur et un prestataire

Avant de choisir, on écrit les besoins : sécurité contre le vol, suivi des tournées, contrôle du carburant, preuve de passage chez les clients, suivi de la température, analyse de conduite. Puis on compare les offres sur des critères écrits :

- Précision et fiabilité du boîtier, résistance à la chaleur, à la poussière et aux vibrations.
- Fonctionnement en cas de coupure (batterie de secours) et alerte en cas d''arrachement.
- Couverture des réseaux mobiles sur les itinéraires réels.
- Qualité de la plateforme : cartes à jour, rapports, alertes, application mobile, export des données.
- Installation par des techniciens qualifiés, sans perturber l''électricité du véhicule ni la garantie.
- Service après-vente, délais d''intervention, présence locale.
- Coût total : boîtiers, installation, abonnement mensuel, cartes SIM.
- Hébergement, sécurité et confidentialité des données.

## Calculer le retour sur investissement

Exemple pour une flotte de 30 véhicules. Les prix sont des montants d''exemple, à remplacer par des devis réels.

- Boîtiers et installation : 30 × 120 000 = 3 600 000 FCFA, payés la première année.
- Abonnements : 30 × 8 000 × 12 = 2 880 000 FCFA par an.
- Coût de la première année : 6 480 000 FCFA ; années suivantes : 2 880 000 FCFA.

Gains attendus, estimés à partir d''un projet pilote : réduction de 8 % d''une dépense carburant de 60 000 000 FCFA par an, soit 4 800 000 FCFA, grâce à la fin des trajets non autorisés et à la réduction du ralenti ; baisse des sinistres et de la maintenance estimée à 1 500 000 FCFA. Total : 6 300 000 FCFA par an.

La première année est presque à l''équilibre (6 300 000 - 6 480 000 = -180 000 FCFA) ; les années suivantes, le gain net est 6 300 000 - 2 880 000 = 3 420 000 FCFA par an. Ces gains supposent que quelqu''un exploite les données et agisse.

## Exemple : un transporteur frigorifique à Dakar

Un transporteur de produits de la mer équipe ses 12 camions frigorifiques de traceurs avec sondes de température. Le client exige la preuve que la chaîne du froid est respectée. La plateforme envoie une alerte si la température dépasse le seuil fixé pendant plus de 10 minutes, et produit un rapport de température par livraison. Le transporteur gagne un contrat avec un exportateur grâce à cette traçabilité.

## Points clés

- Traceur = récepteur GNSS + modem de communication + plateforme.
- La télématique ajoute les données du véhicule et des capteurs.
- La fréquence d''envoi fixe la précision et le volume de données.
- Le retour sur investissement dépend de l''exploitation réelle des données.

## Exercices

- Exercice 1 : citez cinq composants d''une solution de télématique.
- Exercice 2 : un véhicule roule 8 heures par jour avec une position toutes les 20 secondes. Combien de positions par jour ?
- Exercice 3 : avec 120 octets par message, quel volume mensuel (30 jours) pour l''exercice 2 ?
- Exercice 4 : 20 véhicules, boîtier et installation 150 000 FCFA, abonnement 7 500 FCFA par mois. Calculez le coût de la première année et des années suivantes.

## Corrigé

Exercice 1 : récepteur GNSS, modem et carte SIM, antennes, accéléromètre, batterie de secours, capteurs (carburant, température), plateforme de suivi.

Exercice 2 : 8 × 3 600 / 20 = 1 440 positions.

Exercice 3 : 1 440 × 120 = 172 800 octets par jour ; × 30 = 5 184 000 octets, soit environ 5,2 Mo par mois.

Exercice 4 : équipement 20 × 150 000 = 3 000 000 FCFA ; abonnements 20 × 7 500 × 12 = 1 800 000 FCFA par an ; première année 4 800 000 FCFA ; années suivantes 1 800 000 FCFA.', 'texte', 50, false, 20
from public.courses c where c.slug = 'formation-gps-avance'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Traceurs et télématique embarquée');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Géofencing, zones et alertes', '## Objectifs de la leçon

- Définir le géofencing et ses usages.
- Paramétrer des zones et des règles d''alerte pertinentes.
- Calculer si un véhicule est dans une zone et limiter les fausses alertes.

## Qu''est-ce que le géofencing ?

Le géofencing (ou barrière virtuelle, géorepérage) consiste à dessiner sur la carte des zones géographiques et à associer des règles aux mouvements des véhicules par rapport à ces zones. Quand un véhicule entre dans une zone, en sort, y reste trop longtemps ou y dépasse une vitesse, la plateforme déclenche une alerte ou enregistre un événement.

## Les types de zones

- Le cercle : défini par un centre (latitude, longitude) et un rayon. Simple, adapté à un dépôt, un client, une station-service.
- Le polygone : défini par une liste de sommets. Adapté à une zone de forme irrégulière : un quartier, un port, une zone industrielle.
- Le corridor : une bande de largeur fixée autour d''un itinéraire, par exemple la route nationale entre Dakar et Kaolack.

## Les usages courants

- Sécurité : alerte si un véhicule quitte le dépôt la nuit ou le week-end.
- Exploitation : enregistrement automatique des heures d''arrivée et de départ chez les clients, preuve de passage.
- Conformité : alerte si un camion sort de son corridor autorisé ou entre dans une zone interdite (centre-ville aux heures de pointe, zone à risque).
- Vitesse : limite plus basse dans une zone scolaire ou un site industriel.
- Carburant : rapprochement entre les pleins déclarés et la présence effective du véhicule à la station.
- Facturation : temps passé sur un chantier pour refacturer un client.

## Paramétrer une règle

Une règle se décrit en cinq éléments :

- La zone concernée.
- L''événement : entrée, sortie, présence prolongée, vitesse dépassée.
- Les conditions : jours, heures, véhicules ou groupes concernés.
- Les destinataires : qui reçoit l''alerte, par quel canal (application, SMS, courriel).
- L''action attendue : appeler le chauffeur, prévenir la sécurité, simple enregistrement.

Exemple : "Si un véhicule du groupe Livraisons sort de la zone Dépôt Rufisque entre 21 h et 5 h, envoyer une notification au chef de poste de sécurité, qui appelle le chauffeur et, sans réponse, la gendarmerie selon la procédure."

## Calculer la position par rapport à un cercle

Pour de petites distances, on peut assimiler la surface terrestre à un plan. On convertit les écarts de coordonnées en mètres :

- écart nord-sud (m) ≈ écart de latitude (degrés) × 111 000
- écart est-ouest (m) ≈ écart de longitude (degrés) × 111 000 × cos(latitude)

puis on applique le théorème de Pythagore : distance = √(écart nord-sud² + écart est-ouest²).

Exemple : la zone Dépôt a pour centre (14,7000 ; -17,4500) et un rayon de 500 m. Un véhicule est signalé en (14,7030 ; -17,4470). Écart de latitude 0,0030°, soit 0,0030 × 111 000 = 333 m. Écart de longitude 0,0030°, soit 0,0030 × 111 000 × 0,967 ≈ 322 m. Distance = √(333² + 322²) = √(110 889 + 103 684) = √214 573 ≈ 463 m. Le véhicule est à l''intérieur du cercle, près du bord.

## Éviter les fausses alertes

Une position GPS n''est jamais parfaite : à l''arrêt, elle "dérive" de quelques mètres, et davantage entre des immeubles. Un véhicule garé au bord de la zone peut sembler entrer et sortir plusieurs fois. Trop d''alertes inutiles produisent la lassitude : les opérateurs finissent par ne plus les lire, et la vraie alerte passe inaperçue. Les bonnes pratiques :

- Prévoir une marge : rayon un peu plus grand que la zone réelle.
- Ajouter une temporisation : alerter seulement si la sortie dure plus de 2 ou 3 minutes.
- Combiner les conditions : sortie de zone et moteur allumé et vitesse supérieure à 10 km/h.
- Limiter les destinataires et hiérarchiser : alerte critique immédiate, alerte mineure dans un rapport quotidien.
- Revoir chaque mois les règles qui génèrent le plus d''alertes sans suite.

## La procédure de traitement

Chaque alerte critique doit avoir une procédure écrite : qui la reçoit, en combien de temps on réagit, qui on appelle, comment on clôture l''alerte en notant la cause (fausse alerte, sortie autorisée, incident réel). Ce registre permet de mesurer le temps de réaction et d''améliorer les règles.

## Points clés

- Le géofencing associe des zones (cercle, polygone, corridor) à des règles.
- Une règle comprend zone, événement, conditions, destinataires et action.
- La distance à un centre se calcule avec la conversion en mètres et Pythagore.
- Marges, temporisations et conditions combinées limitent les fausses alertes.

## Exercices

- Exercice 1 : citez quatre usages du géofencing dans une entreprise de livraison.
- Exercice 2 : zone de centre (14,7000 ; -17,4500) et rayon 600 m. Un véhicule est en (14,7060 ; -17,4520). Est-il dans la zone ? (cos 14,7° ≈ 0,967)
- Exercice 3 : rédigez une règle complète pour surveiller l''arrivée d''un camion chez un client.
- Exercice 4 : une règle génère 40 alertes par jour, dont 38 fausses. Proposez trois corrections.

## Corrigé

Exercice 1 : alerte de sortie du dépôt la nuit, preuve d''arrivée chez les clients, respect d''un corridor, limitation de vitesse sur site, contrôle des pleins à la station.

Exercice 2 : écart nord-sud 0,0060 × 111 000 = 666 m ; écart est-ouest 0,0020 × 111 000 × 0,967 ≈ 215 m. Distance = √(666² + 215²) = √(443 556 + 46 225) = √489 781 ≈ 700 m. 700 m est supérieur à 600 m : le véhicule est hors de la zone.

Exercice 3 : zone : cercle de 200 m autour de l''entrepôt du client ; événement : entrée puis sortie ; conditions : véhicules du groupe Livraisons, jours ouvrés ; destinataires : service clients, par rapport et notification ; action : enregistrer l''heure d''arrivée et de départ et informer le client de la livraison.

Exercice 4 : ajouter une temporisation de quelques minutes ; agrandir légèrement la zone ; combiner avec moteur allumé et vitesse minimale ; restreindre les horaires ou les véhicules concernés.', 'texte', 50, false, 30
from public.courses c where c.slug = 'formation-gps-avance'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Géofencing, zones et alertes');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Analyser les trajets et le comportement de conduite', '## Objectifs de la leçon

- Exploiter les historiques de trajets pour mieux organiser l''activité.
- Mesurer le comportement de conduite avec des indicateurs objectifs.
- Construire un score de conduite et un plan d''accompagnement.

## Ce que racontent les données

Chaque position enregistrée comporte une heure, des coordonnées, une vitesse et souvent l''état du moteur. Mises bout à bout, ces données reconstituent les trajets : départ, itinéraire, arrêts, durée, kilomètres. L''accéléromètre du boîtier ajoute des événements de conduite : freinages brusques, accélérations brusques, virages serrés, chocs.

## Les indicateurs de trajet

- Kilomètres parcourus par véhicule et par jour.
- Temps de conduite et temps d''arrêt.
- Temps de ralenti : moteur allumé, véhicule à l''arrêt.
- Nombre d''arrêts et durée moyenne chez les clients.
- Trajets hors horaires de service.
- Écart entre l''itinéraire prévu et l''itinéraire réel.

Exemple de calcul de vitesse moyenne entre deux positions : un camion est relevé à 10 h 00 puis à 10 h 04 et a parcouru 5 km entre les deux. Vitesse moyenne = 5 km / (4/60) h = 5 × 15 = 75 km/h.

## Optimiser l''organisation

L''analyse des trajets permet de réorganiser les tournées : regrouper les clients proches, éviter les axes saturés aux heures de pointe à Dakar, réduire les kilomètres à vide. Elle permet aussi de vérifier les temps passés chez les clients et de mieux les facturer, ou de détecter un véhicule sous-utilisé qui pourrait être réaffecté.

## Le coût du ralenti

Un moteur qui tourne à l''arrêt consomme du carburant sans produire de déplacement, par exemple pour garder la climatisation pendant une attente. Cette consommation dépend du moteur ; on la mesure sur ses propres véhicules. Prenons une hypothèse de 1 litre par heure et un prix fictif de 800 FCFA le litre. Pour 30 véhicules avec 1 heure de ralenti par jour sur 22 jours : 30 × 1 × 22 × 1 = 660 litres par mois, soit 660 × 800 = 528 000 FCFA par mois, plus de 6 300 000 FCFA par an. Diviser le ralenti par deux économise donc plus de 3 000 000 FCFA par an dans cet exemple.

## Les indicateurs de comportement

- Excès de vitesse : nombre, durée et ampleur des dépassements de la limite fixée (limite légale de la route ou limite interne de l''entreprise).
- Freinages brusques : décélération supérieure à un seuil paramétré.
- Accélérations brusques.
- Virages serrés.
- Conduite de nuit ou durée de conduite sans pause.

Pour comparer des conducteurs qui ne roulent pas autant, on rapporte les événements à la distance : nombre d''événements pour 100 km.

Exemple : le conducteur A a 12 freinages brusques sur 800 km, soit 12 / 800 × 100 = 1,5 pour 100 km. Le conducteur B en a 30 sur 1 200 km, soit 2,5 pour 100 km. Malgré plus de kilomètres, B a une conduite plus brusque.

## Construire un score de conduite

Un score simple part de 100 points et retire des points par événement pour 100 km, avec des poids choisis par l''entreprise. Exemple de barème interne : moins 4 points par freinage brusque pour 100 km, moins 3 par accélération brusque pour 100 km, moins 6 par excès de vitesse pour 100 km.

Conducteur B : 2,5 freinages, 1,0 accélération et 0,5 excès pour 100 km. Score = 100 - 4 × 2,5 - 3 × 1,0 - 6 × 0,5 = 100 - 10 - 3 - 3 = 84.

Les seuils et poids doivent être expliqués aux conducteurs et stables dans le temps, sinon le score perd sa crédibilité. Il faut aussi tenir compte du contexte : un chauffeur de pistes rurales aura plus d''événements qu''un chauffeur sur autoroute.

## Accompagner plutôt que punir

L''objectif est de réduire les accidents et les coûts, pas de sanctionner à tout prix. Une démarche efficace :

- Présenter le dispositif et le barème aux conducteurs avant le démarrage.
- Partager chaque mois le score individuel avec le conducteur, en entretien.
- Identifier avec lui les situations à risque (itinéraire, horaires, fatigue).
- Proposer une formation à la conduite défensive et économique.
- Reconnaître les progrès et les meilleurs conducteurs.
- Réserver les sanctions aux manquements graves et répétés, dans le respect du règlement intérieur et du droit du travail.

## Exemple : une société de transport de personnel à Thiès

Une société qui transporte des ouvriers vers des chantiers équipe ses 15 minibus. Le premier mois, la moyenne est de 3,2 freinages brusques pour 100 km et 20 % des trajets comportent un excès de vitesse. Après trois mois d''entretiens mensuels, d''une formation et d''une prime collective liée au score, la moyenne descend à 1,4 freinage pour 100 km et la consommation baisse de 7 %.

## Points clés

- Les données de trajet reconstituent l''activité : kilomètres, arrêts, ralenti, horaires.
- Les événements de conduite se comparent pour 100 km.
- Un score repose sur un barème connu, stable et adapté au contexte.
- L''accompagnement des conducteurs produit plus de résultats que la sanction seule.

## Exercices

- Exercice 1 : un véhicule parcourt 3 km en 6 minutes. Quelle est sa vitesse moyenne ?
- Exercice 2 : un conducteur a 18 freinages brusques sur 1 500 km. Combien pour 100 km ?
- Exercice 3 : avec le barème de la leçon, calculez le score d''un conducteur ayant 1,2 freinage, 0,8 accélération et 1,5 excès pour 100 km.
- Exercice 4 : 20 véhicules, 1,5 heure de ralenti par jour, 22 jours, 1 L/h, 800 FCFA le litre (prix fictif). Calculez le coût mensuel du ralenti.

## Corrigé

Exercice 1 : 6 minutes = 0,1 h ; vitesse = 3 / 0,1 = 30 km/h.

Exercice 2 : 18 / 1 500 × 100 = 1,2 freinage pour 100 km.

Exercice 3 : 100 - 4 × 1,2 - 3 × 0,8 - 6 × 1,5 = 100 - 4,8 - 2,4 - 9 = 83,8.

Exercice 4 : 20 × 1,5 × 22 × 1 = 660 litres ; 660 × 800 = 528 000 FCFA par mois.', 'texte', 50, false, 40
from public.courses c where c.slug = 'formation-gps-avance'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Analyser les trajets et le comportement de conduite');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Protéger les données personnelles des conducteurs', '## Objectifs de la leçon

- Comprendre pourquoi les données de géolocalisation sont des données personnelles.
- Appliquer les grands principes de protection des données à un projet de géolocalisation.
- Rédiger les règles d''information et d''usage pour les conducteurs.

## La géolocalisation touche à la vie privée

Une position GPS associée à un véhicule conduit par une personne identifiable est une donnée à caractère personnel. Elle révèle beaucoup : lieux fréquentés, horaires, habitudes, domicile, et parfois des informations sensibles (lieu de culte, établissement de santé). L''employeur a des raisons légitimes de géolocaliser ses véhicules, mais il ne peut pas en faire un outil de surveillance permanente et sans limite de ses salariés.

## Le cadre juridique

Au Sénégal, la protection des données personnelles est encadrée par la loi de 2008 sur la protection des données à caractère personnel, dont l''application est contrôlée par la Commission de protection des données personnelles (CDP). Selon les traitements, des formalités préalables (déclaration ou demande d''autorisation) doivent être accomplies auprès de la CDP avant la mise en œuvre. Au niveau régional et continental, la CEDEAO et l''Union africaine ont également adopté des textes sur la protection des données personnelles. Le cadre juridique évolue : avant tout projet, il faut vérifier les textes en vigueur et les recommandations de la CDP, et faire valider le dispositif par un juriste.

Ce cours présente les principes généraux communs à ces textes, sans remplacer la lecture des règles officielles.

## Les grands principes appliqués à la géolocalisation

La finalité : on définit à l''avance et par écrit pourquoi on géolocalise. Exemples de finalités légitimes : sécurité des véhicules et des personnes, organisation des tournées, suivi du temps de transport pour la facturation, preuve de livraison, maîtrise des coûts. Les données ne doivent pas être détournées vers une autre finalité.

La proportionnalité : on ne collecte que ce qui est nécessaire à la finalité. Si le but est la sécurité contre le vol, il n''est pas utile d''analyser chaque minute de la pause déjeuner. La fréquence de relevé, les données collectées et les personnes qui y accèdent doivent être adaptées.

La transparence et l''information : les conducteurs sont informés avant la mise en service, par écrit : finalités, données collectées, durée de conservation, destinataires, droits et contact. Les représentants du personnel sont consultés selon le droit applicable. Un dispositif caché est à proscrire.

La durée de conservation limitée : les données sont conservées le temps nécessaire à la finalité, puis supprimées ou anonymisées. Cette durée est fixée par écrit et justifiée ; il faut vérifier les recommandations de la CDP.

La sécurité : accès réservé à des personnes habilitées, mots de passe individuels, traçabilité des consultations, contrat avec le prestataire qui précise ses obligations de sécurité et le lieu d''hébergement.

Les droits des personnes : le conducteur peut demander à accéder aux données qui le concernent, à les faire rectifier si elles sont inexactes, et s''opposer dans les cas prévus par la loi.

## Les bonnes pratiques spécifiques

- Vie privée : si l''usage privé du véhicule est autorisé (soirs, week-ends), prévoir la possibilité de désactiver la géolocalisation pendant ces périodes, ou de ne pas exploiter ces données.
- Pas de surveillance continue des personnes : on suit l''activité des véhicules pour les finalités prévues, pas les faits et gestes des conducteurs.
- Pas de géolocalisation pour contrôler en permanence la vitesse dans le but unique de sanctionner, sans cadre défini ; le suivi de la conduite doit être prévu, expliqué et proportionné.
- Profils d''accès : le chef d''exploitation voit les positions en temps réel ; la direction voit des rapports agrégés ; les ressources humaines n''accèdent aux données individuelles que dans les cas prévus.
- Registre : documenter le traitement (finalités, données, durées, accès, mesures de sécurité).

## Exemple : la charte de géolocalisation d''une entreprise de distribution

Une entreprise de distribution de Ziguinchor déploie des traceurs sur 25 véhicules. Elle rédige une charte annexée à la politique conducteurs : finalités (sécurité contre le vol, optimisation des tournées, preuve de livraison) ; données collectées (position, vitesse, contact moteur, événements de conduite) ; pas de collecte en dehors des heures de service grâce à un bouton vie privée pour les cinq véhicules à usage mixte ; durée de conservation définie et justifiée ; accès limité au responsable de flotte et au chef d''exploitation ; droits des conducteurs et contact. Elle accomplit les formalités auprès de la CDP, présente la charte aux délégués du personnel et la fait signer par chaque conducteur pour attester qu''il en a pris connaissance.

## Points clés

- Les positions d''un véhicule conduit par une personne identifiable sont des données personnelles.
- Au Sénégal, la loi de 2008 et la CDP encadrent ces traitements ; vérifier les textes en vigueur.
- Finalité, proportionnalité, information, durée limitée, sécurité et droits des personnes sont les principes clés.
- Une charte écrite, des accès limités et le respect de la vie privée hors service rendent le dispositif acceptable.

## Exercices

- Exercice 1 : pourquoi une position GPS de véhicule est-elle une donnée personnelle ?
- Exercice 2 : citez trois finalités légitimes de la géolocalisation d''une flotte.
- Exercice 3 : un directeur veut consulter chaque soir où se trouvent les véhicules de fonction à usage privé, "pour voir". Qu''en pensez-vous ?
- Exercice 4 : citez six informations à donner aux conducteurs avant la mise en service.
- Exercice 5 : proposez trois mesures de sécurité pour protéger les données de géolocalisation.

## Corrigé

Exercice 1 : parce qu''elle est associée à un véhicule conduit par une personne identifiable (registre d''affectation, badge) et révèle ses déplacements, ses horaires et ses habitudes.

Exercice 2 : sécurité contre le vol, organisation et optimisation des tournées, preuve de livraison ou facturation du temps de transport, maîtrise des coûts de carburant.

Exercice 3 : cette consultation n''a pas de finalité légitime définie et porte sur la vie privée en dehors des heures de service : elle est disproportionnée. Il faut prévoir la désactivation ou la non-exploitation des données pendant l''usage privé.

Exercice 4 : finalités, données collectées, durée de conservation, destinataires, droits d''accès et de rectification, personne à contacter, existence des périodes de désactivation.

Exercice 5 : comptes individuels avec mots de passe solides, profils d''accès limités selon les fonctions, traçabilité des consultations, contrat de sécurité avec le prestataire, suppression des données à l''expiration de la durée de conservation.', 'texte', 50, false, 50
from public.courses c where c.slug = 'formation-gps-avance'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Protéger les données personnelles des conducteurs');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : déployer et exploiter la géolocalisation d''une flotte', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : gestionnaires de flotte, responsables sécurité, exploitants de transport, techniciens télématiques.
- Objectifs : expliquer le fonctionnement du GPS, choisir et paramétrer une solution de télématique, créer des zones et des alertes efficaces, analyser trajets et conduite, respecter la protection des données des conducteurs.
- Matériel : diaporama, carte projetée d''une plateforme de suivi (démonstration), tableau blanc, calculatrice.
- Prérequis : notions de vitesse, racine carrée ; lecture des leçons du module conseillée.

## Déroulé minuté

## 00:00 – 05:00 · Introduction et cas fil rouge

Bonjour à toutes et à tous. Pendant cette séance, nous accompagnons la société fictive Baobab Express, qui livre des colis et des produits frais entre Dakar, Thiès, Mbour et Kaolack avec 30 véhicules. Elle a subi deux vols de véhicules l''an dernier, ses dépenses de carburant augmentent et ses clients demandent des preuves de livraison. La direction a décidé d''installer une solution de géolocalisation. Notre rôle : la concevoir de bout en bout, de la compréhension du GPS jusqu''à la charte de protection des données.

Question d''ouverture : selon vous, un traceur GPS envoie-t-il des signaux vers les satellites ? Gardez votre réponse, nous la vérifions tout de suite.

## 05:00 – 20:00 · Comment fonctionne le GPS

La réponse est non : le récepteur GPS ne fait qu''écouter. Visuel : la constellation, avec des satellites à environ 20 200 km d''altitude répartis sur six plans orbitaux. Chaque satellite porte des horloges atomiques et diffuse l''heure exacte d''émission et sa position. Le récepteur mesure le temps de trajet et le multiplie par la vitesse de la lumière, environ 300 000 km par seconde.

Calcul au tableau : un temps de trajet de 0,0673 seconde donne 300 000 fois 0,0673, soit environ 20 190 km. Et si l''horloge se trompe d''une seule microseconde ? 300 000 km/s fois un millionième de seconde, soit 300 mètres d''erreur. Voilà pourquoi le temps est au cœur du GPS.

Visuel : trois sphères qui se coupent. Avec une distance, on est sur une sphère ; avec deux, sur un cercle ; avec trois, sur deux points. Mais l''horloge du récepteur n''est pas parfaite : son décalage est une quatrième inconnue. Il faut donc au moins quatre satellites.

Exemple en plan : balises A(0 ; 0), B(10 ; 0), C(0 ; 10) et distances 5, √65 et √45 kilomètres. En soustrayant les équations des cercles, on trouve x = 3, puis y = 4. Nous vérifions : 9 plus 16 égale 25. Enfin, je vous rappelle les sources d''erreur : atmosphère, rebonds sur les immeubles, tunnels et parkings souterrains, mauvaise répartition des satellites dans le ciel. En ciel dégagé, un récepteur civil courant est précis à quelques mètres.

## 20:00 – 33:00 · Traceurs et télématique pour Baobab Express

Passons à la solution. Visuel : schéma du boîtier avec récepteur GNSS multi-constellations, modem et carte SIM, accéléromètre, batterie de secours, entrée contact moteur, sonde de température pour les véhicules frigorifiques, connexion au réseau du véhicule.

Paramétrage : une position toutes les 30 secondes en roulant, toutes les 30 minutes à l''arrêt, envoi immédiat en cas d''allumage, de choc ou de coupure d''alimentation. Calculons le volume : 10 heures de route font 36 000 secondes, divisées par 30, soit 1 200 positions par jour. À environ 100 octets par message, cela fait 120 ko par jour et environ 3,6 Mo par mois. Un petit forfait de données suffit.

Le budget, avec des montants d''exemple à confirmer par devis : 30 boîtiers installés à 120 000 FCFA, soit 3 600 000 FCFA, et un abonnement de 8 000 FCFA par mois et par véhicule, soit 2 880 000 FCFA par an. Les gains attendus, estimés sur un pilote de 5 véhicules : 8 % de carburant sur une dépense de 60 000 000 FCFA, soit 4 800 000 FCFA, et 1 500 000 FCFA de baisse des sinistres et de la maintenance. Question à la salle : à quelle condition ces gains seront-ils réels ? Réponse attendue : si quelqu''un est chargé d''exploiter les rapports et d''agir.

## 33:00 – 45:00 · Géofencing et alertes

Créons maintenant les zones de Baobab Express. Visuel : la carte de la plateforme avec le dépôt de Rufisque, les entrepôts des grands clients et le corridor de la route nationale vers Kaolack.

Première règle, la sécurité : si un véhicule sort de la zone Dépôt entre 21 h et 5 h, alerte immédiate au poste de sécurité, qui appelle le chauffeur puis suit la procédure. Deuxième règle, l''exploitation : entrée et sortie des zones clients enregistrées automatiquement pour la preuve de livraison. Troisième règle, la conformité : alerte si un camion sort du corridor autorisé de plus de 2 km.

Calculons une position. Centre du dépôt (14,7000 ; -17,4500), rayon 500 mètres. Le véhicule est signalé en (14,7030 ; -17,4470). Écart nord-sud : 0,003 fois 111 000, soit 333 mètres. Écart est-ouest : 0,003 fois 111 000 fois 0,967, soit environ 322 mètres. Distance : racine de 333 au carré plus 322 au carré, environ 463 mètres. Il est dans la zone, mais près du bord : attention aux fausses alertes. Nous ajoutons une temporisation de 3 minutes et la condition moteur allumé.

## 45:00 – 50:00 · Pause et quiz interactif

Pause active. Répondez dans le chat.

Question 1 : combien de satellites faut-il au minimum pour une position GPS en trois dimensions ? Réponse : quatre.

Question 2 : quelle erreur produit une erreur d''horloge de 2 microsecondes ? Réponse : 600 mètres.

Question 3 : quel type de zone choisir pour un itinéraire routier ? Réponse : un corridor.

Question 4 : 8 heures de route, une position toutes les 60 secondes : combien de positions ? Réponse : 480.

Question 5 : vrai ou faux, plus il y a d''alertes, mieux la flotte est protégée ? Réponse : faux, trop d''alertes inutiles créent la lassitude et la vraie alerte passe inaperçue.

## 50:00 – 1:04:00 · Analyser les trajets et la conduite

Trois mois ont passé. Visuel : le rapport mensuel de Baobab Express. Premier constat : le ralenti. Les véhicules tournent moteur allumé à l''arrêt en moyenne 1 heure par jour. Avec une hypothèse de 1 litre par heure et un prix fictif de 800 FCFA, pour 30 véhicules et 22 jours : 660 litres et 528 000 FCFA par mois.

Deuxième constat : la conduite. Calculons pour deux chauffeurs. Moussa : 12 freinages brusques sur 800 km, soit 1,5 pour 100 km. Awa : 9 sur 1 000 km, soit 0,9 pour 100 km. Appliquons le barème interne : moins 4 points par freinage, moins 3 par accélération et moins 6 par excès de vitesse, le tout pour 100 km. Moussa a aussi 1,0 accélération et 0,5 excès : score 100 moins 6 moins 3 moins 3, soit 88. Awa a 0,5 accélération et 0 excès : score 100 moins 3,6 moins 1,5, soit 94,9.

Troisième constat : un véhicule fait régulièrement un détour de 15 km sur la tournée de Mbour. L''analyse montre que l''itinéraire prévu passe par une route en travaux : il faut corriger le plan de tournée, pas sanctionner le chauffeur. Question : comment présenter ces résultats aux chauffeurs ? Réponse attendue : en entretien individuel, avec le barème connu, en cherchant les causes et en proposant une formation.

## 1:04:00 – 1:18:00 · Protéger les données des conducteurs

Nous arrivons à un point essentiel. Les positions des véhicules de Baobab Express, associées aux chauffeurs, sont des données personnelles. Au Sénégal, la loi de 2008 sur la protection des données à caractère personnel s''applique et la CDP contrôle sa mise en œuvre. Avant le déploiement, l''entreprise accomplit les formalités prévues auprès de la CDP et vérifie les textes en vigueur, car le cadre évolue.

Visuel : les six principes. Finalité : sécurité, tournées, preuve de livraison, maîtrise des coûts. Proportionnalité : pas plus de données que nécessaire. Information : chaque chauffeur reçoit une note écrite avant la mise en service, et les représentants du personnel sont consultés. Durée de conservation limitée et justifiée. Sécurité : comptes individuels, profils d''accès, traçabilité. Droits des personnes : accès et rectification.

Cas pratique : cinq véhicules de Baobab Express sont à usage mixte et les cadres les gardent le week-end. Que faire ? Installer un bouton vie privée ou ne pas exploiter les données hors service. Autre cas : le directeur commercial demande l''accès en temps réel à toutes les positions pour vérifier ses commerciaux. Question à la salle : est-ce proportionné ? Discutons-en : un accès aux rapports de visites clients répond à son besoin, sans suivi minute par minute.

## 1:18:00 – 1:30:00 · Synthèse et évaluation finale

Résumons. Le GPS mesure des temps de trajet pour en déduire des distances, et il faut quatre satellites. Le traceur ajoute la communication, la télématique ajoute les données du véhicule. Le géofencing transforme des zones en règles et en alertes, à condition de limiter les fausses alertes. L''analyse des trajets et de la conduite réduit les coûts et les risques, surtout si l''on accompagne les chauffeurs. Enfin, tout repose sur le respect des données personnelles : finalité, proportionnalité, information, durée limitée, sécurité, droits.

Évaluation finale.

Question 1 : pourquoi le GPS a-t-il besoin d''horloges atomiques ? Réponse : parce que la position se déduit du temps de trajet ; une microseconde d''erreur fait 300 mètres.

Question 2 : un véhicule parcourt 6 km en 5 minutes : vitesse moyenne ? Réponse : 6 divisé par 5/60, soit 72 km/h.

Question 3 : un point est à 400 mètres au nord et 300 mètres à l''est du centre d''une zone de rayon 450 mètres : est-il dedans ? Réponse : distance racine de 160 000 plus 90 000, soit 500 mètres : il est dehors.

Question 4 : 15 freinages brusques sur 1 000 km : combien pour 100 km ? Réponse : 1,5.

Question 5 : citez quatre principes de protection des données appliqués à la géolocalisation. Réponse : finalité, proportionnalité, information des conducteurs, durée de conservation limitée, sécurité, droits d''accès et de rectification.

Merci pour votre participation. Votre travail : rédiger les trois règles de géofencing et la note d''information aux conducteurs pour votre propre flotte.', 'video', 90, false, 60
from public.courses c where c.slug = 'formation-gps-avance'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : déployer et exploiter la géolocalisation d''une flotte');

-- Cours : Apprendre et enseigner en ligne efficacement
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'formation-education-numerique', (select id from public.levels where name = 'Formation professionnelle'), 'education', 'Éducation et compétences numériques', 'Apprendre et enseigner en ligne efficacement', 'Cette formation donne aux étudiants, enseignants et formateurs les méthodes pour réussir l''apprentissage et l''enseignement en ligne : mémorisation par répétition espacée, prise de notes, organisation du travail, conception d''un cours en ligne de qualité, évaluation et sécurité numérique. Les exemples sont adaptés aux réalités de l''Afrique de l''Ouest, notamment au coût de la connexion et à l''usage du téléphone. Aucun prérequis n''est demandé, en dehors d''une pratique de base du téléphone ou de l''ordinateur.', true, 120
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Comment on apprend : mémoire, récupération active et répétition espacée', '## Objectifs de la leçon

- Comprendre comment la mémoire fonctionne et pourquoi on oublie.
- Utiliser la récupération active et la répétition espacée pour retenir durablement.
- Construire un plan de révision personnel adapté aux études ou à une formation professionnelle.

## Apprendre, c''est d''abord retenir et comprendre

Beaucoup d''élèves et d''étudiants relisent leurs cours plusieurs fois, surlignent, recopient, et sont surpris d''avoir tout oublié le jour de l''examen. Ce n''est pas un manque d''intelligence : c''est une mauvaise méthode. Les recherches en psychologie cognitive ont montré depuis longtemps que certaines stratégies sont beaucoup plus efficaces que d''autres. La bonne nouvelle : elles ne demandent ni matériel coûteux ni connexion permanente.

## Les notions clés

La mémoire de travail : c''est l''espace mental où l''on manipule les informations en ce moment. Elle est très limitée : on ne peut y garder que quelques éléments à la fois. Un cours trop dense, une vidéo trop rapide ou un environnement bruyant la saturent.

La mémoire à long terme : c''est le stockage durable. Pour qu''une information y entre et puisse en ressortir, il faut la relier à ce que l''on sait déjà et la réactiver régulièrement.

La courbe de l''oubli : le psychologue Hermann Ebbinghaus a montré, à la fin du XIXe siècle, que l''on oublie très vite après un premier apprentissage, puis plus lentement. Chaque révision bien placée ralentit l''oubli.

La récupération active : se tester, c''est-à-dire essayer de retrouver une information sans regarder ses notes, renforce la mémoire bien plus que relire. On parle d''« effet de test ».

La répétition espacée : répartir les révisions dans le temps, avec des intervalles croissants, est plus efficace que tout réviser la veille.

L''entrelacement : alterner des types d''exercices (par exemple des problèmes de pourcentages, de proportionnalité et d''équations) oblige le cerveau à choisir la bonne méthode, ce qui prépare mieux à l''examen.

## Méthode : les fiches question-réponse et les boîtes de révision

- Étape 1 : après chaque cours, transformez l''essentiel en questions. Au recto : « Qu''est-ce que la BCEAO ? » ; au verso : la réponse courte.
- Étape 2 : rangez les fiches dans des boîtes numérotées (système de Leitner). Boîte 1 : à revoir chaque jour ; boîte 2 : tous les 2 jours ; boîte 3 : tous les 4 jours ; boîte 4 : chaque semaine ; boîte 5 : avant l''examen.
- Étape 3 : quand vous répondez juste, la fiche avance d''une boîte ; quand vous vous trompez, elle revient en boîte 1.
- Étape 4 : chaque jour, ne révisez que les boîtes prévues. Dix à vingt minutes suffisent.

Ce système fonctionne sur papier (cartons découpés, enveloppes) ou sur téléphone avec une application de cartes de révision fonctionnant hors ligne, ce qui est précieux quand la connexion est chère ou instable.

## Autres techniques efficaces

- L''auto-explication : expliquer à voix haute, ou à un camarade, pourquoi une solution est juste.
- La pratique de rappel libre : sur une feuille blanche, écrire tout ce dont on se souvient d''un chapitre, puis comparer avec le cours.
- Le double codage : associer un texte à un schéma, une carte ou un tableau.
- Les exemples concrets : relier une notion abstraite à une situation connue (le prix du riz au marché pour l''inflation, le budget de la famille pour les pourcentages).

À l''inverse, le surlignage massif, la relecture passive et le « bachotage » de la dernière nuit donnent une impression de maîtrise mais produisent peu de mémorisation durable.

## Exemple : le plan de révision de Mariama

Mariama prépare un BTS en comptabilité à Dakar et a un examen dans six semaines. Elle a 8 chapitres. Son plan :

- Chaque soir, 20 minutes de fiches question-réponse selon ses boîtes.
- Chaque samedi, un rappel libre sur deux chapitres et une série d''exercices mélangés.
- Une semaine avant l''examen, un sujet blanc en conditions réelles.

En répartissant ainsi 20 minutes par jour sur 42 jours, elle consacre 840 minutes, soit 14 heures, aux révisions espacées, sans nuit blanche.

## Points clés

- On oublie vite, mais chaque révision espacée ralentit l''oubli.
- Se tester est plus efficace que relire.
- Espacer, alterner, expliquer et illustrer.
- Un petit temps quotidien vaut mieux qu''une longue séance de dernière minute.

## Exercices

- Exercice 1 : Expliquez la différence entre mémoire de travail et mémoire à long terme.
- Exercice 2 : Transformez ce passage en trois fiches question-réponse : « L''UEMOA regroupe huit États qui utilisent le franc CFA émis par la BCEAO, dont le siège est à Dakar. »
- Exercice 3 : Une fiche est en boîte 3. Vous vous trompez. Où va-t-elle ? Et si vous aviez répondu juste ?
- Exercice 4 : Un étudiant révise 30 minutes par jour pendant 5 semaines. Combien d''heures cela représente-t-il ?

## Corrigé

- Exercice 1 : La mémoire de travail traite les informations du moment ; elle est très limitée et se sature vite. La mémoire à long terme stocke durablement les connaissances ; on y fait entrer une information en la reliant à ce que l''on sait et en la réactivant.
- Exercice 2 : Par exemple : « Combien d''États compte l''UEMOA ? » : huit. « Quelle monnaie utilisent-ils ? » : le franc CFA. « Quelle institution l''émet et où est son siège ? » : la BCEAO, à Dakar.
- Exercice 3 : En cas d''erreur, elle revient en boîte 1. En cas de bonne réponse, elle passe en boîte 4.
- Exercice 4 : 5 semaines = 35 jours ; 35 × 30 = 1 050 minutes = 17 heures 30 minutes.', 'texte', 45, true, 10
from public.courses c where c.slug = 'formation-education-numerique'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Comment on apprend : mémoire, récupération active et répétition espacée');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Prendre des notes et organiser son travail d''étudiant', '## Objectifs de la leçon

- Prendre des notes utiles, en cours en présentiel comme devant une vidéo.
- Organiser son temps d''étude et son environnement de travail.
- Gérer la contrainte de la connexion et du matériel.

## Pourquoi prendre des notes

Prendre des notes n''est pas recopier. Une bonne prise de notes oblige à sélectionner, reformuler et organiser ; ce travail actif aide déjà à mémoriser. Les notes servent ensuite de matière première pour les fiches de révision vues à la leçon précédente.

## La méthode des notes en colonnes (méthode Cornell)

On divise la page en trois zones :

- Une grande colonne de droite : les notes prises pendant le cours, en phrases courtes, avec abréviations.
- Une colonne étroite à gauche : remplie après le cours, elle contient les mots-clés et les questions auxquelles répondent les notes.
- Une bande en bas de page : un résumé de la page en deux ou trois phrases.

Pour réviser, on cache la colonne de droite et on essaie de répondre aux questions de la colonne de gauche : c''est de la récupération active intégrée aux notes.

## Les autres formats

- La carte mentale : le sujet au centre, les idées principales en branches, les détails en sous-branches. Utile pour les sujets riches en relations (histoire, gestion, biologie).
- Le tableau comparatif : idéal pour comparer des notions (par exemple CDI et CDD, ou deux pays).
- Le plan hiérarchisé : titres, sous-titres, puces ; adapté aux cours très structurés.

## Abréviations et symboles utiles

- « + » pour « plus, en hausse » ; « − » pour « moins, en baisse ».
- « → » pour « entraîne, conduit à ».
- « ≠ » pour « différent de » ; « ≈ » pour « environ ».
- « ex. » pour exemple ; « cf. » pour se reporter à ; « qqch » pour quelque chose.

Créez votre propre code et gardez-le stable.

## Prendre des notes devant une vidéo

Le grand avantage du cours en ligne est la possibilité de faire pause. Utilisez-la : regardez une séquence de quelques minutes, mettez en pause, notez l''idée principale avec vos mots, puis reprenez. Notez aussi le minutage des passages importants (par exemple « 23:40 calcul du taux horaire ») pour y revenir sans tout revoir. Si la connexion est faible, réduisez la qualité de la vidéo ou téléchargez-la quand le réseau est meilleur, si la plateforme le permet.

## Organiser son temps

Les étudiants en ligne ont souvent plus de liberté, donc plus de risques de procrastination. Quelques règles :

- Un planning hebdomadaire fixe : les mêmes créneaux chaque semaine (par exemple lundi, mercredi et vendredi de 19 h à 21 h).
- Le travail par blocs chronométrés : 25 minutes de concentration, 5 minutes de pause, puis une pause plus longue après quatre blocs.
- La règle des deux minutes : si une tâche prend moins de deux minutes (répondre à un message du formateur, télécharger un document), faites-la tout de suite.
- La liste de tâches du jour : trois priorités maximum.
- Le bilan de fin de semaine : ce qui a été fait, ce qui reste, ce qu''il faut ajuster.

## Organiser son environnement

- Un lieu calme, même modeste : un coin de chambre, une bibliothèque de quartier, un espace numérique universitaire.
- Le téléphone en mode silencieux ou hors de portée pendant les blocs de travail.
- Des dossiers numériques bien nommés : « 2026_Compta_Chap3_Notes », plutôt que « document final 2 ».
- Une sauvegarde régulière des notes (nous y reviendrons à la leçon 5).

## Gérer le coût de la connexion

En Afrique de l''Ouest, les données mobiles représentent un budget. Stratégies :

- Télécharger les ressources via le wifi d''un campus, d''un centre de formation ou d''un espace public sûr.
- Privilégier les documents texte et PDF légers pour la révision.
- Utiliser les fonctions hors ligne des applications.
- Planifier les sessions en direct (classes virtuelles) et couper la vidéo de sa caméra quand elle n''est pas nécessaire pour économiser la bande passante.

## Exemple : la semaine d''Ousmane

Ousmane travaille comme agent commercial à Kaolack et suit une formation en ligne en gestion. Il dispose de 6 heures par semaine. Son organisation : mardi et jeudi soir, 1 h 30 chacun pour les vidéos et les notes en colonnes ; samedi matin, 2 h pour les exercices et la révision des fiches ; dimanche, 1 h pour le bilan et la préparation de la semaine. Total : 1,5 + 1,5 + 2 + 1 = 6 heures. Il télécharge les vidéos le samedi au centre de formation, où le wifi est gratuit.

## Points clés

- Prendre des notes, c''est sélectionner, reformuler et organiser.
- La méthode en colonnes intègre la révision active dans les notes.
- Un planning fixe et des blocs chronométrés limitent la procrastination.
- Anticiper la connexion fait partie de l''organisation.

## Exercices

- Exercice 1 : Décrivez les trois zones de la méthode des notes en colonnes et leur rôle.
- Exercice 2 : Quel format de notes choisiriez-vous pour comparer le salaire brut et le salaire net ? Justifiez.
- Exercice 3 : Une étudiante enchaîne 6 blocs de 25 minutes avec 5 minutes de pause entre chaque bloc et une pause de 20 minutes après le 4e bloc (à la place de la courte). Quelle est la durée totale de la séance, du début du premier bloc à la fin du sixième ?
- Exercice 4 : Proposez trois actions pour réduire le coût de la connexion.

## Corrigé

- Exercice 1 : Colonne de droite : notes prises pendant le cours. Colonne de gauche : mots-clés et questions ajoutés après le cours. Bande du bas : résumé en quelques phrases. La colonne de gauche sert à se tester.
- Exercice 2 : Un tableau comparatif, car il met en regard les deux notions ligne par ligne (définition, composantes, calcul, exemple).
- Exercice 3 : 6 blocs × 25 = 150 minutes. Il y a 5 pauses entre les 6 blocs : 4 courtes de 5 minutes (20 minutes) et 1 longue de 20 minutes, soit 40 minutes. Total : 190 minutes, soit 3 h 10.
- Exercice 4 : Télécharger via un wifi gratuit et sûr ; réduire la qualité vidéo ; utiliser les modes hors ligne ; couper la caméra en classe virtuelle ; préférer les documents légers.', 'texte', 45, false, 20
from public.courses c where c.slug = 'formation-education-numerique'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Prendre des notes et organiser son travail d''étudiant');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Créer un cours en ligne de qualité (pour les formateurs)', '## Objectifs de la leçon

- Concevoir un cours en ligne à partir d''objectifs d''apprentissage précis.
- Appliquer le principe d''alignement entre objectifs, activités et évaluations.
- Produire des contenus clairs, accessibles et adaptés aux contraintes de connexion.

## Le point de départ : les objectifs

Un formateur qui commence par « ce que je vais dire » produit souvent un cours trop long. Un bon cours commence par « ce que l''apprenant saura faire à la fin ». Un objectif d''apprentissage s''écrit avec un verbe d''action observable :

- À éviter : « comprendre la paie » (non observable).
- À préférer : « calculer le salaire net à partir d''un brut et d''une liste de retenues ».

La taxonomie de Bloom aide à choisir le niveau : se souvenir, comprendre, appliquer, analyser, évaluer, créer. Un cours professionnel doit dépasser le simple « se souvenir » et faire appliquer.

## L''alignement pédagogique

Le principe d''alignement (développé notamment par John Biggs) dit que trois éléments doivent correspondre :

- L''objectif : ce que l''apprenant doit savoir faire.
- L''activité : ce qu''il fait pour l''apprendre.
- L''évaluation : comment on vérifie qu''il sait le faire.

Exemple : si l''objectif est « calculer un net à payer », l''activité doit être un exercice de calcul guidé, et l''évaluation un calcul à réaliser, pas un QCM sur des définitions.

## Le modèle de conception en cinq phases

Le modèle ADDIE est un cadre classique :

- Analyse : qui sont les apprenants (niveau, équipement, temps disponible, langue) ? Quel est le besoin ?
- Design (conception) : objectifs, plan, choix des activités et des évaluations.
- Développement : production des textes, vidéos, exercices.
- Implémentation : mise en ligne, accompagnement, animation.
- Évaluation : retours des apprenants, résultats, améliorations.

## Concevoir les contenus

- Découper : des modules courts, des vidéos de quelques minutes centrées sur une idée, des leçons écrites structurées par intertitres.
- Limiter la charge cognitive : un concept à la fois, un vocabulaire défini, pas d''animations décoratives inutiles.
- Associer texte et image : un schéma commenté vaut mieux qu''un long paragraphe ; mais évitez de lire à l''écran un texte identique à celui de la diapositive.
- Contextualiser : des exemples tirés de la réalité des apprenants (une boutique à Thiès, une coopérative agricole en Casamance, un budget en FCFA).
- Faire agir : toutes les 10 à 15 minutes d''apprentissage, une question, un exercice ou une réflexion.

## Accessibilité et faible bande passante

- Proposer pour chaque vidéo une version texte ou un résumé, et des sous-titres.
- Compresser les vidéos et proposer une qualité basse.
- Fournir les documents en PDF légers téléchargeables.
- Vérifier la lisibilité sur téléphone, car beaucoup d''apprenants suivent les cours sur mobile.
- Utiliser des contrastes suffisants et des polices lisibles.

## L''animation : la présence du formateur

Un cours en ligne sans accompagnement connaît souvent de nombreux abandons. La présence du formateur se manifeste par un message d''accueil, un calendrier clair, un forum ou un groupe de discussion modéré, des réponses rapides aux questions, des retours personnalisés sur les travaux et, si possible, quelques classes virtuelles en direct.

## Méthode : la fiche de conception d''une séquence

- Titre de la séquence et public.
- Durée estimée de travail pour l''apprenant.
- Deux à quatre objectifs avec verbes d''action.
- Prérequis.
- Activités (lecture, vidéo, exercice, discussion), avec la durée de chacune.
- Évaluation alignée sur chaque objectif.
- Ressources et versions accessibles.

## Exemple

Une formatrice de Saint-Louis crée une séquence « Tenir le cahier de caisse d''une boutique ». Public : commerçants débutants, sur téléphone. Durée : 2 heures. Objectifs : enregistrer les entrées et sorties ; calculer le solde de caisse du jour ; détecter un écart. Activités : vidéo de 6 minutes avec un exemple de journée de vente, fiche PDF d''une page, exercice sur un cahier fictif de 10 opérations, échange sur le groupe de discussion. Évaluation : calculer le solde d''une nouvelle journée et expliquer un écart. Chaque objectif a son activité et son évaluation : la séquence est alignée.

## Points clés

- Commencer par les objectifs, formulés avec des verbes d''action.
- Aligner objectifs, activités et évaluations.
- Découper, contextualiser, faire agir.
- Penser mobile, bas débit et accessibilité.
- Accompagner les apprenants.

## Exercices

- Exercice 1 : Réécrivez l''objectif « connaître la TVA » sous une forme observable.
- Exercice 2 : Un formateur veut que les apprenants sachent rédiger un CV, mais l''évalue par un QCM. Qu''en pensez-vous ?
- Exercice 3 : Citez les cinq phases du modèle ADDIE.
- Exercice 4 : Proposez trois mesures pour rendre un cours accessible avec une connexion faible.

## Corrigé

- Exercice 1 : Par exemple : « calculer le montant de TVA et le prix toutes taxes comprises à partir d''un prix hors taxes et d''un taux donné ».
- Exercice 2 : L''évaluation n''est pas alignée : un QCM vérifie des connaissances, pas la capacité de rédiger. Il faut demander la rédaction d''un CV, évaluée avec une grille de critères.
- Exercice 3 : Analyse, Design (conception), Développement, Implémentation, Évaluation.
- Exercice 4 : Résumés texte des vidéos, vidéos compressées ou en basse qualité, documents PDF légers téléchargeables, contenus testés sur téléphone.', 'texte', 50, false, 30
from public.courses c where c.slug = 'formation-education-numerique'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Créer un cours en ligne de qualité (pour les formateurs)');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Évaluer les apprentissages en ligne', '## Objectifs de la leçon

- Distinguer les fonctions de l''évaluation : diagnostique, formative, sommative.
- Rédiger des questions à choix multiples et des grilles critériées de qualité.
- Limiter la fraude et garantir l''équité des évaluations en ligne.

## Les trois fonctions de l''évaluation

- L''évaluation diagnostique : au début d''un cours, elle mesure les acquis et les besoins. Elle permet d''adapter le parcours.
- L''évaluation formative : pendant l''apprentissage, elle aide l''apprenant à progresser grâce à un retour immédiat. Elle compte peu ou pas dans la note finale.
- L''évaluation sommative : à la fin, elle certifie le niveau atteint (examen, certificat).

Dans un cours en ligne, l''évaluation formative est la plus précieuse : quiz après chaque leçon, exercices corrigés automatiquement, retours du formateur. C''est aussi une application directe de l''effet de test vu en leçon 1.

## Rédiger de bonnes questions à choix multiples

Un QCM bien conçu peut évaluer bien plus que la mémoire. Règles :

- Une seule idée par question, formulée clairement, sans double négation.
- Une seule bonne réponse indiscutable (ou une consigne explicite si plusieurs).
- Des distracteurs plausibles, qui correspondent à des erreurs fréquentes.
- Des options de longueur comparable : la bonne réponse ne doit pas être la plus longue.
- Éviter « toutes les réponses ci-dessus » et les indices grammaticaux.
- Préférer des mises en situation : « Un salarié gagne 200 000 FCFA ; ses retenues sont de 30 000 FCFA ; quel est son net ? »

Exemple de question avec distracteurs fondés sur des erreurs courantes :

« Un article coûte 10 000 FCFA hors taxes. Avec un taux de TVA de 18 %, quel est le prix TTC ? »

- A. 10 018 FCFA (erreur : addition du taux comme un nombre).
- B. 11 800 FCFA (bonne réponse : 10 000 × 1,18).
- C. 8 200 FCFA (erreur : soustraction).
- D. 1 800 FCFA (erreur : calcul de la seule TVA).

## Les grilles critériées

Pour les productions complexes (rapport, projet, présentation), on utilise une grille avec des critères et des niveaux. Exemple pour un plan d''affaires :

- Critère 1 : clarté de l''offre (insuffisant, acceptable, bien, très bien).
- Critère 2 : étude de marché.
- Critère 3 : cohérence des chiffres.
- Critère 4 : qualité de la présentation.

Chaque niveau est décrit précisément (par exemple pour « cohérence des chiffres, très bien » : les prévisions de ventes, de charges et de trésorerie sont reliées et vérifiables). La grille est communiquée à l''avance : l''apprenant sait ce qui est attendu, le correcteur est plus juste, et deux correcteurs donnent des notes proches.

## L''évaluation par les pairs et l''auto-évaluation

Dans les cours à fort effectif, les apprenants peuvent évaluer les travaux de leurs camarades avec la grille. Cette pratique développe l''esprit critique et allège la charge du formateur, à condition de former les apprenants à la grille, de faire évaluer chaque travail par plusieurs pairs et de prévoir un recours. L''auto-évaluation, avant remise du travail, aide l''apprenant à se corriger.

## Intégrité et équité en ligne

La fraude est plus facile à distance. Plutôt que de multiplier les contrôles intrusifs, on privilégie la conception :

- Banques de questions et tirage aléatoire, ordre des réponses mélangé.
- Valeurs numériques différentes pour chaque apprenant dans les exercices de calcul.
- Questions d''application et de réflexion plutôt que de simple restitution.
- Travaux personnalisés : appliquer la méthode à sa propre entreprise ou à son quartier.
- Courte soutenance orale en visioconférence pour les évaluations certifiantes.

L''équité impose aussi de tenir compte des contraintes techniques : prévoir un délai raisonnable, autoriser la reprise en cas de coupure, éviter les épreuves en temps très limité qui pénalisent ceux qui ont une connexion lente.

## Exploiter les résultats

Les statistiques d''un quiz renseignent le formateur : une question ratée par la majorité signale soit une explication insuffisante, soit une question mal rédigée. On calcule par exemple le taux de réussite d''une question : nombre de bonnes réponses / nombre de répondants × 100.

## Points clés

- Diagnostique au début, formative pendant, sommative à la fin.
- Un bon QCM a des distracteurs fondés sur des erreurs réelles.
- Les grilles critériées rendent l''évaluation transparente et juste.
- L''intégrité se construit surtout par la conception des épreuves.

## Exercices

- Exercice 1 : Classez : quiz d''entrée de formation ; exercice corrigé après une vidéo ; examen final certifiant.
- Exercice 2 : Repérez deux défauts dans cette question : « Lequel n''est pas un élément qui ne figure pas sur le bulletin de paie ? A. Le net à payer B. Toutes les réponses ci-dessus ».
- Exercice 3 : 120 apprenants ont répondu à une question ; 78 ont trouvé la bonne réponse. Calculez le taux de réussite.
- Exercice 4 : Proposez deux moyens de limiter la fraude dans un exercice de calcul en ligne.

## Corrigé

- Exercice 1 : Quiz d''entrée : diagnostique. Exercice après la vidéo : formative. Examen final : sommative.
- Exercice 2 : Double négation qui rend la question incompréhensible ; option « toutes les réponses ci-dessus » ; une seule option réelle, donc pas de distracteurs.
- Exercice 3 : 78 / 120 × 100 = 65 %.
- Exercice 4 : Données numériques différentes pour chaque apprenant ; tirage aléatoire des questions ; demander la justification de la démarche ; courte vérification orale.', 'texte', 45, false, 40
from public.courses c where c.slug = 'formation-education-numerique'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Évaluer les apprentissages en ligne');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Outils numériques et bonnes pratiques de sécurité', '## Objectifs de la leçon

- Choisir des outils numériques adaptés à l''apprentissage et à l''enseignement.
- Protéger ses comptes, ses appareils et ses données.
- Reconnaître et éviter les arnaques en ligne les plus courantes.

## Choisir ses outils

Il n''est pas nécessaire d''avoir beaucoup d''outils ; il faut des outils fiables et maîtrisés. Les grandes catégories :

- La plateforme d''apprentissage : elle centralise cours, exercices, évaluations et suivi.
- La visioconférence : pour les classes virtuelles et le tutorat.
- La messagerie de groupe : pour l''entraide, à condition d''être modérée.
- La bureautique : traitement de texte, tableur, présentation ; des suites libres et gratuites existent.
- Les cartes de révision et la prise de notes numérique, de préférence avec mode hors ligne.
- Le stockage en ligne : pour sauvegarder et partager des fichiers.

Critères de choix : fonctionne-t-il sur téléphone et avec une connexion faible ? Est-il gratuit ou abordable ? Où sont stockées les données ? Est-il facile à utiliser pour tous ?

## Protéger ses comptes

Les comptes d''un étudiant ou d''un formateur (messagerie, plateforme de cours, réseaux sociaux, porte-monnaie électronique) sont des cibles. Bonnes pratiques :

- Des mots de passe longs : une phrase de passe de plusieurs mots est plus robuste et plus facile à retenir qu''un mot court compliqué. Exemple de principe : quatre mots sans lien, avec un chiffre et un signe.
- Un mot de passe différent pour chaque compte important : si un site est piraté, les autres comptes restent protégés.
- Un gestionnaire de mots de passe pour les retenir.
- La double authentification (un code reçu ou généré en plus du mot de passe) activée sur la messagerie et les comptes sensibles.
- Ne jamais communiquer un code reçu par SMS : aucun service sérieux ne vous le demandera.

## Protéger ses appareils

- Installer les mises à jour du système et des applications, qui corrigent des failles.
- Télécharger les applications uniquement depuis les magasins officiels.
- Verrouiller le téléphone par un code ou une empreinte.
- Se méfier des clés USB partagées au cybercafé et analyser les fichiers avec un antivirus.
- Sur un ordinateur partagé, se déconnecter de tous les comptes et ne pas enregistrer les mots de passe.

## Sauvegarder : la règle 3-2-1

- 3 copies de vos fichiers importants (mémoire, notes, travaux) ;
- sur 2 supports différents (par exemple ordinateur et clé USB) ;
- dont 1 copie hors du lieu habituel (stockage en ligne ou chez un proche).

Un étudiant dont l''ordinateur est volé la veille de la remise de son mémoire comprend vite l''intérêt de cette règle.

## Reconnaître les arnaques

L''hameçonnage consiste à vous faire cliquer sur un lien ou à vous faire donner des informations en se faisant passer pour une organisation de confiance. Signes d''alerte :

- Une urgence artificielle : « Votre compte sera bloqué dans 24 heures. »
- Une offre trop belle : bourse d''études à l''étranger contre « frais de dossier », gain à un concours auquel vous n''avez pas participé.
- Une adresse d''expéditeur ou un lien légèrement différent de l''officiel.
- Une demande de code secret, de mot de passe ou de transfert d''argent.

Arnaques fréquentes dans le contexte ouest-africain : faux transferts d''argent par téléphone (« je vous ai envoyé par erreur 50 000 FCFA, renvoyez-les »), fausses offres d''emploi demandant un paiement, faux diplômes ou fausses inscriptions universitaires. Réflexe : vérifier par un canal officiel (site de l''établissement, numéro connu, agence) avant toute action.

## Protéger les données des autres

Un formateur manipule des données d''apprenants : noms, notes, numéros de téléphone. Il doit les limiter au nécessaire, ne pas les publier dans un groupe ouvert, protéger les fichiers et respecter la législation nationale sur les données personnelles. En classe virtuelle, il faut demander l''accord avant d''enregistrer et préciser l''usage de l''enregistrement.

## La citoyenneté numérique

Respecter les autres dans les forums, citer ses sources, ne pas plagier, vérifier une information avant de la partager : ces comportements font partie des compétences numériques attendues d''un étudiant comme d''un professionnel.

## Points clés

- Peu d''outils, mais fiables, adaptés au mobile et au bas débit.
- Phrases de passe, mots de passe uniques, double authentification.
- Mises à jour, verrouillage, sauvegarde 3-2-1.
- Urgence, offre trop belle, demande de code : signes d''arnaque.

## Exercices

- Exercice 1 : Pourquoi faut-il un mot de passe différent pour chaque compte important ?
- Exercice 2 : Vous recevez : « Félicitations ! Vous avez obtenu une bourse au Canada. Envoyez 25 000 FCFA de frais de dossier sous 24 h. » Listez les signes d''alerte et la bonne réaction.
- Exercice 3 : Appliquez la règle 3-2-1 à votre mémoire de fin d''études.
- Exercice 4 : Citez trois critères pour choisir un outil numérique pour une classe en zone rurale.

## Corrigé

- Exercice 1 : Si un site est piraté et que le mot de passe fuit, les pirates l''essaient sur d''autres services. Avec des mots de passe uniques, seul le compte du site piraté est exposé.
- Exercice 2 : Signes : gain non sollicité, urgence (24 h), demande d''argent. Réaction : ne pas payer, ne pas cliquer, vérifier auprès de l''organisme officiel de bourses ou de l''ambassade, signaler le message.
- Exercice 3 : Une copie sur l''ordinateur, une sur une clé USB ou un disque externe, une dans un stockage en ligne ou chez un proche ; mise à jour après chaque séance de travail importante.
- Exercice 4 : Fonctionnement sur téléphone, consommation de données faible ou mode hors ligne, gratuité ou faible coût, simplicité d''utilisation, protection des données.', 'texte', 45, false, 50
from public.courses c where c.slug = 'formation-education-numerique'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Outils numériques et bonnes pratiques de sécurité');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : apprendre à apprendre et concevoir une séquence en ligne', '## Fiche du cours vidéo

- Durée : 1h30.
- Titre de la séance : apprendre à apprendre et concevoir une séquence en ligne.
- Objectifs : appliquer la récupération active et la répétition espacée ; prendre des notes en colonnes ; concevoir une séquence de cours alignée ; rédiger un bon QCM ; adopter les réflexes de sécurité numérique.
- Matériel : diaporama, tableau blanc ou tableau numérique, feuilles et stylos, téléphone ou ordinateur pour le quiz, fiche de conception de séquence à télécharger.
- Prérequis : aucun ; les leçons 1 à 5 sont recommandées.
- Public : étudiants, formateurs, enseignants et professionnels en formation continue.

## Déroulé minuté

## 00:00 – 05:00 · Accueil et défi de départ

Texte du formateur : « Bonjour et bienvenue. Cette séance a deux publics : celles et ceux qui apprennent, et celles et ceux qui enseignent. En réalité, nous sommes tous les deux à la fois. Je commence par un petit défi : prenez une feuille, et sans regarder vos notes, écrivez tout ce dont vous vous souvenez du dernier cours que vous avez suivi, il y a une semaine ou un mois. Vous avez deux minutes. »

« Alors ? Pour la plupart d''entre nous, la feuille est presque vide. Ce n''est pas grave : c''est normal. Aujourd''hui, nous allons comprendre pourquoi, et comment changer cela. »

Visuel : diapositive « Qu''avez-vous retenu ? » avec un minuteur.

## 05:00 – 15:00 · Comment fonctionne la mémoire

Texte du formateur : « Notre mémoire de travail est petite : elle ne garde que quelques éléments à la fois. Notre mémoire à long terme est immense, mais il faut savoir y ranger les informations et les en ressortir. Ebbinghaus a montré que l''on oublie très vite après avoir appris, puis plus lentement. Chaque révision bien placée remonte la courbe et la rend moins raide. »

Visuel : courbe de l''oubli, puis la même courbe avec des révisions successives qui la relèvent.

« Deux idées à retenir. Première idée : se tester est plus efficace que relire. Deuxième idée : espacer les révisions est plus efficace que tout concentrer la veille. »

Question : « Combien d''entre vous révisent principalement en relisant ? Qu''est-ce que vous pourriez changer dès demain ? »

## 15:00 – 27:00 · Atelier 1 : fiches et boîtes de révision

Texte du formateur : « Construisons ensemble un système de boîtes de révision. Je prends un extrait de cours : "L''UEMOA regroupe huit États qui partagent le franc CFA émis par la BCEAO, dont le siège est à Dakar." Transformons-le en questions. Première fiche : combien d''États dans l''UEMOA ? Deuxième : quelle monnaie ? Troisième : quelle banque centrale et où est son siège ? »

« Maintenant les boîtes. Boîte 1 : chaque jour. Boîte 2 : tous les deux jours. Boîte 3 : tous les quatre jours. Boîte 4 : chaque semaine. Boîte 5 : avant l''examen. Bonne réponse : la fiche avance. Erreur : retour en boîte 1. Vous pouvez faire cela avec des cartons et des enveloppes, ou avec une application de cartes de révision qui fonctionne hors ligne. »

Visuel : schéma des cinq boîtes avec des flèches.

Activité : chaque participant rédige trois fiches sur un sujet de son choix.

## 27:00 – 40:00 · Atelier 2 : les notes en colonnes

Texte du formateur : « Je vais vous montrer une vidéo de trois minutes sur le calcul d''un pourcentage. Préparez votre page : une grande colonne à droite pour les notes, une colonne étroite à gauche pour les questions, une bande en bas pour le résumé. Pendant la vidéo, n''écrivez qu''à droite, avec des abréviations. »

Après la vidéo : « Maintenant, remplissez la colonne de gauche : quelles questions vos notes permettent-elles de répondre ? Puis écrivez un résumé en deux phrases. Cachez la colonne de droite et répondez aux questions de gauche : vous venez de faire votre première révision active. »

Visuel : modèle de page en colonnes, puis un exemple rempli sur le calcul d''une hausse de 10 % sur un prix de 5 000 FCFA, qui donne 5 500 FCFA.

Question : « Qu''est-ce qui a été le plus difficile : écrire vite ou formuler les questions ? »

## 40:00 – 47:00 · Pause interactive et quiz

Texte du formateur : « Faisons une pause active avec un quiz de trois questions. Répondez dans le chat ou sur vos téléphones. »

- Question 1 : Qu''est-ce qui est le plus efficace pour retenir : relire trois fois ou se tester une fois ? Réponse : se tester.
- Question 2 : Une fiche en boîte 2 est ratée. Où va-t-elle ? Réponse : en boîte 1.
- Question 3 : Un étudiant révise 20 minutes par jour pendant 30 jours. Combien d''heures au total ? Réponse : 600 minutes, soit 10 heures.

« Ce quiz lui-même est un exemple d''évaluation formative : il vous aide à apprendre. Levez-vous, étirez-vous, nous reprenons dans deux minutes. »

## 47:00 – 1:00:00 · Atelier 3 : concevoir une séquence alignée

Texte du formateur : « Changeons de casquette. Vous êtes formateur. Vous devez créer une séquence de deux heures sur le thème "Tenir le cahier de caisse d''une boutique" pour des commerçants qui suivent le cours sur téléphone. Première question : que sauront-ils faire à la fin ? Pas "connaître la caisse", mais "enregistrer les entrées et sorties", "calculer le solde du jour", "repérer un écart". Ce sont des verbes d''action observables. »

« Deuxième question : quelle activité pour chaque objectif ? Une vidéo courte avec une journée de vente, un exercice sur un cahier fictif de dix opérations. Troisième question : comment évaluer ? En faisant calculer le solde d''une nouvelle journée. Objectif, activité, évaluation : c''est l''alignement. »

Visuel : fiche de conception de séquence à trois colonnes : objectifs, activités, évaluations.

Activité : par groupes de trois, les participants remplissent la fiche pour un sujet de leur métier.

Exemple chiffré à montrer : solde d''ouverture 25 000 FCFA, ventes 68 500 FCFA, achats payés en espèces 31 000 FCFA, solde théorique 25 000 + 68 500 − 31 000 = 62 500 FCFA. Si la caisse contient 61 500 FCFA, l''écart est de 1 000 FCFA à expliquer.

## 1:00:00 – 1:10:00 · Atelier 4 : rédiger un bon QCM

Texte du formateur : « Prenons une question : "Un article coûte 10 000 FCFA hors taxes, la TVA est de 18 %. Quel est le prix TTC ?" Bonne réponse : 11 800 FCFA. Les distracteurs doivent correspondre à des erreurs réelles : 10 018 si l''on ajoute 18 comme un nombre, 1 800 si l''on calcule seulement la TVA, 8 200 si l''on soustrait. Un distracteur absurde, comme 1 000 000, n''apprend rien. »

« Règles d''or : une idée par question, pas de double négation, des options de longueur comparable, pas de "toutes les réponses ci-dessus". Et pour limiter la fraude, changez les valeurs pour chaque apprenant. »

Activité : chaque groupe rédige une question avec trois distracteurs justifiés.

## 1:10:00 – 1:20:00 · Atelier 5 : la sécurité numérique

Texte du formateur : « Dernière compétence : protéger son travail et ses comptes. Je vous lis un message reçu par une étudiante : "Félicitations, vous avez gagné une bourse d''études. Envoyez 25 000 FCFA de frais de dossier avant ce soir." Quels sont les signaux d''alerte ? Un gain non sollicité, l''urgence, une demande d''argent. La bonne réaction : ne pas payer, vérifier auprès de l''organisme officiel. »

« Trois réflexes à adopter ce soir : activer la double authentification sur votre messagerie, utiliser une phrase de passe différente pour chaque compte important, et appliquer la règle 3-2-1 à vos travaux : trois copies, deux supports, une copie hors du lieu habituel. »

Visuel : capture d''écran fictive d''un message frauduleux annotée.

## 1:20:00 – 1:30:00 · Synthèse et évaluation finale

Texte du formateur : « Récapitulons. Pour apprendre : se tester, espacer, alterner, prendre des notes actives, organiser son temps. Pour enseigner : partir des objectifs, aligner activités et évaluations, penser mobile et bas débit, accompagner. Pour tous : sécuriser ses comptes et sauvegarder. Voici l''évaluation finale. »

- Question 1 : Citez deux techniques d''apprentissage dont l''efficacité est bien établie. Réponse : la récupération active (se tester) et la répétition espacée.
- Question 2 : Quelles sont les trois zones de la méthode des notes en colonnes ? Réponse : les notes à droite, les questions et mots-clés à gauche, le résumé en bas.
- Question 3 : Réécrivez l''objectif « connaître le cahier de caisse » de façon observable. Réponse : par exemple « calculer le solde de caisse d''une journée à partir des entrées et des sorties ».
- Question 4 : Dans l''exemple de la caisse, le solde théorique est de 62 500 FCFA et la caisse contient 61 500 FCFA. Quel est l''écart ? Réponse : un manque de 1 000 FCFA.
- Question 5 : Que signifie la règle 3-2-1 ? Réponse : trois copies des fichiers, sur deux supports différents, dont une hors du lieu habituel.

« Merci à toutes et à tous. Votre mission pour la semaine : créer dix fiches de révision et les réviser chaque jour selon les boîtes, ou, si vous êtes formateur, finaliser votre fiche de séquence alignée. »', 'video', 90, false, 60
from public.courses c where c.slug = 'formation-education-numerique'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : apprendre à apprendre et concevoir une séquence en ligne');
