-- Fichier généré par tools/generate-seed.mjs — ne pas modifier à la main.
-- Cours (partie 4/13). À exécuter après seed.sql.

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

-- Cours : Mathématiques : réussir l'épreuve du BFEM
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'bfem-mathematiques', (select id from public.levels where name = '3e'), null, 'Mathématiques', 'Mathématiques : réussir l''épreuve du BFEM', 'Ce cours de préparation à l''examen révise tout le programme de mathématiques du collège (6e à 3e), en insistant sur la classe de 3e : activités numériques, activités géométriques, statistiques et organisation de données. Chaque leçon propose des fiches de rappel, des méthodes de rédaction et de nombreux exercices corrigés, puis un sujet d''entraînement complet et une séance vidéo de révision de veille d''examen. Prérequis : avoir suivi le programme de 3e ou être en train de le terminer.', true, 101
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Comprendre l''épreuve et méthode de travail', '## Objectifs de la leçon

- Connaître l''organisation habituelle d''un sujet de mathématiques au BFEM et les types d''exercices.
- Adopter une méthode efficace le jour de l''épreuve : lecture, brouillon, rédaction, relecture.
- Repérer et éviter les erreurs les plus fréquentes.
- Construire un plan de révision réaliste sur 8 semaines.

## Comment se présente l''épreuve

Le sujet de mathématiques du BFEM est généralement organisé en grandes parties qui reprennent le programme du collège : des activités numériques (calculs sur les nombres, racines carrées, calcul littéral, équations, inéquations, systèmes, fonctions), des activités géométriques (Pythagore, Thalès, trigonométrie, angles inscrits, vecteurs, repérage) et souvent un exercice de statistiques ou d''organisation de données. La durée de l''épreuve, son coefficient et la répartition exacte des points sont fixés par les textes officiels en vigueur : renseigne-toi auprès de ton établissement et ne te fie pas aux rumeurs.

Les questions s''enchaînent souvent : le résultat d''une question sert dans la suivante. L''expression « en déduire » t''indique qu''il faut utiliser ce qui précède. Si tu bloques sur une question, admets son résultat (écris « j''admets que… ») et continue : tu peux gagner les points des questions suivantes.

## Les verbes de consigne à bien comprendre

- Calculer : donner un résultat, en écrivant les étapes.
- Développer : transformer un produit en somme.
- Factoriser : transformer une somme en produit.
- Simplifier : écrire sous la forme la plus réduite (fraction irréductible, a√b avec b le plus petit possible).
- Justifier, démontrer : citer les données, la propriété utilisée, puis conclure.
- Résoudre : trouver toutes les solutions et les présenter clairement.
- Construire : faire une figure précise avec les instruments, en laissant les traits de construction.
- Vérifier : remplacer et constater que l''égalité est vraie.

## La méthode le jour de l''épreuve

- Lire tout le sujet calmement avant d''écrire, en soulignant les données et les verbes.
- Commencer par l''exercice où tu te sens le plus sûr, mais numéroter clairement chaque réponse.
- Utiliser le brouillon pour chercher, puis recopier proprement les étapes utiles.
- Rédiger en géométrie selon le schéma : « On sait que… (données). Or… (propriété). Donc… (conclusion). »
- Encadrer ou souligner les résultats finaux, avec l''unité quand il y en a une (cm, cm², F CFA, km/h).
- Garder environ dix minutes à la fin pour relire : signes, unités, recopie des nombres.

## Les erreurs fréquentes

- Confondre (a + b)² et a² + b² : en réalité (a + b)² = a² + 2ab + b².
- Écrire −3² = 9 : en fait −3² = −9, alors que (−3)² = 9.
- Oublier de changer le sens d''une inégalité quand on multiplie ou divise par un nombre négatif.
- Écrire √(a + b) = √a + √b : c''est faux, par exemple √(9 + 16) = 5 alors que √9 + √16 = 7.
- Utiliser le théorème de Pythagore dans un triangle qui n''est pas rectangle.
- Appliquer Thalès sans vérifier que les droites sont parallèles et les points alignés dans le même ordre.
- Oublier de mettre la calculatrice en mode degrés en trigonométrie.
- Oublier de vérifier les solutions d''un système dans les deux équations.

## Plan de révision sur 8 semaines

- Semaine 1 : nombres (fractions, puissances, écriture scientifique) et racines carrées.
- Semaine 2 : calcul littéral, identités remarquables, factorisation.
- Semaine 3 : équations, inéquations, systèmes, mise en équation de problèmes.
- Semaine 4 : fonctions linéaires et affines, proportionnalité, pourcentages.
- Semaine 5 : Pythagore, Thalès, trigonométrie.
- Semaine 6 : angles inscrits, vecteurs, repérage, équations de droites.
- Semaine 7 : statistiques, puis un premier sujet complet en temps limité.
- Semaine 8 : deux sujets complets, révision des fiches et des erreurs notées dans un carnet.

Conseil : travaille un peu chaque jour (45 minutes à 1 heure) plutôt que beaucoup la veille. Fais-toi une fiche par chapitre : formules, une méthode, un exemple corrigé. Révise à plusieurs : à Dakar comme à Kolda, beaucoup d''élèves progressent en s''expliquant les exercices entre camarades.

## Points clés

- Lire tout le sujet, comprendre les verbes, utiliser les résultats précédents.
- Rédiger : données, propriété, conclusion.
- Relire en fin d''épreuve en cherchant les erreurs classiques.

## Exercices pratiques

Exercice 1. Pour chaque consigne, dis si l''on attend une somme ou un produit : a) développer (x + 2)(x − 5) ; b) factoriser x² − 25.

Exercice 2. Trouve l''erreur dans chaque calcul et corrige-le : a) (x + 3)² = x² + 9 ; b) −4² = 16 ; c) √36 + √64 = √100.

Exercice 3. Un élève résout −2x > 6 et écrit x > −3. Explique son erreur et donne la bonne réponse.

Exercice 4. Un élève écrit : « Le triangle ABC a pour côtés AB = 4 cm, AC = 5 cm, BC = 6 cm, donc BC² = AB² + AC². » Pourquoi ce raisonnement est-il incorrect ?

Exercice 5. Pour un sujet d''entraînement de 2 heures (durée choisie pour l''exercice), propose une répartition du temps entre les activités numériques, les activités géométriques, les statistiques et la relecture.

Exercice 6. Rédige proprement, avec « On sait que… Or… Donc… », la justification suivante : le triangle EFG est rectangle en E, EF = 3 cm et EG = 4 cm ; calculer FG.

## Corrigé

Exercice 1. a) Développer : on attend une somme, (x + 2)(x − 5) = x² − 5x + 2x − 10 = x² − 3x − 10. b) Factoriser : on attend un produit, x² − 25 = (x − 5)(x + 5).

Exercice 2. a) Il manque le double produit : (x + 3)² = x² + 6x + 9. b) Le carré ne porte que sur 4 : −4² = −16. c) √36 + √64 = 6 + 8 = 14, alors que √100 = 10 : la racine d''une somme n''est pas la somme des racines.

Exercice 3. En divisant par −2, nombre négatif, il faut changer le sens de l''inégalité : x < −3.

Exercice 4. On ne sait pas que le triangle est rectangle. D''ailleurs 6² = 36 alors que 4² + 5² = 16 + 25 = 41 : l''égalité est fausse, donc d''après la contraposée du théorème de Pythagore, le triangle n''est pas rectangle.

Exercice 5. Une répartition possible : 5 minutes de lecture du sujet, 45 minutes pour les activités numériques, 45 minutes pour la géométrie (figures comprises), 15 minutes pour les statistiques, 10 minutes de relecture. Total : 120 minutes.

Exercice 6. On sait que le triangle EFG est rectangle en E. Or, d''après le théorème de Pythagore, FG² = EF² + EG². Donc FG² = 3² + 4² = 9 + 16 = 25 et FG = √25 = 5 cm.', 'texte', 45, true, 10
from public.courses c where c.slug = 'bfem-mathematiques'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Comprendre l''épreuve et méthode de travail');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Activités numériques : nombres, calcul littéral, équations et fonctions', '## Objectifs de la leçon

- Réviser les calculs sur les fractions, les puissances et l''écriture scientifique.
- Simplifier des expressions avec des racines carrées.
- Développer, factoriser, résoudre équations, inéquations et systèmes.
- Utiliser les fonctions linéaires et affines.

## Fiche 1 : fractions et puissances

Pour additionner deux fractions, on les met au même dénominateur ; pour les multiplier, on multiplie numérateurs et dénominateurs ; pour diviser, on multiplie par l''inverse. Priorités : parenthèses, puis multiplications et divisions, puis additions et soustractions.

Exemple : A = 2/3 + 5/6 × 4/5. On calcule d''abord 5/6 × 4/5 = 20/30 = 2/3, donc A = 2/3 + 2/3 = 4/3.

Puissances (a ≠ 0) : aⁿ × aᵐ = aⁿ⁺ᵐ ; aⁿ / aᵐ = aⁿ⁻ᵐ ; (aⁿ)ᵐ = aⁿˣᵐ ; a⁰ = 1 ; a⁻ⁿ = 1/aⁿ.

L''écriture scientifique d''un nombre est a × 10ⁿ avec 1 ≤ a < 10 (en valeur absolue). Exemple : B = (3 × 10⁴ × 8 × 10⁻²) / (6 × 10⁵) = (24 × 10²) / (6 × 10⁵) = 4 × 10⁻³.

## Fiche 2 : racines carrées

Pour a ≥ 0 et b ≥ 0 : √(a × b) = √a × √b et, si b > 0, √(a/b) = √a / √b. Attention : √(a + b) n''est pas égal à √a + √b.

Simplifier, c''est faire apparaître le plus grand carré parfait : √50 = √(25 × 2) = 5√2 ; √18 = 3√2 ; √8 = 2√2.

Exemple : C = √50 − 2√18 + 3√8 = 5√2 − 6√2 + 6√2 = 5√2.

Rendre rationnel un dénominateur : 3/√3 = 3√3/3 = √3. Avec la quantité conjuguée : 2/(√5 − 1) = 2(√5 + 1)/((√5 − 1)(√5 + 1)) = 2(√5 + 1)/4 = (√5 + 1)/2.

## Fiche 3 : calcul littéral

Identités remarquables :
- (a + b)² = a² + 2ab + b²
- (a − b)² = a² − 2ab + b²
- (a + b)(a − b) = a² − b²

Développer : (2x − 3)² = 4x² − 12x + 9.

Factoriser avec une identité : (x + 2)² − 9 = (x + 2 − 3)(x + 2 + 3) = (x − 1)(x + 5).

Factoriser avec un facteur commun : (2x + 1)(x − 3) − (2x + 1)(4x + 5) = (2x + 1)[(x − 3) − (4x + 5)] = (2x + 1)(−3x − 8). Attention au signe moins devant le crochet.

## Fiche 4 : équations, inéquations, systèmes

Équation du premier degré : 3x − 7 = x + 5 donne 2x = 12, donc x = 6.

Équation produit nul : un produit est nul si et seulement si l''un des facteurs est nul. (x − 1)(x + 5) = 0 donne x = 1 ou x = −5.

Inéquation : 4 − 3x < 10 donne −3x < 6 ; on divise par −3 et on change le sens : x > −2. On représente les solutions sur une droite graduée et on précise si la borne est incluse ou non.

Système : un groupe achète 15 tickets pour un spectacle à Saint-Louis ; un ticket adulte coûte 500 F, un ticket enfant 200 F ; le total est 4 800 F. Avec x adultes et y enfants : x + y = 15 et 500x + 200y = 4 800. Par substitution, y = 15 − x, donc 500x + 3 000 − 200x = 4 800, soit 300x = 1 800 et x = 6, puis y = 9. Vérification : 6 + 9 = 15 et 3 000 + 1 800 = 4 800.

## Fiche 5 : fonctions linéaires et affines

Une fonction linéaire s''écrit f(x) = ax : elle traduit une situation de proportionnalité ; sa représentation graphique est une droite passant par l''origine. Augmenter un prix de 10 %, c''est le multiplier par 1,1 : c''est la fonction linéaire x ↦ 1,1x.

Une fonction affine s''écrit g(x) = ax + b ; a est le coefficient directeur, b l''ordonnée à l''origine. Si l''on connaît deux images, a = (g(x₂) − g(x₁)) / (x₂ − x₁).

Exemple : g(1) = 5 et g(3) = 11. Alors a = (11 − 5)/(3 − 1) = 3, et g(1) = 3 + b = 5 donne b = 2. Donc g(x) = 3x + 2.

## Points clés

- Toujours écrire les étapes intermédiaires.
- En factorisation, vérifier en redéveloppant.
- En inéquation, attention au nombre négatif.
- En système, vérifier dans les deux équations.

## Exercices pratiques

Exercice 1. Calcule et donne le résultat sous forme de fraction irréductible : A = 3/4 − 1/4 × 2/3.

Exercice 2. Donne l''écriture scientifique de B = (5 × 10³ × 6 × 10⁻⁵) / (15 × 10²).

Exercice 3. Écris C = 2√12 − √27 + √75 sous la forme a√3, puis rends rationnel le dénominateur de D = 6/√2.

Exercice 4. On donne E = (3x − 2)² − (x + 4)². a) Développe et réduis E. b) Factorise E. c) Résous E = 0.

Exercice 5. Résous l''inéquation 2(x − 3) ≤ 5x + 6.

Exercice 6. À Kaolack, Awa achète 3 cahiers et 2 stylos pour 1 100 F ; Moussa achète 2 cahiers et 5 stylos pour 1 100 F. Trouve le prix d''un cahier et celui d''un stylo.

Exercice 7. Soit f(x) = −2x + 3. a) Calcule f(−1). b) Trouve l''antécédent de −7. c) Détermine la fonction affine g telle que g(0) = 4 et g(2) = 10.

## Corrigé

Exercice 1. 1/4 × 2/3 = 2/12 = 1/6. A = 3/4 − 1/6 = 9/12 − 2/12 = 7/12.

Exercice 2. B = (30 × 10⁻²) / (15 × 10²) = 2 × 10⁻⁴.

Exercice 3. √12 = 2√3, √27 = 3√3, √75 = 5√3. C = 4√3 − 3√3 + 5√3 = 6√3. D = 6√2/2 = 3√2.

Exercice 4. a) E = 9x² − 12x + 4 − (x² + 8x + 16) = 8x² − 20x − 12. b) E = (3x − 2 − x − 4)(3x − 2 + x + 4) = (2x − 6)(4x + 2). Vérification : 8x² + 4x − 24x − 12 = 8x² − 20x − 12. c) 2x − 6 = 0 ou 4x + 2 = 0, donc x = 3 ou x = −1/2.

Exercice 5. 2x − 6 ≤ 5x + 6, donc −3x ≤ 12 ; on divise par −3 et on change le sens : x ≥ −4. Les solutions sont les nombres supérieurs ou égaux à −4.

Exercice 6. Soit c le prix d''un cahier et s celui d''un stylo : 3c + 2s = 1 100 et 2c + 5s = 1 100. On multiplie la première par 2 et la seconde par 3 : 6c + 4s = 2 200 et 6c + 15s = 3 300. Par soustraction, 11s = 1 100, donc s = 100 F. Puis 3c = 1 100 − 200 = 900, donc c = 300 F. Vérification : 2 × 300 + 5 × 100 = 1 100.

Exercice 7. a) f(−1) = 2 + 3 = 5. b) −2x + 3 = −7 donne −2x = −10, donc x = 5. c) b = g(0) = 4 et a = (10 − 4)/(2 − 0) = 3, donc g(x) = 3x + 4.', 'texte', 60, false, 20
from public.courses c where c.slug = 'bfem-mathematiques'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Activités numériques : nombres, calcul littéral, équations et fonctions');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Activités géométriques : Pythagore, Thalès, trigonométrie, vecteurs et repérage', '## Objectifs de la leçon

- Utiliser le théorème de Pythagore, sa réciproque et sa contraposée.
- Utiliser le théorème de Thalès et sa réciproque.
- Calculer des longueurs et des angles avec la trigonométrie.
- Utiliser les angles inscrits, les vecteurs et le repérage dans le plan.

## Fiche 1 : Pythagore

Si un triangle ABC est rectangle en A, alors BC² = AB² + AC² (BC est l''hypoténuse). Exemple : AB = 6 cm et AC = 8 cm donnent BC² = 36 + 64 = 100, donc BC = 10 cm.

Réciproque : si BC² = AB² + AC², alors le triangle est rectangle en A. Exemple : 5, 12, 13 : 13² = 169 et 5² + 12² = 25 + 144 = 169, donc le triangle est rectangle.

Contraposée : si l''égalité n''est pas vérifiée avec le plus grand côté, le triangle n''est pas rectangle.

## Fiche 2 : Thalès

Soit deux droites (BM) et (CN) sécantes en A. Si (MN) est parallèle à (BC), alors AM/AB = AN/AC = MN/BC.

Exemple : AM = 3 cm, AB = 5 cm, BC = 10 cm et (MN) // (BC). Alors MN = BC × AM/AB = 10 × 3/5 = 6 cm.

Réciproque : si AM/AB = AN/AC et si les points A, M, B et A, N, C sont alignés dans le même ordre, alors (MN) // (BC).

## Fiche 3 : trigonométrie dans le triangle rectangle

Dans un triangle rectangle, pour un angle aigu :
- cosinus = côté adjacent / hypoténuse
- sinus = côté opposé / hypoténuse
- tangente = côté opposé / côté adjacent

Relations : cos²x + sin²x = 1 et tan x = sin x / cos x.

Exemple : ABC rectangle en A, BC = 10 cm et l''angle en B mesure 30°. AC = BC × sin 30° = 10 × 0,5 = 5 cm ; AB = BC × cos 30° = 10 × (√3/2) = 5√3 ≈ 8,66 cm. Pense à mettre la calculatrice en mode degrés.

## Fiche 4 : angles inscrits

Un angle inscrit a son sommet sur le cercle. Il mesure la moitié de l''angle au centre qui intercepte le même arc. Deux angles inscrits qui interceptent le même arc ont la même mesure. Exemple : si l''angle au centre AOB mesure 80°, tout angle inscrit ACB interceptant le même arc mesure 40°. Cas particulier : un triangle inscrit dans un cercle dont un côté est un diamètre est rectangle.

## Fiche 5 : vecteurs et repérage

Relation de Chasles : AB→ + BC→ = AC→. ABCD est un parallélogramme si et seulement si AB→ = DC→.

Dans un repère orthonormé, avec A(xA ; yA) et B(xB ; yB) :
- coordonnées du vecteur AB→ : (xB − xA ; yB − yA)
- milieu I de [AB] : ((xA + xB)/2 ; (yA + yB)/2)
- distance : AB = √((xB − xA)² + (yB − yA)²)

Exemple : A(1 ; 2) et B(4 ; 6). AB→(3 ; 4), AB = √(9 + 16) = 5, milieu I(2,5 ; 4).

Équation de droite : une droite non parallèle à l''axe des ordonnées a une équation y = ax + b, avec a = (yB − yA)/(xB − xA). Pour (AB) : a = 4/3, puis 2 = 4/3 + b donne b = 2/3, donc y = (4/3)x + 2/3. Deux droites sont parallèles si elles ont le même coefficient directeur ; dans un repère orthonormé, elles sont perpendiculaires si le produit de leurs coefficients directeurs vaut −1.

## Méthode de rédaction

En géométrie, chaque réponse suit trois temps : les données (« On sait que… »), la propriété (« Or, d''après… »), la conclusion (« Donc… »). Fais toujours une figure à main levée au brouillon, puis la figure soignée si on la demande.

## Exercices pratiques

Exercice 1. Le triangle EFG a pour côtés EF = 9 cm, FG = 12 cm, EG = 15 cm. Est-il rectangle ? Justifie.

Exercice 2. À Kaolack, un électricien pose une échelle de 5 m contre un mur ; le pied de l''échelle est à 1,4 m du mur. À quelle hauteur l''échelle touche-t-elle le mur ?

Exercice 3. Les points A, M, B sont alignés, ainsi que A, N, C, dans le même ordre. AM = 4 cm, AB = 10 cm, AN = 6 cm, BC = 12,5 cm et (MN) // (BC). a) Calcule AC et MN. b) Dans une autre figure, AM = 3, AB = 7,5, AN = 4, AC = 10 : les droites (MN) et (BC) sont-elles parallèles ?

Exercice 4. RST est rectangle en R, RS = 7 cm et ST = 14 cm. Calcule la mesure de l''angle en S, puis RT.

Exercice 5. x est un angle aigu tel que sin x = 3/5. Calcule cos x et tan x.

Exercice 6. A, B, C sont sur un cercle de centre O, et C est sur le grand arc AB. L''angle AOB mesure 110°. Calcule l''angle ACB.

Exercice 7. Dans un repère orthonormé : A(−1 ; 3), B(3 ; 1), C(5 ; 5). a) Calcule AB, BC, AC. Quelle est la nature de ABC ? b) Trouve D tel que ABCD soit un parallélogramme. Que peut-on dire de ABCD ? c) Donne une équation de la droite (AB).

## Corrigé

Exercice 1. Le plus grand côté est EG. EG² = 225 ; EF² + FG² = 81 + 144 = 225. D''après la réciproque du théorème de Pythagore, EFG est rectangle en F.

Exercice 2. Le mur est vertical et le sol horizontal : le triangle est rectangle, l''échelle est l''hypoténuse. h² = 5² − 1,4² = 25 − 1,96 = 23,04, donc h = 4,8 m.

Exercice 3. a) D''après Thalès, AM/AB = AN/AC = MN/BC, soit 4/10 = 6/AC, donc AC = 15 cm, et MN = 12,5 × 4/10 = 5 cm. b) AM/AB = 3/7,5 = 0,4 et AN/AC = 4/10 = 0,4. Les rapports sont égaux et les points sont alignés dans le même ordre : d''après la réciproque de Thalès, (MN) // (BC).

Exercice 4. cos S = RS/ST = 7/14 = 0,5, donc l''angle en S mesure 60°. RT² = 14² − 7² = 196 − 49 = 147, donc RT = √147 = 7√3 ≈ 12,12 cm.

Exercice 5. cos²x = 1 − 9/25 = 16/25 ; x est aigu donc cos x = 4/5. tan x = (3/5)/(4/5) = 3/4.

Exercice 6. L''angle inscrit ACB intercepte le même arc que l''angle au centre AOB : ACB = 110°/2 = 55°.

Exercice 7. a) AB→(4 ; −2), AB = √20 = 2√5 ; BC→(2 ; 4), BC = √20 = 2√5 ; AC→(6 ; 2), AC = √40. AB² + BC² = 40 = AC² et AB = BC : ABC est rectangle et isocèle en B. b) AB→ = DC→ donne D(5 − 4 ; 5 + 2) = D(1 ; 7). Vérification : le milieu de [AC] est (2 ; 4), celui de [BD] aussi. ABCD est un parallélogramme avec un angle droit et deux côtés consécutifs égaux : c''est un carré. c) a = (1 − 3)/(3 − (−1)) = −1/2 ; 3 = 1/2 + b donne b = 5/2. Équation : y = −0,5x + 2,5.', 'texte', 60, false, 30
from public.courses c where c.slug = 'bfem-mathematiques'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Activités géométriques : Pythagore, Thalès, trigonométrie, vecteurs et repérage');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Statistiques et organisation de données', '## Objectifs de la leçon

- Maîtriser le vocabulaire statistique.
- Calculer effectifs, fréquences, effectifs cumulés, moyenne, mode et médiane.
- Construire et lire des diagrammes (bâtons, circulaire, histogramme).
- Utiliser la proportionnalité et les pourcentages pour organiser des données.

## Fiche 1 : vocabulaire

- Population : l''ensemble étudié (les élèves d''une classe, les ménages d''un quartier).
- Individu : chaque élément de la population.
- Caractère : ce que l''on observe. Il est qualitatif (sport préféré, région d''origine) ou quantitatif (note, âge). Un caractère quantitatif est discret (nombre d''enfants) ou continu, regroupé en classes (taille, masse, temps).
- Effectif : nombre d''individus ayant une valeur donnée ; l''effectif total est noté N.
- Fréquence : effectif / N, souvent écrite en pourcentage.

## Fiche 2 : paramètres d''une série

Exemple : notes d''un devoir dans une classe de 3e de Thiès (N = 25).

- Notes : 8 ; 10 ; 12 ; 14 ; 16
- Effectifs : 3 ; 6 ; 8 ; 5 ; 3
- Effectifs cumulés croissants (ECC) : 3 ; 9 ; 17 ; 22 ; 25
- Fréquences : 12 % ; 24 % ; 32 % ; 20 % ; 12 %

Moyenne : (8 × 3 + 10 × 6 + 12 × 8 + 14 × 5 + 16 × 3) / 25 = (24 + 60 + 96 + 70 + 48) / 25 = 298/25 = 11,92.

Mode : la valeur de plus grand effectif, ici 12.

Médiane : la valeur qui partage la série ordonnée en deux groupes de même effectif. N = 25 est impair : c''est la 13e valeur. Les ECC montrent que les valeurs de rang 10 à 17 valent 12 : la médiane est 12. Si N est pair, on prend la moyenne des valeurs de rangs N/2 et N/2 + 1.

## Fiche 3 : diagrammes

- Diagramme en bâtons : pour un caractère discret ; la hauteur est proportionnelle à l''effectif.
- Diagramme circulaire : l''angle d''un secteur = fréquence × 360°. Dans l''exemple : 12 % de 360° = 43,2° ; 24 % donne 86,4° ; 32 % donne 115,2° ; 20 % donne 72° ; 12 % donne 43,2°. Total : 360°.
- Histogramme : pour des classes ; les rectangles sont accolés.

## Fiche 4 : séries regroupées en classes

Exemple : temps de trajet (en minutes) de 40 élèves de Thiès pour venir au collège.

- Classes : [0 ; 10[ ; [10 ; 20[ ; [20 ; 30[ ; [30 ; 40[
- Effectifs : 6 ; 12 ; 14 ; 8
- Centres : 5 ; 15 ; 25 ; 35
- ECC : 6 ; 18 ; 32 ; 40

Moyenne : on remplace chaque classe par son centre : (5 × 6 + 15 × 12 + 25 × 14 + 35 × 8) / 40 = (30 + 180 + 350 + 280) / 40 = 840/40 = 21 minutes.

Classe modale : celle de plus grand effectif, [20 ; 30[.

Classe médiane : N/2 = 20 ; l''ECC dépasse 20 pour la première fois dans la classe [20 ; 30[. On peut estimer la médiane par interpolation linéaire (ou graphiquement avec le polygone des ECC) : 20 + 10 × (20 − 18)/14 ≈ 21,4 minutes.

## Fiche 5 : proportionnalité et pourcentages

- Prendre t % d''une quantité : multiplier par t/100.
- Augmenter de t % : multiplier par (1 + t/100) ; diminuer de t % : multiplier par (1 − t/100).
- Vitesse moyenne = distance / durée ; attention à convertir 2 h 15 min en 2,25 h.

## Points clés

- Toujours vérifier que la somme des effectifs vaut N et que la somme des fréquences vaut 100 %.
- Ranger les valeurs avant de chercher la médiane.
- Pour les classes, utiliser les centres pour la moyenne.

## Exercices pratiques

Exercice 1. On étudie le nombre de frères et sœurs des élèves d''une classe de 3e de Ziguinchor. Donne la population, le caractère et sa nature.

Exercice 2. Nombre d''enfants dans 20 ménages d''un quartier de Saint-Louis : 1 enfant : 2 ménages ; 2 : 5 ; 3 : 6 ; 4 : 4 ; 5 : 3. Calcule les fréquences, la moyenne, le mode, la médiane.

Exercice 3. Sport préféré de 60 élèves : football 30, basket 12, lutte 15, athlétisme 3. Calcule les angles du diagramme circulaire.

Exercice 4. Masse (en kg) de 50 sacs d''arachides à Kaffrine : [40 ; 45[ : 5 ; [45 ; 50[ : 15 ; [50 ; 55[ : 20 ; [55 ; 60[ : 10. Calcule la masse moyenne, la classe modale, la classe médiane et une estimation de la médiane.

Exercice 5. Au marché Sandaga, un tissu coûte 12 000 F. Son prix augmente de 15 %, puis baisse de 15 %. Quel est le prix final ? Revient-on au prix initial ?

Exercice 6. Fatou a eu 11, 14 et 8 à trois devoirs. Quelle note doit-elle obtenir au quatrième pour avoir 12 de moyenne ?

Exercice 7. Un car parcourt 180 km en 2 h 15 min. Calcule sa vitesse moyenne.

## Corrigé

Exercice 1. Population : les élèves de la classe. Caractère : le nombre de frères et sœurs. C''est un caractère quantitatif discret.

Exercice 2. Fréquences : 10 % ; 25 % ; 30 % ; 20 % ; 15 %. Moyenne : (2 + 10 + 18 + 16 + 15)/20 = 61/20 = 3,05 enfants. Mode : 3. ECC : 2 ; 7 ; 13 ; 17 ; 20. N = 20 est pair : les 10e et 11e valeurs valent 3, donc la médiane est 3.

Exercice 3. Football : 30/60 × 360° = 180° ; basket : 72° ; lutte : 90° ; athlétisme : 18°. Total : 360°.

Exercice 4. Centres : 42,5 ; 47,5 ; 52,5 ; 57,5. Moyenne : (212,5 + 712,5 + 1 050 + 575)/50 = 2 550/50 = 51 kg. Classe modale : [50 ; 55[. ECC : 5 ; 20 ; 40 ; 50 ; N/2 = 25, donc classe médiane [50 ; 55[. Estimation : 50 + 5 × (25 − 20)/20 = 51,25 kg.

Exercice 5. 12 000 × 1,15 = 13 800 F, puis 13 800 × 0,85 = 11 730 F. On ne revient pas au prix initial car la baisse s''applique à un prix plus grand : 1,15 × 0,85 = 0,9775.

Exercice 6. Il faut un total de 4 × 12 = 48 points. 11 + 14 + 8 = 33, donc il lui faut 48 − 33 = 15.

Exercice 7. 2 h 15 min = 2,25 h. v = 180/2,25 = 80 km/h.', 'texte', 50, false, 40
from public.courses c where c.slug = 'bfem-mathematiques'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Statistiques et organisation de données');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Sujet type d''examen : sujet d''entraînement corrigé', '## Présentation

Voici un sujet d''entraînement complet conçu pour ce cours. Ce n''est pas un sujet officiel du BFEM, mais il en reprend la forme habituelle : activités numériques, activités géométriques et statistiques. Fais-le d''abord seul, en temps limité, sans regarder le corrigé, puis corrige-toi avec la répartition indicative des points proposée (barème d''entraînement sur 20, non officiel).

## Partie A : activités numériques

Exercice 1 (3 points). 1) Calcule A = (2/5 − 1/3) ÷ (7/15). 2) Écris B = √45 − 2√20 + √80 sous la forme a√5. 3) Développe C = (1 − √2)² et justifie que C est positif.

Exercice 2 (4 points). On donne E = (2x + 3)² − (2x + 3)(x − 1). 1) Développe et réduis E. 2) Factorise E. 3) Résous E = 0. 4) Calcule E pour x = −1. 5) Résous l''inéquation 3(x − 2) − 4 > x + 2.

Exercice 3 (3 points). Une couturière de Thiès propose deux tarifs. Tarif 1 : 2 500 F par tenue. Tarif 2 : un abonnement de 10 000 F, puis 1 500 F par tenue. On note x le nombre de tenues. 1) Exprime f(x), prix au tarif 1, et g(x), prix au tarif 2. 2) Pour combien de tenues les deux tarifs sont-ils égaux ? 3) Quel tarif choisir pour 8 tenues ? pour 15 tenues ?

## Partie B : activités géométriques

Exercice 4 (4 points). ABC est un triangle tel que AB = 6 cm, AC = 8 cm, BC = 10 cm. 1) Démontre que ABC est rectangle en A. 2) M est le point de [AB] tel que AM = 4,5 cm ; la parallèle à (BC) passant par M coupe [AC] en N. Calcule AN et MN. 3) Calcule cos ABC et donne une valeur approchée de l''angle ABC au dixième de degré.

Exercice 5 (3 points). Dans un repère orthonormé, A(2 ; 1), B(6 ; 3), C(4 ; 7). 1) Calcule les coordonnées de AB→, AC→, BC→ et les longueurs AB, AC, BC. 2) Démontre que ABC est rectangle et isocèle. 3) Trouve D tel que ABCD soit un parallélogramme ; quelle est la nature de ABCD ? 4) Donne une équation de (AB).

## Partie C : statistiques

Exercice 6 (3 points). Notes de 30 élèves : [0 ; 5[ : 3 ; [5 ; 10[ : 9 ; [10 ; 15[ : 12 ; [15 ; 20[ : 6. 1) Calcule la moyenne. 2) Donne la classe modale et la classe médiane. 3) Quel pourcentage d''élèves a au moins 10 ? 4) Calcule les angles d''un diagramme circulaire.

## Corrigé détaillé

Exercice 1. 1) 2/5 − 1/3 = 6/15 − 5/15 = 1/15 ; A = 1/15 × 15/7 = 1/7. 2) √45 = 3√5, √20 = 2√5, √80 = 4√5 ; B = 3√5 − 4√5 + 4√5 = 3√5. 3) C = 1 − 2√2 + 2 = 3 − 2√2. Comme (2√2)² = 8 < 9 = 3², on a 2√2 < 3, donc C > 0 (C ≈ 0,17).

Exercice 2. 1) (2x + 3)² = 4x² + 12x + 9 ; (2x + 3)(x − 1) = 2x² + x − 3. E = 4x² + 12x + 9 − 2x² − x + 3 = 2x² + 11x + 12. 2) E = (2x + 3)[(2x + 3) − (x − 1)] = (2x + 3)(x + 4). 3) 2x + 3 = 0 ou x + 4 = 0 : x = −3/2 ou x = −4. 4) Avec la forme factorisée : (−2 + 3)(−1 + 4) = 1 × 3 = 3 ; avec la forme développée : 2 − 11 + 12 = 3. 5) 3x − 6 − 4 > x + 2 donne 2x > 12, donc x > 6.

Exercice 3. 1) f(x) = 2 500x ; g(x) = 1 500x + 10 000. 2) 2 500x = 1 500x + 10 000 donne 1 000x = 10 000, x = 10 tenues. 3) Pour 8 tenues : f(8) = 20 000 F et g(8) = 22 000 F, le tarif 1 est plus avantageux. Pour 15 : f(15) = 37 500 F et g(15) = 32 500 F, le tarif 2 est plus avantageux.

Exercice 4. 1) BC² = 100 et AB² + AC² = 36 + 64 = 100 ; d''après la réciproque de Pythagore, ABC est rectangle en A. 2) M ∈ [AB], N ∈ [AC] et (MN) // (BC) ; d''après Thalès, AM/AB = AN/AC = MN/BC. AN = 8 × 4,5/6 = 6 cm ; MN = 10 × 4,5/6 = 7,5 cm. 3) cos ABC = AB/BC = 6/10 = 0,6, d''où ABC ≈ 53,1°.

Exercice 5. 1) AB→(4 ; 2), AC→(2 ; 6), BC→(−2 ; 4). AB = √20, AC = √40, BC = √20. 2) AB² + BC² = 20 + 20 = 40 = AC² : ABC est rectangle en B ; AB = BC : il est isocèle en B. 3) AB→ = DC→ donne D(4 − 4 ; 7 − 2) = D(0 ; 5). Vérification : les milieux de [AC] et [BD] sont tous deux (3 ; 4). Un parallélogramme ayant un angle droit et deux côtés consécutifs égaux est un carré. 4) a = 2/4 = 1/2 ; 1 = 1/2 × 2 + b donne b = 0. (AB) : y = 0,5x.

Exercice 6. 1) Centres : 2,5 ; 7,5 ; 12,5 ; 17,5. Moyenne = (7,5 + 67,5 + 150 + 105)/30 = 330/30 = 11. 2) Classe modale : [10 ; 15[. ECC : 3 ; 12 ; 24 ; 30 ; N/2 = 15, donc classe médiane [10 ; 15[. 3) 12 + 6 = 18 élèves ; 18/30 = 60 %. 4) 3/30 × 360° = 36° ; 9/30 donne 108° ; 12/30 donne 144° ; 6/30 donne 72°. Total : 360°.

## Conseils de notation

Le correcteur valorise la démarche : une méthode juste avec une petite erreur de calcul rapporte souvent une partie des points. Les justifications en géométrie (citer le théorème et ses conditions) comptent autant que le résultat. Les unités oubliées, les figures sans soin et les résultats non encadrés coûtent des points faciles. Compte tes points avec le barème d''entraînement ci-dessus : en dessous de 10, reprends les fiches des chapitres où tu as perdu le plus ; au-dessus de 15, entraîne-toi surtout à la vitesse.

## Exercices pratiques

Exercice 1. Refais l''exercice 2 avec F = (x − 4)² − (x − 4)(3x + 1) : développe, factorise, résous F = 0.

Exercice 2. Reprends l''exercice 3 avec un tarif 2 à 8 000 F d''abonnement et 1 800 F par tenue : à partir de combien de tenues ce tarif devient-il plus avantageux ?

Exercice 3. Dans l''exercice 4, calcule l''aire du triangle AMN et celle du triangle ABC. Quel est le rapport des aires ?

Exercice 4. Dans l''exercice 5, calcule le périmètre et l''aire du carré ABCD.

Exercice 5. Dans l''exercice 6, estime la médiane par interpolation linéaire.

## Corrigé

Exercice 1. F = x² − 8x + 16 − (3x² + x − 12x − 4) = x² − 8x + 16 − 3x² + 11x + 4 = −2x² + 3x + 20. F = (x − 4)[(x − 4) − (3x + 1)] = (x − 4)(−2x − 5). Vérification : −2x² − 5x + 8x + 20 = −2x² + 3x + 20. F = 0 pour x = 4 ou x = −5/2.

Exercice 2. 2 500x > 1 800x + 8 000 donne 700x > 8 000, x > 11,4… Le tarif 2 est plus avantageux à partir de 12 tenues.

Exercice 3. Aire de ABC = 6 × 8/2 = 24 cm². AMN est rectangle en A avec AM = 4,5 et AN = 6 : aire = 13,5 cm². Rapport : 13,5/24 = 0,5625 = (0,75)², le carré du rapport de Thalès 4,5/6 = 0,75.

Exercice 4. Côté √20 = 2√5 ; périmètre 4 × 2√5 = 8√5 ≈ 17,9 unités ; aire (√20)² = 20 unités d''aire.

Exercice 5. Médiane ≈ 10 + 5 × (15 − 12)/12 = 10 + 1,25 = 11,25.', 'texte', 60, false, 50
from public.courses c where c.slug = 'bfem-mathematiques'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Sujet type d''examen : sujet d''entraînement corrigé');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : révision intensive de veille d''examen', '## Fiche du cours vidéo

- Durée : 1h30.
- Thème : séance de révision intensive de veille d''examen en mathématiques.
- Objectifs : revoir les formules et méthodes indispensables, corriger des exercices types en commentant la rédaction, s''entraîner à gérer son temps, se tester avec un quiz et une évaluation finale.
- Matériel : tableau ou diaporama, règle, équerre, rapporteur, compas, calculatrice scientifique en mode degrés, brouillon.
- Prérequis : leçons 1 à 5 de ce cours.

## Déroulé minuté

## 00:00 – 05:00 · Accueil et objectifs

« Bonsoir à toutes et à tous. Demain, ou dans quelques jours, vous passez l''épreuve de mathématiques du BFEM. Ce soir, on n''apprend rien de nouveau : on consolide. Nous allons revoir les formules qui reviennent chaque année, corriger ensemble des exercices types, et surtout parler de méthode. Gardez votre cahier de fiches près de vous et une feuille de brouillon. Quand je dis “pause”, arrêtez la vidéo et cherchez seuls. »

Visuel : le plan de la séance en six étapes : numérique, géométrie, quiz, statistiques, gestion du temps, évaluation finale.

## 05:00 – 20:00 · Rappels clés des activités numériques

« Commençons par les nombres. Pour les fractions : même dénominateur pour additionner, inverse pour diviser. Pour les puissances : on additionne les exposants quand on multiplie, on les soustrait quand on divise. L''écriture scientifique, c''est a fois 10 puissance n avec a entre 1 et 10. »

« Racines carrées : on cherche le plus grand carré parfait. Racine de 72, c''est racine de 36 fois 2, donc 6 racine de 2. Et rappelez-vous : la racine d''une somme n''est jamais la somme des racines. »

Visuel : les trois identités remarquables écrites en grand : (a + b)² = a² + 2ab + b² ; (a − b)² = a² − 2ab + b² ; (a + b)(a − b) = a² − b².

« Pour factoriser, posez-vous deux questions : y a-t-il un facteur commun ? sinon, reconnaît-on une identité ? Par exemple, 9x² − 4, c''est (3x)² − 2², donc (3x − 2)(3x + 2). Et toujours, vérifiez en redéveloppant au brouillon. »

« Pour les inéquations, une seule règle piège : diviser par un négatif change le sens. −5x ≥ 15 donne x ≤ −3. Pour les fonctions affines, retenez la formule du coefficient : a égale la différence des images divisée par la différence des nombres. »

Question à poser : « Que vaut (−2)³ ? » Réponse attendue : −8.

## 20:00 – 35:00 · Correction commentée : un exercice numérique

Visuel : l''énoncé. « On donne P = (x − 3)² − 16. Développer, factoriser, résoudre P = 0, puis résoudre 2x − 5 < 7x + 10. »

« Mettez la vidéo en pause cinq minutes. »

« Correction. Développement : (x − 3)² = x² − 6x + 9, donc P = x² − 6x + 9 − 16 = x² − 6x − 7. Factorisation : 16, c''est 4², donc P = (x − 3 − 4)(x − 3 + 4) = (x − 7)(x + 1). Vérification : x² + x − 7x − 7 = x² − 6x − 7, c''est bon. Équation produit nul : x = 7 ou x = −1. Inéquation : 2x − 7x < 10 + 5, donc −5x < 15, on divise par −5 et on change le sens : x > −3. »

« Regardez la rédaction : chaque étape sur une ligne, le résultat souligné. Le correcteur doit pouvoir vous suivre sans deviner. »

## 35:00 – 50:00 · Rappels et correction : géométrie

« Trois théorèmes portent l''essentiel des points : Pythagore pour un triangle rectangle, Thalès pour des droites parallèles, la trigonométrie pour les angles. Avant de calculer, vérifiez les conditions : angle droit pour Pythagore et la trigonométrie, parallélisme et alignement pour Thalès. »

Visuel : un triangle IJK rectangle en I avec IJ = 5 cm et l''angle en J de 40°.

« Calculez JK et IK. Pause. »

« cos 40° = IJ/JK, donc JK = 5/cos 40° ≈ 5/0,766 ≈ 6,53 cm. tan 40° = IK/IJ, donc IK = 5 × tan 40° ≈ 5 × 0,839 ≈ 4,20 cm. On peut contrôler avec Pythagore : 6,53² ≈ 42,6 et 5² + 4,20² ≈ 25 + 17,6 = 42,6. »

« Passons à Thalès. Visuel : deux droites sécantes en O, avec E et F sur la première, G et H sur la seconde, et (EG) parallèle à (FH). On donne OE = 3 cm, OF = 7,5 cm et EG = 2 cm. Combien mesure FH ? Pause. »

« Rédaction attendue : on sait que les points O, E, F d''une part et O, G, H d''autre part sont alignés, et que (EG) est parallèle à (FH). Or, d''après le théorème de Thalès, OE/OF = OG/OH = EG/FH. Donc 3/7,5 = 2/FH, d''où FH = 2 × 7,5/3 = 5 cm. Remarquez que je n''écris pas seulement le calcul : je cite les données et le théorème. C''est cette phrase qui rapporte les points de justification. »

« Pour la réciproque, c''est l''inverse : on calcule séparément les deux rapports, on constate qu''ils sont égaux, on vérifie l''ordre des points, puis on conclut au parallélisme. Si les rapports sont différents, la contraposée permet de conclure que les droites ne sont pas parallèles. »

« Pour les vecteurs et le repérage, ayez en tête quatre formules : coordonnées du vecteur, milieu, distance, équation de droite. Pour montrer qu''un quadrilatère est un parallélogramme, montrez que ses diagonales ont le même milieu ou que AB→ = DC→. Pour les angles inscrits : l''angle inscrit vaut la moitié de l''angle au centre qui intercepte le même arc. »

## 50:00 – 58:00 · Quiz interactif (pause active)

« Petit quiz. Notez vos réponses, puis on corrige. »

- Question 1 : factoriser x² − 49.
- Question 2 : calculer √3 × √12.
- Question 3 : dans un triangle rectangle, sinus d''un angle = ?
- Question 4 : un angle au centre mesure 140° ; combien mesure un angle inscrit interceptant le même arc ?
- Question 5 : écrire 0,00052 en écriture scientifique.

« Réponses : 1) (x − 7)(x + 7). 2) √36 = 6. 3) côté opposé sur hypoténuse. 4) 70°. 5) 5,2 × 10⁻⁴. Si vous avez quatre ou cinq bonnes réponses, bravo. Sinon, notez la fiche à relire ce soir. »

## 58:00 – 1:10:00 · Statistiques : correction commentée

Visuel : âges de 20 membres d''une association sportive de Mbour : 14 ans : 3 ; 15 ans : 7 ; 16 ans : 6 ; 17 ans : 4.

« Calculez la moyenne, le mode, la médiane et l''angle correspondant à 15 ans dans un diagramme circulaire. Pause. »

« Moyenne : (14 × 3 + 15 × 7 + 16 × 6 + 17 × 4)/20 = (42 + 105 + 96 + 68)/20 = 311/20 = 15,55 ans. Mode : 15 ans. Effectifs cumulés : 3 ; 10 ; 16 ; 20. N est pair : la médiane est la moyenne des 10e et 11e valeurs, soit 15 et 16, donc 15,5 ans. Angle pour 15 ans : 7/20 × 360° = 126°. »

« Erreur classique : oublier de ranger les valeurs avant de chercher la médiane, ou confondre effectif et fréquence. »

## 1:10:00 – 1:18:00 · Gestion du temps et dernières consignes

« Le jour J : lisez tout le sujet pendant les premières minutes. Repérez l''exercice que vous maîtrisez le mieux et commencez par lui pour prendre confiance. Ne restez jamais bloqué plus de dix minutes sur une question : admettez le résultat et continuez. Réservez du temps pour la figure, elle se fait au crayon bien taillé. Gardez dix minutes pour relire. »

« Préparez ce soir votre matériel : deux stylos, crayon, gomme, règle, équerre, compas, rapporteur, calculatrice chargée et réglée en degrés. Dormez suffisamment : un cerveau reposé calcule mieux. »

## 1:18:00 – 1:28:00 · Évaluation finale (5 questions)

« Dernier test. Cinq questions, deux minutes chacune. »

- Question 1 : résoudre le système x + y = 12 et x − y = 4.
- Question 2 : un triangle a pour côtés 7 cm, 24 cm et 25 cm. Est-il rectangle ?
- Question 3 : déterminer la fonction affine f telle que f(2) = 1 et f(5) = 10.
- Question 4 : A(−2 ; 1) et B(4 ; 9). Calculer AB et le milieu de [AB].
- Question 5 : un prix de 8 000 F baisse de 25 %. Quel est le nouveau prix ?

« Réponses. 1) En additionnant : 2x = 16, x = 8 et y = 4 ; vérification : 8 + 4 = 12 et 8 − 4 = 4. 2) 25² = 625 et 7² + 24² = 49 + 576 = 625 : d''après la réciproque de Pythagore, il est rectangle. 3) a = (10 − 1)/(5 − 2) = 3 ; f(2) = 6 + b = 1 donne b = −5 ; f(x) = 3x − 5. 4) AB→(6 ; 8), AB = √(36 + 64) = 10 ; milieu (1 ; 5). 5) 8 000 × 0,75 = 6 000 F. »

## 1:28:00 – 1:30:00 · Synthèse et encouragements

« Retenez trois mots : lire, justifier, vérifier. Vous avez travaillé toute l''année ; faites-vous confiance. Relisez vos fiches une dernière fois, puis reposez-vous. Bon courage pour le BFEM, et à bientôt pour la suite de vos études au lycée. »', 'video', 90, false, 60
from public.courses c where c.slug = 'bfem-mathematiques'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : révision intensive de veille d''examen');

-- Cours : Français : réussir l'épreuve du BFEM
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'bfem-francais', (select id from public.levels where name = '3e'), null, 'Français', 'Français : réussir l''épreuve du BFEM', 'Ce cours de préparation à l''examen révise le programme de français du collège (6e à 3e) sous l''angle des épreuves du BFEM : compréhension de texte et étude de la langue, dictée et orthographe, rédaction (récit, argumentation, lettre). Il s''appuie sur la littérature sénégalaise et africaine (Birago Diop, Mariama Bâ, Ousmane Sembène, Aminata Sow Fall, Léopold Sédar Senghor) et propose de nombreux exercices corrigés, un sujet d''entraînement complet et une séance vidéo de veille d''examen. Prérequis : niveau de fin de 3e ou en cours d''acquisition.', true, 102
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Comprendre l''épreuve et méthode de travail', '## Objectifs de la leçon

- Savoir quelles compétences l''examen de français évalue et sous quelles formes.
- Adopter une méthode pour chaque type d''exercice.
- Connaître les erreurs qui coûtent le plus de points.
- Organiser ses révisions sur 8 semaines.

## Ce que l''on attend de toi

L''évaluation du français au BFEM porte, de manière générale, sur trois grandes compétences : comprendre un texte, maîtriser la langue (grammaire, conjugaison, vocabulaire, orthographe) et produire un texte écrit organisé. On retrouve habituellement une dictée accompagnée de questions sur un texte, et une rédaction où le candidat choisit un sujet parmi plusieurs propositions. La forme exacte des épreuves, leur durée, leurs coefficients et leurs barèmes sont fixés par les textes officiels en vigueur : renseigne-toi auprès de tes professeurs, car ces modalités peuvent évoluer.

## Les types d''exercices

- La dictée : un texte lu par l''examinateur, que tu dois écrire sans faute. Elle évalue l''orthographe d''usage (l''écriture des mots) et l''orthographe grammaticale (les accords).
- Les questions de compréhension : retrouver une information, expliquer une expression, dégager l''idée principale, justifier par une citation du texte.
- Les questions de langue : nature et fonction des mots, types de propositions, transformation de phrases (voix passive, discours indirect), identification et conjugaison des temps, vocabulaire (synonymes, antonymes, familles de mots, figures de style).
- La rédaction : un récit, un texte argumentatif, une lettre, parfois une description ou un dialogue à insérer dans un récit.

## Méthode générale

Pour les questions : lis le texte deux fois, la première pour comprendre l''histoire, la seconde crayon en main pour souligner les personnages, les lieux, les mots difficiles. Réponds toujours par une phrase complète qui reprend les termes de la question. Quand on te demande de justifier, cite le texte entre guillemets.

Pour la dictée : écoute la première lecture sans écrire, pour saisir le sens. Écris ensuite par groupes de mots. À la relecture, fais trois passages : un pour les accords sujet-verbe, un pour les accords dans le groupe nominal et les participes passés, un pour les homophones et les accents.

Pour la rédaction : consacre un vrai temps au brouillon (analyse du sujet, idées, plan), puis rédige directement au propre l''introduction et la conclusion, en soignant l''écriture et la présentation.

## Les erreurs fréquentes

- Répondre hors sujet : par exemple raconter quand on demande d''argumenter.
- Recopier une phrase du texte sans l''expliquer.
- Confondre nature (ce qu''est le mot : nom, verbe, adjectif…) et fonction (son rôle dans la phrase : sujet, COD…).
- Oublier les accords du participe passé et confondre les terminaisons -é, -er, -ez, -ait.
- Mélanger les temps dans un récit (passer du passé simple au présent sans raison).
- Écrire une lettre sans lieu, date, formule d''appel ni formule de politesse.
- Négliger la ponctuation et les majuscules.

## Plan de révision sur 8 semaines

- Semaine 1 : classes grammaticales et fonctions ; lecture d''un conte de Birago Diop.
- Semaine 2 : propositions et phrase complexe ; une dictée par jour de cinq lignes.
- Semaine 3 : conjugaison (indicatif, subjonctif, conditionnel, impératif) et concordance des temps.
- Semaine 4 : vocabulaire et figures de style ; lecture d''extraits de Senghor.
- Semaine 5 : orthographe grammaticale et homophones ; rédaction d''un récit.
- Semaine 6 : argumentation ; lecture d''Une si longue lettre de Mariama Bâ ; rédaction d''une lettre.
- Semaine 7 : sujet complet en temps limité, puis correction.
- Semaine 8 : deuxième sujet complet ; révision des fiches et de ton carnet d''erreurs.

Conseil : lis chaque jour, même vingt minutes. La lecture régulière est la meilleure préparation à la fois pour l''orthographe, le vocabulaire et la rédaction.

## Points clés

- Trois compétences : comprendre, maîtriser la langue, écrire.
- Des réponses rédigées, justifiées par le texte.
- Une relecture méthodique en plusieurs passages.

## Exercices pratiques

Exercice 1. Dans la phrase « Le vieux pêcheur raccommode ses filets », donne la nature et la fonction de « pêcheur » et de « filets ».

Exercice 2. Transforme la réponse suivante en réponse complète : Question : « Où se passe l''histoire ? » Réponse d''un élève : « Saint-Louis. »

Exercice 3. Corrige les erreurs : « Les élèves on travailler toute la nuit et il sont fatigué. »

Exercice 4. Lis ce sujet : « Un camarade affirme que la lecture ne sert à rien à l''époque du téléphone portable. Tu n''es pas de son avis. Rédige un texte argumenté pour le convaincre. » Quel est le type de texte attendu ? Quelle est ta thèse ?

Exercice 5. Classe ces éléments dans l''ordre d''une lettre : formule de politesse ; lieu et date ; corps de la lettre ; signature ; formule d''appel.

Exercice 6. Construis ton propre emploi du temps de révision pour une semaine en prévoyant au moins une dictée, une lecture et une rédaction.

## Corrigé

Exercice 1. « pêcheur » : nom commun, noyau du groupe nominal sujet du verbe « raccommode ». « filets » : nom commun, noyau du groupe nominal complément d''objet direct du verbe « raccommode ».

Exercice 2. « L''histoire se passe à Saint-Louis. »

Exercice 3. « Les élèves ont travaillé toute la nuit et ils sont fatigués. » « ont » est l''auxiliaire avoir (on peut dire « avaient ») ; après l''auxiliaire avoir, on écrit le participe passé « travaillé » ; « ils » est au pluriel ; « fatigués » s''accorde avec « ils ».

Exercice 4. Un texte argumentatif. Ta thèse : la lecture reste utile, et même indispensable, malgré le téléphone portable (par exemple parce qu''elle enrichit le vocabulaire, développe l''imagination et l''esprit critique, et que le téléphone lui-même permet de lire).

Exercice 5. Lieu et date ; formule d''appel ; corps de la lettre ; formule de politesse ; signature.

Exercice 6. Réponse personnelle. Exemple : lundi, dictée de dix lignes et relecture en trois passages ; mardi, vingt minutes de lecture et fiche de vocabulaire ; mercredi, exercices de conjugaison ; jeudi, analyse d''un sujet et plan ; vendredi, rédaction complète ; samedi, correction et carnet d''erreurs ; dimanche, repos ou lecture libre.', 'texte', 45, true, 10
from public.courses c where c.slug = 'bfem-francais'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Comprendre l''épreuve et méthode de travail');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Compréhension de texte et étude de la langue', '## Objectifs de la leçon

- Répondre avec méthode à des questions de compréhension.
- Réviser les notions essentielles de grammaire, de conjugaison et de vocabulaire.
- S''entraîner sur un texte écrit pour ce cours.

## Le texte d''étude

Texte écrit pour ce cours :

Au lever du jour, la plage de Kayar s''animait déjà. Les pirogues, peintes de couleurs vives, revenaient une à une, lourdes de poissons argentés. Aïssatou courait vers le rivage, car son père rentrait après deux jours en mer. Dès qu''elle aperçut la pirogue de son père, elle agita les bras en criant son nom. Les femmes s''approchaient avec leurs bassines, discutaient les prix et riaient bruyamment. Le vieux Matar, assis sous un filao, regardait la scène en silence. « La mer nous donne tout, murmura-t-il, mais elle ne pardonne rien. » Aïssatou, qui avait entendu ces mots, se promit de ne jamais les oublier. Quand la pirogue toucha enfin le sable, son père sauta dans l''eau et la serra contre lui. Elle comprit alors que la plus belle prise de la journée n''était pas dans les filets.

## Méthode pour la compréhension

- Identifier la situation : qui ? où ? quand ? quoi ?
- Repérer le thème et l''idée principale de chaque partie.
- Répondre par une phrase complète, avec ses propres mots, puis justifier par une citation entre guillemets.
- Pour « expliquer une expression », dire le sens littéral puis le sens dans le texte.

Exemple : « Pourquoi Aïssatou court-elle vers le rivage ? » Réponse : Aïssatou court vers le rivage parce que son père revient de la mer après une absence de deux jours, comme l''indique la phrase « son père rentrait après deux jours en mer ».

## Fiche de grammaire

Nature et fonction. La nature est fixe (nom, pronom, verbe, adjectif, adverbe, déterminant, préposition, conjonction). La fonction dépend de la phrase : sujet, attribut du sujet, COD, COI, complément circonstanciel, complément du nom, épithète, apposition.

Dans « Le vieux Matar, assis sous un filao, regardait la scène », « assis sous un filao » est un groupe participial apposé au nom « Matar ».

La phrase complexe contient plusieurs verbes conjugués, donc plusieurs propositions :
- propositions juxtaposées (séparées par une virgule ou un point-virgule) ou coordonnées (reliées par mais, ou, et, donc, or, ni, car) ;
- proposition subordonnée relative, introduite par un pronom relatif (qui, que, dont, où…) : elle complète un nom, l''antécédent ;
- proposition subordonnée complétive, introduite par « que » après un verbe : elle est souvent COD (« Elle comprit que la plus belle prise… ») ;
- proposition subordonnée circonstancielle : temps (quand, dès que, lorsque), cause (parce que, puisque), conséquence (si bien que, de sorte que), but (pour que, afin que), opposition ou concession (bien que, alors que), condition (si).

Voix active et voix passive : « Le pêcheur répare la pirogue » devient « La pirogue est réparée par le pêcheur ». Le COD devient sujet, le verbe passe à la voix passive au même temps (être + participe passé), le sujet devient complément d''agent.

Discours direct et indirect : « La mer nous donne tout », murmura-t-il, devient : Il murmura que la mer leur donnait tout. On supprime les guillemets, on change les pronoms et, après un verbe introducteur au passé, le présent devient imparfait.

## Fiche de conjugaison

- Récit au passé : imparfait pour le décor et les actions qui durent ou se répètent (« s''animait », « riaient ») ; passé simple pour les actions principales et soudaines (« aperçut », « sauta ») ; plus-que-parfait pour une action antérieure (« avait entendu »).
- Le subjonctif s''emploie après « il faut que », « bien que », « pour que » : il faut qu''elle vienne, bien qu''il soit tard.
- Le conditionnel exprime une hypothèse ou un souhait : si j''avais le temps, je lirais davantage.
- Passé simple à connaître : il fut, il eut, il fit, il vint, il prit, il vit, ils firent, ils vinrent.

## Fiche de vocabulaire

- Formation des mots : radical, préfixe (re-, in-, dé-), suffixe (-age, -eur, -ment) ; famille de mots (mer, marin, maritime, amerrir).
- Synonymes, antonymes, homonymes ; sens propre et sens figuré.
- Champ lexical : ensemble de mots liés à un thème (dans le texte, la pêche : pirogues, poissons, filets, prise, mer).
- Figures de style : comparaison (avec un outil : comme, tel), métaphore (sans outil), personnification (la mer « pardonne »), antithèse (« donne tout » / « ne pardonne rien »), hyperbole, énumération, anaphore.

## Points clés

- Toujours justifier une réponse de compréhension par le texte.
- Distinguer coordination (car, mais) et subordination (parce que, quand).
- Identifier un temps par ses terminaisons et par son emploi.

## Exercices pratiques

Exercice 1. Où et à quel moment se déroule la scène ? Justifie.

Exercice 2. Explique la phrase du vieux Matar : « La mer nous donne tout, mais elle ne pardonne rien. » Quelle figure de style reconnais-tu ?

Exercice 3. Que signifie la dernière phrase du texte ? Explique le double sens du mot « prise ».

Exercice 4. Donne la nature et la fonction de « qui avait entendu ces mots » et de « Dès qu''elle aperçut la pirogue de son père ».

Exercice 5. Relève le champ lexical de la pêche, puis donne deux mots de la famille de « mer ».

Exercice 6. Mets à la voix passive : « Les femmes achètent le poisson. » Puis mets au discours indirect : Aïssatou dit : « Je n''oublierai jamais ces mots. »

Exercice 7. Relève un verbe à l''imparfait, un au passé simple et un au plus-que-parfait, et justifie l''emploi de chacun.

## Corrigé

Exercice 1. La scène se déroule sur la plage de Kayar, au petit matin : « Au lever du jour, la plage de Kayar s''animait déjà. »

Exercice 2. Matar veut dire que la mer fait vivre les pêcheurs en leur offrant le poisson, mais qu''elle est dangereuse : la moindre imprudence peut coûter la vie. Les deux parties de la phrase s''opposent (antithèse), et la mer est présentée comme une personne qui « donne » et « pardonne » (personnification).

Exercice 3. Aïssatou comprend que le plus précieux, ce jour-là, ce n''est pas le poisson, mais le retour de son père sain et sauf. Au sens propre, la « prise » est le poisson pêché ; au sens figuré, c''est son père, qu''elle retrouve et serre dans ses bras.

Exercice 4. « qui avait entendu ces mots » : proposition subordonnée relative, introduite par le pronom relatif « qui », complément de l''antécédent « Aïssatou ». « Dès qu''elle aperçut la pirogue de son père » : proposition subordonnée circonstancielle de temps, complément circonstanciel de temps du verbe « agita ».

Exercice 5. Pirogues, poissons, mer, prise, filets, rivage. Famille de « mer » : marin, maritime (on peut aussi citer amerrir).

Exercice 6. « Le poisson est acheté par les femmes. » Aïssatou dit qu''elle n''oubliera jamais ces mots. (Le verbe introducteur est au présent : le futur reste au futur.)

Exercice 7. « riaient » : imparfait, action qui dure, décor de la scène. « sauta » : passé simple, action soudaine de premier plan. « avait entendu » : plus-que-parfait, action antérieure à « se promit ».', 'texte', 60, false, 20
from public.courses c where c.slug = 'bfem-francais'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Compréhension de texte et étude de la langue');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Dictée et orthographe', '## Objectifs de la leçon

- Maîtriser les accords qui reviennent dans toutes les dictées.
- Distinguer les homophones grammaticaux.
- Appliquer une méthode de relecture efficace.

## Fiche 1 : l''accord sujet-verbe

Le verbe s''accorde avec son sujet, même quand celui-ci est éloigné ou placé après le verbe. Méthode : pose la question « Qui est-ce qui… ? » devant le verbe.

- « Les enfants du quartier jouent. » Qui est-ce qui joue ? les enfants : pluriel.
- « Les mangues que vend ma tante sont mûres. » Qui est-ce qui vend ? ma tante : singulier.
- Avec « qui », le verbe s''accorde avec l''antécédent : « C''est moi qui suis arrivé le premier. »

## Fiche 2 : le participe passé

- Employé sans auxiliaire, il s''accorde comme un adjectif : des pirogues peintes.
- Avec l''auxiliaire être, il s''accorde avec le sujet : les filles sont parties.
- Avec l''auxiliaire avoir, il ne s''accorde jamais avec le sujet ; il s''accorde avec le COD seulement si celui-ci est placé avant le verbe : « Elle a acheté des mangues » mais « Les mangues qu''elle a achetées ».
- Verbes pronominaux : en règle générale, accord avec le sujet (« Elles se sont levées »), sauf si un COD est placé après (« Elles se sont lavé les mains »).

Astuce -é ou -er : remplace par un verbe du troisième groupe comme « vendre » ou « prendre ». « Il veut manger » : il veut vendre, donc -er. « Il a mangé » : il a vendu, donc -é.

## Fiche 3 : les homophones grammaticaux

- a (verbe avoir, on peut dire « avait ») / à (préposition).
- et (conjonction, « et puis ») / est (verbe être, « était »).
- son (déterminant, « mon ») / sont (verbe être, « étaient »).
- on (pronom, « il ») / ont (verbe avoir, « avaient ») ; ne pas oublier le « n'' » dans « on n''a pas ».
- ces (démonstratif, « ces livres-là ») / ses (possessif, « les siens ») / c''est (« cela est ») / s''est (verbe pronominal).
- ou (« ou bien ») / où (lieu ou temps).
- la (article ou pronom) / là (lieu) / l''a (« l''avait »).
- ce (démonstratif) / se (pronom devant un verbe).
- leur (pronom devant un verbe, invariable : « je leur parle ») / leur, leurs (déterminant devant un nom : « leurs cahiers »).
- peu (quantité) / peut (verbe pouvoir, « pouvait »).
- quel(s), quelle(s) (déterminant) / qu''elle(s) (« qu''il »).

## Fiche 4 : le groupe nominal et l''orthographe d''usage

- Pluriel des noms : en -s en général ; -x pour les noms en -eau, -au, -eu (des bateaux, des feux) ; bijou, caillou, chou, genou, hibou, joujou, pou prennent -x ; la plupart des noms en -al font -aux (des journaux), sauf bal, carnaval, festival, chacal…
- Adjectifs : ils s''accordent en genre et en nombre avec le nom. Les adjectifs de couleur issus d''un nom restent invariables (des boubous orange, des tissus marron), de même que les adjectifs de couleur composés (des robes bleu clair).
- Accents et mots invariables : à apprendre par cœur au fil des dictées (beaucoup, toujours, longtemps, parmi, malgré, déjà).

## Méthode de la dictée

- Première lecture : écouter sans écrire, pour comprendre.
- Écriture : noter les mots par groupes de sens, laisser une ligne sur deux pour se corriger.
- Relecture finale en trois passages : verbes et sujets ; groupes nominaux et participes ; homophones, accents, ponctuation.
- Ne pas laisser de mot illisible : une lettre ambiguë est comptée comme une faute.

## Points clés

- Chercher le sujet de chaque verbe.
- Pour le participe avec avoir : où est le COD ?
- Remplacer pour reconnaître un homophone.

## Exercices pratiques

Exercice 1. Choisis le bon homophone : a) Il (a / à) offert un livre (a / à) son frère. b) Mon frère (et / est) ma sœur vont (a / à) Ziguinchor. c) Moussa et (son / sont) frère (son / sont) partis à Kolda.

Exercice 2. Complète par ces, ses, c''est ou s''est : a) Fatou range … cahiers. b) … un beau jour pour la fête. c) Il … levé tôt. d) Regarde … pirogues sur la plage.

Exercice 3. Écris correctement la terminaison : a) Nous allons visit… l''île de Gorée. b) Les touristes ont visit… l''île. c) Visit… l''île demain, leur dit le guide. d) Il visit… souvent l''île quand il était jeune.

Exercice 4. Accorde les participes passés : a) Les lettres que Ramatoulaye a (écrit) sont célèbres. b) Les femmes sont (venu) au marché. c) Elle a (lu) les contes. d) Les contes qu''elle a (lu) ont (marquer) son enfance.

Exercice 5. Mets au pluriel : un journal local ; un bijou précieux ; un boubou orange ; un cheval blanc ; un festival animé.

Exercice 6. Recopie et corrige les huit erreurs de ce passage : « Les premières pluie de l''hivernage sont enfin arrivé à Tambacounda. Depuis des semaines, les paysans les attendais avec impatience. Ce matin, ils se sont levé tôt et on gagné leur champs, ou la terre, longtemps desséchée, s''est mise à respirer. Quel joie de voir le ciel gris ! »

## Corrigé

Exercice 1. a) Il a offert un livre à son frère. b) Mon frère et ma sœur vont à Ziguinchor. c) Moussa et son frère sont partis à Kolda (« son » peut être remplacé par « mon », « sont » par « étaient »).

Exercice 2. a) ses cahiers. b) C''est un beau jour. c) Il s''est levé. d) ces pirogues.

Exercice 3. a) visiter (on peut dire « vendre »). b) visité (« ont vendu »). c) Visitez (impératif, deuxième personne du pluriel). d) visitait (imparfait, troisième personne du singulier).

Exercice 4. a) écrites (COD « que », mis pour « les lettres », placé avant). b) venues (auxiliaire être). c) lu (COD « les contes » placé après). d) lus (COD « qu'' », mis pour « les contes », placé avant) ; marqué (COD « son enfance » placé après).

Exercice 5. des journaux locaux ; des bijoux précieux ; des boubous orange ; des chevaux blancs ; des festivals animés.

Exercice 6. « Les premières pluies de l''hivernage sont enfin arrivées à Tambacounda. Depuis des semaines, les paysans les attendaient avec impatience. Ce matin, ils se sont levés tôt et ont gagné leurs champs, où la terre, longtemps desséchée, s''est mise à respirer. Quelle joie de voir le ciel gris ! » Les erreurs : pluies, arrivées, attendaient, levés, ont, leurs, où, Quelle.', 'texte', 50, false, 30
from public.courses c where c.slug = 'bfem-francais'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Dictée et orthographe');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'La rédaction : récit, argumentation et lettre', '## Objectifs de la leçon

- Analyser un sujet de rédaction et en dégager les consignes.
- Construire un plan et rédiger introduction, développement et conclusion.
- Maîtriser trois types de sujets : narratif, argumentatif, lettre.
- Enrichir ses copies par des références littéraires africaines exactes.

## Étape 1 : analyser le sujet

Souligne les mots clés et réponds à quatre questions : quel type de texte ? (récit, argumentation, lettre) ; quel thème ? ; quelle consigne précise ? (personne, temps, destinataire) ; quelle situation d''énonciation ? (qui parle, à qui). Beaucoup de copies perdent des points parce qu''elles traitent un thème voisin du sujet.

## Étape 2 : chercher les idées et faire un plan

Au brouillon, note toutes les idées, puis classe-les. Un texte argumentatif compte en général deux ou trois paragraphes ; chaque paragraphe développe une idée appuyée par un argument et un exemple. Pour un récit, prévois les étapes du schéma narratif.

## Le sujet narratif

Le schéma narratif : situation initiale, élément perturbateur, péripéties, dénouement, situation finale. Choisis un système de temps et garde-le : imparfait et passé simple pour un récit au passé. Insère un court dialogue bien ponctué (guillemets ou tirets, verbes de parole variés : répondit, murmura, s''écria) et une description qui fait appel aux sens.

Pour s''inspirer : les Contes d''Amadou Koumba de Birago Diop (1947) montrent comment un récit court, vivant, avec des animaux comme Bouki-l''Hyène ou Leuk-le-Lièvre, peut porter une leçon de sagesse. L''Enfant noir de Camara Laye (1953) raconte une enfance en Guinée avec une grande attention aux détails du quotidien.

## Le sujet argumentatif

- Introduction : amener le sujet (une phrase générale), poser le problème (reformuler la question), annoncer le plan.
- Développement : un paragraphe par argument, avec un connecteur logique (d''abord, ensuite, de plus, en outre, cependant, en revanche, enfin, donc, ainsi), l''argument, puis un exemple précis.
- Conclusion : faire le bilan, puis ouvrir sur une question voisine.

Références utiles, à citer par le titre et le thème, sans inventer de citation :
- Mariama Bâ, Une si longue lettre (1979) : roman sous forme de lettre, où Ramatoulaye, devenue veuve, écrit à son amie Aïssatou ; il pose la question de la condition des femmes, de la polygamie et de l''instruction.
- Ousmane Sembène, Les Bouts de bois de Dieu (1960) : roman sur la grève des cheminots de la ligne Dakar-Niger à la fin des années 1940 ; il illustre la solidarité et le rôle des femmes dans la lutte.
- Aminata Sow Fall, La Grève des bàttu (1979) : les mendiants chassés de la ville décident de faire grève ; le roman interroge le pouvoir, la charité et la dignité.
- Léopold Sédar Senghor, Chants d''ombre (1945) : poèmes de la Négritude qui célèbrent l''Afrique et ses valeurs, comme le poème « Femme noire ».
- Cheikh Hamidou Kane, L''Aventure ambiguë (1961) : Samba Diallo, partagé entre l''école coranique et l''école occidentale, incarne la rencontre des cultures.

Exemple d''introduction pour le sujet « Faut-il obliger tous les enfants à aller à l''école ? » : Au Sénégal comme dans toute l''Afrique, l''école est souvent présentée comme la clé de l''avenir. Pourtant, de nombreux enfants n''y vont pas ou l''abandonnent tôt. Faut-il alors rendre la scolarité obligatoire pour tous ? Nous verrons d''abord ce que l''école apporte à l''enfant, puis ce qu''elle apporte à la société tout entière.

## La lettre

- Lieu et date en haut à droite : Thiès, le 12 mars.
- Formule d''appel adaptée : « Cher cousin, » (lettre familière) ; « Monsieur le Maire, » (lettre officielle).
- Corps de la lettre : nouvelles, demande ou conseil, organisé en paragraphes.
- Formule de politesse : « Je t''embrasse affectueusement » ; « Veuillez agréer, Monsieur le Maire, l''expression de mes salutations respectueuses. »
- Signature.

Respecte le registre : familier mais correct avec un ami, soutenu avec une autorité. Le vouvoiement ou le tutoiement doit rester le même du début à la fin.

## Étape 3 : rédiger et relire

Écris lisiblement, saute une ligne entre l''introduction, chaque paragraphe et la conclusion, et commence chaque paragraphe en retrait. Garde du temps pour relire l''orthographe : une bonne rédaction pleine de fautes perd des points.

## Points clés

- Le type de texte et la consigne commandent tout.
- Un paragraphe = une idée + un argument + un exemple.
- Des références littéraires exactes valent mieux que des citations inventées.

## Exercices pratiques

Exercice 1. Analyse ce sujet : « Raconte le jour où tu as aidé une personne en difficulté. Ton récit comportera un dialogue. » Indique le type de texte, la personne, le temps et la contrainte.

Exercice 2. Remets dans l''ordre les étapes de ce récit : a) Fatou retrouve son frère au marché ; b) un matin de Tabaski, la famille se prépare ; c) le petit frère disparaît dans la foule ; d) toute la famille célèbre la fête, soulagée ; e) Fatou le cherche partout.

Exercice 3. Relie ces deux idées avec un connecteur adapté : « La lecture enrichit le vocabulaire. » / « Elle développe l''imagination. »

Exercice 4. Rédige un paragraphe argumentatif (idée, argument, exemple) sur : « L''instruction des filles est indispensable. » Tu peux t''appuyer sur Une si longue lettre.

Exercice 5. Corrige la présentation de cette lettre officielle : « Salut Monsieur le Maire, je veux un terrain de foot pour le quartier. Merci. Moussa. »

Exercice 6. Rédige une conclusion pour le sujet « Faut-il obliger tous les enfants à aller à l''école ? ».

## Corrigé

Exercice 1. Texte narratif, à la première personne (« tu as aidé » : c''est toi le narrateur), au passé (passé simple ou passé composé et imparfait). Contrainte : insérer un dialogue correctement ponctué.

Exercice 2. b, c, e, a, d : situation initiale, élément perturbateur, péripéties, dénouement, situation finale.

Exercice 3. « La lecture enrichit le vocabulaire ; de plus, elle développe l''imagination. » (On accepte aussi « en outre », « par ailleurs ».)

Exercice 4. Exemple : « D''abord, l''instruction permet aux filles de devenir autonomes. En effet, une femme instruite peut exercer un métier, gérer ses revenus et faire ses propres choix. Dans Une si longue lettre de Mariama Bâ, Ramatoulaye, institutrice, puise dans son instruction la force de réfléchir à sa situation et de défendre ses convictions. L''école est donc un outil de liberté. »

Exercice 5. « Thiès, le 5 avril. Monsieur le Maire, Je me permets de vous écrire au nom des jeunes du quartier… [exposé de la demande et des raisons]. Dans l''espoir d''une suite favorable, je vous prie d''agréer, Monsieur le Maire, l''expression de mes salutations respectueuses. Moussa Ndiaye. » Il faut lieu et date, formule d''appel respectueuse, demande argumentée, formule de politesse et signature complète.

Exercice 6. Exemple : « En définitive, l''école apporte à l''enfant des savoirs et une ouverture d''esprit, et à la société des citoyens capables de la faire progresser. Rendre la scolarité obligatoire semble donc juste, à condition que l''État offre des écoles proches et de qualité. Reste à savoir comment convaincre les familles qui ont besoin du travail de leurs enfants. »', 'texte', 60, false, 40
from public.courses c where c.slug = 'bfem-francais'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'La rédaction : récit, argumentation et lettre');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Sujet type d''examen : sujet d''entraînement corrigé', '## Présentation

Voici un sujet d''entraînement complet, conçu pour ce cours : ce n''est pas un sujet officiel du BFEM. Il comprend une dictée suivie de questions, puis une rédaction au choix. Fais-toi dicter le texte par un proche, réponds aux questions, puis traite un sujet de rédaction en temps limité, avant de consulter le corrigé. Une répartition indicative des points sur 20 est proposée pour t''auto-évaluer ; elle n''est pas le barème officiel.

## Le texte de la dictée

Texte écrit pour ce cours :

Chaque samedi, Ousmane et sa sœur Khady se rendaient à la petite bibliothèque du quartier de la Médina. Elle avait été ouverte par une association de jeunes, qui avaient rassemblé des livres offerts par les habitants. Les étagères, construites en bois de récupération, n''étaient pas très solides, mais elles débordaient de romans, de contes et de dictionnaires. Khady préférait les contes de Birago Diop, qu''elle avait lus plusieurs fois ; Ousmane, lui, dévorait les récits d''aventure. La bibliothécaire, une étudiante passionnée, leur conseillait toujours de nouveaux titres. « Un livre ouvert est une fenêtre sur le monde », leur répétait-elle. Ces après-midi studieux leur ont donné le goût de la lecture, et ils ne l''ont jamais perdu.

## Exercices pratiques

Exercice 1 : compréhension (4 points). a) Qui a créé la bibliothèque et comment a-t-elle été fournie en livres ? b) Quels genres de livres préfèrent Khady et Ousmane ? c) Explique la phrase de la bibliothécaire. d) Quel effet ces visites ont-elles eu sur les deux enfants ? Justifie.

Exercice 2 : vocabulaire (2 points). a) Donne un synonyme de « dévorait » et dis s''il est employé au sens propre ou au sens figuré. b) Donne deux mots de la famille de « livre ».

Exercice 3 : grammaire (3 points). a) Donne la nature et la fonction de « qu''elle avait lus plusieurs fois ». b) Justifie l''accord de « lus ». c) Mets à la voix active : « Elle avait été ouverte par une association de jeunes. »

Exercice 4 : conjugaison (2 points). a) Relève un verbe au plus-que-parfait et un au passé composé. b) Récris « La bibliothécaire leur conseillait toujours de nouveaux titres » au passé simple puis au futur simple.

Exercice 5 : dictée (4 points, indicatif). Fais-toi dicter le texte ci-dessus.

Exercice 6 : rédaction (5 points dans cette répartition d''entraînement ; traite un seul sujet).
- Sujet 1 (narratif) : Raconte une visite qui t''a donné le goût d''une activité (lecture, sport, musique, science). Ton récit comportera un dialogue.
- Sujet 2 (argumentatif) : Certains pensent que les jeunes Sénégalais ne lisent plus. Qu''en penses-tu ? Appuie-toi sur des exemples précis, notamment tirés de tes lectures.
- Sujet 3 (lettre) : Écris au maire de ta commune pour demander l''ouverture d''une bibliothèque de quartier. Tu présenteras au moins trois arguments.

## Corrigé

Exercice 1. a) La bibliothèque a été créée par une association de jeunes ; les livres ont été offerts par les habitants du quartier. b) Khady préfère les contes, en particulier ceux de Birago Diop ; Ousmane préfère les récits d''aventure. c) La bibliothécaire veut dire que la lecture permet de découvrir d''autres lieux, d''autres personnes et d''autres idées sans se déplacer : le livre « ouvre » sur le monde comme une fenêtre (c''est une métaphore). d) Ces visites leur ont donné un goût durable pour la lecture : « ils ne l''ont jamais perdu ».

Exercice 2. a) « Dévorait » signifie ici « lisait avec avidité » ; il est employé au sens figuré (au sens propre, dévorer, c''est manger avec voracité). b) Livret, livresque (on rattache aussi librairie et libraire, de même origine latine).

Exercice 3. a) Proposition subordonnée relative introduite par le pronom relatif « qu'' » ; elle complète l''antécédent « les contes de Birago Diop ». b) « lus » est le participe passé de « lire », employé avec l''auxiliaire avoir ; il s''accorde avec le COD « qu'' », mis pour « les contes », masculin pluriel, placé avant le verbe. c) « Une association de jeunes l''avait ouverte. »

Exercice 4. a) Plus-que-parfait : « avait été ouverte », « avaient rassemblé », « avait lus ». Passé composé : « ont donné », « ont perdu ». b) Passé simple : « La bibliothécaire leur conseilla toujours de nouveaux titres. » Futur : « La bibliothécaire leur conseillera toujours de nouveaux titres. »

Exercice 5. Points de vigilance : « se rendaient » (sujet pluriel Ousmane et Khady) ; « Médina » avec majuscule ; « avait été ouverte » (accord avec « elle », la bibliothèque) ; « avaient rassemblé » (le sujet « qui » reprend « jeunes », pluriel) ; « offerts » (accord avec « livres ») ; « construites » (avec « étagères ») ; « n''étaient » ; « débordaient » ; « lus » ; « leur conseillait » (leur pronom, invariable) ; « répétait-elle » ; « Ces après-midi studieux » ; « l''ont » ; « perdu » (COD « l'' », le goût, masculin singulier).

Exercice 6. Pistes de correction.
- Sujet 1 : situation initiale (qui, où, quand) ; élément déclencheur (l''invitation ou la découverte) ; déroulement de la visite avec un dialogue ponctué ; dénouement (le déclic) ; situation finale (ce qui a changé dans ta vie). Temps : imparfait et passé simple, ou passé composé, sans mélange.
- Sujet 2 : introduction qui pose la question ; premier paragraphe : les raisons de penser que les jeunes lisent moins (écrans, coût des livres, peu de bibliothèques) ; second paragraphe : les jeunes lisent autrement et beaucoup lisent encore (clubs de lecture, œuvres au programme comme L''Aventure ambiguë ou Une si longue lettre, lecture sur téléphone) ; conclusion nuancée avec des propositions.
- Sujet 3 : lieu et date, « Monsieur le Maire, », présentation de l''auteur, trois arguments (réussite scolaire, occupation saine des jeunes, accès à la culture pour tous), formule de politesse soutenue, signature.

## Conseils de notation

En dictée, chaque erreur est généralement décomptée, les fautes d''accord souvent plus lourdement que les fautes d''usage ; renseigne-toi sur les règles en vigueur. Aux questions, une réponse juste mais non rédigée ou non justifiée n''obtient qu''une partie des points. En rédaction, les correcteurs regardent le respect du sujet, l''organisation (plan, paragraphes, connecteurs), la richesse des idées et des exemples, puis la qualité de la langue et la présentation. Si ton total d''entraînement est inférieur à 10 sur 20, reprends en priorité la fiche correspondant à l''exercice le plus faible.', 'texte', 60, false, 50
from public.courses c where c.slug = 'bfem-francais'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Sujet type d''examen : sujet d''entraînement corrigé');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : révision intensive de veille d''examen', '## Fiche du cours vidéo

- Durée : 1h30.
- Thème : séance de révision intensive de veille d''examen en français.
- Objectifs : revoir les notions de langue les plus évaluées, s''entraîner à la dictée et aux questions, préparer la rédaction, gérer son temps, se tester.
- Matériel : tableau ou diaporama, cahier de fiches, feuille de brouillon, stylo.
- Prérequis : leçons 1 à 5 de ce cours.

## Déroulé minuté

## 00:00 – 05:00 · Accueil et objectifs

« Bonsoir à toutes et à tous. L''épreuve de français approche. Ce soir, pas de nouvelle leçon : nous allons rassembler l''essentiel. Nous travaillerons la langue, la dictée, la compréhension et la rédaction, et je vous donnerai mes derniers conseils pour gérer votre temps. Préparez une feuille : vous allez écrire. »

Visuel : le plan de la séance : langue, dictée, quiz, compréhension, rédaction, gestion du temps, évaluation finale.

## 05:00 – 20:00 · Rappels clés de grammaire et de conjugaison

« Premier réflexe : distinguer la nature et la fonction. La nature, c''est la carte d''identité du mot ; la fonction, c''est son métier dans la phrase. Dans “Mon grand-père raconte des contes”, “contes” est un nom, c''est sa nature, et il est complément d''objet direct, c''est sa fonction. »

« Deuxième réflexe : compter les verbes conjugués pour trouver les propositions. Une proposition introduite par qui, que, dont, où et qui complète un nom est une relative. Une proposition introduite par quand, parce que, pour que, bien que est une circonstancielle : il faut alors préciser le rapport, temps, cause, but, concession. »

« Troisième réflexe en conjugaison : dans un récit au passé, l''imparfait pour le décor, le passé simple pour les actions principales. Révisez les passés simples difficiles : il vint, il prit, il fit, il fut, ils eurent, ils virent. Et le subjonctif après “il faut que” : il faut que je fasse, que tu ailles, qu''il soit, qu''ils aient. »

« Quatrième réflexe, le vocabulaire. On vous demandera souvent un synonyme, un antonyme, un mot de la même famille ou le sens d''un mot dans le texte. Pour le sens, lisez toujours la phrase entière : “prise” ne veut pas dire la même chose dans “une prise électrique” et dans “la prise du jour” d''un pêcheur. Pour les familles de mots, cherchez le radical : terre, terrain, terrestre, enterrer, atterrir. »

« Cinquième réflexe, les figures de style. Comparaison : un rapprochement avec un outil, comme ou tel : “fort comme un baobab”. Métaphore : le même rapprochement sans outil : “cet homme est un baobab”. Personnification : on prête des qualités humaines à une chose ou à un animal : “le fleuve chante”. Hyperbole : l''exagération : “je te l''ai dit mille fois”. Anaphore : la répétition d''un mot en début de phrase ou de vers. Ne vous contentez jamais de nommer la figure : dites aussi l''effet qu''elle produit, par exemple qu''elle met en valeur la force d''un personnage. »

Visuel : un tableau à deux colonnes, figure de style et exemple, avec la colonne « effet produit » à compléter oralement.

Question à poser : « Dans “Je pense qu''il viendra”, quelle est la nature de “qu''il viendra” ? » Réponse : une proposition subordonnée complétive, COD de « pense ».

## 20:00 – 35:00 · Dictée commentée

« Prenez votre feuille. Je vais lire un court texte écrit pour cette séance. Première lecture, sans écrire. »

Texte dicté : « Les lutteurs que la foule attendait sont enfin entrés dans l''arène. Leurs supporters, venus de Pikine et de Guédiawaye, chantaient et battaient des mains. Quelle ambiance ! Chacun savait que le combat serait rude et qu''il ne fallait rien manquer. »

« Correction. “que la foule attendait” : qui est-ce qui attendait ? la foule, singulier. “sont entrés” : auxiliaire être, accord avec “les lutteurs”, masculin pluriel. “Leurs supporters” : déterminant devant un nom pluriel, donc s. “venus” : participe sans auxiliaire, accord avec “supporters”. “chantaient et battaient” : sujet pluriel. “Quelle ambiance” : déterminant exclamatif accordé avec “ambiance”, féminin. “serait” : conditionnel présent, le futur dans le passé. Comptez vos erreurs et notez-les dans votre carnet. »

## 35:00 – 45:00 · Les homophones en un coup d''œil

« La méthode est toujours la même : remplacer. “a” peut devenir “avait”, “à” non. “et” devient “et puis”, “est” devient “était”. “son” devient “mon”, “sont” devient “étaient”. “ces” devient “ces … -là”, “ses” devient “les siens”. “ou” devient “ou bien”, “où” indique le lieu. Et n''oubliez pas le “n''” après “on” devant une voyelle : on n''a pas fini. »

Visuel : un tableau des homophones avec le test de remplacement.

## 45:00 – 53:00 · Quiz interactif (pause active)

« Mettez la vidéo en pause et répondez. »

- Question 1 : « Les mangues qu''elle a (acheter) » : écris le participe.
- Question 2 : complète : « Il … levé tôt » (c''est / s''est).
- Question 3 : quelle figure de style dans « Ce garçon est un lion » ?
- Question 4 : mets au passé simple, troisième personne du pluriel : venir.
- Question 5 : mets à la voix passive : « Le maire inaugure l''école. »

« Réponses : 1) achetées. 2) s''est. 3) une métaphore. 4) ils vinrent. 5) L''école est inaugurée par le maire. »

## 53:00 – 1:05:00 · Compréhension : méthode et correction

« Lisez ce court passage écrit pour la séance : “Le soleil tapait fort sur la route de Louga. Modou marchait depuis l''aube, son sac sur l''épaule. Il savait qu''au bout du chemin l''attendait l''école où il apprendrait à lire. Rien ne pouvait l''arrêter.” Trois questions : quel est le sentiment dominant de Modou ? Justifiez. Quelle est la fonction de “depuis l''aube” ? Quelle est la nature de “où il apprendrait à lire” ? »

« Correction. Modou est déterminé : il marche depuis longtemps, sous le soleil, et “Rien ne pouvait l''arrêter”. Voilà une réponse complète et justifiée. “depuis l''aube” est un complément circonstanciel de temps. “où il apprendrait à lire” est une proposition subordonnée relative, complément de l''antécédent “l''école”. Remarquez le conditionnel “apprendrait” : c''est un futur dans le passé. »

## 1:05:00 – 1:15:00 · Rédaction : derniers réglages

« Le jour J, choisissez le sujet que vous comprenez le mieux, pas celui qui paraît le plus original. Prenez le temps du brouillon : analyse du sujet, idées, plan. Ne rédigez pas tout au brouillon, vous manqueriez de temps : rédigez au brouillon l''introduction et la conclusion seulement. »

« Pour un sujet argumentatif, chaque paragraphe : connecteur, idée, argument, exemple. Pour les exemples, pensez à vos lectures : Une si longue lettre de Mariama Bâ sur la condition des femmes et l''instruction, Les Bouts de bois de Dieu d''Ousmane Sembène sur la solidarité, La Grève des bàttu d''Aminata Sow Fall sur la dignité des plus pauvres, L''Aventure ambiguë de Cheikh Hamidou Kane sur la rencontre des cultures. Citez le titre, l''auteur et le thème ; n''inventez jamais une citation. »

Visuel : un modèle d''introduction pour le sujet « Les jeunes doivent-ils encore lire des livres ? ». « Écoutez : “À l''heure des téléphones et des réseaux sociaux, on entend souvent dire que le livre appartient au passé. Pourtant, nos grands écrivains, de Birago Diop à Mariama Bâ, ont transmis par l''écrit la mémoire et les valeurs de nos sociétés. Les jeunes doivent-ils encore lire des livres ? Nous verrons d''abord ce que la lecture leur apporte, puis comment elle peut trouver sa place dans leur vie d''aujourd''hui.” Vous reconnaissez les trois temps : amener, poser, annoncer. »

« Pour un récit : un système de temps unique, un dialogue bien ponctué, une fin claire. Pour une lettre : lieu et date, formule d''appel, paragraphes, formule de politesse, signature. »

## 1:15:00 – 1:20:00 · Gestion du temps

« Lisez le sujet en entier au début. Répartissez votre temps entre les questions, la rédaction et la relecture ; gardez au moins dix minutes pour relire l''orthographe. Écrivez lisiblement, sautez des lignes entre les parties. Ce soir : préparez vos stylos, une montre, votre convocation, puis reposez-vous. »

## 1:20:00 – 1:28:00 · Évaluation finale (5 questions)

- Question 1 : donne la nature et la fonction de « parce qu''il pleuvait » dans « Nous sommes restés à la maison parce qu''il pleuvait ».
- Question 2 : mets au discours indirect : Il dit : « Je partirai demain. »
- Question 3 : corrige : « Les filles se sont lavées les mains. »
- Question 4 : quel connecteur exprime l''opposition : donc, cependant, ensuite ?
- Question 5 : cite un roman de Mariama Bâ et son thème principal.

« Réponses. 1) Proposition subordonnée circonstancielle de cause, complément circonstanciel de cause de “sommes restés”. 2) Il dit qu''il partira demain : avec un verbe introducteur au présent, le temps ne change pas ; seul le pronom change. Si l''on rapportait ces paroles un autre jour, “demain” deviendrait “le lendemain”. 3) Les filles se sont lavé les mains : le COD “les mains” est placé après le verbe, pas d''accord. 4) Cependant. 5) Une si longue lettre (1979), qui traite de la condition des femmes, de la polygamie et de l''amitié. »

## 1:28:00 – 1:30:00 · Synthèse et encouragements

« Retenez : comprendre, justifier, relire. Vous connaissez les règles ; le jour de l''épreuve, appliquez-les avec calme. Relisez une dernière fois votre carnet d''erreurs, puis dormez bien. Bon courage pour le BFEM. »', 'video', 90, false, 60
from public.courses c where c.slug = 'bfem-francais'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : révision intensive de veille d''examen');

-- Cours : Anglais : réussir l'épreuve du BFEM
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'bfem-anglais', (select id from public.levels where name = '3e'), null, 'Anglais', 'Anglais : réussir l''épreuve du BFEM', 'Ce cours de préparation à l''examen révise l''anglais du collège (6e à 3e) en vue de l''épreuve du BFEM : compréhension écrite (reading comprehension), grammaire (temps, modaux, voix passive, discours rapporté, conditionnels, comparatifs), vocabulaire et expression écrite (lettre, court essai). Les explications sont en français, les exemples et exercices en anglais, avec des situations sénégalaises. Il comprend un sujet d''entraînement corrigé et une séance vidéo de veille d''examen. Prérequis : bases de l''anglais du collège.', true, 103
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Comprendre l''épreuve et méthode de travail', '## Objectifs de la leçon

- Savoir quelles compétences l''épreuve d''anglais évalue et sous quelle forme.
- Adopter une méthode pour chaque type d''exercice.
- Repérer les erreurs les plus fréquentes des élèves francophones.
- Planifier ses révisions sur 8 semaines.

## Comment se présente l''épreuve

L''épreuve d''anglais du BFEM s''appuie généralement sur un texte : on vérifie d''abord que tu l''as compris (reading comprehension), puis on évalue ta maîtrise de la langue (grammaire et vocabulaire), et enfin ta capacité à écrire quelques lignes ou un court texte en anglais (writing). La durée, le coefficient et le barème sont fixés par les textes officiels en vigueur : demande confirmation à ton professeur et ne te fie pas aux informations qui circulent sans source.

## Les types d''exercices

- True or false : dire si une phrase est vraie ou fausse et la justifier par une citation du texte (« Justify your answer by quoting the text »).
- Answer the questions : répondre par une phrase complète en anglais.
- Find in the text words or expressions meaning… : retrouver un synonyme ou une définition.
- What do the words refer to? : dire à qui ou à quoi renvoie un pronom (it, they, him, its).
- Exercices de grammaire : mettre le verbe au bon temps, transformer à la voix passive, au discours indirect, compléter avec un modal, un comparatif, une proposition conditionnelle.
- Writing : une lettre ou un e-mail à un ami, un court paragraphe ou essai sur un thème donné.

## Méthode

- Lis d''abord les questions, puis le texte : tu sauras quoi chercher.
- Lis le texte deux fois : une fois pour le sens général (qui, où, quand, quoi), une fois pour les détails.
- Ne traduis pas mot à mot : devine le sens d''un mot inconnu grâce au contexte.
- Pour True or false, recopie la phrase exacte du texte entre guillemets.
- Réponds avec des phrases complètes : Question « Where does Awa live? » ; réponse : « She lives in Ziguinchor. »
- En grammaire, identifie d''abord l''indice : un mot comme « yesterday » appelle le prétérit, « since » appelle le present perfect.
- En expression écrite, fais un plan, utilise des phrases simples et correctes plutôt que des phrases longues pleines d''erreurs.

## Les erreurs fréquentes

- Oublier le -s de la troisième personne au présent : she works, he goes.
- Écrire « I am agree » au lieu de « I agree ».
- Employer « did » avec un verbe au prétérit : « Did you went? » au lieu de « Did you go? ».
- Utiliser le present perfect avec une date passée : « I have seen him yesterday » au lieu de « I saw him yesterday ».
- Confondre since (point de départ : since 2020) et for (durée : for three years).
- Mettre un -s à information, advice, furniture, qui sont indénombrables.
- Écrire « people is » au lieu de « people are ».
- Tomber dans les faux amis : actually (en fait), library (bibliothèque), sensible (raisonnable), to assist (aider), eventually (finalement).

## Plan de révision sur 8 semaines

- Semaine 1 : présent simple et présent progressif ; vocabulaire de la famille et de l''école.
- Semaine 2 : prétérit, past continuous, verbes irréguliers (une liste de vingt verbes par jour).
- Semaine 3 : present perfect, past perfect, futur ; textes courts de compréhension.
- Semaine 4 : modaux et voix passive.
- Semaine 5 : discours rapporté, conditionnels, comparatifs et superlatifs.
- Semaine 6 : vocabulaire thématique (environnement, santé, métiers, fêtes) et mots de liaison ; une lettre.
- Semaine 7 : sujet complet en temps limité et correction.
- Semaine 8 : second sujet complet ; révision des fiches et du carnet d''erreurs.

Conseil : écoute ou lis un peu d''anglais chaque jour (chansons, émissions, articles simples) et répète les verbes irréguliers à voix haute.

## Points clés

- Comprendre le texte avant de répondre.
- Toujours justifier et répondre par des phrases complètes.
- Chercher l''indice de temps en grammaire.

## Exercices pratiques

Exercise 1. Correct the mistakes: a) She speak English very well. b) I am agree with you. c) Did he went to Dakar? d) The people is happy.

Exercise 2. Since or for? a) I have lived in Thiès … 2019. b) She has studied English … four years. c) We have been friends … we were children.

Exercise 3. Answer with a complete sentence: « What is the capital of Senegal? »

Exercise 4. Give the French meaning of these false friends: actually, library, eventually.

Exercise 5. Which tense does each time marker suggest? a) yesterday ; b) since Monday ; c) right now ; d) every day ; e) tomorrow.

Exercise 6. Read this sentence: « Binta gave her brother a book because he likes reading. » What do « her » and « he » refer to?

## Corrigé

Exercise 1. a) She speaks English very well. b) I agree with you. c) Did he go to Dakar? d) The people are happy.

Exercise 2. a) since 2019 (point de départ). b) for four years (durée). c) since we were children (point de départ exprimé par une proposition).

Exercise 3. Dakar is the capital of Senegal.

Exercise 4. actually : en fait, en réalité ; library : bibliothèque ; eventually : finalement, à la fin.

Exercise 5. a) prétérit (simple past). b) present perfect. c) présent progressif (present continuous). d) présent simple. e) futur (will ou be going to).

Exercise 6. « her » renvoie à Binta ; « he » renvoie au frère de Binta (her brother).', 'texte', 45, true, 10
from public.courses c where c.slug = 'bfem-anglais'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Comprendre l''épreuve et méthode de travail');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Reading comprehension : comprendre un texte en anglais', '## Objectifs de la leçon

- Appliquer une méthode de lecture efficace.
- Traiter les principaux types de questions de compréhension.
- S''entraîner sur un texte écrit pour ce cours.

## Méthode de lecture en quatre temps

- Observer : le titre, la longueur, les noms propres, les nombres. Ils donnent le thème.
- Lire pour le sens général (skimming) : qui ? où ? quand ? quoi ? pourquoi ?
- Lire pour les détails (scanning) en gardant les questions sous les yeux.
- Répondre en anglais, avec des phrases complètes, en reprenant les mots de la question.

Pour deviner un mot inconnu, observe sa place (nom, verbe, adjectif), cherche un mot de la même famille et regarde la phrase entière. Par exemple, dans « The headmaster was so impressed that he gave them a prize », on comprend que « impressed » est positif, puisqu''il y a une récompense.

## Le texte d''étude

Text written for this course : Awa''s River Club

Awa Diallo lives in Ziguinchor, a town in the south of Senegal. She is fifteen and she is in her last year of middle school. Every morning, she gets up at six, helps her mother prepare breakfast and walks to school with her friend Binta.

Last year, Awa''s school organised a competition to clean the banks of the Casamance River. Awa''s team collected more than two hundred plastic bottles in one afternoon. The headmaster was so impressed that he gave them a prize: a set of books and a trip to the island of Carabane. « I had never travelled by boat before, » Awa remembers. « It was the most beautiful day of my life. »

Since then, Awa has created an environment club at her school. The members meet every Wednesday afternoon. They plant mango trees, sort rubbish and explain to younger pupils why plastic is dangerous for the river and the fish. Awa wants to become an engineer so that she can help her town to manage its waste better.

## Les types de questions et comment y répondre

True or false : on écrit True ou False, puis on recopie la phrase du texte qui le prouve. Exemple : « Awa lives in the north of Senegal. » False : « Awa Diallo lives in Ziguinchor, a town in the south of Senegal. »

Wh- questions : on repère le mot interrogatif (who, what, where, when, why, how many) et on répond par une phrase complète. « How many bottles did the team collect? » They collected more than two hundred plastic bottles.

Find in the text : on cherche un mot de même nature que la définition. « garbage, waste » donne rubbish.

Reference : « What does "its" refer to in "its waste"? » It refers to Awa''s town (Ziguinchor).

Choosing a title : on choisit celui qui résume tout le texte, pas un seul détail.

## Points clés

- Les questions suivent en général l''ordre du texte.
- Une justification est une citation exacte, entre guillemets.
- Ne recopie pas des paragraphes entiers : sélectionne la phrase utile.

## Exercices pratiques

Exercise 1. True or false? Justify with a quotation. a) Awa goes to school alone. b) Awa''s team won a prize. c) Awa had already travelled by boat before the trip. d) The club members meet every Monday.

Exercise 2. Answer the questions with complete sentences. a) What does Awa do every morning before school? b) What was the prize? c) What do the club members do? d) Why does Awa want to become an engineer?

Exercise 3. Find in the text words or expressions meaning: a) the sides of a river ; b) a reward for winners ; c) very positively surprised ; d) separate into groups.

Exercise 4. What do these words refer to? a) « them » in « he gave them a prize » ; b) « They » in « They plant mango trees » ; c) « it » in « It was the most beautiful day of my life ».

Exercise 5. Choose the best title and explain: a) A Trip to Carabane ; b) A Young Girl Who Protects Her River ; c) Breakfast in Ziguinchor.

Exercise 6. Find in the text: a) a verb in the simple past ; b) a verb in the past perfect ; c) a verb in the present perfect ; d) a superlative.

Exercise 7. In three or four sentences, say what you could do in your town to protect the environment.

## Corrigé

Exercise 1. a) False : « walks to school with her friend Binta ». b) True : « he gave them a prize ». c) False : « I had never travelled by boat before ». d) False : « The members meet every Wednesday afternoon ».

Exercise 2. a) She gets up at six, helps her mother prepare breakfast and walks to school with Binta. b) The prize was a set of books and a trip to the island of Carabane. c) They plant mango trees, sort rubbish and explain to younger pupils why plastic is dangerous for the river and the fish. d) She wants to become an engineer so that she can help her town to manage its waste better.

Exercise 3. a) banks ; b) a prize ; c) impressed ; d) sort.

Exercise 4. a) « them » refers to Awa''s team. b) « They » refers to the members of the club. c) « it » refers to the day of the trip to Carabane.

Exercise 5. b) A Young Girl Who Protects Her River : ce titre résume tout le texte (le concours, le club, son projet), alors que a) et c) ne parlent que d''un détail.

Exercise 6. a) organised, collected, gave, was ; b) had travelled ; c) has created ; d) the most beautiful.

Exercise 7. Example: In my town, I could organise a cleaning day with my friends. We could collect plastic bags and bottles in the streets. I could also plant trees in my school yard. Finally, I could explain to my family why we should not burn rubbish.', 'texte', 50, false, 20
from public.courses c where c.slug = 'bfem-anglais'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Reading comprehension : comprendre un texte en anglais');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Grammar : temps, modaux, passif, discours rapporté, conditionnels, comparatifs', '## Objectifs de la leçon

- Réviser les temps essentiels et leurs marqueurs.
- Employer les modaux, la voix passive et le discours rapporté.
- Construire les phrases conditionnelles, les comparatifs et les superlatifs.

## Fiche 1 : les temps

- Present simple : habitudes, vérités générales. She goes to school every day. Marqueurs : every day, usually, often.
- Present continuous : action en cours. Look! It is raining. Marqueurs : now, at the moment, look!
- Simple past : action terminée à un moment précis du passé. We went to Saint-Louis last week. Marqueurs : yesterday, last…, ago, in 2010.
- Past continuous : action en cours dans le passé, souvent interrompue. I was reading when the electricity went off.
- Present perfect (have + participe passé) : lien entre passé et présent, expérience, durée jusqu''à maintenant. I have lived in Thiès since 2019. Have you ever eaten thiéboudienne?
- Past perfect (had + participe passé) : action antérieure à une autre action passée. When we arrived, the bus had left.
- Futur : will pour une décision ou une prédiction (It will rain tomorrow) ; be going to pour une intention ou une évidence (I am going to study medicine).

Verbes irréguliers à connaître : go, went, gone ; see, saw, seen ; take, took, taken ; write, wrote, written ; buy, bought, bought ; teach, taught, taught ; begin, began, begun.

## Fiche 2 : les modaux

Un modal est suivi de la base verbale sans « to » et ne prend jamais de -s.
- can, could : capacité, permission. She can swim.
- must : obligation ressentie par celui qui parle ; mustn''t : interdiction. You mustn''t smoke here.
- have to : obligation extérieure ; don''t have to : absence d''obligation. We have to wear a uniform. You don''t have to come.
- should : conseil. You should drink more water.
- may, might : possibilité. It may rain this afternoon.

## Fiche 3 : la voix passive

Forme : be (au temps de la phrase active) + participe passé. Le COD de la phrase active devient sujet ; le sujet actif devient complément introduit par « by » (souvent supprimé s''il n''apporte rien).
- Farmers grow groundnuts in Kaolack. → Groundnuts are grown in Kaolack (by farmers).
- They built this bridge in 2010. → This bridge was built in 2010.
- They will open a new school. → A new school will be opened.
- Someone has stolen my bike. → My bike has been stolen.

## Fiche 4 : le discours rapporté

Quand le verbe introducteur est au passé (said, told, asked), on recule les temps : present → past, will → would, present perfect et past → past perfect, can → could. On change les pronoms et les repères de temps : today → that day, tomorrow → the next day, yesterday → the day before, here → there.
- She said, « I am tired. » → She said (that) she was tired.
- He said, « I will come tomorrow. » → He said he would come the next day.
- Questions : « Where do you live? » → She asked me where I lived. « Have you finished? » → He asked me if I had finished. L''ordre redevient sujet + verbe et l''auxiliaire do disparaît.
- Ordres : « Close your books. » → The teacher told us to close our books. « Don''t talk! » → He told us not to talk.

## Fiche 5 : les conditionnels

- Type 0 (vérité générale) : If you heat water to 100 °C, it boils.
- Type 1 (possible) : If it rains, we will stay at home. Jamais « will » après « if ».
- Type 2 (imaginaire, présent) : If I were rich, I would build a school in my village.
- Type 3 (irréel du passé) : If she had studied, she would have passed the exam.

## Fiche 6 : comparatifs et superlatifs

- Adjectifs courts : tall, taller, the tallest ; big, bigger, the biggest (doublement de la consonne) ; easy, easier, the easiest.
- Adjectifs longs : more interesting, the most interesting.
- Irréguliers : good, better, the best ; bad, worse, the worst ; far, farther ou further, the farthest ou the furthest.
- Égalité : as… as. Today is as hot as yesterday. Infériorité : not as… as, less… than.
- Exemple : Dakar is bigger than Saint-Louis. Kilimanjaro is the highest mountain in Africa.

## Points clés

- Repérer le marqueur de temps avant de conjuguer.
- Modal + base verbale, sans to et sans -s.
- Passive : be au bon temps + participe passé.
- Discours rapporté : reculer les temps après un verbe au passé.

## Exercices pratiques

Exercise 1. Put the verbs in the correct tense. a) Look! The children (play) football. b) My father (work) in Thiès since 2015. c) When I arrived, the film (already / start). d) Yesterday we (go) to Sandaga market. e) While she (cook), the phone rang. f) Next year I (be) in high school.

Exercise 2. Complete with must, mustn''t, have to, don''t have to, should or might. a) You … smoke in a hospital. b) At my school, we … wear a uniform: it''s compulsory. c) You look tired; you … go to bed early. d) Take an umbrella: it … rain. e) Tomorrow is Sunday, so I … get up early.

Exercise 3. Turn into the passive. a) Ousmane Sembène wrote this novel. b) They will build a new hospital in Kolda. c) Farmers grow millet in this region. d) Someone has repaired the road.

Exercise 4. Report these sentences. a) Fatou said, « I am happy. » b) Moussa said, « I will visit Gorée tomorrow. » c) The teacher asked me, « Where do you live? » d) She told her brother, « Close the door. » e) He asked me, « Have you finished your homework? »

Exercise 5. Put the verbs in the correct form. a) If it (rain) tomorrow, we will stay at home. b) If I (be) the President, I would build more schools. c) If she had studied harder, she (pass) her exam. d) If you mix blue and yellow, you (get) green.

Exercise 6. Complete with the comparative or superlative. a) My brother is (tall) than me. b) This is (interesting) book I have ever read. c) Moussa''s results are (good) than mine. d) It was (bad) day of my life. e) Today is not as (hot) as yesterday.

Exercise 7. Correct the mistakes. a) She don''t like rice. b) I have seen him yesterday. c) He is more taller than his sister. d) If I will see him, I will tell him. e) You must to work hard.

## Corrigé

Exercise 1. a) are playing. b) has worked ou has been working. c) had already started. d) went. e) was cooking. f) will be.

Exercise 2. a) mustn''t. b) have to. c) should. d) might. e) don''t have to.

Exercise 3. a) This novel was written by Ousmane Sembène. b) A new hospital will be built in Kolda. c) Millet is grown in this region (by farmers). d) The road has been repaired.

Exercise 4. a) Fatou said (that) she was happy. b) Moussa said (that) he would visit Gorée the next day. c) The teacher asked me where I lived. d) She told her brother to close the door. e) He asked me if I had finished my homework.

Exercise 5. a) rains. b) were (« was » est fréquent à l''oral, mais « were » est la forme attendue à l''écrit). c) would have passed. d) get.

Exercise 6. a) taller. b) the most interesting. c) better. d) the worst. e) hot.

Exercise 7. a) She doesn''t like rice. b) I saw him yesterday. c) He is taller than his sister. d) If I see him, I will tell him. e) You must work hard.', 'texte', 60, false, 30
from public.courses c where c.slug = 'bfem-anglais'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Grammar : temps, modaux, passif, discours rapporté, conditionnels, comparatifs');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Vocabulary and writing : la lettre et le court essai', '## Objectifs de la leçon

- Enrichir son vocabulaire sur les thèmes fréquents.
- Utiliser les mots de liaison pour organiser un texte.
- Rédiger une lettre (ou un e-mail) et un court essai en anglais.

## Fiche 1 : vocabulaire thématique

- School : a pupil, a headmaster, a timetable, homework, to pass / to fail an exam, a subject, a classroom.
- Family and daily life : parents, relatives, a cousin, to get up, to have breakfast, to do the housework.
- Environment : pollution, rubbish (waste), to recycle, to plant trees, drought, the rainy season, deforestation.
- Health : a disease, malaria, a mosquito net, to wash one''s hands, a nurse, a health centre, to vaccinate.
- Jobs : a farmer, a fisherman, a tailor, a trader, an engineer, a doctor, a teacher, to earn money.
- Celebrations : Tabaski, Korité, Christmas, a wedding, to celebrate, to wear new clothes, to visit relatives.
- Technology : a mobile phone, the Internet, a computer, to send a message, social networks.

## Fiche 2 : formation des mots

- Préfixes négatifs : happy → unhappy ; possible → impossible ; honest → dishonest.
- Suffixes : -ful (helpful), -less (useless), -ment (development), -er / -or (teacher, visitor), -tion (pollution), -ly (quickly).

## Fiche 3 : mots de liaison

- Ajouter : and, also, moreover, in addition.
- Opposer : but, however, although.
- Cause et conséquence : because, as, so, therefore.
- Ordonner : first, then, next, finally.
- Conclure : to sum up, in conclusion.

## Fiche 4 : la lettre ou l''e-mail amical

- En haut à droite : ton adresse (ou ta ville) et la date : Thiès, 12th March.
- Salutation : Dear Kofi,
- Introduction : nouvelles, remerciements. Thank you for your letter. I hope you are fine.
- Corps : un paragraphe par idée (raconter, décrire, inviter, conseiller).
- Conclusion : Write back soon. I''m looking forward to hearing from you.
- Formule finale : Best wishes, / Love, (familier) puis ton prénom.
- Pour une lettre formelle : Dear Sir or Madam, … Yours faithfully, ou, si tu connais le nom : Dear Mr Diouf, … Yours sincerely, puis prénom et nom.

Model letter :

Kaolack, 5th May

Dear Kofi,

Thank you for your last letter. I''m fine and my family is fine too. I''m very busy because I''m preparing for my exam.

Last weekend, we celebrated Tabaski. In the morning, my father went to the mosque, then we shared the meal with our neighbours. In the afternoon, I visited my grandparents with my sisters. Everybody was wearing new clothes and the children were very happy.

Would you like to visit Senegal next summer? I could show you Kaolack and the Saloum delta.

Write back soon.

Best wishes,

Moussa

## Fiche 5 : le court essai

- Introduction : présenter le thème et la question en une ou deux phrases.
- Développement : deux paragraphes, chacun avec une idée, une explication et un exemple, reliés par des mots de liaison.
- Conclusion : ton avis et une phrase finale.

Model essay : « Should mobile phones be allowed at school? »

Nowadays, many pupils have a mobile phone. Some people think that phones should be allowed at school, but others disagree.

On the one hand, a phone can be useful. Pupils can look up information on the Internet, use a dictionary or call their parents in an emergency.

On the other hand, phones can be a problem. Some pupils play games or chat during lessons, so they don''t listen to the teacher. Moreover, phones can be stolen.

In conclusion, I think phones should be allowed at school only if they are switched off during lessons.

## Points clés

- Des phrases courtes et correctes valent mieux que des phrases longues et fausses.
- Respecter la forme demandée (lettre, essai) et le nombre de lignes.
- Relire : -s de la troisième personne, temps, orthographe.

## Exercices pratiques

Exercise 1. Give the opposite: happy, possible, useful, honest.

Exercise 2. Complete with: because, however, so, moreover, finally. a) I stayed at home … I was ill. b) It was raining, … we took a taxi. c) Football is popular in Senegal; …, wrestling is also very popular. d) He is rich; …, he is not happy. e) First, mix the flour and the water; …, put the bread in the oven.

Exercise 3. Find the word: a) a person who catches fish ; b) a net that protects you from mosquitoes ; c) a long period without rain ; d) the person who manages a school.

Exercise 4. Put these parts of a letter in order: Best wishes, ; Dear Awa, ; Thiès, 2nd June ; Write back soon. ; Thank you for your letter.

Exercise 5. Write the opening paragraph of a letter to your English pen friend, Kofi, who lives in Ghana. Introduce yourself (name, age, town, school).

Exercise 6. Write a short essay (80–100 words): « Is it a good idea to work during the school holidays? »

## Corrigé

Exercise 1. unhappy, impossible, useless, dishonest.

Exercise 2. a) because. b) so. c) moreover. d) however. e) finally (on accepte aussi « then »).

Exercise 3. a) a fisherman ; b) a mosquito net ; c) a drought ; d) the headmaster (ou headteacher).

Exercise 4. Thiès, 2nd June ; Dear Awa, ; Thank you for your letter. ; Write back soon. ; Best wishes,

Exercise 5. Example: Dear Kofi, My name is Fatou Sarr. I am fifteen years old and I live in Thiès, a big town about seventy kilometres from Dakar. I am in my last year of middle school and my favourite subjects are English and science. I would like to know more about you and your country.

Exercise 6. Example: Many young people work during the holidays. Is it a good idea? On the one hand, working is a good experience. You learn to be responsible and you can earn money to buy school supplies. Moreover, you discover a job. On the other hand, the holidays are also important for rest. If you work too much, you will be tired when school starts again. In conclusion, I think working during the holidays is a good idea if you also keep some time to rest and read.', 'texte', 55, false, 40
from public.courses c where c.slug = 'bfem-anglais'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Vocabulary and writing : la lettre et le court essai');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Sujet type d''examen : sujet d''entraînement corrigé', '## Présentation

Voici un sujet d''entraînement complet, conçu pour ce cours : ce n''est pas un sujet officiel du BFEM. Il suit la forme habituelle : un texte, des questions de compréhension, des exercices de langue et une expression écrite. Traite-le en temps limité, sans dictionnaire, puis corrige-toi. La répartition des points sur 20 indiquée entre parenthèses est une proposition d''entraînement, pas le barème officiel.

## The text

Text written for this course : Moussa''s First Job

Moussa Ndiaye is sixteen years old and lives in Kaolack with his parents and his three sisters. Last summer, during the school holidays, he worked in his uncle''s shop near the central market. He had never worked before, so the first days were difficult. He had to get up at half past six, open the shop, clean the floor and arrange the bags of rice, sugar and millet.

At first, he often made mistakes when he gave change to customers. « You must count twice, » his uncle told him patiently. After two weeks, Moussa was much faster and more confident. He even suggested selling phone credit, which brought new customers to the shop.

At the end of the holidays, his uncle paid him and congratulated him. Moussa used part of the money to buy school supplies and gave the rest to his mother. « This experience taught me that every job deserves respect, » he says. Now he is studying hard for his exam because he wants to study business management one day.

## Exercices pratiques

Exercise 1 : True or false? Justify (4 points). a) Moussa lives in Kaolack. b) Moussa had worked before. c) The work was easy at the beginning. d) Moussa kept all the money for himself.

Exercise 2 : Answer the questions (3 points). a) Where did Moussa work last summer? b) What did he have to do every morning? c) What was Moussa''s idea to bring new customers?

Exercise 3 : Vocabulary (3 points). a) Find in the text words meaning: 1) people who buy in a shop ; 2) sure of oneself ; 3) said « well done » to someone. b) Give the opposite of: difficult, faster.

Exercise 4 : Grammar (5 points). a) Turn into the passive: « His uncle paid him. » b) Report: « You must count twice, » his uncle told him. c) Complete: If Moussa had not worked, he (not / learn) so much. d) Ask the question for which the answer is: « He worked in his uncle''s shop. » e) Put the verb in the correct tense: Moussa (study) hard at the moment.

Exercise 5 : Writing (5 points). Choose ONE subject (about 80–100 words).
- Subject 1 : Write a letter to a friend to tell him or her about your last holidays.
- Subject 2 : « Young people should help their parents in their work during the holidays. » Do you agree? Give your opinion with examples.

## Corrigé

Exercise 1. a) True : « Moussa Ndiaye is sixteen years old and lives in Kaolack ». b) False : « He had never worked before ». c) False : « the first days were difficult ». d) False : « Moussa used part of the money to buy school supplies and gave the rest to his mother ».

Exercise 2. a) He worked in his uncle''s shop near the central market. b) He had to get up at half past six, open the shop, clean the floor and arrange the bags of rice, sugar and millet. c) He suggested selling phone credit.

Exercise 3. a) 1) customers ; 2) confident ; 3) congratulated. b) difficult → easy ; faster → slower.

Exercise 4. a) He was paid by his uncle. b) His uncle told him (that) he had to count twice (« must » devient souvent « had to » au discours rapporté ; « must » est aussi accepté). c) If Moussa had not worked, he would not have learnt (ou learned) so much. d) Where did he work (last summer)? e) Moussa is studying hard at the moment.

Exercise 5. Pistes de correction.
- Subject 1 : lieu et date, « Dear… », une phrase d''introduction (Thank you for your letter / I hope you are well), un ou deux paragraphes au prétérit pour raconter (where you went, what you did, who you met, how you felt), une phrase de conclusion (Write back soon), « Best wishes » et ton prénom. Exemple de phrase : « Last August, I went to Saint-Louis with my cousins and we visited the Faidherbe bridge. »
- Subject 2 : introduction qui reprend la question ; un paragraphe d''arguments pour (learning responsibility, helping the family, discovering a job, as Moussa in the text) ; un paragraphe de nuances (time to rest, to read, to revise) ; une conclusion qui donne clairement ton avis : « In conclusion, I agree, but… ».

## Méthode pour ce sujet

Commence par lire les questions de l''exercice 1 : elles t''indiquent que le texte parle du lieu de vie de Moussa, de son expérience de travail, des difficultés du début et de l''usage de l''argent. Souligne ensuite dans le texte les marqueurs de temps (last summer, at first, after two weeks, now) : ils organisent le récit et t''aideront aussi pour la grammaire. Pour l''expression écrite, choisis le sujet pour lequel tu as le plus d''idées et fais un plan rapide au brouillon.

## Conseils de notation

Aux questions de compréhension, une réponse juste mais sans justification ou recopiée sans rapport avec la question perd des points ; une réponse en français n''est en général pas acceptée. En grammaire, la forme exacte compte : un auxiliaire oublié ou un participe passé faux rend la réponse fausse. En expression écrite, les correcteurs regardent le respect de la consigne et de la forme (lettre ou essai), l''organisation (paragraphes, mots de liaison), la correction de la langue et la richesse du vocabulaire. Si ton total d''entraînement est inférieur à 10 sur 20, reprends d''abord la leçon de grammaire, puis refais le sujet une semaine plus tard.', 'texte', 60, false, 50
from public.courses c where c.slug = 'bfem-anglais'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Sujet type d''examen : sujet d''entraînement corrigé');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : révision intensive de veille d''examen', '## Fiche du cours vidéo

- Durée : 1h30.
- Thème : séance de révision intensive de veille d''examen en anglais.
- Objectifs : revoir les points de grammaire les plus évalués, s''entraîner à la compréhension, préparer l''expression écrite, gérer son temps, se tester.
- Matériel : tableau ou diaporama, liste de verbes irréguliers, cahier de fiches, feuille de brouillon.
- Prérequis : leçons 1 à 5 de ce cours.

## Déroulé minuté

## 00:00 – 05:00 · Accueil et objectifs

« Good evening, everybody! Bonsoir à toutes et à tous. Votre épreuve d''anglais approche. Ce soir, on ne découvre rien de nouveau : on révise l''essentiel, on corrige des exercices types et on se teste. Je parlerai en français pour les explications et en anglais pour les exemples. Gardez une feuille près de vous. »

Visuel : le plan : tenses, modals and passive, quiz, reported speech and conditionals, reading, writing, time management, final test.

## 05:00 – 20:00 · Rappels clés : les temps

« Le secret des temps, ce sont les marqueurs. Yesterday, last year, ago : simple past. Since, for, ever, never, already, yet : present perfect. Now, at the moment, look! : present continuous. Every day, usually, always : present simple. Tomorrow, next week : will ou be going to. »

Visuel : une frise avec les exemples. « I went to Touba last year. I have lived in Mbour since 2018. Look! The bus is coming. She usually takes the bus. I will call you tomorrow. »

« Attention au piège classique : au présent simple, à la troisième personne du singulier, on ajoute -s : he plays, she watches, it goes. Et à la forme négative ou interrogative, c''est l''auxiliaire qui porte la marque : she doesn''t play, does she play? Même chose au passé : did you go?, jamais did you went? »

« Révisons dix verbes irréguliers ensemble, à voix haute : be, was / were, been ; have, had, had ; do, did, done ; go, went, gone ; see, saw, seen ; take, took, taken ; write, wrote, written ; buy, bought, bought ; bring, brought, brought ; teach, taught, taught. »

Question à poser : « How long have you been in this school? » Réponse attendue : « I have been in this school for four years » ou « since 2022 ».

## 20:00 – 32:00 · Modaux et voix passive

« Les modaux : can, could, must, should, may, might. Toujours suivis de la base verbale, sans to, sans -s. You should revise, not you should to revise. Distinguez must not, l''interdiction, et don''t have to, l''absence d''obligation : You mustn''t cheat ; You don''t have to come on Sunday. »

« La voix passive : be au temps de la phrase active + participe passé. Exercice, mettez la vidéo en pause : “People speak Wolof in Senegal.” “They built the Faidherbe bridge in the nineteenth century.” “They will announce the results next month.” »

« Correction : Wolof is spoken in Senegal. The Faidherbe bridge was built in the nineteenth century. The results will be announced next month. Vérifiez à chaque fois : le bon temps de be, puis le participe passé. »

## 32:00 – 42:00 · Discours rapporté et conditionnels

« Discours rapporté : après said ou told, on recule les temps. “I am hungry,” said Ali devient Ali said he was hungry. “I will help you,” she said devient She said she would help me. Pour une question : “Do you like football?” he asked devient He asked me if I liked football. Pour un ordre : “Sit down,” the teacher said devient The teacher told us to sit down. »

« Conditionnels : type 1, If + present, will : If you work hard, you will pass. Type 2, If + past, would : If I had a car, I would drive to Ziguinchor. Type 3, If + past perfect, would have + participe : If he had left earlier, he wouldn''t have missed the bus. Jamais will ni would après if. »

« Dernier point de grammaire : comparatifs et superlatifs. Adjectif court : -er than, the -est : cheap, cheaper, the cheapest ; big, bigger, the biggest, avec la consonne doublée. Adjectif long : more… than, the most… : more expensive, the most expensive. Et les irréguliers à connaître par cœur : good, better, the best ; bad, worse, the worst. Pour l''égalité : as… as : My bag is as heavy as yours. Erreur fréquente : “more bigger”. On ne met jamais more devant un adjectif qui prend déjà -er. »

Visuel : un tableau à trois colonnes, adjectif, comparatif, superlatif, avec cheap, big, happy, expensive, good, bad.

## 42:00 – 50:00 · Quiz interactif (pause active)

« Pause : answer these five questions. »

- Question 1 : She (go) to school every day. Present simple.
- Question 2 : I (live) here since 2020. Present perfect.
- Question 3 : Passive : « They clean the classroom every day. »
- Question 4 : Comparative : Dakar is (big) than Thiès.
- Question 5 : If I (be) you, I would revise tonight.

« Answers : 1) She goes to school every day. 2) I have lived here since 2020. 3) The classroom is cleaned every day. 4) Dakar is bigger than Thiès. 5) If I were you, I would revise tonight. Quatre ou cinq bonnes réponses : excellent. Sinon, relisez la fiche concernée ce soir. »

## 50:00 – 1:02:00 · Reading comprehension : correction commentée

« Voici un court texte écrit pour la séance : “Mariama is a nurse in a health centre in Kolda. Every morning, she vaccinates babies and gives advice to mothers. Last month, she organised a campaign against malaria and distributed mosquito nets to two hundred families. She loves her job because she can help people.” »

« Questions : 1) True or false : Mariama works in a hospital in Dakar. 2) What did she do last month? 3) Find a word meaning “suggestions to help someone”. 4) What does “her” refer to in “her job”? Pause. »

« Correction : 1) False : “Mariama is a nurse in a health centre in Kolda.” 2) She organised a campaign against malaria and distributed mosquito nets to two hundred families. 3) advice. 4) “her” refers to Mariama. Remarquez : advice est indénombrable, jamais advices. »

## 1:02:00 – 1:12:00 · Writing : derniers réglages

« Pour la lettre : place, date, Dear…, introduction, un ou deux paragraphes, Write back soon, Best wishes, prénom. Pour l''essai : introduction, deux paragraphes avec On the one hand et On the other hand, conclusion avec In conclusion, I think… »

« Écrivez des phrases simples et justes. Exemple de bon paragraphe : “First, sport is good for our health. When we play football or run, our heart becomes stronger. Moreover, sport helps us to make friends.” Trois phrases, deux mots de liaison, aucune erreur : c''est ce que le correcteur aime. Et respectez le nombre de mots demandé. »

« Pour enrichir votre texte sans prendre de risques, réutilisez le vocabulaire des thèmes fréquents : school, environment, health, jobs, celebrations, technology. Pensez aussi à la formation des mots : help, helpful, helpless ; happy, unhappy ; develop, development. Et méfiez-vous des faux amis : actually veut dire en fait, library veut dire bibliothèque, eventually veut dire finalement. Un mot bien choisi vaut mieux qu''un mot impressionnant mal employé. »

« Avant de rendre, relisez votre texte avec trois questions : ai-je mis le -s à la troisième personne ? ai-je utilisé le bon temps ? ai-je respecté la forme ? »

## 1:12:00 – 1:18:00 · Gestion du temps

« Le jour J : lisez d''abord les questions, puis le texte. Traitez la compréhension, puis la grammaire, puis l''expression écrite, en gardant un vrai temps pour l''écrit, car c''est là qu''on gagne ou perd beaucoup de points. Si une question vous bloque, passez et revenez-y. Gardez cinq à dix minutes pour relire. Ce soir, préparez vos stylos et votre convocation, relisez vos verbes irréguliers et dormez tôt. »

## 1:18:00 – 1:28:00 · Évaluation finale (5 questions)

- Question 1 : Correct the mistake : « He don''t speak English. »
- Question 2 : Report : « I am going to Rufisque, » said Awa.
- Question 3 : Complete : If it rains tomorrow, we (stay) at home.
- Question 4 : Superlative : Kilimanjaro is (high) mountain in Africa.
- Question 5 : Choose : You (mustn''t / don''t have to) touch the electric wires, it''s dangerous.

« Answers : 1) He doesn''t speak English. 2) Awa said (that) she was going to Rufisque. 3) we will stay at home. 4) the highest. 5) mustn''t, car c''est une interdiction. »

## 1:28:00 – 1:30:00 · Synthèse et encouragements

« Remember : read carefully, find the time markers, check your verbs. Vous avez les outils ; utilisez-les avec calme. Good luck for your exam, et bon courage ! »', 'video', 90, false, 60
from public.courses c where c.slug = 'bfem-anglais'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : révision intensive de veille d''examen');

-- Cours : Histoire-Géographie : réussir l'épreuve du BFEM
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'bfem-histoire-geographie', (select id from public.levels where name = '3e'), null, 'Histoire-Géographie', 'Histoire-Géographie : réussir l''épreuve du BFEM', 'Ce cours prépare les élèves de 3e à l''épreuve d''Histoire-Géographie du BFEM en révisant le programme du collège, avec un accent sur la 3e : l''Afrique et le monde du XIXe au XXe siècle, puis le Sénégal, l''Afrique et les grands ensembles mondiaux. Il entraîne aux méthodes d''examen (analyse de document, croquis et carte, dissertation courte) grâce à des fiches, des exercices corrigés et un sujet d''entraînement complet. Prérequis : savoir lire une carte simple et situer les grandes périodes de l''histoire.', true, 104
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Comprendre l''épreuve et méthode de travail', '## Objectifs de la leçon

- Savoir ce que l''on attend de vous à l''épreuve d''Histoire-Géographie du BFEM.
- Connaître les trois grands types d''exercices : analyse de document, croquis ou carte, dissertation courte.
- Éviter les erreurs les plus fréquentes.
- Organiser ses révisions sur huit semaines.

## Ce que l''épreuve évalue

L''épreuve d''Histoire-Géographie du BFEM vérifie trois choses : vos connaissances (dates, faits, notions, localisations), votre capacité à exploiter un document (texte, carte, tableau statistique, graphique, image) et votre capacité à rédiger une réponse organisée. La durée de l''épreuve, son coefficient et son barème sont fixés selon les textes officiels en vigueur : renseignez-vous auprès de votre établissement et ne vous fiez pas aux rumeurs. Ce cours vous prépare à toutes les formes d''exercices habituellement proposées.

Le programme révisé couvre tout le collège, avec un poids particulier sur la 3e. En histoire : la traite négrière et ses conséquences, la conquête coloniale et les résistances africaines, l''Afrique dans les deux guerres mondiales, la décolonisation et le Sénégal indépendant. En géographie : le Sénégal (milieu physique, population, économie, régions), l''Afrique et les grands ensembles du monde.

## Type 1 : l''analyse de document

On vous donne un document et des questions. La méthode tient en quatre étapes.

- Présenter le document : nature (texte, carte, tableau, photo), auteur, date, source, thème.
- Lire les questions avant le document, pour savoir ce que l''on cherche.
- Relever les informations utiles dans le document en citant entre guillemets ou en reprenant les chiffres.
- Expliquer avec vos connaissances : le document ne dit jamais tout, c''est vous qui apportez le contexte.

Exemple : un tableau donne la population du Sénégal à plusieurs recensements. Il ne suffit pas de recopier les chiffres ; il faut dire que la population augmente fortement, puis expliquer pourquoi (natalité encore élevée, baisse de la mortalité) et quelles en sont les conséquences (besoins en écoles, en emplois, en logements).

## Type 2 : le croquis et la carte

On peut vous demander de compléter un fond de carte (placer des villes, des fleuves, des régions) ou de réaliser un croquis simple. Les règles d''or :

- Un titre précis, par exemple « Les grandes zones d''activités économiques du Sénégal ».
- Une légende organisée en deux ou trois parties.
- Des figurés adaptés : points pour les villes, lignes pour les fleuves et les routes, surfaces colorées pour les zones.
- Une orientation (flèche du nord) et un travail propre, au crayon puis à la couleur.

## Type 3 : la dissertation courte

C''est une réponse rédigée à une question, par exemple : « Montrez que la colonisation a profondément transformé l''économie du Sénégal. » Le plan attendu est simple.

- Introduction : définir les mots clés, situer dans le temps et l''espace, poser le problème, annoncer le plan.
- Développement : deux ou trois parties, chacune avec une idée principale, des arguments et des exemples précis (dates, lieux, personnages).
- Conclusion : répondre clairement à la question et ouvrir sur une idée voisine.

## Les erreurs les plus fréquentes

- Paraphraser le document sans l''expliquer.
- Confondre les dates : par exemple placer la conférence de Berlin en 1960 au lieu de 1884-1885.
- Oublier le titre ou la légende d''un croquis.
- Écrire une dissertation sans introduction ni plan visible.
- Mal gérer son temps et laisser une partie blanche.
- Inventer des chiffres : en cas de doute, mieux vaut rester général que d''être faux.

## Plan de révision sur 8 semaines

- Semaine 1 : méthodes (analyse de document, croquis, dissertation) et frise chronologique générale XIXe-XXe siècle.
- Semaine 2 : traite négrière, conquête coloniale, résistances africaines.
- Semaine 3 : système colonial (AOF, économie de traite) et Première Guerre mondiale.
- Semaine 4 : Seconde Guerre mondiale, décolonisation, Sénégal indépendant.
- Semaine 5 : le Sénégal, milieu physique et population.
- Semaine 6 : le Sénégal, économie et régions ; l''Afrique.
- Semaine 7 : le monde et ses grands ensembles ; fonds de carte à connaître par cœur.
- Semaine 8 : sujets complets en temps limité, correction, fiches de dernière minute.

Chaque jour, prévoyez 30 à 45 minutes : 15 minutes de relecture de fiche, 15 minutes d''exercice, quelques minutes pour réciter les dates sans regarder. Travaillez à deux avec un camarade : l''un interroge, l''autre répond.

## Construire ses fiches

Une bonne fiche tient sur une page : un titre, cinq à huit dates ou chiffres essentiels, trois à cinq notions définies, deux ou trois personnages, un petit croquis si possible. Écrivez avec vos propres mots. Relisez vos fiches régulièrement plutôt qu''une seule fois la veille.

## Points clés

- Trois exercices types : analyse de document, croquis ou carte, dissertation courte.
- Toujours présenter le document et l''expliquer avec ses connaissances.
- Un croquis sans titre ni légende perd une grande partie de sa valeur.
- La régularité vaut mieux que le bachotage de dernière minute.

## Exercices pratiques

Exercice 1 (facile). Citez les trois types d''exercices de l''épreuve et donnez pour chacun une règle essentielle.

Exercice 2 (facile). Quelles informations doit contenir la présentation d''un document ?

Exercice 3 (moyen). Un élève écrit : « Le document montre que la population augmente. » Pourquoi cette réponse est-elle insuffisante ? Améliorez-la.

Exercice 4 (moyen). Proposez un titre et une légende en trois parties pour un croquis intitulé sur les activités économiques du Sénégal.

Exercice 5 (moyen). Rédigez l''introduction d''une dissertation sur le sujet : « Les résistances africaines à la conquête coloniale au Sénégal ».

Exercice 6 (difficile). Construisez votre propre planning de révision pour la semaine 2, jour par jour, en respectant la durée conseillée.

## Corrigé

Exercice 1. Analyse de document : toujours présenter le document puis l''expliquer avec ses connaissances. Croquis ou carte : un titre, une légende organisée et des figurés adaptés. Dissertation courte : introduction, développement en parties, conclusion.

Exercice 2. La nature du document, l''auteur, la date, la source et le thème (ou idée générale).

Exercice 3. La réponse se contente de paraphraser. Version améliorée : « Le tableau montre que la population du Sénégal augmente fortement entre les recensements. Cette croissance s''explique par une natalité encore élevée et par la baisse de la mortalité grâce aux progrès de la santé. Elle entraîne de grands besoins en écoles, en emplois et en logements, surtout dans les villes comme Dakar. »

Exercice 4. Titre : « Les grandes zones d''activités économiques du Sénégal ». Légende : 1. L''agriculture (bassin arachidier, vallée du fleuve Sénégal pour le riz, Niayes pour le maraîchage) ; 2. La pêche et l''industrie (côte atlantique, ports de Dakar et de Mbour, industries de la région de Dakar) ; 3. Les services et le tourisme (Dakar, Petite-Côte, Saint-Louis, Casamance).

Exercice 5. Exemple : « Au XIXe siècle, la France entreprend la conquête du territoire de l''actuel Sénégal. Face à cette domination, les Africains résistent : on appelle résistance l''ensemble des actions armées ou pacifiques menées contre l''occupation coloniale. Comment les peuples du Sénégal se sont-ils opposés à la conquête ? Nous verrons d''abord les résistances armées, puis les résistances pacifiques et religieuses. »

Exercice 6. Exemple : lundi, la traite atlantique (fiche, 15 min ; questions sur un document, 15 min) ; mardi, ses conséquences pour l''Afrique ; mercredi, la conférence de Berlin et le partage ; jeudi, Lat Dior et El Hadj Omar ; vendredi, Samory Touré et Cheikh Ahmadou Bamba ; samedi, Aline Sitoé Diatta et révision de la frise ; dimanche, récitation des dates avec un camarade. Toute proposition régulière de 30 à 45 minutes par jour est acceptée.', 'texte', 45, true, 10
from public.courses c where c.slug = 'bfem-histoire-geographie'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Comprendre l''épreuve et méthode de travail');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Histoire (1) : traite, colonisation et résistances africaines', '## Objectifs de la leçon

- Réviser la traite atlantique et ses conséquences.
- Comprendre la conquête coloniale et l''organisation de l''AOF.
- Connaître les grandes figures de la résistance au Sénégal et en Afrique de l''Ouest.

## Fiche 1 : la traite atlantique

La traite atlantique est le commerce d''êtres humains africains réduits en esclavage et déportés vers les Amériques, du XVIe au XIXe siècle. Elle s''inscrit dans un commerce dit « triangulaire » : les navires partent d''Europe avec des produits manufacturés (tissus, armes, alcool), achètent des captifs sur les côtes africaines, les transportent vers les Amériques où ils travaillent dans les plantations (sucre, coton, tabac), puis reviennent en Europe chargés de produits tropicaux.

Au Sénégal, l''île de Gorée, inscrite au patrimoine mondial de l''UNESCO, est devenue un lieu de mémoire de la traite ; Saint-Louis était aussi un comptoir important. La France abolit l''esclavage dans ses colonies en 1848.

Conséquences pour l''Afrique : perte de millions de personnes, surtout jeunes ; guerres et razzias entre royaumes pour capturer des esclaves ; insécurité et ralentissement du développement ; traumatisme durable dont la mémoire reste vivante.

## Fiche 2 : la conquête coloniale

Au XIXe siècle, les pays européens industrialisés cherchent des matières premières, des débouchés pour leurs produits et du prestige. La conférence de Berlin (1884-1885) fixe des règles pour le partage de l''Afrique entre puissances européennes.

Au Sénégal, le gouverneur Louis Faidherbe (nommé en 1854) mène la conquête à partir de Saint-Louis. La France crée l''Afrique occidentale française (AOF) en 1895 ; Dakar en devient la capitale au début du XXe siècle. Les habitants des Quatre Communes (Saint-Louis, Gorée, Rufisque, Dakar) ont un statut particulier de citoyens, alors que la grande majorité des colonisés sont des « sujets » soumis au régime de l''indigénat.

L''économie coloniale est une économie de traite : la colonie produit des matières premières, surtout l''arachide au Sénégal, et achète des produits fabriqués en Europe. Le chemin de fer Dakar-Saint-Louis, achevé en 1885, puis la ligne vers le Niger, servent à évacuer l''arachide vers les ports. On parle de « bassin arachidier » pour la zone de culture du centre-ouest du pays.

## Fiche 3 : les résistances africaines

Les résistances sont armées ou pacifiques.

- El Hadj Omar Tall : chef religieux et guerrier toucouleur, il affronte les Français, notamment au siège de Médine en 1857, puis fonde un empire dans la vallée du Niger. Il meurt en 1864.
- Lat Dior Ngoné Latyr Diop, damel du Cayor : il s''oppose à la construction du chemin de fer Dakar-Saint-Louis à travers son royaume. Il est tué au combat de Dékhelé en 1886.
- Alboury Ndiaye, bourba du Djoloff : il résiste puis se replie vers l''est pour continuer la lutte.
- Mamadou Lamine Dramé : il mène une résistance dans le haut Sénégal et meurt en 1887.
- Samory Touré : il fonde un vaste empire en Afrique de l''Ouest (régions de l''actuelle Guinée et au-delà), résiste longtemps grâce à une armée organisée, puis est capturé en 1898.
- Cheikh Ahmadou Bamba, fondateur du mouridisme : il incarne une résistance pacifique fondée sur la foi et le travail. Les autorités coloniales le déportent au Gabon en 1895.
- Aline Sitoé Diatta : en Casamance, pendant la Seconde Guerre mondiale, elle appelle à refuser les réquisitions coloniales. Elle est arrêtée en 1943 et déportée ; elle meurt en exil.

Causes des échecs : supériorité de l''armement européen, divisions entre royaumes, utilisation de soldats africains par les colonisateurs. Mais ces résistances ont nourri la fierté nationale et le nationalisme du XXe siècle.

## Méthode : exploiter un texte historique

- Identifier l''auteur : un colonisateur, un résistant, un historien ? Son point de vue change le sens du texte.
- Repérer les dates et les lieux, puis les replacer sur votre frise.
- Distinguer faits et opinions : « les troupes arrivent à Dékhelé » est un fait ; « ces peuples ont besoin d''être civilisés » est une opinion colonialiste qu''il faut critiquer.

## Exemple guidé

Document : extrait d''un rapport colonial affirmant que le chemin de fer « apportera la prospérité au Cayor ». Analyse : l''auteur est un administrateur colonial, il présente le chemin de fer comme un bienfait. Avec nos connaissances, on rappelle que la ligne sert d''abord à transporter l''arachide vers les ports au profit de l''économie coloniale, et que Lat Dior s''y est opposé car il y voyait la perte de la souveraineté du Cayor.

## Points clés

- Traite atlantique : XVIe-XIXe siècle ; abolition dans les colonies françaises en 1848.
- Conférence de Berlin : 1884-1885 ; AOF : 1895.
- Résistances armées (El Hadj Omar, Lat Dior, Samory) et pacifiques (Cheikh Ahmadou Bamba).
- Économie de traite fondée sur l''arachide.

## Exercices pratiques

Exercice 1 (facile). Définissez : traite atlantique, économie de traite, résistance.

Exercice 2 (facile). Associez chaque date à un événement : 1848, 1884-1885, 1886, 1895 (deux réponses possibles), 1898.

Exercice 3 (facile). Citez deux lieux de mémoire de la traite au Sénégal.

Exercice 4 (moyen). Expliquez pourquoi Lat Dior s''oppose au chemin de fer Dakar-Saint-Louis.

Exercice 5 (moyen). Comparez la résistance de Samory Touré et celle de Cheikh Ahmadou Bamba.

Exercice 6 (moyen). Donnez trois causes de l''échec des résistances armées.

Exercice 7 (difficile). Rédigez un paragraphe argumenté d''une dizaine de lignes : « La colonisation a transformé l''économie du Sénégal. »

## Corrigé

Exercice 1. Traite atlantique : commerce d''Africains réduits en esclavage, déportés vers les Amériques du XVIe au XIXe siècle. Économie de traite : système colonial où la colonie exporte des matières premières agricoles (arachide) et importe des produits manufacturés. Résistance : ensemble des actions, armées ou pacifiques, menées contre la conquête et la domination coloniales.

Exercice 2. 1848 : abolition de l''esclavage dans les colonies françaises. 1884-1885 : conférence de Berlin. 1886 : mort de Lat Dior à Dékhelé. 1895 : création de l''AOF et déportation de Cheikh Ahmadou Bamba au Gabon. 1898 : capture de Samory Touré.

Exercice 3. L''île de Gorée et Saint-Louis.

Exercice 4. Le chemin de fer traverse le Cayor : il permet aux Français de contrôler le royaume, d''y faire circuler leurs troupes et d''évacuer l''arachide. Lat Dior y voit une menace pour l''indépendance de son royaume et s''y oppose par les armes jusqu''à sa mort en 1886.

Exercice 5. Points communs : refus de la domination française, autorité forte sur leurs fidèles ou leurs soldats. Différences : Samory mène une résistance armée avec une armée organisée et est capturé en 1898 ; Cheikh Ahmadou Bamba mène une résistance pacifique fondée sur la foi et le travail, sans prendre les armes, et est déporté au Gabon en 1895.

Exercice 6. Supériorité de l''armement européen ; divisions et rivalités entre royaumes africains ; utilisation par les colonisateurs de soldats et d''alliés africains.

Exercice 7. Exemple : « Avant la colonisation, l''économie du Sénégal reposait surtout sur des cultures vivrières comme le mil et sur des échanges régionaux. La colonisation impose une économie de traite : les paysans sont poussés à cultiver l''arachide pour l''exportation, au détriment parfois des cultures vivrières. Des infrastructures sont créées, comme le chemin de fer Dakar-Saint-Louis achevé en 1885 et le port de Dakar, mais elles servent d''abord à évacuer les produits vers la métropole. Les maisons de commerce européennes contrôlent les prix. Ainsi, l''économie devient dépendante d''un seul produit et tournée vers l''extérieur, un héritage que le Sénégal indépendant a dû affronter. »', 'texte', 60, false, 20
from public.courses c where c.slug = 'bfem-histoire-geographie'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Histoire (1) : traite, colonisation et résistances africaines');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Histoire (2) : guerres mondiales, décolonisation et Sénégal indépendant', '## Objectifs de la leçon

- Expliquer la participation de l''Afrique aux deux guerres mondiales.
- Comprendre les causes et les étapes de la décolonisation.
- Retracer les grandes étapes du Sénégal indépendant.

## Fiche 1 : l''Afrique dans la Première Guerre mondiale (1914-1918)

La guerre oppose principalement l''Entente (France, Royaume-Uni, Russie, puis d''autres pays) aux Empires centraux (Allemagne, Autriche-Hongrie). La France mobilise son empire : les tirailleurs sénégalais, corps créé en 1857 et recrutant dans toute l''AOF, combattent sur le front européen. En 1914, Blaise Diagne est élu député du Sénégal ; il devient le premier Africain noir élu à la Chambre des députés française et participe au recrutement de soldats en échange de promesses de droits. L''Afrique fournit aussi des matières premières et des produits agricoles. Conséquences : nombreux morts et blessés, souffrances des familles, mais aussi prise de conscience chez les anciens combattants de l''injustice coloniale.

## Fiche 2 : l''Afrique dans la Seconde Guerre mondiale (1939-1945)

La guerre oppose les Alliés (Royaume-Uni, puis URSS, États-Unis et France libre) à l''Axe (Allemagne, Italie, Japon). L''AOF est d''abord fidèle au régime de Vichy ; en septembre 1940, les forces de la France libre et les Britanniques tentent sans succès de prendre Dakar. L''AOF rejoint les Alliés fin 1942. Les Africains participent aux combats, notamment à la libération de la France, et subissent l''effort de guerre : travail forcé, réquisitions de récoltes, impôts. Aline Sitoé Diatta s''oppose aux réquisitions en Casamance.

Le 1er décembre 1944, au camp de Thiaroye, près de Dakar, des tirailleurs rapatriés qui réclamaient leurs soldes sont tués par l''armée coloniale française : c''est le massacre de Thiaroye, symbole de l''injustice coloniale.

En 1944, la conférence de Brazzaville annonce des réformes dans l''empire français, sans prévoir l''indépendance. En 1945, la Charte de l''ONU affirme le droit des peuples à disposer d''eux-mêmes.

## Fiche 3 : la décolonisation

La décolonisation est le processus par lequel les colonies accèdent à l''indépendance. Causes :

- Affaiblissement des puissances coloniales après 1945.
- Rôle des élites instruites et des anciens combattants.
- Soutien de l''ONU, des États-Unis et de l''URSS, hostiles aux empires coloniaux.
- Conférence de Bandung (1955), où des pays d''Asie et d''Afrique condamnent le colonialisme.
- Exemple des premières indépendances : Ghana en 1957 avec Kwame Nkrumah.

Deux voies : la voie pacifique et négociée (la plupart des colonies d''AOF) et la voie armée (guerre d''Algérie, 1954-1962). Étapes en Afrique française : loi-cadre Defferre (1956) qui donne une autonomie interne ; référendum de 1958 sur la Communauté franco-africaine ; la Guinée de Sékou Touré vote « non » et devient indépendante le 2 octobre 1958 ; les autres territoires accèdent à l''indépendance en 1960. En 1963, l''Organisation de l''unité africaine (OUA) est créée à Addis-Abeba ; elle est remplacée par l''Union africaine en 2002.

## Fiche 4 : le Sénégal indépendant

Le Sénégal forme avec le Soudan français la Fédération du Mali, indépendante en juin 1960. Le 4 avril, date du transfert des compétences, est devenu la fête de l''indépendance du Sénégal. La Fédération éclate en août 1960 et le Sénégal proclame son indépendance le 20 août 1960. Léopold Sédar Senghor, poète et homme politique, devient le premier président de la République.

Grandes étapes politiques :

- 1962 : crise politique entre Senghor et le président du Conseil, Mamadou Dia ; le régime devient présidentiel.
- Fin des années 1970 : retour progressif au multipartisme.
- 1981 : Abdou Diouf succède à Senghor, qui s''est retiré fin 1980 ; le multipartisme intégral est instauré.
- 2000 : première alternance politique avec l''élection d''Abdoulaye Wade.
- 2012 : élection de Macky Sall.
- 2024 : élection de Bassirou Diomaye Faye.

Ces alternances pacifiques font du Sénégal un exemple de stabilité démocratique en Afrique, même si le pays a connu des crises (conflit en Casamance, tensions électorales).

## Méthode : construire une frise chronologique

Tracez une ligne graduée (par exemple un centimètre pour dix ans de 1900 à 2030), placez les événements au-dessus et les personnages en dessous, coloriez les périodes (colonisation, indépendance). Une frise bien faite est la meilleure fiche de révision.

## Points clés

- Tirailleurs sénégalais : présents dans les deux guerres mondiales.
- Thiaroye : 1er décembre 1944.
- Décolonisation : Bandung 1955, Ghana 1957, Guinée 1958, Sénégal 1960.
- Présidents du Sénégal : Senghor, Diouf, Wade, Sall, Faye.

## Exercices pratiques

Exercice 1 (facile). Qui étaient les tirailleurs sénégalais ?

Exercice 2 (facile). Classez dans l''ordre chronologique : indépendance du Ghana, massacre de Thiaroye, conférence de Bandung, création de l''OUA, référendum de 1958.

Exercice 3 (facile). Citez dans l''ordre les présidents du Sénégal depuis l''indépendance.

Exercice 4 (moyen). Pourquoi le massacre de Thiaroye est-il un symbole ?

Exercice 5 (moyen). Expliquez pourquoi la Guinée accède à l''indépendance avant le Sénégal.

Exercice 6 (moyen). Donnez quatre causes de la décolonisation.

Exercice 7 (difficile). Dissertation courte (plan détaillé) : « Montrez que les deux guerres mondiales ont préparé la décolonisation de l''Afrique. »

## Corrigé

Exercice 1. Des soldats africains recrutés dans les colonies françaises d''Afrique, notamment en AOF, dans un corps créé en 1857. Malgré leur nom, ils ne venaient pas tous du Sénégal. Ils ont combattu pour la France, en particulier pendant les deux guerres mondiales.

Exercice 2. Massacre de Thiaroye (1944), conférence de Bandung (1955), indépendance du Ghana (1957), référendum (1958), création de l''OUA (1963).

Exercice 3. Léopold Sédar Senghor, Abdou Diouf, Abdoulaye Wade, Macky Sall, Bassirou Diomaye Faye.

Exercice 4. Des soldats qui avaient combattu pour la France et ne réclamaient que leur dû ont été tués par l''armée coloniale. Cet événement montre l''injustice et l''ingratitude du système colonial ; il est devenu un symbole de la mémoire africaine et de la lutte pour la dignité.

Exercice 5. En 1958, lors du référendum sur la Communauté, la Guinée de Sékou Touré vote « non » ; elle devient immédiatement indépendante le 2 octobre 1958. Le Sénégal vote « oui » et n''accède à l''indépendance qu''en 1960, après l''expérience de la Fédération du Mali.

Exercice 6. Affaiblissement de la France et du Royaume-Uni après 1945 ; action des élites et des partis nationalistes ; soutien de l''ONU et des deux superpuissances ; exemple de Bandung et des premières indépendances.

Exercice 7. Introduction : présenter les guerres (1914-1918, 1939-1945) et la décolonisation, poser le problème du lien entre les deux. Partie 1 : l''Afrique a fourni des soldats (tirailleurs sénégalais) et des ressources ; les Africains ont découvert que les Européens n''étaient pas invincibles. Partie 2 : les sacrifices n''ont pas été récompensés (Thiaroye, 1944), ce qui renforce la contestation ; les élites réclament des droits (Blaise Diagne dès 1914, puis les partis après 1945). Partie 3 : après 1945, les puissances coloniales sont affaiblies, l''ONU défend le droit des peuples, Brazzaville (1944) puis la loi-cadre (1956) ouvrent la voie aux indépendances de 1960. Conclusion : les guerres ont été un accélérateur décisif de la décolonisation.', 'texte', 60, false, 30
from public.courses c where c.slug = 'bfem-histoire-geographie'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Histoire (2) : guerres mondiales, décolonisation et Sénégal indépendant');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Géographie : le Sénégal, l''Afrique et le monde', '## Objectifs de la leçon

- Décrire le milieu physique, la population et l''économie du Sénégal.
- Connaître les régions administratives du Sénégal.
- Situer les grands traits de l''Afrique et les grands ensembles du monde.
- S''entraîner au croquis et à la lecture de tableaux statistiques.

## Fiche 1 : le milieu physique du Sénégal

Le Sénégal est situé à l''extrême ouest de l''Afrique, sur l''océan Atlantique. Sa superficie est d''environ 197 000 km². Il est limité par la Mauritanie au nord, le Mali à l''est, la Guinée et la Guinée-Bissau au sud ; la Gambie forme une enclave le long du fleuve du même nom. La presqu''île du Cap-Vert, où se trouve Dakar, est le point le plus occidental du continent africain.

- Relief : un pays plat dans l''ensemble ; les seuls reliefs notables se trouvent au sud-est, dans la région de Kédougou, avec des collines qui dépassent à peine 500 m.
- Climat : tropical, avec une saison sèche longue et une saison des pluies (l''hivernage), en gros de juin-juillet à octobre. Les pluies augmentent du nord (climat sahélien) vers le sud (climat plus humide de la Casamance).
- Cours d''eau : le fleuve Sénégal au nord, la Gambie, la Casamance au sud ; le Saloum est un estuaire. Les barrages de Diama et de Manantali (au Mali), gérés dans le cadre de l''OMVS, régulent le fleuve Sénégal.
- Végétation : steppe au nord, savane au centre, forêt claire et mangrove au sud.

## Fiche 2 : la population

Selon le recensement de 2023, le Sénégal compte environ 18 millions d''habitants. La population est jeune : une grande partie a moins de 20 ans. Elle croît rapidement grâce à une natalité encore forte et à la baisse de la mortalité. Elle est inégalement répartie : très dense dans l''ouest (Dakar, Thiès, bassin arachidier), peu dense à l''est (Tambacounda, Kédougou). L''urbanisation est rapide : la région de Dakar concentre une part très importante des citadins. L''exode rural, l''émigration vers d''autres pays et la diversité ethnique et linguistique (Wolof, Pulaar, Sérère, Diola, Mandingue, Soninké, etc.) sont d''autres traits essentiels.

## Fiche 3 : l''économie

- Secteur primaire : agriculture (arachide, mil, riz dans la vallée du fleuve, maraîchage dans les Niayes, coton au sud-est), élevage, pêche (Kayar, Mbour, Joal, Saint-Louis), exploitation des phosphates.
- Secteur secondaire : industries agroalimentaires, chimie, cimenteries, concentrées autour de Dakar ; le pétrole et le gaz découverts au large commencent à être exploités à partir de 2024.
- Secteur tertiaire : commerce, transports (port de Dakar, aéroport international, train express régional), télécommunications, tourisme (Petite-Côte, Saint-Louis, Casamance).

Problèmes : dépendance aux pluies, déficit en riz, chômage des jeunes, déséquilibre entre Dakar et le reste du pays.

## Fiche 4 : les régions

Le Sénégal compte 14 régions : Dakar, Thiès, Diourbel, Fatick, Kaolack, Kaffrine, Louga, Saint-Louis, Matam, Tambacounda, Kédougou, Kolda, Sédhiou et Ziguinchor. Retenez quelques spécialités : Dakar (capitale, port, industries, services), Touba dans la région de Diourbel (grande ville religieuse), Kaolack (commerce de l''arachide, sel), Saint-Louis (ancienne capitale, riz, pêche, tourisme), Ziguinchor (Casamance, riz, tourisme), Kédougou (or, reliefs).

## Fiche 5 : l''Afrique et le monde

L''Afrique compte 54 États. Elle possède le plus long fleuve du monde, le Nil, le plus grand désert chaud, le Sahara, et le point culminant du Kilimandjaro (environ 5 895 m). Sa population dépasse 1,4 milliard d''habitants et elle est la plus jeune du monde. Ses atouts : ressources minières et énergétiques, terres, jeunesse. Ses difficultés : pauvreté, conflits, dépendance aux exportations de matières premières. L''intégration régionale (UA, CEDEAO, UEMOA) cherche à y répondre.

Le monde est organisé en grands ensembles : les pays développés du Nord (États-Unis, Union européenne, Japon) ; les puissances émergentes (Chine, Inde, Brésil) ; les pays en développement du Sud, dont une grande partie de l''Afrique. Les échanges se font surtout entre les pôles de la Triade (Amérique du Nord, Europe, Asie orientale).

## Méthode : lire un tableau statistique

- Lire le titre, l''unité (habitants, tonnes, FCFA, pourcentage) et la source.
- Repérer les valeurs extrêmes (la plus forte, la plus faible) et l''évolution.
- Calculer si nécessaire une différence ou une multiplication (« la valeur a doublé »).
- Expliquer, puis conclure.

## Points clés

- Le Sénégal : environ 197 000 km², 14 régions, environ 18 millions d''habitants (recensement de 2023).
- Climat tropical avec hivernage ; pluies croissantes du nord au sud.
- Une économie diversifiée mais très concentrée à Dakar.
- L''Afrique : 54 États, une population jeune et en forte croissance.

## Exercices pratiques

Exercice 1 (facile). Citez les pays frontaliers du Sénégal.

Exercice 2 (facile). Citez les quatre principaux cours d''eau du Sénégal (fleuves et estuaire).

Exercice 3 (facile). Citez six des quatorze régions du Sénégal et leur chef-lieu (même nom).

Exercice 4 (moyen). Expliquez pourquoi la population sénégalaise est inégalement répartie.

Exercice 5 (moyen). Classez dans les trois secteurs d''activité : pêche à Kayar, port de Dakar, cimenterie, maraîchage dans les Niayes, tourisme sur la Petite-Côte, phosphates.

Exercice 6 (moyen). Une ville passe de 200 000 à 500 000 habitants en 30 ans. Calculez l''augmentation et dites combien de fois la population a été multipliée.

Exercice 7 (difficile). Réalisez la légende d''un croquis : « Le Sénégal, un territoire inégalement mis en valeur ».

## Corrigé

Exercice 1. La Mauritanie, le Mali, la Guinée, la Guinée-Bissau et la Gambie.

Exercice 2. Le fleuve Sénégal, la Gambie, la Casamance et le Saloum (estuaire).

Exercice 3. Par exemple : Dakar, Thiès, Kaolack, Saint-Louis, Ziguinchor, Tambacounda (toute combinaison exacte parmi les 14 est acceptée).

Exercice 4. Les facteurs naturels (pluies plus abondantes à l''ouest et au sud, terres agricoles du bassin arachidier, littoral favorable à la pêche) et humains (héritage colonial avec les ports et le chemin de fer, concentration des emplois et des services à Dakar) attirent la population à l''ouest. L''est, plus éloigné et moins équipé, reste peu peuplé.

Exercice 5. Primaire : pêche à Kayar, maraîchage dans les Niayes, phosphates (activité extractive). Secondaire : cimenterie. Tertiaire : port de Dakar, tourisme sur la Petite-Côte.

Exercice 6. Augmentation : 500 000 – 200 000 = 300 000 habitants. Multiplication : 500 000 / 200 000 = 2,5 ; la population a été multipliée par 2,5.

Exercice 7. Légende : 1. Les espaces dynamiques : la région de Dakar (capitale, port, industries), la Petite-Côte et le littoral (pêche, tourisme), le bassin arachidier. 2. Les espaces agricoles aménagés : la vallée du fleuve Sénégal (riz irrigué), les Niayes (maraîchage). 3. Les espaces en retard ou peu peuplés : l''est (Tambacounda, Kédougou), malgré des ressources minières. 4. Les réseaux : principales routes, voie ferrée, ports. Titre obligatoire et flèche du nord.', 'texte', 60, false, 40
from public.courses c where c.slug = 'bfem-histoire-geographie'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Géographie : le Sénégal, l''Afrique et le monde');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Sujet type d''examen : entraînement corrigé', '## Présentation du sujet

Ce sujet est un sujet d''entraînement conçu pour ce cours. Ce n''est pas un sujet officiel du BFEM. Il reprend les formes d''exercices habituelles. La durée et le barème réels de l''épreuve sont fixés selon les textes officiels en vigueur ; le barème indiqué ici, sur 20 points, sert uniquement à l''auto-évaluation. Faites-le en temps limité, sans document, avant de lire le corrigé.

## Conseils avant de commencer

- Lisez tout le sujet et choisissez l''ordre de traitement : commencez par la partie que vous maîtrisez le mieux.
- Faites un brouillon de plan pour la dissertation, mais ne rédigez pas tout au brouillon.
- Gardez quelques minutes pour relire l''orthographe des noms propres (Faidherbe, Thiaroye, Ziguinchor).

## Exercices pratiques

Exercice 1. Histoire, connaissances (3 points). Donnez la date et expliquez en une phrase : a) la conférence de Berlin ; b) le massacre de Thiaroye ; c) l''indépendance du Sénégal.

Exercice 2. Histoire, analyse de document (5 points). Document : « Nous avons fait la guerre pour la France. On nous avait promis l''égalité ; nous sommes rentrés et rien n''a changé. Il est temps que l''Afrique décide elle-même de son destin. » (Témoignage reconstitué d''un ancien tirailleur, années 1950, texte d''entraînement.) Questions : a) Présentez le document. b) Relevez deux reproches faits à la France. c) Expliquez la dernière phrase avec vos connaissances. d) Citez deux étapes qui mènent à l''indépendance du Sénégal.

Exercice 3. Histoire, dissertation courte (4 points). « Les résistances africaines à la conquête coloniale au Sénégal. »

Exercice 4. Géographie, tableau (4 points). Population d''une région fictive : 400 000 habitants en 1990, 600 000 en 2005, 900 000 en 2020. a) Décrivez l''évolution. b) Calculez l''augmentation totale. c) Donnez deux causes et deux conséquences de cette croissance.

Exercice 5. Géographie, carte (4 points). Sur un fond de carte du Sénégal, placez : Dakar, Saint-Louis, Ziguinchor, Kaolack, Tambacounda ; le fleuve Sénégal, la Gambie, la Casamance ; le bassin arachidier et les Niayes. Donnez un titre et une légende.

## Corrigé

Exercice 1 (1 point par réponse complète). a) 1884-1885 : les puissances européennes fixent les règles du partage de l''Afrique. b) 1er décembre 1944 : des tirailleurs qui réclamaient leurs soldes sont tués par l''armée coloniale au camp de Thiaroye. c) 1960 : le Sénégal devient indépendant (fête nationale le 4 avril ; indépendance proclamée le 20 août 1960 après l''éclatement de la Fédération du Mali). Conseil de notation : la date seule rapporte peu, l''explication est attendue.

Exercice 2. a) (1 point) Témoignage d''un ancien tirailleur, années 1950, après la Seconde Guerre mondiale ; thème : la déception des anciens combattants et la volonté d''indépendance. b) (1 point) La France a promis l''égalité ; rien n''a changé au retour des soldats. c) (2 points) L''auteur réclame l''indépendance. Après 1945, les sacrifices des Africains ne sont pas récompensés (Thiaroye en est le symbole) ; les élites et les partis nationalistes réclament des droits ; l''ONU défend le droit des peuples à disposer d''eux-mêmes ; la décolonisation commence en Asie puis en Afrique (Ghana, 1957). d) (1 point) La loi-cadre de 1956, le référendum de 1958, la Fédération du Mali puis l''indépendance en 1960. Conseil : citez le texte entre guillemets avant de l''expliquer.

Exercice 3 (4 points : 1 pour l''introduction, 2 pour le développement, 1 pour la conclusion). Introduction : au XIXe siècle, la France conquiert le Sénégal à partir de Saint-Louis, notamment sous Faidherbe ; les peuples résistent. Problème : quelles formes ces résistances ont-elles prises ? Partie 1, les résistances armées : El Hadj Omar (siège de Médine, 1857), Lat Dior qui refuse le chemin de fer et meurt à Dékhelé en 1886, Alboury Ndiaye au Djoloff, Mamadou Lamine Dramé. Partie 2, les résistances pacifiques : Cheikh Ahmadou Bamba, déporté au Gabon en 1895, qui oppose la foi et le travail à la domination ; Aline Sitoé Diatta qui refuse les réquisitions en Casamance pendant la Seconde Guerre mondiale. Bilan : échec militaire dû à l''armement européen et aux divisions, mais naissance d''une mémoire de fierté. Conclusion : ces résistances ont préparé le nationalisme qui conduit à l''indépendance. Conseil de notation : chaque exemple daté et localisé est valorisé ; une copie sans plan visible est pénalisée.

Exercice 4. a) (1 point) La population augmente fortement et de plus en plus vite : +200 000 de 1990 à 2005, +300 000 de 2005 à 2020. b) (1 point) 900 000 – 400 000 = 500 000 habitants ; la population a été multipliée par 900 000 / 400 000 = 2,25. c) (2 points) Causes : natalité forte, baisse de la mortalité, exode rural. Conséquences : besoins en écoles, emplois, logements et eau potable ; développement de quartiers spontanés.

Exercice 5 (2 points pour les localisations, 1 pour la légende, 1 pour le titre et la propreté). Dakar à l''extrémité ouest sur la presqu''île du Cap-Vert ; Saint-Louis au nord, à l''embouchure du fleuve Sénégal ; Ziguinchor au sud, sur la Casamance ; Kaolack au centre, sur le Saloum ; Tambacounda à l''est. Le bassin arachidier au centre-ouest, les Niayes le long du littoral nord entre Dakar et Saint-Louis. Titre possible : « Villes, fleuves et grandes régions agricoles du Sénégal ». Légende : villes (points), cours d''eau (lignes bleues), zones agricoles (surfaces de couleur).

S''auto-évaluer après le sujet. Comptez vos points. En dessous de 10, reprenez les fiches de la partie la plus faible ; entre 10 et 14, travaillez la rédaction (introduction et exemples précis) ; au-dessus de 14, entraînez-vous en temps limité sur d''autres sujets.', 'texte', 75, false, 50
from public.courses c where c.slug = 'bfem-histoire-geographie'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Sujet type d''examen : entraînement corrigé');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : révision intensive veille d''examen en Histoire-Géographie', '## Fiche du cours vidéo

- Durée : 1h30.
- Thème : séance de révision intensive « veille d''examen » en Histoire-Géographie.
- Objectifs : revoir les dates et notions essentielles, corriger des exercices types, apprendre à gérer son temps, vérifier ses acquis par un quiz et une évaluation finale.
- Matériel : tableau ou diaporama, frise chronologique 1800-2030, fond de carte du Sénégal et de l''Afrique, crayons de couleur.
- Prérequis : avoir lu les leçons 1 à 5 de ce cours.

## Déroulé minuté

## 00:00 – 05:00 · Accueil et objectifs

« Bonjour à toutes et à tous. Demain ou dans quelques jours, vous passez l''épreuve d''Histoire-Géographie du BFEM. Ce soir, nous n''allons pas apprendre de choses nouvelles : nous allons consolider. Je vous propose quatre étapes : les dates clés en histoire, l''essentiel du Sénégal en géographie, la correction de deux exercices types, puis des conseils pour gérer votre temps. Il y aura un quiz au milieu et une petite évaluation à la fin. Prenez une feuille et un crayon. »

Visuel : le plan de la séance en quatre étapes.

## 05:00 – 20:00 · La frise de l''histoire en quinze minutes

« Regardez la frise au tableau. Je la construis avec vous. XVIe-XIXe siècle : la traite atlantique ; Gorée et Saint-Louis sont des lieux de mémoire. 1848 : abolition de l''esclavage dans les colonies françaises. 1854 : Faidherbe est nommé gouverneur et accélère la conquête. 1857 : siège de Médine par El Hadj Omar, et création du corps des tirailleurs sénégalais. 1884-1885 : conférence de Berlin. 1885 : achèvement du chemin de fer Dakar-Saint-Louis. 1886 : mort de Lat Dior à Dékhelé. 1895 : création de l''AOF et déportation de Cheikh Ahmadou Bamba au Gabon. 1898 : capture de Samory Touré. »

« Passons au XXe siècle. 1914 : début de la Première Guerre mondiale et élection de Blaise Diagne. 1939-1945 : Seconde Guerre mondiale. 1943 : arrestation d''Aline Sitoé Diatta. 1er décembre 1944 : massacre de Thiaroye. 1944 : conférence de Brazzaville. 1955 : Bandung. 1956 : loi-cadre. 1957 : indépendance du Ghana. 1958 : référendum, la Guinée vote non. 1960 : indépendance du Sénégal. 1963 : création de l''OUA. Puis la suite des présidents : Senghor, Diouf, Wade, Sall, Faye. »

Question à poser : « Fermez les yeux : qui peut me redire les cinq dates de 1884 à 1898 ? » Laisser une minute, puis corriger.

## 20:00 – 30:00 · L''essentiel de la géographie du Sénégal

« Le Sénégal, c''est environ 197 000 km², 14 régions, environ 18 millions d''habitants selon le recensement de 2023. Un pays plat, sauf au sud-est vers Kédougou. Un climat tropical avec une saison sèche et un hivernage ; il pleut davantage au sud qu''au nord. Quatre cours d''eau à connaître : le fleuve Sénégal, la Gambie, la Casamance et l''estuaire du Saloum. »

« Pour la population, retenez trois mots : jeune, croissante, inégalement répartie. Pour l''économie, pensez aux trois secteurs : agriculture, pêche et phosphates pour le primaire ; industries autour de Dakar et début de l''exploitation du pétrole et du gaz à partir de 2024 pour le secondaire ; commerce, port, transports et tourisme pour le tertiaire. Le grand problème, c''est le déséquilibre : Dakar concentre la plupart des activités. »

Visuel : fond de carte du Sénégal ; placer en direct les villes, les fleuves, le bassin arachidier et les Niayes.

## 30:00 – 37:00 · L''Afrique et le monde en sept minutes

« Changeons d''échelle. L''Afrique compte 54 États. Elle possède le Nil, le plus long fleuve du monde, le Sahara, le plus grand désert chaud, et son point culminant est le Kilimandjaro, à environ 5 895 mètres. Sa population dépasse 1,4 milliard d''habitants et c''est la plus jeune du monde. Ses atouts sont ses ressources minières et énergétiques, ses terres et sa jeunesse ; ses difficultés sont la pauvreté, certains conflits et la dépendance aux exportations de matières premières. »

« À l''échelle mondiale, retenez trois groupes : les pays développés du Nord, comme les États-Unis, l''Union européenne et le Japon ; les puissances émergentes, comme la Chine, l''Inde et le Brésil ; les pays en développement du Sud. La Triade, c''est-à-dire l''Amérique du Nord, l''Europe et l''Asie orientale, concentre l''essentiel des échanges. Pour répondre à ses défis, l''Afrique mise sur l''intégration régionale : l''Union africaine, la CEDEAO, l''UEMOA. »

Question à poser : « Citez un pays émergent et un pôle de la Triade. » Réponse attendue : par exemple la Chine ; l''Union européenne.

Visuel : planisphère avec les trois groupes coloriés différemment.

## 37:00 – 45:00 · Correction commentée : analyse de document

« Voici un document d''entraînement : un tableau de la production d''arachide d''une région fictive sur trois années, en tonnes : 60 000 tonnes la première année, 75 000 la deuxième, 45 000 la troisième. Ces chiffres sont inventés pour l''exercice. Premier réflexe : je présente. Nature : tableau statistique. Thème : la production d''arachide. Unité : la tonne. Deuxième réflexe : je décris l''évolution, en citant les chiffres. Ici : la production augmente de 15 000 tonnes, puis chute de 30 000 tonnes, pour tomber en dessous de son niveau de départ. Troisième réflexe : j''explique. Les variations de la production d''arachide dépendent beaucoup des pluies de l''hivernage, des semences et des prix. Quatrième réflexe : je relie à l''histoire, car l''arachide est l''héritage de l''économie de traite coloniale. »

« Erreur classique : écrire “la production change”. C''est trop vague. Dites “la production augmente, puis baisse fortement”, et donnez les chiffres. »

## 45:00 – 55:00 · Pause active et quiz

« Faisons une pause active. Je pose six questions, vous répondez sur votre feuille en trente secondes chacune. »

- Question 1 : en quelle année l''esclavage est-il aboli dans les colonies françaises ? Réponse : 1848.
- Question 2 : quel résistant meurt à Dékhelé en 1886 ? Réponse : Lat Dior.
- Question 3 : quel pays vote « non » au référendum de 1958 ? Réponse : la Guinée.
- Question 4 : combien de régions compte le Sénégal ? Réponse : 14.
- Question 5 : comment appelle-t-on la saison des pluies au Sénégal ? Réponse : l''hivernage.
- Question 6 : quelle région est connue pour l''or et les reliefs du sud-est ? Réponse : Kédougou.

« Cinq ou six bonnes réponses : très bien. Moins de quatre : relisez votre frise et votre fiche Sénégal ce soir. »

## 55:00 – 1:08:00 · Correction commentée : dissertation courte

« Sujet : “Montrez que les guerres mondiales ont préparé les indépendances africaines.” Je construis l''introduction avec vous : je situe les guerres, 1914-1918 et 1939-1945, je définis la décolonisation, je pose la question et j''annonce le plan. »

« Partie 1 : la participation africaine. Les tirailleurs sénégalais, les réquisitions, le travail forcé. Partie 2 : la déception et la contestation : Thiaroye en 1944, les anciens combattants, les élites instruites. Partie 3 : le nouveau contexte international : l''ONU, Bandung, les superpuissances, Brazzaville puis la loi-cadre, jusqu''aux indépendances de 1960. »

« Conseil de correcteur : chaque partie doit contenir au moins un exemple daté. Une phrase comme “les Africains ont beaucoup souffert” ne rapporte presque rien ; “le 1er décembre 1944, à Thiaroye, des tirailleurs qui réclamaient leurs soldes ont été tués” rapporte des points. »

## 1:08:00 – 1:15:00 · Le croquis sans stress

« Pour le croquis, pensez TLOP : Titre, Légende, Orientation, Propreté. Utilisez peu de couleurs : bleu pour l''eau, rouge pour les villes, vert pour l''agriculture, marron pour les ressources minières. Écrivez les noms à l''horizontale et en petites lettres lisibles. »

Visuel : un croquis réussi et un croquis raté côte à côte ; demander aux élèves de trouver les trois défauts du second.

## 1:15:00 – 1:20:00 · Gérer son temps le jour J

« La durée de l''épreuve est fixée selon les textes officiels en vigueur ; vérifiez-la sur votre convocation. Quelle que soit cette durée, partagez-la en blocs : quelques minutes pour lire tout le sujet, un bloc pour chaque partie, et une marge finale pour relire. Ne restez jamais bloqués : si une question résiste, passez et revenez-y. Une partie blanche coûte beaucoup plus cher qu''une réponse imparfaite. »

## 1:20:00 – 1:27:00 · Évaluation finale

« Voici cinq questions pour vérifier vos acquis. Répondez seuls, puis comparez avec la correction. »

- Question 1 : en quelle année a lieu la conférence de Berlin et quel est son objet ? Réponse : 1884-1885 ; fixer les règles du partage de l''Afrique entre puissances européennes.
- Question 2 : citez une résistance armée et une résistance pacifique au Sénégal. Réponse : Lat Dior (armée) ; Cheikh Ahmadou Bamba (pacifique).
- Question 3 : que s''est-il passé à Thiaroye le 1er décembre 1944 ? Réponse : des tirailleurs rapatriés qui réclamaient leurs soldes ont été tués par l''armée coloniale française.
- Question 4 : citez trois caractéristiques de la population du Sénégal. Réponse : jeune, en forte croissance, inégalement répartie (forte concentration à l''ouest et à Dakar).
- Question 5 : quelles sont les quatre règles d''un bon croquis ? Réponse : un titre, une légende organisée, une orientation et un travail propre.

## 1:27:00 – 1:30:00 · Synthèse et derniers conseils

« Ce soir, relisez seulement vos fiches et votre frise, puis dormez bien. Demain, apportez vos stylos, vos crayons de couleur et votre règle. Lisez tout le sujet, présentez toujours les documents, datez et localisez vos exemples, soignez vos croquis. Vous avez travaillé : faites-vous confiance. Bonne chance à toutes et à tous ! »', 'video', 90, false, 60
from public.courses c where c.slug = 'bfem-histoire-geographie'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : révision intensive veille d''examen en Histoire-Géographie');

-- Cours : Éducation civique : réussir l'épreuve du BFEM
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'bfem-education-civique', (select id from public.levels where name = '3e'), null, 'Éducation civique', 'Éducation civique : réussir l''épreuve du BFEM', 'Ce cours prépare les élèves de 3e à l''épreuve d''Éducation civique du BFEM en révisant le programme du collège : citoyenneté, droits et devoirs, droits de l''enfant et droits humains, institutions de la République du Sénégal, démocratie et élections, intégration africaine, environnement et santé publique. Chaque leçon associe des fiches de révision, des exercices progressifs corrigés et des conseils de méthode, avec un sujet d''entraînement complet. Prérequis : aucun, au-delà des connaissances de base du collège.', true, 105
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Comprendre l''épreuve et méthode de travail', '## Objectifs de la leçon

- Comprendre ce qu''évalue l''épreuve d''Éducation civique du BFEM.
- Connaître les types d''exercices et la méthode pour chacun.
- Repérer les erreurs fréquentes.
- Planifier ses révisions sur huit semaines.

## Ce que l''épreuve évalue

L''Éducation civique forme le citoyen. À l''examen, on attend de vous trois compétences : connaître des notions précises (citoyenneté, démocratie, droits, institutions), les appliquer à une situation de la vie quotidienne et donner un avis argumenté. La durée, le coefficient et le barème de l''épreuve sont fixés selon les textes officiels en vigueur : vérifiez-les auprès de votre établissement.

Le programme du collège est révisé dans ce cours en trois grands blocs : la citoyenneté, les droits et devoirs, les droits de l''enfant et les droits humains ; les institutions de la République du Sénégal, la démocratie et les élections ; l''intégration africaine, l''environnement et la santé publique.

## Les types d''exercices

- Questions de cours : définir une notion, citer des exemples. Une définition doit être courte, exacte et complète.
- Étude de document : un texte (article de la Constitution présenté en extrait, coupure de journal, affiche de sensibilisation), une image ou un tableau, suivi de questions.
- Situation-problème : un cas concret (un enfant retiré de l''école pour travailler, un quartier envahi par les déchets, un jeune qui refuse d''aller voter). Il faut identifier le problème, citer la règle ou le droit concerné, proposer des solutions.
- Question d''opinion argumentée : « Pensez-vous que… ? Justifiez. » Il faut prendre position et donner au moins deux arguments avec exemples.

## Méthode pour la situation-problème

- Lire la situation et souligner les personnes, les faits et le lieu.
- Nommer le problème avec le vocabulaire civique : « violation du droit à l''éducation », « atteinte à l''environnement », « incivisme ».
- Rappeler la règle : le droit ou le devoir en jeu, le texte qui le protège (par exemple la Convention relative aux droits de l''enfant) sans inventer de numéro d''article.
- Proposer des solutions à plusieurs niveaux : individuel, familial, communautaire, État.

Exemple : « Dans un village, Awa, 12 ans, a été retirée de l''école pour aider sa mère au marché. » Problème : violation du droit à l''éducation. Règle : la Convention relative aux droits de l''enfant reconnaît le droit de tout enfant à l''éducation, et la loi sénégalaise prévoit la scolarisation obligatoire. Solutions : sensibiliser les parents, impliquer le chef de village, le comité de gestion de l''école, les services sociaux.

## Méthode pour l''opinion argumentée

- Une phrase de position claire : « Je pense que voter est un devoir essentiel du citoyen. »
- Deux ou trois arguments, chacun suivi d''un exemple.
- Une conclusion qui reprend la position.

## Erreurs fréquentes

- Donner une définition vague : « la démocratie, c''est la liberté ». Préférez : « régime politique dans lequel le pouvoir appartient au peuple, qui l''exerce directement ou par ses représentants élus ».
- Confondre droits et devoirs.
- Confondre les pouvoirs : l''Assemblée nationale vote les lois, elle ne les applique pas.
- Inventer des chiffres ou des articles de loi.
- Répondre sans proposer de solution dans une situation-problème.

## Plan de révision sur 8 semaines

- Semaine 1 : méthodes et vocabulaire de base (citoyen, nation, État, République, droit, devoir).
- Semaine 2 : citoyenneté, nationalité, symboles de la République, civisme.
- Semaine 3 : droits de l''enfant et droits humains.
- Semaine 4 : institutions de la République et séparation des pouvoirs.
- Semaine 5 : démocratie, élections, partis politiques, société civile.
- Semaine 6 : intégration africaine (UA, CEDEAO, UEMOA).
- Semaine 7 : environnement et santé publique.
- Semaine 8 : sujets complets en temps limité et fiches de dernière minute.

Consacrez 30 minutes par jour : 10 minutes de fiche, 15 minutes d''exercice, 5 minutes de récitation des définitions.

## Points clés

- Quatre formes d''exercices : questions de cours, étude de document, situation-problème, opinion argumentée.
- Une situation-problème se traite en trois temps : problème, règle, solutions.
- Les définitions doivent être apprises mot à mot.

## Exercices pratiques

Exercice 1 (facile). Citez les quatre types d''exercices de l''épreuve.

Exercice 2 (facile). Corrigez la définition : « La démocratie, c''est faire ce qu''on veut. »

Exercice 3 (moyen). Situation : des élèves écrivent sur les murs de leur collège. Nommez le problème et proposez deux solutions.

Exercice 4 (moyen). Rédigez une position argumentée en cinq lignes sur : « Faut-il porter l''uniforme scolaire ? »

Exercice 5 (moyen). Traitez la situation d''Awa en ajoutant une solution que peut prendre l''État.

Exercice 6 (difficile). Établissez votre planning détaillé pour la semaine 3.

## Corrigé

Exercice 1. Questions de cours, étude de document, situation-problème, question d''opinion argumentée.

Exercice 2. La démocratie est un régime politique dans lequel le pouvoir appartient au peuple, qui l''exerce directement ou par l''intermédiaire de représentants élus, dans le respect des lois et des libertés. La liberté y est encadrée par la loi : elle s''arrête là où commence celle des autres.

Exercice 3. Problème : incivisme, dégradation d''un bien public. Solutions : sensibilisation par le gouvernement scolaire et les professeurs, application du règlement intérieur, réparation par les auteurs (nettoyage), création d''un espace d''expression comme un journal mural.

Exercice 4. Exemple : « Je pense que l''uniforme est utile. D''abord, il réduit les différences visibles entre élèves riches et pauvres et limite les moqueries. Ensuite, il renforce le sentiment d''appartenance à l''établissement. Certes, il a un coût pour les familles, mais il évite d''acheter de nombreux vêtements. L''uniforme favorise donc l''égalité et la cohésion. » Toute position bien argumentée est acceptée.

Exercice 5. En plus des solutions locales, l''État peut faire appliquer l''obligation scolaire, construire des écoles de proximité, développer des cantines scolaires et des bourses, et mener des campagnes en faveur de la scolarisation des filles.

Exercice 6. Exemple : lundi, définition et caractères des droits humains ; mardi, la Déclaration universelle de 1948 ; mercredi, la Convention relative aux droits de l''enfant de 1989 ; jeudi, la Charte africaine des droits et du bien-être de l''enfant ; vendredi, situations-problèmes sur le travail des enfants ; samedi, sujet d''opinion sur le mariage précoce ; dimanche, récitation avec un camarade.', 'texte', 45, true, 10
from public.courses c where c.slug = 'bfem-education-civique'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Comprendre l''épreuve et méthode de travail');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Citoyenneté, droits et devoirs, droits de l''enfant et droits humains', '## Objectifs de la leçon

- Définir la citoyenneté et connaître les symboles de la République.
- Distinguer droits et devoirs du citoyen.
- Connaître les grands textes des droits humains et des droits de l''enfant.

## Fiche 1 : la citoyenneté

Un citoyen est une personne membre d''un État, qui jouit de droits civils et politiques et doit accomplir des devoirs envers la communauté. La nationalité est le lien juridique qui rattache une personne à un État ; on peut être sénégalais de naissance ou le devenir selon les conditions prévues par la loi. La citoyenneté se vit aussi au quotidien : à l''école, dans le quartier, sur la route.

Le civisme est le respect et le dévouement du citoyen envers la collectivité et ses règles. Son contraire, l''incivisme, se manifeste par le vol, la dégradation des biens publics, les ordures jetées dans la rue ou la fraude.

Les symboles de la République du Sénégal :

- Le drapeau : trois bandes verticales verte, or et rouge, avec une étoile verte au centre de la bande or.
- La devise : « Un Peuple – Un But – Une Foi ».
- L''hymne national : « Le Lion rouge », dont le texte a été écrit par Léopold Sédar Senghor.
- Le sceau et les armoiries de la République.

Respecter ces symboles, c''est respecter la nation tout entière.

## Fiche 2 : droits et devoirs

Un droit est ce que la loi permet ou garantit à une personne ; un devoir est ce que la loi ou la morale impose.

- Droits du citoyen : droit à la vie et à la sécurité, liberté d''expression, liberté de conscience et de religion, droit à l''éducation, à la santé, au travail, droit de vote, droit de propriété.
- Devoirs du citoyen : respecter les lois et les institutions, payer l''impôt, défendre la patrie, voter, protéger les biens publics et l''environnement, respecter les droits des autres.

Droits et devoirs vont ensemble : je ne peux exiger que l''on respecte mes droits si je ne respecte pas ceux des autres. Le Sénégal est une République laïque : l''État respecte toutes les croyances et ne privilégie aucune religion.

## Fiche 3 : les droits humains

Les droits humains (ou droits de l''homme) sont les droits que possède toute personne du seul fait qu''elle est un être humain. Ils sont universels (pour tous), inaliénables (on ne peut pas les retirer) et indivisibles (ils forment un tout).

- Déclaration universelle des droits de l''homme : adoptée par l''Assemblée générale de l''ONU le 10 décembre 1948.
- Charte africaine des droits de l''homme et des peuples : adoptée en 1981 dans le cadre de l''OUA ; elle insiste aussi sur les devoirs de l''individu envers sa famille et sa communauté.
- La Constitution du Sénégal affirme son attachement à ces textes.

Les violations : torture, discriminations (selon le sexe, l''ethnie, la religion, le handicap), traite des personnes, violences faites aux femmes. Des organisations de défense des droits humains, nationales et internationales, les dénoncent.

## Fiche 4 : les droits de l''enfant

Un enfant est, au sens de la Convention relative aux droits de l''enfant, tout être humain de moins de 18 ans. Cette Convention a été adoptée par l''ONU le 20 novembre 1989 ; le Sénégal l''a ratifiée. Sur le plan africain, la Charte africaine des droits et du bien-être de l''enfant date de 1990.

Grands principes : la non-discrimination, l''intérêt supérieur de l''enfant, le droit à la vie et au développement, le respect de l''opinion de l''enfant.

Droits principaux : nom et nationalité dès la naissance (d''où l''importance de déclarer la naissance à l''état civil), santé, éducation, loisirs, protection contre la violence, l''exploitation économique et les pratiques néfastes (mariage précoce, mutilations génitales féminines, mendicité forcée).

L''enfant a aussi des devoirs : respecter ses parents et ses maîtres, étudier, participer à la vie de la famille selon son âge, respecter les autres.

## Exemple d''étude de situation

Un garçon de 10 ans mendie toute la journée au carrefour d''une grande ville. Problème : exploitation de l''enfant et violation de ses droits à l''éducation, à la santé et à la protection. Règle : Convention relative aux droits de l''enfant et lois nationales de protection de l''enfance. Solutions : signaler la situation aux services de protection de l''enfance, sensibiliser la famille et la communauté, offrir un accès à l''école ou à une formation.

## Points clés

- Citoyen : membre d''un État, avec des droits et des devoirs.
- Devise : « Un Peuple – Un But – Une Foi ».
- DUDH : 10 décembre 1948 ; Charte africaine des droits de l''homme et des peuples : 1981.
- Convention relative aux droits de l''enfant : 20 novembre 1989 ; un enfant a moins de 18 ans.

## Exercices pratiques

Exercice 1 (facile). Définissez : citoyen, civisme, droit, devoir.

Exercice 2 (facile). Décrivez le drapeau du Sénégal et citez la devise.

Exercice 3 (facile). Classez en droits ou devoirs : payer l''impôt, aller à l''école, voter, s''exprimer librement, protéger les biens publics, être soigné.

Exercice 4 (moyen). Expliquez les trois caractères des droits humains.

Exercice 5 (moyen). Pourquoi est-il important de déclarer la naissance d''un enfant ?

Exercice 6 (moyen). Situation : Fatou, 14 ans, va être mariée par sa famille. Analysez la situation et proposez des solutions.

Exercice 7 (difficile). « Il ne peut y avoir de droits sans devoirs. » Donnez votre avis en un paragraphe argumenté.

## Corrigé

Exercice 1. Citoyen : membre d''un État jouissant de droits civils et politiques et soumis à des devoirs. Civisme : respect et dévouement du citoyen envers la collectivité et ses règles. Droit : ce que la loi permet ou garantit à une personne. Devoir : obligation imposée par la loi ou la morale.

Exercice 2. Trois bandes verticales verte, or et rouge, avec une étoile verte au centre. Devise : « Un Peuple – Un But – Une Foi ».

Exercice 3. Droits : aller à l''école (droit à l''éducation), s''exprimer librement, être soigné. Devoirs : payer l''impôt, protéger les biens publics. Voter est à la fois un droit et un devoir civique.

Exercice 4. Universels : ils concernent tous les êtres humains sans distinction. Inaliénables : personne ne peut en être privé ni y renoncer. Indivisibles : on ne peut pas en respecter certains et en violer d''autres, ils forment un ensemble.

Exercice 5. La déclaration à l''état civil donne à l''enfant un nom et une existence juridique ; elle permet d''obtenir un extrait de naissance, nécessaire pour s''inscrire à l''école, passer des examens comme le BFEM, obtenir plus tard une carte d''identité et exercer ses droits de citoyen.

Exercice 6. Problème : mariage précoce, violation des droits de l''enfant (éducation, santé, protection). Fatou a moins de 18 ans : c''est une enfant au sens de la Convention. Conséquences possibles : abandon scolaire, grossesses précoces dangereuses pour la santé. Solutions : dialogue avec la famille, intervention des enseignants, des leaders religieux et communautaires, signalement aux services de protection de l''enfance, maintien de Fatou à l''école.

Exercice 7. Exemple : « Je suis d''accord. Les droits supposent une société organisée qui les garantit ; or cette société ne fonctionne que si chacun accomplit ses devoirs. Par exemple, le droit à l''éducation exige des écoles financées par l''impôt que paient les citoyens. De même, ma liberté d''expression doit respecter la dignité des autres. Droits et devoirs sont donc inséparables. »', 'texte', 60, false, 20
from public.courses c where c.slug = 'bfem-education-civique'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Citoyenneté, droits et devoirs, droits de l''enfant et droits humains');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Institutions de la République, démocratie et élections', '## Objectifs de la leçon

- Présenter de façon générale les institutions de la République du Sénégal.
- Comprendre la séparation des pouvoirs et l''État de droit.
- Connaître les principes de la démocratie et du vote.

## Fiche 1 : l''État et la République

L''État est une collectivité humaine organisée, installée sur un territoire, dotée d''un gouvernement et souveraine. La nation est une communauté de personnes unies par l''histoire, la culture et la volonté de vivre ensemble. Le Sénégal est une République : le pouvoir n''est pas héréditaire, ses dirigeants sont élus. La Constitution est la loi fondamentale : elle organise les pouvoirs et garantit les droits et libertés. La Constitution actuelle a été adoptée par référendum en 2001 ; elle a été révisée à plusieurs reprises, c''est pourquoi il faut toujours se référer au texte en vigueur pour les détails.

## Fiche 2 : la séparation des pouvoirs

Pour éviter qu''une seule personne concentre tout le pouvoir, la Constitution répartit trois pouvoirs entre des institutions différentes.

- Le pouvoir exécutif applique les lois et conduit la politique de la nation. Il est exercé par le président de la République, élu au suffrage universel direct, chef de l''État, garant de la Constitution et chef suprême des armées, et par le Gouvernement, dirigé par le Premier ministre, composé de ministres.
- Le pouvoir législatif vote les lois, adopte le budget et contrôle l''action du Gouvernement. Il est exercé par l''Assemblée nationale, dont les membres, les députés, sont élus par le peuple.
- Le pouvoir judiciaire rend la justice et règle les conflits. Il est exercé par les juges des cours et tribunaux. Le Conseil constitutionnel veille notamment à la conformité des lois à la Constitution et intervient dans le contentieux de certaines élections ; la Cour suprême et la Cour des comptes complètent l''organisation de la justice.

La durée des mandats et certains organes ont changé au fil des révisions constitutionnelles : retenez surtout le rôle de chaque pouvoir.

## Fiche 3 : l''État de droit et la décentralisation

Dans un État de droit, tout le monde, gouvernants compris, est soumis à la loi, et un juge indépendant peut sanctionner les abus. La décentralisation confie des compétences aux collectivités territoriales (départements, communes), administrées par des conseils élus, afin de rapprocher les décisions des citoyens : gestion des écoles de proximité, de l''état civil, de l''assainissement, par exemple.

## Fiche 4 : la démocratie

La démocratie est le régime politique dans lequel le pouvoir appartient au peuple. On parle de démocratie représentative quand le peuple élit des représentants ; de démocratie directe quand il décide lui-même, par exemple par référendum.

Les piliers d''une démocratie :

- Des élections libres, transparentes et régulières.
- Le pluralisme politique : plusieurs partis peuvent exister et se présenter.
- Les libertés publiques : expression, presse, réunion, association.
- La séparation des pouvoirs et l''indépendance de la justice.
- Une société civile active : associations, syndicats, organisations de défense des droits humains.
- L''alternance : la possibilité pour l''opposition d''arriver au pouvoir par les urnes. Le Sénégal a connu plusieurs alternances pacifiques (2000, 2012, 2024).

## Fiche 5 : les élections

Le suffrage universel signifie que tous les citoyens remplissant les conditions légales (âge, nationalité, inscription sur les listes électorales, jouissance des droits civiques) peuvent voter. Au Sénégal, on peut voter à partir de 18 ans. Le vote est secret : l''électeur passe par l''isoloir. Le déroulement : inscription sur les listes, retrait de la carte d''électeur, campagne électorale, vote au bureau, dépouillement public, proclamation des résultats, éventuels recours devant le juge compétent.

Types d''élections : présidentielle, législatives, territoriales (locales), et le référendum. Les fraudes (achat de voix, votes multiples) et les violences électorales menacent la démocratie.

## Points clés

- Trois pouvoirs : exécutif, législatif, judiciaire, exercés par des institutions distinctes.
- La Constitution, adoptée en 2001, est la loi fondamentale.
- Démocratie : élections libres, pluralisme, libertés, alternance.
- Le vote est universel, secret, personnel ; âge requis : 18 ans.

## Exercices pratiques

Exercice 1 (facile). Définissez : État, nation, Constitution.

Exercice 2 (facile). Associez chaque pouvoir à son rôle et à son institution.

Exercice 3 (facile). Citez quatre piliers de la démocratie.

Exercice 4 (moyen). Expliquez pourquoi la séparation des pouvoirs protège les libertés.

Exercice 5 (moyen). Décrivez dans l''ordre les étapes d''une élection.

Exercice 6 (moyen). Situation : dans un quartier, un candidat distribue de l''argent en échange de votes. Analysez.

Exercice 7 (difficile). « Voter est un droit, mais aussi un devoir. » Discutez en un paragraphe argumenté.

## Corrigé

Exercice 1. État : collectivité humaine organisée sur un territoire, dotée d''un gouvernement et souveraine. Nation : communauté de personnes unies par l''histoire, la culture et la volonté de vivre ensemble. Constitution : loi fondamentale qui organise les pouvoirs publics et garantit les droits et libertés.

Exercice 2. Exécutif : appliquer les lois et conduire la politique de la nation ; président de la République et Gouvernement. Législatif : voter les lois et contrôler le Gouvernement ; Assemblée nationale. Judiciaire : rendre la justice ; cours et tribunaux.

Exercice 3. Élections libres et régulières, pluralisme politique, libertés publiques, séparation des pouvoirs (on accepte aussi : société civile active, alternance).

Exercice 4. Si une seule personne faisait les lois, les appliquait et jugeait, elle pourrait abuser de son pouvoir sans contrôle. En séparant les pouvoirs, chacun contrôle et limite les autres : l''Assemblée contrôle le Gouvernement, le juge sanctionne les abus. Les libertés des citoyens sont ainsi mieux protégées.

Exercice 5. Inscription sur les listes électorales, retrait de la carte d''électeur, campagne électorale, vote secret au bureau de vote, dépouillement public, proclamation des résultats, recours éventuels.

Exercice 6. Il s''agit d''achat de conscience, une fraude électorale. Elle fausse le choix libre des électeurs et la sincérité du scrutin. L''électeur doit refuser et peut signaler les faits ; les partis, la société civile et les autorités doivent sensibiliser les citoyens et faire respecter la loi.

Exercice 7. Exemple : « Voter est un droit, car la loi le reconnaît à tout citoyen remplissant les conditions. C''est aussi un devoir civique : en s''abstenant, on laisse les autres décider à sa place. Ainsi, une élection où peu de jeunes votent risque de mal représenter leurs préoccupations comme l''emploi ou l''éducation. Voter, c''est donc participer à la construction du pays. »', 'texte', 60, false, 30
from public.courses c where c.slug = 'bfem-education-civique'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Institutions de la République, démocratie et élections');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Intégration africaine, environnement et santé publique', '## Objectifs de la leçon

- Expliquer le sens de l''intégration africaine et présenter l''UA, la CEDEAO et l''UEMOA.
- Identifier les grands problèmes d''environnement au Sénégal et les solutions.
- Comprendre les enjeux de santé publique et le rôle du citoyen.

## Fiche 1 : l''intégration africaine

L''intégration est le processus par lequel des États s''unissent pour coopérer et former un ensemble plus fort sur les plans politique, économique et culturel. Elle répond au rêve panafricaniste de dirigeants comme Kwame Nkrumah et aux réalités du continent : marchés nationaux étroits, frontières héritées de la colonisation, défis communs.

- L''Union africaine (UA) a succédé en 2002 à l''Organisation de l''unité africaine, créée en 1963. Son siège est à Addis-Abeba (Éthiopie). Elle rassemble les États du continent et vise l''unité, la paix, la sécurité et le développement de l''Afrique.
- La CEDEAO (Communauté économique des États de l''Afrique de l''Ouest) a été créée en 1975 par le traité de Lagos. Son siège est à Abuja (Nigeria). Elle vise la libre circulation des personnes et des biens, la coopération économique et la paix régionale. Sa composition a évolué ces dernières années, avec le retrait de certains pays du Sahel.
- L''UEMOA (Union économique et monétaire ouest-africaine) a été créée en 1994 par un traité signé à Dakar. Elle regroupe des pays d''Afrique de l''Ouest, dont le Sénégal, qui partagent une monnaie commune, le franc CFA, émis par la BCEAO dont le siège est à Dakar. Elle cherche à construire un marché commun et à coordonner les politiques économiques.

Avantages de l''intégration : marché plus vaste, libre circulation, projets communs (routes, énergie), poids diplomatique accru. Obstacles : tracasseries aux frontières, conflits, inégalités entre pays, faiblesse des échanges entre pays africains.

Le Sénégal participe aussi à des organisations de bassin comme l''OMVS (Organisation pour la mise en valeur du fleuve Sénégal), exemple concret de coopération autour d''une ressource partagée.

## Fiche 2 : l''environnement

L''environnement est l''ensemble des éléments naturels (air, eau, sol, faune, flore) et humains qui entourent les êtres vivants. Problèmes au Sénégal :

- Les déchets, en particulier les sachets plastiques, qui bouchent les canalisations et tuent le bétail.
- L''insalubrité urbaine et les inondations pendant l''hivernage dans certains quartiers.
- La déforestation (coupe de bois de chauffe, feux de brousse) et la désertification au nord.
- L''érosion côtière à Saint-Louis, Rufisque et ailleurs.
- La pollution de l''air dans les grandes villes et la pollution des eaux.

Solutions : tri et collecte des déchets, journées de nettoyage citoyen (set setal), reboisement, lutte contre les feux de brousse, protection des mangroves, préservation des aires protégées comme le parc national du Niokolo-Koba ou le parc des oiseaux du Djoudj. À l''échelle africaine, le projet de la Grande Muraille verte vise à freiner l''avancée du désert dans le Sahel.

## Fiche 3 : la santé publique

La santé publique concerne la santé de toute la population et les moyens collectifs de la protéger. Grands enjeux :

- Le paludisme, transmis par la piqûre de moustiques ; prévention par la moustiquaire imprégnée et l''élimination des eaux stagnantes.
- Le VIH/SIDA ; prévention par l''information, le dépistage volontaire, l''abstinence, la fidélité et l''usage du préservatif, et par la non-discrimination envers les personnes vivant avec le VIH.
- Les maladies évitables par la vaccination ; respecter le calendrier vaccinal des enfants.
- Les maladies liées à l''eau et à l''hygiène (diarrhées, choléra) ; lavage des mains, eau potable.
- Les addictions (tabac, alcool, drogues) et les accidents de la route.

Le citoyen a des droits (accès aux soins) et des devoirs : respecter les règles d''hygiène, se faire vacciner, ne pas polluer, participer aux campagnes de sensibilisation.

## Points clés

- UA : 2002, siège à Addis-Abeba ; CEDEAO : 1975, siège à Abuja ; UEMOA : 1994, monnaie franc CFA.
- Intégration : avantages économiques et politiques, mais obstacles à surmonter.
- Environnement : déchets, déforestation, érosion côtière ; solutions collectives et individuelles.
- Santé publique : prévention avant tout.

## Exercices pratiques

Exercice 1 (facile). Définissez : intégration, environnement, santé publique.

Exercice 2 (facile). Complétez : l''UA a remplacé l''… en …, son siège est à … ; la CEDEAO a été créée en … ; l''UEMOA utilise une monnaie commune, le …

Exercice 3 (facile). Citez trois problèmes d''environnement au Sénégal.

Exercice 4 (moyen). Donnez trois avantages et deux obstacles de l''intégration africaine.

Exercice 5 (moyen). Situation : dans un quartier de Pikine, les ordures s''accumulent et l''eau stagne après les pluies. Quels risques pour la santé ? Quelles solutions ?

Exercice 6 (moyen). Expliquez pourquoi la vaccination est un acte de santé publique et pas seulement individuel.

Exercice 7 (difficile). Rédigez un texte argumenté de dix lignes : « L''intégration africaine est une nécessité pour le développement du Sénégal. »

## Corrigé

Exercice 1. Intégration : processus par lequel des États s''unissent pour coopérer et former un ensemble plus fort. Environnement : ensemble des éléments naturels et humains qui entourent les êtres vivants. Santé publique : santé de l''ensemble de la population et moyens collectifs de la protéger.

Exercice 2. L''UA a remplacé l''OUA en 2002, son siège est à Addis-Abeba ; la CEDEAO a été créée en 1975 ; l''UEMOA utilise le franc CFA.

Exercice 3. Les déchets plastiques, la déforestation et la désertification, l''érosion côtière (on accepte aussi : inondations, pollution de l''air et de l''eau).

Exercice 4. Avantages : marché plus vaste pour les entreprises, libre circulation des personnes et des biens, projets communs d''infrastructures, poids accru dans les négociations internationales. Obstacles : tracasseries aux frontières, conflits et instabilité, inégalités de développement entre pays.

Exercice 5. Risques : paludisme (l''eau stagnante favorise la reproduction des moustiques), diarrhées et choléra, infections de la peau, mauvaises odeurs et rats. Solutions : organiser la collecte des ordures avec la commune, journées set setal, évacuation des eaux, moustiquaires imprégnées, sensibilisation des habitants.

Exercice 6. Une personne vaccinée est protégée, mais elle ne transmet pas non plus la maladie. Quand une grande partie de la population est vaccinée, la maladie circule difficilement et les plus fragiles (nourrissons, malades) sont protégés. C''est donc un geste de solidarité.

Exercice 7. Exemple : « Le Sénégal a un marché intérieur limité. Grâce à la CEDEAO et à l''UEMOA, ses entreprises peuvent vendre dans d''autres pays de la région, et ses citoyens circuler plus librement pour étudier ou travailler. La monnaie commune facilite les échanges avec les pays de l''UEMOA. De plus, certains défis comme la sécurité, la gestion du fleuve Sénégal avec l''OMVS ou la lutte contre la désertification ne peuvent être relevés qu''ensemble. Enfin, unie au sein de l''UA, l''Afrique pèse davantage dans le monde. L''intégration est donc une nécessité, à condition de lever les obstacles aux frontières. »', 'texte', 60, false, 40
from public.courses c where c.slug = 'bfem-education-civique'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Intégration africaine, environnement et santé publique');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Sujet type d''examen : entraînement corrigé', '## Présentation du sujet

Ce sujet est un sujet d''entraînement conçu pour ce cours ; ce n''est pas un sujet officiel du BFEM. La durée et le barème réels sont fixés selon les textes officiels en vigueur ; le barème sur 20 points indiqué ici sert seulement à l''auto-évaluation. Traitez le sujet en temps limité, sans document, avant de lire le corrigé.

## Conseils avant de commencer

- Lisez tout le sujet et repérez les verbes : « définir », « citer », « expliquer », « proposer », « donner son avis ».
- Commencez par les questions de cours, rapides et sûres.
- Dans la situation-problème, n''oubliez jamais les solutions.
- Gardez du temps pour relire l''orthographe et la présentation.

## Exercices pratiques

Exercice 1. Questions de cours (4 points). a) Définissez la démocratie. b) Citez les trois pouvoirs et l''institution qui exerce chacun. c) Citez la devise du Sénégal.

Exercice 2. Étude de document (5 points). Document : « Tout enfant a droit à l''éducation. Les États rendent l''enseignement primaire obligatoire et gratuit pour tous. » (Texte d''entraînement résumant un principe de la Convention relative aux droits de l''enfant de 1989.) Questions : a) Quel droit est évoqué ? b) Qui est considéré comme un enfant selon cette Convention ? c) Citez deux obstacles à la scolarisation des enfants au Sénégal. d) Proposez deux solutions.

Exercice 3. Situation-problème (6 points). « À la veille d''une élection, Moussa, 19 ans, dit à ses amis : “Je ne m''inscris pas sur les listes, voter ne sert à rien.” Son voisin, lui, a reçu de l''argent d''un candidat. » a) Identifiez les deux problèmes. b) Expliquez pourquoi ils menacent la démocratie. c) Que diriez-vous à Moussa ? d) Quelles actions la communauté peut-elle mener ?

Exercice 4. Opinion argumentée (5 points). « L''intégration africaine profite aux jeunes Sénégalais. » Êtes-vous d''accord ? Justifiez en une quinzaine de lignes.

## Corrigé

Exercice 1. a) (2 points) Régime politique dans lequel le pouvoir appartient au peuple, qui l''exerce directement ou par ses représentants élus, dans le respect des libertés et de la loi. b) (1,5 point) Exécutif : président de la République et Gouvernement ; législatif : Assemblée nationale ; judiciaire : cours et tribunaux. c) (0,5 point) « Un Peuple – Un But – Une Foi ». Conseil de notation : une définition incomplète ne reçoit qu''une partie des points.

Exercice 2. a) (1 point) Le droit à l''éducation. b) (1 point) Tout être humain âgé de moins de 18 ans. c) (1,5 point) Pauvreté des familles, travail des enfants, éloignement de l''école, mariage précoce des filles, absence de déclaration de naissance (deux suffisent). d) (1,5 point) Construire des écoles de proximité, développer les cantines scolaires, sensibiliser les parents, déclarer toutes les naissances, appliquer l''obligation scolaire. Conseil : citez le document avant de l''expliquer.

Exercice 3. a) (1 point) L''abstention et la non-inscription de Moussa ; l''achat de voix dont a bénéficié le voisin. b) (2 points) L''abstention affaiblit la représentativité des élus : si les jeunes ne votent pas, leurs préoccupations sont moins prises en compte. L''achat de voix fausse la sincérité du scrutin : l''élu ne l''est plus par un choix libre mais par l''argent. c) (1,5 point) Moussa a 19 ans, il remplit la condition d''âge pour voter. Voter est un droit conquis et un devoir civique ; c''est le moyen pacifique de choisir ses dirigeants et de les sanctionner, comme le montrent les alternances que le Sénégal a connues. d) (1,5 point) Campagnes d''inscription et de sensibilisation par les associations de jeunes, débats dans les quartiers, rappel que l''achat de voix est interdit et peut être signalé. Conseil de notation : une solution sans justification vaut peu.

Exercice 4 (1 point pour la position, 3 points pour les arguments et exemples, 1 point pour la conclusion et la langue). Exemple de plan : position, « Je suis d''accord, avec des réserves ». Arguments : la libre circulation dans l''espace CEDEAO permet de voyager, d''étudier ou de travailler dans les pays voisins ; la monnaie commune de l''UEMOA facilite le commerce, par exemple pour un jeune commerçant de Kaolack qui vend au Mali ; les projets communs (routes, énergie, fleuve Sénégal avec l''OMVS) créent des emplois. Réserves : tracasseries aux frontières, chômage persistant, faible commerce entre pays africains. Conclusion : l''intégration est une chance pour les jeunes si elle devient plus concrète au quotidien. Toute position cohérente et argumentée est acceptée.

Exemple de rédaction complète pour l''exercice 4 :

« Je pense que l''intégration africaine profite aux jeunes Sénégalais, même si ses effets restent encore limités. D''abord, elle leur ouvre des possibilités de mobilité : grâce à la libre circulation dans l''espace CEDEAO, un étudiant de Ziguinchor peut poursuivre une formation dans un pays voisin, et un jeune artisan peut aller y vendre ses produits. Ensuite, la monnaie commune de l''UEMOA évite les frais de change avec les pays membres et facilite le petit commerce transfrontalier. Enfin, les grands projets communs, comme ceux de l''OMVS sur le fleuve Sénégal, créent des emplois et fournissent de l''électricité. Cependant, les contrôles abusifs aux frontières et le manque d''information découragent encore beaucoup de jeunes. L''intégration est donc une chance réelle, qui doit devenir plus visible dans la vie quotidienne. »

Erreurs fréquentes relevées sur ce type de sujet :

- Réciter le cours sur l''UA sans répondre à la question posée.
- Donner des arguments sans exemple concret.
- Oublier les solutions dans la situation-problème.
- Confondre la CEDEAO (communauté économique) et l''UEMOA (union économique et monétaire).

S''auto-évaluer après le sujet. Moins de 10 : reprenez les définitions et la méthode de la situation-problème. Entre 10 et 14 : travaillez les exemples concrets. Plus de 14 : entraînez-vous à rédiger plus vite.', 'texte', 75, false, 50
from public.courses c where c.slug = 'bfem-education-civique'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Sujet type d''examen : entraînement corrigé');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : révision intensive veille d''examen en Éducation civique', '## Fiche du cours vidéo

- Durée : 1h30.
- Thème : séance de révision intensive « veille d''examen » en Éducation civique.
- Objectifs : revoir les définitions et notions clés, corriger une situation-problème et une opinion argumentée, gérer son temps, vérifier ses acquis par un quiz et une évaluation finale.
- Matériel : tableau ou diaporama, schéma de la séparation des pouvoirs, carte de l''Afrique de l''Ouest, image du drapeau du Sénégal.
- Prérequis : avoir lu les leçons 1 à 5 de ce cours.

## Déroulé minuté

## 00:00 – 05:00 · Accueil et objectifs

« Bonjour à toutes et à tous. Ce soir, c''est notre séance de révision intensive avant l''épreuve d''Éducation civique. Le but n''est pas d''apprendre du nouveau, mais de tout remettre en ordre dans votre tête. Nous verrons d''abord les définitions qui reviennent toujours, puis les institutions, puis les droits, l''intégration africaine, l''environnement et la santé. Nous corrigerons ensemble une situation-problème et une opinion argumentée. Préparez une feuille : il y aura un quiz au milieu et une évaluation à la fin. »

Visuel : le plan de la séance.

## 05:00 – 18:00 · Les quinze définitions à savoir par cœur

« Je vous donne les définitions ; répétez-les après moi. Le citoyen est le membre d''un État qui jouit de droits et doit accomplir des devoirs. Le civisme est le respect du citoyen envers la collectivité et ses règles. L''État est une collectivité organisée, sur un territoire, avec un gouvernement, et souveraine. La nation est une communauté unie par l''histoire, la culture et la volonté de vivre ensemble. La Constitution est la loi fondamentale. La démocratie est le régime où le pouvoir appartient au peuple. »

« Continuons. Un droit est ce que la loi garantit ; un devoir est ce qu''elle impose. Les droits humains sont universels, inaliénables et indivisibles. L''enfant est tout être humain de moins de 18 ans. L''intégration est l''union d''États pour coopérer. L''environnement est l''ensemble des éléments naturels et humains qui nous entourent. La santé publique concerne la santé de toute la population. La décentralisation confie des compétences à des collectivités territoriales élues. Le suffrage universel permet à tous les citoyens remplissant les conditions légales de voter. »

Question à poser : « Sans regarder, définissez la démocratie et la Constitution. » Laisser une minute.

## 18:00 – 30:00 · Les institutions et la démocratie

« Dessinons le schéma des trois pouvoirs. À gauche, l''exécutif : le président de la République, élu au suffrage universel direct, et le Gouvernement dirigé par le Premier ministre ; il applique les lois. Au centre, le législatif : l''Assemblée nationale, composée de députés élus ; elle vote les lois et contrôle le Gouvernement. À droite, le judiciaire : les cours et tribunaux qui rendent la justice, avec le Conseil constitutionnel qui veille au respect de la Constitution. Les flèches entre eux montrent qu''ils se contrôlent mutuellement. »

« Attention : les détails, comme la durée des mandats ou certains organes, ont changé au fil des révisions de la Constitution. À l''examen, on vous demande surtout le rôle de chaque pouvoir. Pour la démocratie, retenez les piliers : élections libres, pluralisme, libertés publiques, séparation des pouvoirs, société civile, alternance. Le Sénégal a connu des alternances pacifiques en 2000, 2012 et 2024. »

Visuel : schéma des trois pouvoirs avec flèches de contrôle.

## 30:00 – 40:00 · Droits de l''enfant et droits humains

« Trois dates : 10 décembre 1948, la Déclaration universelle des droits de l''homme ; 1981, la Charte africaine des droits de l''homme et des peuples ; 20 novembre 1989, la Convention relative aux droits de l''enfant. Les principes de cette Convention : non-discrimination, intérêt supérieur de l''enfant, droit à la vie et au développement, respect de son opinion. Les violations les plus citées au Sénégal dans les sujets : mendicité forcée, mariage précoce, travail des enfants, non-déclaration des naissances. »

Question à poser : « Pourquoi un extrait de naissance est-il indispensable pour passer le BFEM ? » Réponse attendue : il prouve l''identité et l''âge du candidat, il donne une existence juridique.

## 40:00 – 48:00 · Pause active et quiz

« Petite pause active : six questions, trente secondes chacune. »

- Question 1 : quelle est la devise du Sénégal ? Réponse : « Un Peuple – Un But – Une Foi ».
- Question 2 : quelle institution vote les lois ? Réponse : l''Assemblée nationale.
- Question 3 : à partir de quel âge peut-on voter au Sénégal ? Réponse : 18 ans.
- Question 4 : en quelle année l''UA a-t-elle remplacé l''OUA ? Réponse : 2002.
- Question 5 : quelle monnaie partagent les pays de l''UEMOA ? Réponse : le franc CFA.
- Question 6 : quel geste simple protège contre le paludisme la nuit ? Réponse : dormir sous une moustiquaire imprégnée.

« Cinq ou six : excellent. Moins de quatre : revoyez vos définitions ce soir. »

## 48:00 – 58:00 · Intégration africaine, environnement, santé

« L''intégration : l''UA, créée en 2002, siège à Addis-Abeba ; la CEDEAO, créée en 1975, siège à Abuja ; l''UEMOA, créée en 1994 par un traité signé à Dakar, monnaie commune franc CFA émise par la BCEAO. Avantages : marché plus vaste, libre circulation, projets communs. Obstacles : tracasseries aux frontières, conflits, inégalités. »

« Environnement : déchets plastiques, déforestation, désertification, érosion côtière à Saint-Louis et à Rufisque, inondations. Solutions : collecte et tri, set setal, reboisement, protection des mangroves et des parcs. Santé publique : paludisme, VIH/SIDA, maladies évitables par la vaccination, hygiène de l''eau. Le mot clé, c''est la prévention. »

## 58:00 – 1:10:00 · Correction commentée : une situation-problème

« Situation : “Dans un quartier de Thiès, des habitants brûlent leurs ordures dans la rue ; des enfants toussent beaucoup.” Je vous montre la méthode en trois temps. Premier temps, le problème : pollution de l''air et atteinte à la santé, donc une atteinte à l''environnement et au droit à la santé. Deuxième temps, la règle : chacun a le devoir de protéger l''environnement et la santé des autres ; les communes ont des compétences en matière d''assainissement. Troisième temps, les solutions, à quatre niveaux : individuel, ne plus brûler et trier ses déchets ; familial, sensibiliser les enfants ; communautaire, organiser un set setal et un point de collecte ; autorités, demander à la commune un ramassage régulier. »

« Erreur à éviter : proposer une seule solution vague comme “il faut que l''État agisse”. Le correcteur attend plusieurs acteurs et des actions précises. »

## 1:10:00 – 1:17:00 · Correction commentée : l''opinion argumentée

« Sujet : “Les jeunes doivent-ils s''engager dans la vie de leur quartier ?” Je prends position : oui. Argument 1 : l''engagement développe le civisme ; exemple, une association de jeunes qui organise le nettoyage du quartier. Argument 2 : il prépare à la citoyenneté adulte ; exemple, le gouvernement scolaire apprend à débattre et à voter. Argument 3 : il renforce la solidarité ; exemple, une collecte de fournitures pour les élèves démunis. Conclusion : s''engager, c''est déjà être citoyen. »

## 1:17:00 – 1:22:00 · Gérer son temps le jour J

« La durée exacte de l''épreuve est fixée selon les textes officiels en vigueur ; vérifiez-la sur votre convocation. Lisez tout le sujet, commencez par les questions de cours, puis l''étude de document, puis la situation-problème et l''opinion argumentée, qui demandent le plus de rédaction. Ne laissez aucune question sans réponse. Gardez quelques minutes pour relire. »

« Concrètement, voici une méthode simple. En entrant dans la salle, notez l''heure de début et l''heure de fin en haut de votre brouillon. Divisez le temps restant en parts à peu près proportionnelles aux points annoncés sur le sujet : une question qui rapporte beaucoup de points mérite plus de temps. Au brouillon, ne rédigez que le plan et les mots clés de l''opinion argumentée ; rédigez directement au propre le reste. Si vous séchez sur une définition, écrivez ce que vous savez avec vos mots, puis donnez un exemple : un exemple juste montre au correcteur que vous avez compris. Soignez enfin l''écriture et la présentation : sautez une ligne entre les questions et numérotez-les comme dans le sujet. »

Question à poser : « Quelle partie allez-vous traiter en premier, et pourquoi ? » Réponse attendue : les questions de cours, rapides et sûres, pour prendre confiance.

## 1:22:00 – 1:28:00 · Évaluation finale

« Cinq questions pour vérifier vos acquis. »

- Question 1 : définissez l''État. Réponse : collectivité humaine organisée, installée sur un territoire, dotée d''un gouvernement et souveraine.
- Question 2 : quel est le rôle du pouvoir judiciaire ? Réponse : rendre la justice et régler les conflits en appliquant la loi.
- Question 3 : citez trois caractères des droits humains. Réponse : universels, inaliénables, indivisibles.
- Question 4 : citez deux avantages de la CEDEAO pour un jeune Sénégalais. Réponse : libre circulation pour étudier ou travailler, marché plus vaste pour vendre ou entreprendre.
- Question 5 : citez deux moyens de prévenir le paludisme. Réponse : moustiquaire imprégnée, élimination des eaux stagnantes.

## 1:28:00 – 1:30:00 · Synthèse et encouragements

« Ce soir, relisez vos définitions et votre schéma des pouvoirs, puis reposez-vous. Demain : définitions précises, méthode problème-règle-solutions, arguments avec exemples sénégalais. Vous êtes prêts. Bonne chance ! »', 'video', 90, false, 60
from public.courses c where c.slug = 'bfem-education-civique'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : révision intensive veille d''examen en Éducation civique');

-- Cours : Sciences de la vie et de la Terre : réussir l'épreuve du BFEM
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'bfem-svt', (select id from public.levels where name = '3e'), null, 'SVT', 'Sciences de la vie et de la Terre : réussir l''épreuve du BFEM', 'Ce cours prépare les élèves de 3e à l''épreuve de Sciences de la vie et de la Terre du BFEM en révisant le programme du collège : fonctions de nutrition et de relation chez l''Homme, reproduction et puberté, immunité et santé (VIH/SIDA, paludisme, vaccination), géologie du Sénégal (sols, roches, érosion), écologie et environnement. Il entraîne aux méthodes d''analyse de schéma, de graphique et d''expérience à travers des fiches, des exercices corrigés et un sujet d''entraînement complet. Prérequis : notions de SVT de la 6e à la 4e.', true, 106
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Comprendre l''épreuve et méthode de travail', '## Objectifs de la leçon

- Savoir ce qu''évalue l''épreuve de SVT au BFEM.
- Maîtriser les méthodes d''analyse de schéma, de graphique et d''expérience.
- Éviter les erreurs fréquentes.
- Organiser ses révisions sur huit semaines.

## Ce que l''épreuve évalue

L''épreuve de SVT vérifie deux types de compétences. D''abord la restitution des connaissances : définir, légender un schéma, décrire un mécanisme (la digestion, le réflexe, la réponse immunitaire). Ensuite le raisonnement scientifique : exploiter un document (schéma, graphique, tableau, résultats d''expérience) pour en tirer une conclusion. La durée, le coefficient et le barème de l''épreuve sont fixés selon les textes officiels en vigueur ; renseignez-vous auprès de votre établissement.

Le programme révisé couvre le collège, avec un accent sur la 3e : nutrition et relation chez l''Homme ; reproduction, puberté, immunité et santé ; géologie et écologie, notamment au Sénégal.

## Méthode 1 : analyser un schéma

- Lire le titre et repérer ce que représente le schéma (organe, appareil, coupe, cycle).
- Légender avec des traits fins, à la règle, horizontaux, sans croisements.
- Utiliser le vocabulaire exact : « alvéole pulmonaire », pas « petite boule ».
- Si l''on vous demande d''expliquer, suivez les flèches dans l''ordre.

## Méthode 2 : analyser un graphique

Retenez la démarche « je vois, je sais, je conclus ».

- Je vois : je décris la courbe en citant les valeurs (abscisse, ordonnée, unités). Par exemple : « La concentration d''anticorps passe de 0 à 10 unités entre le jour 5 et le jour 15. »
- Je sais : j''utilise mes connaissances pour expliquer.
- Je conclus : je réponds à la question posée en une phrase.

Les mots de description : augmente, diminue, reste constant, atteint un maximum, devient nul. Découpez la courbe en phases et décrivez-les une à une.

## Méthode 3 : analyser une expérience

Une expérience scientifique suit la démarche expérimentale :

- Le problème : la question que l''on se pose.
- L''hypothèse : une réponse possible à vérifier.
- Le protocole : ce que l''on fait, avec un seul facteur qui change.
- Le témoin : le montage identique où le facteur étudié est absent ; il permet de comparer.
- Les résultats : ce que l''on observe.
- L''interprétation et la conclusion : l''hypothèse est validée ou rejetée.

Exemple : on veut savoir si la salive agit sur l''amidon. Tube A : empois d''amidon + salive à 37 °C. Tube B (témoin) : empois d''amidon + eau à 37 °C. Après quelques minutes, l''eau iodée ne bleuit plus dans le tube A mais reste bleu-noir dans le tube B ; la liqueur de Fehling chauffée donne un précipité rouge brique dans le tube A. Conclusion : la salive transforme l''amidon en un sucre réducteur (le maltose) grâce à une enzyme, l''amylase salivaire.

## Erreurs fréquentes

- Décrire un graphique sans citer de valeurs ni d''unités.
- Oublier le témoin dans une expérience.
- Confondre description (« je vois ») et explication (« je sais »).
- Schémas trop petits, sans titre, légendes en désordre.
- Confusions classiques : virus et bactérie, respiration et ventilation, réflexe et acte volontaire.

## Plan de révision sur 8 semaines

- Semaine 1 : méthodes (schéma, graphique, expérience) et vocabulaire de base.
- Semaine 2 : digestion et absorption ; respiration.
- Semaine 3 : circulation, sang, excrétion.
- Semaine 4 : système nerveux, réflexes, mouvement.
- Semaine 5 : puberté, reproduction, contraception, infections sexuellement transmissibles.
- Semaine 6 : immunité, VIH/SIDA, paludisme, vaccination.
- Semaine 7 : sols, roches, érosion au Sénégal ; écologie.
- Semaine 8 : sujets complets en temps limité, correction, fiches de dernière minute.

Chaque jour : 15 minutes de fiche, 20 minutes d''exercice, 5 minutes pour refaire de mémoire un schéma.

## Points clés

- Graphique : je vois, je sais, je conclus.
- Expérience : un seul facteur varie, toujours un témoin.
- Schéma : titre, légendes à la règle, vocabulaire exact.

## Exercices pratiques

Exercice 1 (facile). Citez les étapes de la démarche expérimentale.

Exercice 2 (facile). À quoi sert un témoin dans une expérience ?

Exercice 3 (moyen). Décrivez la courbe suivante : la température corporelle d''un élève est de 37 °C à 8 h, monte à 39,5 °C à 14 h, puis redescend à 37,5 °C à 20 h.

Exercice 4 (moyen). Un élève conclut : « La salive digère l''amidon » après avoir observé seulement le tube A. Que lui manque-t-il ?

Exercice 5 (moyen). Proposez une expérience pour montrer que la température influence l''action de l''amylase salivaire.

Exercice 6 (difficile). Rédigez votre planning détaillé de la semaine 6.

## Corrigé

Exercice 1. Problème, hypothèse, protocole (avec témoin), résultats, interprétation, conclusion.

Exercice 2. Le témoin est un montage identique dans lequel le facteur étudié est absent. En comparant, on peut attribuer la différence de résultat à ce seul facteur.

Exercice 3. La température est de 37 °C à 8 h ; elle augmente jusqu''à un maximum de 39,5 °C à 14 h, soit une hausse de 2,5 °C ; puis elle diminue jusqu''à 37,5 °C à 20 h, sans revenir tout à fait à sa valeur initiale. Explication possible : une fièvre, réaction de l''organisme à une infection.

Exercice 4. Il lui manque un tube témoin (amidon + eau) : sans lui, il ne peut pas prouver que c''est la salive, et non le temps ou la chaleur, qui a fait disparaître l''amidon.

Exercice 5. Préparer trois tubes contenant le même volume d''empois d''amidon et de salive, placés à 0 °C (glace), à 37 °C et à 90 °C, plus un tube témoin sans salive à 37 °C. Après un même temps, tester à l''eau iodée. Résultat attendu : l''amidon a disparu seulement à 37 °C ; à 0 °C l''enzyme est inactive (son action reprend si on réchauffe le tube), à 90 °C elle est détruite. Conclusion : l''amylase agit de façon optimale vers la température du corps.

Exercice 6. Exemple : lundi, barrières naturelles et phagocytose ; mardi, anticorps et lymphocytes ; mercredi, graphique de la réponse primaire et secondaire ; jeudi, vaccination et sérothérapie ; vendredi, VIH/SIDA ; samedi, paludisme et son cycle ; dimanche, exercice de synthèse. Toute organisation régulière est acceptée.', 'texte', 45, true, 10
from public.courses c where c.slug = 'bfem-svt'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Comprendre l''épreuve et méthode de travail');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Nutrition et relation chez l''Homme', '## Objectifs de la leçon

- Réviser la digestion, la respiration, la circulation et l''excrétion.
- Réviser le système nerveux, l''acte volontaire et le réflexe.
- S''entraîner à légender et à expliquer des schémas.

## Fiche 1 : la digestion et l''absorption

La digestion est la transformation des aliments en nutriments, petites molécules capables de passer dans le sang. Elle est mécanique (mastication, brassage) et chimique (action des enzymes des sucs digestifs).

- Bouche : l''amylase salivaire commence la transformation de l''amidon en maltose.
- Estomac : le suc gastrique, grâce à la pepsine, commence la digestion des protéines.
- Intestin grêle : le suc pancréatique et le suc intestinal achèvent la digestion ; la bile, produite par le foie, émulsionne les graisses (lipides).

Résultat : l''amidon donne du glucose, les protéines donnent des acides aminés, les lipides donnent des acides gras et du glycérol. Les nutriments traversent la paroi de l''intestin grêle au niveau des villosités intestinales, très nombreuses et très irriguées : c''est l''absorption. Les déchets non digérés (fibres) forment les selles.

Une alimentation équilibrée associe aliments énergétiques (mil, riz, huile), bâtisseurs (poisson, viande, niébé, œufs, lait) et protecteurs (fruits, légumes). Le thiéboudiène, avec riz, poisson et légumes, en est un bon exemple quand les quantités sont raisonnables.

## Fiche 2 : la respiration

La ventilation pulmonaire fait entrer l''air (inspiration) et le fait sortir (expiration). Dans les alvéoles pulmonaires, l''oxygène passe de l''air dans le sang, et le dioxyde de carbone passe du sang dans l''air. Dans les cellules, la respiration cellulaire utilise le glucose et l''oxygène pour produire de l''énergie, en rejetant du dioxyde de carbone et de l''eau :

glucose + dioxygène → dioxyde de carbone + eau + énergie

Le tabac et la fumée des feux de bois abîment les voies respiratoires.

## Fiche 3 : la circulation et l''excrétion

Le cœur est un muscle creux à quatre cavités (deux oreillettes, deux ventricules) qui fonctionne comme une double pompe. La circulation est double : la petite circulation (cœur droit → poumons → cœur gauche) charge le sang en oxygène ; la grande circulation (cœur gauche → organes → cœur droit) distribue l''oxygène et les nutriments.

Le sang contient du plasma, des globules rouges (riches en hémoglobine, ils transportent l''oxygène), des globules blancs (défense de l''organisme) et des plaquettes (coagulation).

L''excrétion élimine les déchets : les reins filtrent le sang et produisent l''urine, qui contient de l''urée ; la peau élimine la sueur ; les poumons rejettent le dioxyde de carbone.

## Fiche 4 : la relation, système nerveux et mouvement

Le système nerveux comprend les centres nerveux (l''encéphale, formé du cerveau, du cervelet et du bulbe rachidien, et la moelle épinière) et les nerfs. Les organes des sens contiennent des récepteurs sensibles aux stimulations.

- Acte volontaire : commandé par le cerveau. Exemple : lever la main pour répondre au professeur.
- Réflexe : réponse involontaire, rapide et prévisible à une stimulation. Exemple : retirer la main d''une marmite brûlante. Le centre nerveux du réflexe médullaire est la moelle épinière.

L''arc réflexe comprend cinq éléments : récepteur (peau), nerf sensitif, centre nerveux (moelle épinière), nerf moteur, effecteur (muscle).

Le mouvement résulte de la contraction de muscles attachés aux os par des tendons. Les muscles agissent par paires antagonistes : quand le biceps se contracte, l''avant-bras se plie ; quand le triceps se contracte, il se tend.

## Exemple : analyser une expérience classique

Une grenouille dont l''encéphale a été détruit (grenouille dite spinale) retire encore sa patte si on la pince. Si l''on détruit ensuite la moelle épinière, elle ne réagit plus. Conclusion : le centre nerveux de ce réflexe est la moelle épinière, et non le cerveau.

## Points clés

- Amidon → glucose ; protéines → acides aminés ; lipides → acides gras + glycérol.
- Échanges gazeux dans les alvéoles ; énergie produite dans les cellules.
- Double circulation ; reins = filtration du sang.
- Arc réflexe : récepteur, nerf sensitif, moelle, nerf moteur, muscle.

## Exercices pratiques

Exercice 1 (facile). Définissez : digestion, absorption, réflexe.

Exercice 2 (facile). Complétez : l''amidon est transformé en …, les protéines en …, les lipides en … et …

Exercice 3 (facile). Citez les quatre éléments du sang et le rôle de chacun.

Exercice 4 (moyen). Expliquez pourquoi l''intestin grêle est bien adapté à l''absorption.

Exercice 5 (moyen). Un élève marche pieds nus sur une épine et retire vivement son pied. Nommez les cinq éléments de l''arc réflexe mis en jeu.

Exercice 6 (moyen). Dans un tableau, on compare l''air inspiré et l''air expiré : oxygène 21 % puis 16 % ; dioxyde de carbone 0,04 % puis 4 %. Analysez ces résultats.

Exercice 7 (difficile). Expliquez le trajet d''une molécule de glucose depuis un grain de riz mangé à midi jusqu''à une cellule musculaire de la jambe, et ce qu''elle y devient.

## Corrigé

Exercice 1. Digestion : transformation des aliments en nutriments sous l''action mécanique et chimique (enzymes). Absorption : passage des nutriments de l''intestin grêle dans le sang et la lymphe. Réflexe : réponse involontaire, rapide et prévisible d''un organe à une stimulation.

Exercice 2. Glucose ; acides aminés ; acides gras et glycérol.

Exercice 3. Plasma : transporte les nutriments, les déchets et les cellules sanguines. Globules rouges : transportent l''oxygène grâce à l''hémoglobine. Globules blancs : défendent l''organisme. Plaquettes : participent à la coagulation.

Exercice 4. L''intestin grêle est très long et sa paroi porte d''innombrables replis et villosités : la surface d''échange est immense. Sa paroi est très fine et richement irriguée de vaisseaux sanguins, ce qui facilite le passage des nutriments dans le sang.

Exercice 5. Récepteur : la peau de la plante du pied ; nerf sensitif ; centre nerveux : la moelle épinière ; nerf moteur ; effecteur : les muscles de la jambe qui soulèvent le pied.

Exercice 6. Je vois : l''air expiré contient moins d''oxygène (16 % au lieu de 21 %) et beaucoup plus de dioxyde de carbone (4 % au lieu de 0,04 %, soit 100 fois plus). Je sais : dans les alvéoles, l''oxygène passe dans le sang et le dioxyde de carbone produit par les cellules en sort. Je conclus : l''organisme prélève de l''oxygène et rejette du dioxyde de carbone.

Exercice 7. Dans la bouche, l''amylase salivaire commence à transformer l''amidon du riz ; dans l''intestin grêle, la digestion s''achève et l''amidon devient du glucose. Le glucose est absorbé au niveau des villosités et passe dans le sang. Il gagne le cœur, puis la grande circulation l''apporte aux muscles de la jambe. Dans la cellule musculaire, il est utilisé avec l''oxygène lors de la respiration cellulaire pour produire l''énergie de la contraction ; il est transformé en dioxyde de carbone et en eau.', 'texte', 60, false, 20
from public.courses c where c.slug = 'bfem-svt'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Nutrition et relation chez l''Homme');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Reproduction, puberté, immunité et santé', '## Objectifs de la leçon

- Décrire la puberté et les étapes de la reproduction humaine.
- Expliquer les défenses de l''organisme et le principe de la vaccination.
- Connaître le VIH/SIDA et le paludisme : transmission et prévention.

## Fiche 1 : la puberté

La puberté est la période de transformation du corps qui rend l''organisme capable de se reproduire. Elle commence en général plus tôt chez les filles que chez les garçons, avec de grandes différences d''un individu à l''autre. Elle est déclenchée par le cerveau (hypophyse) qui stimule les organes reproducteurs.

- Chez le garçon : les testicules produisent des spermatozoïdes et une hormone, la testostérone. Apparition de la pilosité, mue de la voix, développement musculaire, premières éjaculations.
- Chez la fille : les ovaires libèrent des ovules et produisent des hormones (œstrogènes et progestérone). Développement des seins, élargissement du bassin, pilosité, premières règles.

Ces changements s''accompagnent de transformations psychologiques ; l''hygiène et le dialogue avec des adultes de confiance sont importants.

## Fiche 2 : le cycle et la reproduction

Le cycle menstruel dure en moyenne 28 jours, mais il varie selon les femmes. Il commence par les règles (élimination de la muqueuse utérine). L''ovulation a lieu environ 14 jours avant les règles suivantes, soit vers le 14e jour d''un cycle de 28 jours.

- Fécondation : union d''un spermatozoïde et d''un ovule dans la trompe ; elle donne une cellule-œuf.
- Nidation : la cellule-œuf, devenue embryon, s''implante dans la muqueuse de l''utérus environ une semaine après la fécondation.
- Grossesse : environ neuf mois ; l''embryon puis le fœtus se nourrit grâce au placenta et au cordon ombilical. Le suivi prénatal (consultations) protège la mère et l''enfant.

La contraception permet d''éviter une grossesse (préservatif, méthodes hormonales prescrites par un professionnel de santé…). Seul le préservatif protège aussi des infections sexuellement transmissibles (IST).

## Fiche 3 : l''immunité

L''organisme se défend contre les microbes (virus, bactéries, parasites) grâce à plusieurs lignes de défense.

- Les barrières naturelles : la peau, les muqueuses, les larmes, le mucus.
- La réaction non spécifique : après une blessure, une inflammation apparaît (rougeur, chaleur, gonflement, douleur) ; des globules blancs, les phagocytes, englobent et digèrent les microbes : c''est la phagocytose.
- La réaction spécifique : les lymphocytes reconnaissent un antigène précis. Les lymphocytes B produisent des anticorps qui neutralisent l''antigène ; les lymphocytes T cytotoxiques détruisent les cellules infectées ; les lymphocytes T4 coordonnent la réponse.

Après un premier contact, l''organisme garde des cellules mémoire : lors d''un second contact, la réponse est plus rapide, plus forte et plus durable.

- La vaccination : on introduit un antigène rendu inoffensif (microbe tué, atténué ou fragment). L''organisme fabrique des anticorps et des cellules mémoire sans tomber malade. C''est une protection préventive et durable, parfois avec des rappels.
- La sérothérapie : on injecte des anticorps déjà fabriqués. L''effet est immédiat mais de courte durée ; elle est curative ou d''urgence (par exemple contre certains venins).

## Fiche 4 : VIH/SIDA et paludisme

Le VIH (virus de l''immunodéficience humaine) détruit surtout les lymphocytes T4. Sans traitement, les défenses s''effondrent et des maladies opportunistes apparaissent : c''est le stade SIDA. Transmission : relations sexuelles non protégées, sang contaminé (objets tranchants partagés, transfusion non contrôlée), de la mère à l''enfant pendant la grossesse, l''accouchement ou l''allaitement. Le VIH ne se transmet pas par une poignée de main, un repas partagé ou une piqûre de moustique. Les traitements antirétroviraux contrôlent le virus mais ne le font pas disparaître. Prévention : information, dépistage, abstinence, fidélité, préservatif, matériel stérile ; refus de la discrimination.

Le paludisme est causé par un parasite, le Plasmodium, transmis par la piqûre d''un moustique femelle, l''anophèle. Le parasite se multiplie d''abord dans le foie puis dans les globules rouges, qu''il fait éclater, d''où les accès de fièvre. Prévention : moustiquaire imprégnée, suppression des eaux stagnantes, consultation rapide en cas de fièvre (test de dépistage, traitement adapté). Au Sénégal, le risque est plus élevé pendant et après l''hivernage.

## Points clés

- Ovulation vers le 14e jour d''un cycle de 28 jours ; fécondation dans la trompe.
- Anticorps produits par les lymphocytes B ; VIH cible les lymphocytes T4.
- Vaccination : préventive et durable ; sérothérapie : immédiate et temporaire.
- Paludisme : Plasmodium transmis par l''anophèle femelle.

## Exercices pratiques

Exercice 1 (facile). Définissez : puberté, fécondation, antigène, anticorps.

Exercice 2 (facile). Citez trois modes de transmission du VIH et deux situations sans risque.

Exercice 3 (facile). Qui transmet le paludisme et quel est l''agent responsable ?

Exercice 4 (moyen). Une femme a un cycle régulier de 28 jours ; ses règles commencent le 1er mars. Vers quelle date a lieu l''ovulation ?

Exercice 5 (moyen). On mesure les anticorps d''un enfant vacciné. Première injection au jour 0 : anticorps détectables à partir du jour 7, maximum de 10 unités au jour 14. Rappel au jour 60 : anticorps détectables dès le jour 62, maximum de 100 unités au jour 67. Analysez ces résultats.

Exercice 6 (moyen). Comparez vaccination et sérothérapie (mode d''action, délai, durée).

Exercice 7 (difficile). Expliquez pourquoi une personne au stade SIDA peut mourir d''une infection banale.

## Corrigé

Exercice 1. Puberté : période de transformations qui rend l''organisme apte à se reproduire. Fécondation : union d''un spermatozoïde et d''un ovule, qui donne une cellule-œuf. Antigène : substance reconnue comme étrangère, qui déclenche une réponse immunitaire. Anticorps : protéine produite par les lymphocytes B, qui se fixe spécifiquement sur un antigène pour le neutraliser.

Exercice 2. Transmission : rapports sexuels non protégés, sang contaminé, de la mère à l''enfant. Sans risque : serrer la main, partager un repas (aussi : piqûre de moustique, utiliser les mêmes toilettes).

Exercice 3. Le moustique anophèle femelle ; l''agent est un parasite, le Plasmodium.

Exercice 4. L''ovulation a lieu environ 14 jours avant les règles suivantes. Les règles suivantes sont prévues le 29 mars (1er mars + 28 jours) ; l''ovulation a donc lieu vers le 15 mars.

Exercice 5. Je vois : après la première injection, les anticorps apparaissent lentement (jour 7) et restent peu nombreux (10 unités). Après le rappel, ils apparaissent plus vite (2 jours après) et en quantité 10 fois plus grande (100 unités). Je sais : le premier contact a produit des cellules mémoire ; au second contact, elles déclenchent une réponse secondaire plus rapide et plus forte. Je conclus : le rappel renforce la protection, d''où l''importance de respecter le calendrier vaccinal.

Exercice 6. La vaccination injecte un antigène inoffensif : l''organisme fabrique lui-même ses anticorps et des cellules mémoire ; l''effet apparaît après quelques jours ou semaines mais dure longtemps ; elle est préventive. La sérothérapie injecte des anticorps tout faits : l''effet est immédiat mais disparaît en quelques semaines ; elle est curative ou d''urgence.

Exercice 7. Le VIH détruit les lymphocytes T4, qui coordonnent la réponse immunitaire. Au stade SIDA, ils sont très peu nombreux : les lymphocytes B et T cytotoxiques ne sont plus activés correctement. L''organisme ne peut plus se défendre, et des microbes habituellement sans danger provoquent des maladies graves, dites opportunistes.', 'texte', 60, false, 30
from public.courses c where c.slug = 'bfem-svt'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Reproduction, puberté, immunité et santé');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Géologie et écologie : sols, roches, érosion et environnement au Sénégal', '## Objectifs de la leçon

- Expliquer la formation et la composition d''un sol ; connaître les sols du Sénégal.
- Reconnaître les grandes familles de roches.
- Comprendre l''érosion et les moyens de lutte.
- Réviser les notions d''écosystème et de chaîne alimentaire.

## Fiche 1 : le sol

Le sol est la couche superficielle meuble de la croûte terrestre, formée par l''altération de la roche mère et par la décomposition de la matière organique. Il contient des éléments minéraux (sables, limons, argiles), de la matière organique (humus), de l''eau, de l''air et des êtres vivants (vers de terre, termites, champignons, bactéries).

Un profil de sol montre des couches appelées horizons : en haut, l''horizon humifère, sombre et riche en matière organique ; au milieu, un horizon d''accumulation ; en bas, la roche mère plus ou moins altérée. La formation d''un sol est très lente.

Les sols du Sénégal :

- Les sols dior : sableux, légers et perméables, pauvres en matière organique ; ils dominent dans le bassin arachidier et conviennent à l''arachide et au mil.
- Les sols deck : plus riches en argile, ils retiennent mieux l''eau et sont plus fertiles.
- Les sols des vallées (fleuve Sénégal, Casamance), souvent gorgés d''eau, adaptés au riz.
- Les sols salés (tannes) dans les zones d''estuaire comme le Saloum et la Casamance.
- Les sols à cuirasse latéritique, durs, fréquents dans l''est et le sud-est.

Expérience classique : mettre de la terre dans de l''eau, agiter, laisser reposer. Les éléments se déposent par ordre de taille : graviers et sables au fond, puis limons, puis argiles ; l''humus flotte en surface.

## Fiche 2 : les roches

- Les roches sédimentaires se forment par dépôt de particules ou de restes d''êtres vivants : sable, grès, argile, calcaire. Le calcaire fait effervescence avec un acide (dégagement de dioxyde de carbone). On exploite le calcaire près de Rufisque et Bargny pour le ciment, et les phosphates dans la région de Thiès.
- Les roches magmatiques proviennent du refroidissement d''un magma : le basalte, roche volcanique sombre, affleure à Dakar (collines des Mamelles, pointe des Almadies) ; le granite, roche à gros cristaux, se trouve dans le Sénégal oriental.
- Les roches métamorphiques sont transformées par la chaleur et la pression : schistes et quartzites du socle ancien de la région de Kédougou, où l''on exploite aussi l''or.

## Fiche 3 : l''érosion

L''érosion est l''usure et le transport des sols et des roches par des agents naturels, souvent aggravée par l''Homme.

- Érosion hydrique : les pluies violentes de l''hivernage ruissellent sur les sols nus et creusent des ravines.
- Érosion éolienne : le vent (comme l''harmattan, vent chaud et sec venu du Sahara) emporte les particules fines des sols sableux.
- Érosion côtière : la mer attaque le littoral, par exemple à Saint-Louis (Langue de Barbarie) et à Rufisque.

Causes humaines : déforestation, feux de brousse, surpâturage, prélèvement de sable de plage. Lutte : reboisement, haies et brise-vent, bande de filaos plantée le long de la côte des Niayes, cordons pierreux, jachère, protection des mangroves, interdiction du prélèvement de sable.

## Fiche 4 : l''écologie

Un écosystème est formé d''un milieu (le biotope : sol, eau, climat) et des êtres vivants qui l''habitent (la biocénose). Une chaîne alimentaire montre qui mange qui : les producteurs (végétaux chlorophylliens), les consommateurs primaires (herbivores), secondaires (carnivores), et les décomposeurs qui recyclent la matière organique en sels minéraux.

Exemple dans un champ du bassin arachidier : mil → criquet → oiseau insectivore → rapace. Exemple dans la mangrove du Saloum : feuilles de palétuvier → crabes et petits poissons → gros poissons → oiseaux pêcheurs.

L''équilibre d''un écosystème est fragile : surpêche, braconnage, pollution plastique, déforestation et feux de brousse le perturbent. Protection : aires protégées (parc national du Niokolo-Koba, parc des oiseaux du Djoudj, delta du Saloum), repos biologique pour la pêche, reboisement, Grande Muraille verte au Sahel.

## Points clés

- Sol = roche mère altérée + matière organique ; sols dior sableux, sols deck plus argileux.
- Trois familles de roches : sédimentaires, magmatiques, métamorphiques.
- Érosion hydrique, éolienne, côtière ; l''Homme peut l''aggraver ou la combattre.
- Écosystème = biotope + biocénose ; chaîne alimentaire du producteur au décomposeur.

## Exercices pratiques

Exercice 1 (facile). Définissez : sol, humus, érosion, écosystème.

Exercice 2 (facile). Classez ces roches dans leur famille : basalte, calcaire, granite, grès, schiste, argile.

Exercice 3 (facile). Construisez une chaîne alimentaire à quatre maillons dans la mangrove.

Exercice 4 (moyen). On verse la même quantité d''eau sur 100 g de sol dior et sur 100 g de sol deck. Le sol dior laisse passer l''eau en 2 minutes, le sol deck en 10 minutes. Interprétez.

Exercice 5 (moyen). Comment montrer qu''une roche est calcaire ? Décrivez le test et le résultat.

Exercice 6 (moyen). Expliquez pourquoi les feux de brousse favorisent l''érosion.

Exercice 7 (difficile). Dans un écosystème, on fait disparaître les rapaces. Prévoyez les conséquences sur les autres maillons de la chaîne mil → criquet → oiseau insectivore → rapace.

## Corrigé

Exercice 1. Sol : couche superficielle meuble de la croûte terrestre, issue de l''altération de la roche mère et de la décomposition de la matière organique. Humus : matière organique décomposée, sombre, qui fertilise le sol. Érosion : usure et transport des sols et des roches par l''eau, le vent ou la mer. Écosystème : ensemble formé par un milieu (biotope) et les êtres vivants qui l''habitent (biocénose).

Exercice 2. Sédimentaires : calcaire, grès, argile. Magmatiques : basalte, granite. Métamorphique : schiste.

Exercice 3. Feuilles de palétuvier → crabe → poisson carnassier → oiseau pêcheur (toute chaîne cohérente commençant par un végétal est acceptée).

Exercice 4. Je vois : l''eau traverse le sol dior cinq fois plus vite que le sol deck. Je sais : le sol dior est sableux, avec de gros grains et de grands espaces ; le sol deck contient plus d''argile, aux particules très fines qui retiennent l''eau. Je conclus : le sol dior est plus perméable et retient moins l''eau ; il sèche vite après la pluie, alors que le sol deck garde mieux l''humidité pour les plantes.

Exercice 5. On dépose quelques gouttes d''acide chlorhydrique dilué (ou de vinaigre) sur la roche, avec des lunettes de protection. Si elle fait effervescence (petites bulles de dioxyde de carbone), elle contient du calcaire.

Exercice 6. Le feu détruit la végétation et l''humus qui protègent et retiennent le sol. Le sol nu est alors directement frappé par les pluies de l''hivernage et balayé par le vent : il est emporté plus facilement.

Exercice 7. Les oiseaux insectivores, n''ayant plus de prédateurs, se multiplient d''abord ; ils mangent davantage de criquets, dont le nombre baisse ; le mil est alors moins consommé. Puis, faute de nourriture suffisante, les oiseaux insectivores diminuent à leur tour. L''équilibre est perturbé : chaque maillon dépend des autres.', 'texte', 60, false, 40
from public.courses c where c.slug = 'bfem-svt'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Géologie et écologie : sols, roches, érosion et environnement au Sénégal');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Sujet type d''examen : entraînement corrigé', '## Présentation du sujet

Ce sujet est un sujet d''entraînement conçu pour ce cours ; ce n''est pas un sujet officiel du BFEM. La durée et le barème réels sont fixés selon les textes officiels en vigueur ; le barème sur 20 points indiqué ici sert à l''auto-évaluation. Traitez-le en temps limité, sans document, puis comparez avec le corrigé.

## Conseils avant de commencer

- Lisez tout le sujet ; repérez les verbes : « légender », « décrire », « expliquer », « déduire ».
- Pour chaque graphique, appliquez « je vois, je sais, je conclus ».
- Soignez schémas et légendes : traits à la règle, vocabulaire exact.
- Pour une expérience, identifiez d''abord le témoin et le seul facteur qui varie entre les tubes.
- Rédigez des phrases complètes : une réponse en un mot ne montre pas votre raisonnement.

## Exercices pratiques

Exercice 1. Restitution des connaissances (5 points). a) Définissez : réflexe, vaccination, écosystème. b) Citez les cinq éléments d''un arc réflexe. c) Citez deux modes de transmission du VIH et deux moyens de prévention du paludisme.

Exercice 2. Analyse d''expérience (5 points). On place dans trois tubes la même quantité d''empois d''amidon. Tube 1 : + salive, à 37 °C. Tube 2 : + eau, à 37 °C. Tube 3 : + salive bouillie puis refroidie, à 37 °C. Après 15 minutes, on ajoute de l''eau iodée : tube 1, pas de coloration bleu-noir ; tubes 2 et 3, coloration bleu-noir. a) Quel est le rôle du tube 2 ? b) Interprétez le résultat du tube 1. c) Que montre le tube 3 ? d) Concluez.

Exercice 3. Analyse de graphique (5 points). On mesure le nombre de lymphocytes T4 chez une personne infectée par le VIH, sans traitement : environ 1 000 par mm³ de sang au moment de l''infection, 800 après 1 an, 500 après 5 ans, 200 après 9 ans. Au-delà de 9 ans, des maladies opportunistes apparaissent. a) Décrivez l''évolution. b) Expliquez-la. c) Pourquoi les maladies opportunistes apparaissent-elles ? d) Quel est l''intérêt d''un dépistage précoce ?

Exercice 4. Géologie et environnement (5 points). Dans un village du bassin arachidier, les arbres ont été coupés et les champs restent nus pendant la saison sèche. Après quelques années, les paysans constatent que les récoltes baissent et que le sable recouvre les champs. a) Nommez les deux formes d''érosion en jeu. b) Expliquez le rôle de la déforestation. c) Proposez trois solutions adaptées.

## Corrigé

Exercice 1 (5 points). a) (3 points, 1 par définition) Réflexe : réponse involontaire, rapide et prévisible à une stimulation. Vaccination : introduction dans l''organisme d''un antigène rendu inoffensif pour provoquer une immunité durable et préventive. Écosystème : ensemble formé par un biotope et une biocénose. b) (1 point) Récepteur, nerf sensitif, centre nerveux (moelle épinière), nerf moteur, effecteur (muscle). c) (1 point) VIH : rapports sexuels non protégés, sang contaminé, mère-enfant (deux suffisent). Paludisme : moustiquaire imprégnée, suppression des eaux stagnantes. Conseil de notation : une définition incomplète ne reçoit qu''une partie des points.

Exercice 2 (5 points). a) (1 point) Le tube 2 est le témoin : il montre que l''amidon ne disparaît pas sans salive. b) (1,5 point) L''absence de coloration bleu-noir montre que l''amidon a disparu : la salive l''a transformé, grâce à l''amylase salivaire, en un sucre plus simple, le maltose. c) (1,5 point) La salive bouillie n''agit plus : l''ébullition a détruit l''enzyme ; c''est donc bien une substance de la salive sensible à la chaleur, une enzyme, qui agit. d) (1 point) La salive contient une enzyme, l''amylase, qui digère l''amidon à 37 °C ; cette enzyme est détruite par la chaleur. Conseil : nommez toujours le témoin et comparez chaque tube à lui.

Exercice 3 (5 points). a) (1,5 point) Je vois : le nombre de T4 diminue régulièrement, de 1 000 à 200 par mm³ en 9 ans, soit une baisse de 800 par mm³ (il est divisé par 5). b) (1,5 point) Je sais : le VIH infecte et détruit les lymphocytes T4. c) (1 point) Les T4 coordonnent la réponse immunitaire ; lorsqu''ils sont trop peu nombreux, l''organisme ne peut plus se défendre et des microbes habituellement peu dangereux provoquent des maladies : c''est le stade SIDA. d) (1 point) Un dépistage précoce permet de commencer tôt un traitement antirétroviral qui freine la multiplication du virus et préserve les T4, et d''éviter de transmettre le virus. Conseil : citez toujours les valeurs et l''unité (par mm³).

Exercice 4 (5 points). a) (1 point) L''érosion éolienne (le vent emporte le sol et dépose du sable) et l''érosion hydrique (les pluies de l''hivernage ruissellent sur le sol nu). b) (2 points) Les arbres protègent le sol : leurs racines le retiennent, leur feuillage freine le vent et la pluie, leurs feuilles mortes forment l''humus. Sans eux, le sol dior, déjà sableux et pauvre, est emporté ; la couche fertile disparaît et les rendements baissent. c) (2 points) Reboiser et planter des haies brise-vent autour des champs ; laisser les résidus de culture ou pratiquer la jachère pour couvrir le sol ; construire des cordons pierreux contre le ruissellement ; lutter contre les feux de brousse. Conseil : des solutions précises et adaptées au milieu valent plus que « il faut protéger l''environnement ».

S''auto-évaluer après le sujet. Moins de 10 : reprenez les fiches et les définitions. Entre 10 et 14 : entraînez-vous à la méthode « je vois, je sais, je conclus ». Plus de 14 : faites d''autres sujets en temps limité.', 'texte', 75, false, 50
from public.courses c where c.slug = 'bfem-svt'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Sujet type d''examen : entraînement corrigé');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : révision intensive veille d''examen en SVT', '## Fiche du cours vidéo

- Durée : 1h30.
- Thème : séance de révision intensive « veille d''examen » en Sciences de la vie et de la Terre.
- Objectifs : revoir les notions clés, refaire de mémoire les schémas essentiels, corriger un graphique et une expérience, gérer son temps, vérifier ses acquis par un quiz et une évaluation finale.
- Matériel : tableau ou diaporama, schémas de l''appareil digestif, du cœur, de l''arc réflexe, graphique de la réponse immunitaire, échantillons de roches si possible.
- Prérequis : avoir lu les leçons 1 à 5 de ce cours.

## Déroulé minuté

## 00:00 – 05:00 · Accueil et objectifs

« Bonjour à toutes et à tous. Voici notre dernière séance avant l''épreuve de SVT du BFEM. Nous allons tout revoir rapidement : la nutrition, la relation, la reproduction, l''immunité, la géologie et l''écologie. Nous corrigerons un graphique et une expérience, et je vous donnerai des conseils pour gérer votre temps. Prenez une feuille, un crayon et une règle : vous allez refaire des schémas de mémoire. »

Visuel : le plan de la séance.

## 05:00 – 18:00 · La nutrition en treize minutes

« Commençons par la digestion. Dans la bouche, l''amylase salivaire commence à transformer l''amidon. Dans l''estomac, la pepsine attaque les protéines. Dans l''intestin grêle, les sucs pancréatique et intestinal terminent le travail, et la bile émulsionne les graisses. Bilan : glucose, acides aminés, acides gras et glycérol. Ils passent dans le sang au niveau des villosités intestinales : c''est l''absorption. »

« Ensuite, la respiration : dans les alvéoles, l''oxygène passe dans le sang, le dioxyde de carbone en sort. Dans les cellules : glucose plus oxygène donnent dioxyde de carbone, eau et énergie. Puis la circulation : un cœur à quatre cavités, une double circulation, des globules rouges pour l''oxygène, des globules blancs pour la défense, des plaquettes pour la coagulation. Enfin l''excrétion : les reins filtrent le sang et produisent l''urine. »

Activité : « Dessinez de mémoire l''appareil digestif en deux minutes, avec six légendes. » Montrer ensuite le schéma corrigé.

## 18:00 – 28:00 · La relation : réflexe et acte volontaire

« Un acte volontaire est commandé par le cerveau ; un réflexe est involontaire, rapide, prévisible. Pour le réflexe médullaire, le centre est la moelle épinière. Récitez avec moi les cinq éléments de l''arc réflexe : récepteur, nerf sensitif, centre nerveux, nerf moteur, effecteur. L''expérience de la grenouille spinale le prouve : sans encéphale, elle retire encore sa patte ; sans moelle épinière, elle ne réagit plus. Pour le mouvement, n''oubliez pas les muscles antagonistes : biceps et triceps. »

Question à poser : « Je touche une marmite brûlante et je retire ma main : réflexe ou acte volontaire ? Quel est le centre nerveux ? » Réponse : réflexe ; la moelle épinière.

## 28:00 – 40:00 · Reproduction et immunité

« La puberté : sous la commande de l''hypophyse, les testicules produisent spermatozoïdes et testostérone, les ovaires libèrent des ovules et produisent œstrogènes et progestérone. Le cycle dure en moyenne 28 jours ; l''ovulation a lieu environ 14 jours avant les règles suivantes. La fécondation a lieu dans la trompe, la nidation dans l''utérus. »

« L''immunité : barrières naturelles, puis phagocytose, puis réponse spécifique. Les lymphocytes B produisent des anticorps, les T cytotoxiques détruisent les cellules infectées, les T4 coordonnent. La mémoire immunitaire explique la vaccination. Ne confondez pas : vaccination, préventive et durable ; sérothérapie, immédiate et temporaire. Le VIH détruit les T4 ; le paludisme est dû au Plasmodium transmis par l''anophèle femelle. »

Visuel : graphique comparant réponse primaire et réponse secondaire.

## 40:00 – 48:00 · Pause active et quiz

« Six questions, trente secondes chacune. »

- Question 1 : en quoi l''amidon est-il finalement transformé ? Réponse : en glucose.
- Question 2 : quelles cellules sont détruites par le VIH ? Réponse : les lymphocytes T4.
- Question 3 : quel insecte transmet le paludisme ? Réponse : l''anophèle femelle.
- Question 4 : où a lieu la fécondation ? Réponse : dans la trompe.
- Question 5 : quel organe filtre le sang et produit l''urine ? Réponse : le rein.
- Question 6 : quel type de sol domine dans le bassin arachidier ? Réponse : le sol dior, sableux.

« Cinq ou six bonnes réponses : bravo. Moins de quatre : relisez vos fiches ce soir. »

## 48:00 – 58:00 · Géologie et écologie

« Le sol : roche mère altérée plus matière organique. Horizon humifère en haut, roche mère en bas. Au Sénégal : sols dior sableux et perméables, sols deck plus argileux et plus fertiles, sols des vallées pour le riz, sols salés ou tannes dans les estuaires. Les roches : sédimentaires comme le calcaire, qui fait effervescence avec l''acide ; magmatiques comme le basalte de Dakar ; métamorphiques comme les schistes de Kédougou. L''érosion : hydrique, éolienne, côtière à Saint-Louis et Rufisque. »

« L''écologie : écosystème égale biotope plus biocénose. Une chaîne alimentaire commence toujours par un végétal chlorophyllien et se termine par les décomposeurs. Protégeons les écosystèmes : Niokolo-Koba, Djoudj, delta du Saloum, mangroves. »

## 58:00 – 1:08:00 · Correction commentée : un graphique

« Voici un graphique : la concentration d''anticorps chez un enfant après une première injection de vaccin au jour 0, puis un rappel au jour 60. Je vois : après la première injection, les anticorps apparaissent au bout d''une semaine environ, et leur concentration reste faible. Après le rappel, ils apparaissent en deux jours, et la concentration est environ dix fois plus forte. Je sais : la première injection a créé des cellules mémoire. Je conclus : la réponse secondaire est plus rapide et plus intense ; c''est pour cela qu''on fait des rappels. »

« Erreur fréquente : écrire “ça monte et ça descend”. Le correcteur veut des valeurs, des jours, une unité. Découpez toujours la courbe en phases. »

## 1:08:00 – 1:17:00 · Correction commentée : une expérience

« Trois tubes d''amidon à 37 °C : avec salive, avec eau, avec salive bouillie. Eau iodée : seul le tube avec salive ne bleuit pas. Première question : quel est le témoin ? Le tube avec eau. Deuxième : que s''est-il passé dans le tube avec salive ? L''amylase a transformé l''amidon en maltose. Troisième : pourquoi la salive bouillie n''agit-elle plus ? Parce que la chaleur a détruit l''enzyme. Conclusion : la salive contient une enzyme, sensible à la chaleur, qui digère l''amidon. »

« Retenez la règle d''or : un seul facteur change entre le tube étudié et le témoin. Si deux facteurs changent, on ne peut rien conclure. »

## 1:17:00 – 1:22:00 · Gérer son temps le jour J

« La durée de l''épreuve est fixée selon les textes officiels en vigueur ; vérifiez-la sur votre convocation. Lisez tout le sujet, commencez par la restitution des connaissances, rapide et sûre, puis les exercices de raisonnement. Ne passez pas trop de temps sur un schéma : il doit être clair, pas artistique. Si une question vous bloque, laissez de l''espace et revenez-y. Gardez quelques minutes pour vérifier les légendes, les unités et l''orthographe des mots scientifiques. »

« Un mot sur la présentation. Recopiez le numéro de chaque question, sautez des lignes, encadrez ou soulignez vos conclusions. Pour un schéma, prenez un crayon bien taillé, une règle et une demi-page : un schéma minuscule est illisible. Pour un graphique à tracer, choisissez une échelle simple, notez le nom et l''unité de chaque axe, et donnez un titre. Enfin, répondez exactement à la question posée : si l''on vous demande de “déduire”, utilisez la réponse précédente ; si l''on vous demande de “justifier”, donnez la preuve tirée du document. »

Question à poser : « Quelles sont les trois choses à écrire sur les axes d''un graphique ? » Réponse attendue : le nom de la grandeur, l''unité, une graduation régulière.

## 1:22:00 – 1:28:00 · Évaluation finale

« Cinq questions pour terminer. »

- Question 1 : où se fait l''absorption des nutriments ? Réponse : dans l''intestin grêle, au niveau des villosités intestinales.
- Question 2 : quel est le centre nerveux d''un réflexe médullaire ? Réponse : la moelle épinière.
- Question 3 : donnez une différence entre vaccination et sérothérapie. Réponse : la vaccination est préventive et durable (l''organisme fabrique ses anticorps) ; la sérothérapie est immédiate et temporaire (on injecte des anticorps).
- Question 4 : citez trois façons de lutter contre l''érosion au Sénégal. Réponse : reboisement, haies brise-vent, cordons pierreux (aussi : filaos sur la côte, jachère, lutte contre les feux de brousse).
- Question 5 : qu''est-ce qu''un écosystème ? Réponse : l''ensemble formé par un milieu (biotope) et les êtres vivants qui l''habitent (biocénose).

## 1:28:00 – 1:30:00 · Synthèse et encouragements

« Ce soir, refaites de mémoire trois schémas : appareil digestif, arc réflexe, graphique de la réponse immunitaire. Puis dormez. Demain : lisez tout, citez des valeurs, nommez le témoin, utilisez le vocabulaire exact. Vous êtes prêts. Bonne chance ! »', 'video', 90, false, 60
from public.courses c where c.slug = 'bfem-svt'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : révision intensive veille d''examen en SVT');
