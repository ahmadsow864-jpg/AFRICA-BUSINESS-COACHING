-- Fichier généré par tools/generate-seed.mjs — ne pas modifier à la main.
-- Cours (partie 9/10). À exécuter après seed.sql.

-- Cours : Informatique Licence 3 : réussir ses examens (génie logiciel, web et API, sécurité)
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'lic-info-l3', (select id from public.levels where name = 'Licence 3'), null, 'Informatique', 'Informatique Licence 3 : réussir ses examens (génie logiciel, web et API, sécurité)', 'Ce cours prépare aux examens de Licence 3 en informatique : génie logiciel et UML (cycle de vie, diagrammes, tests), développement web et API (HTML, CSS, JavaScript, HTTP, REST) et sécurité informatique (menaces, cryptographie de base, bonnes pratiques). Il propose des fiches de cours, des exercices corrigés, un sujet type d''examen et trois cours vidéo de 1h30. Prérequis : programmation, bases de données et réseaux de Licence 1 et 2.', true, 323
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Réussir ses examens de Licence 3 en Informatique', '## Objectifs de la leçon

- Situer la Licence 3 dans le parcours LMD et comprendre ses enjeux : diplôme, stage, poursuite en Master ou insertion professionnelle.
- Connaître les trois matières clés de l''année et les compétences évaluées.
- Savoir traiter les épreuves typiques : étude de cas UML, conception d''API, analyse de sécurité, projet.
- Bâtir un plan de révision sur six semaines.

## 1. La Licence 3 dans le système LMD

La Licence 3 correspond aux semestres 5 et 6, les derniers de la Licence. Elle conserve l''organisation en unités d''enseignement (UE) et en crédits, avec capitalisation, compensation selon le règlement et session de rattrapage. Selon les établissements, elle comprend aussi un projet tutoré, un stage en entreprise ou un mémoire de fin de cycle, évalués par un rapport et une soutenance. Les modalités exactes (poids du stage, conditions d''obtention du diplôme, dettes de crédits autorisées) figurent dans le règlement de ta formation : vérifie-les dès la rentrée.

L''enjeu est double : obtenir la Licence, et constituer un dossier solide pour l''admission en Master ou pour un premier emploi (développeur, technicien réseau, administrateur de bases de données, analyste en sécurité). Les notes de Licence 3 et le projet comptent souvent beaucoup dans ces dossiers.

## 2. Les matières clés de la Licence 3

- Génie logiciel et UML : cycle de vie du logiciel, méthodes (cascade, cycle en V, itératif, agile), recueil des exigences, diagrammes UML (cas d''utilisation, classes, séquence, activité, états), stratégies de test. On attend des diagrammes corrects et justifiés à partir d''un texte.
- Développement web et API : HTML, CSS, JavaScript, protocole HTTP, conception d''API REST. On attend du code lisible, une bonne connaissance des méthodes et codes HTTP, et des routes REST cohérentes.
- Sécurité informatique : menaces et vulnérabilités, cryptographie de base (symétrique, asymétrique, hachage, signature), bonnes pratiques (authentification, mises à jour, sauvegardes, moindre privilège). On attend des explications précises et des recommandations réalistes.

Ces matières forment un tout : un projet web se conçoit avec UML, s''implémente avec HTML, CSS, JavaScript et une API, se teste, et doit être sécurisé dès la conception. Les sujets d''examen mélangent volontiers les trois.

## 3. Les types d''épreuves

- Étude de cas UML : un texte décrit un système (gestion des abonnements d''une salle de sport, plateforme de livraison). Tu dois produire un diagramme de cas d''utilisation, un diagramme de classes, parfois un diagramme de séquence. Commence par souligner les acteurs (noms de personnes ou de systèmes externes), les actions (verbes) et les informations (noms porteurs de données).
- Conception d''API : proposer les routes REST d''un service, avec méthodes, codes de retour et exemples de JSON. Sois systématique : une ressource, ses opérations, ses codes.
- Lecture de code web : prévoir l''affichage d''un script JavaScript, corriger une feuille de style, calculer la largeur d''une boîte CSS.
- Analyse de sécurité : repérer une injection SQL dans un extrait de code, proposer une politique de mots de passe, expliquer un échange de clés. On attend la vulnérabilité, son impact et la correction.
- Exercices de cryptographie : chiffrement par décalage, petit calcul RSA, propriétés d''une fonction de hachage.
- QCM : codes HTTP, ports, notions UML et de sécurité.
- Projet et soutenance : démonstration d''une application, présentation de la conception et des tests. Prépare une démonstration courte, qui fonctionne, et sache justifier chaque choix technique.

## 4. Méthode de révision

- Fiches de synthèse : une par diagramme UML (notation, règles, exemple), une pour HTTP (méthodes et codes), une pour la cryptographie (types d''algorithmes et usages).
- Pratique : refaire les études de cas des TD sans regarder la correction ; écrire une petite page web avec un formulaire et un appel à une API ; tester les exemples de cryptographie en Python.
- Annales et sujets types en temps limité.
- Révisions en groupe : un étudiant joue le client qui décrit son besoin, les autres modélisent. C''est l''exercice le plus proche d''une vraie étude de cas.
- Projet : ne laisse pas le projet dévorer tes révisions. Planifie-le avec des jalons hebdomadaires.

## 5. Le jour de l''épreuve

Lis le sujet en entier, puis relis l''étude de cas en soulignant acteurs, actions et données. Fais un brouillon de diagramme avant de le recopier proprement : un diagramme raturé est difficile à corriger. Pour les questions de sécurité, structure tes réponses en trois temps : menace, conséquence, contre-mesure.

## 6. Plan de révision sur six semaines

- Semaine 1 : bilan, fiches, planning du projet.
- Semaine 2 : génie logiciel. Cycles de vie et méthodes agiles lundi, cas d''utilisation mardi, classes mercredi et jeudi, séquence vendredi, tests samedi.
- Semaine 3 : web. HTML et CSS, puis JavaScript et DOM, puis HTTP et REST ; construis une mini-application.
- Semaine 4 : sécurité. Menaces, injection et XSS, cryptographie symétrique et asymétrique, hachage et mots de passe, bonnes pratiques.
- Semaine 5 : deux sujets complets en temps limité, correction et reprise des points faibles.
- Semaine 6 : consolidation, rappel actif, préparation de la soutenance si elle a lieu à la même période.

## Points clés

- La Licence 3 conclut la Licence : règlement, stage et projet comptent ; renseigne-toi tôt.
- Génie logiciel, web et sécurité se combinent dans les sujets.
- Pour la sécurité : menace, conséquence, contre-mesure.

## Exercices pratiques

1. Dans la phrase « Le caissier enregistre le paiement du client », repère l''acteur, l''action et la donnée.
2. Pourquoi faire un brouillon de diagramme avant de le recopier ?
3. Échauffement : que signifie le code HTTP 404 ?
4. Échauffement : quelle est la différence entre chiffrer et hacher un mot de passe ?
5. Propose ta semaine 4 jour par jour.

## Corrigé

1. Acteur : le caissier (il interagit avec le système) ; action : enregistrer le paiement (futur cas d''utilisation) ; donnée : le paiement (futur attribut ou classe Paiement, lié à Client).
2. Parce que la première version est rarement juste : il faut ajuster les multiplicités, déplacer des attributs, ajouter des classes. Un diagramme final propre est plus lisible et mieux noté.
3. La ressource demandée n''existe pas sur le serveur (Not Found).
4. Un chiffrement est réversible avec une clé ; un hachage est à sens unique. On stocke les mots de passe hachés (avec un sel), jamais chiffrés de façon réversible, et encore moins en clair.
5. Exemple : lundi menaces et triade confidentialité-intégrité-disponibilité ; mardi injection SQL et XSS ; mercredi chiffrement symétrique ; jeudi chiffrement asymétrique et RSA ; vendredi hachage, signature et certificats ; samedi bonnes pratiques et mini-sujet ; dimanche repos.', 'texte', 60, true, 10
from public.courses c where c.slug = 'lic-info-l3'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Réussir ses examens de Licence 3 en Informatique');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Génie logiciel et UML : l''essentiel pour l''examen', '## Objectifs de la leçon

- Connaître les phases du cycle de vie du logiciel et les principales méthodes de développement.
- Distinguer exigences fonctionnelles et non fonctionnelles.
- Lire et construire les principaux diagrammes UML.
- Concevoir des tests à partir des partitions d''équivalence et des valeurs limites.

## Fiche 1 : cycle de vie et méthodes

Les phases du cycle de vie sont : expression du besoin, analyse et spécification (ce que le logiciel doit faire), conception (comment il le fait), implémentation, tests, déploiement, maintenance (corrective, évolutive).

- Cascade : les phases se suivent sans retour. Simple, mais les erreurs de spécification se découvrent tard.
- Cycle en V : à chaque phase de conception correspond une phase de test (la spécification est validée par les tests système, la conception détaillée par les tests unitaires).
- Itératif et incrémental : le logiciel est livré par morceaux, chaque itération repassant par l''analyse, la conception et les tests.
- Agile, par exemple Scrum : itérations courtes (sprints de quelques semaines), un carnet de produit (product backlog) priorisé par le responsable de produit (product owner), un facilitateur (scrum master), une équipe pluridisciplinaire, une démonstration à la fin de chaque sprint. Adapté quand les besoins évoluent.

Exigences : une exigence fonctionnelle décrit un service (« le client peut réserver une place »). Une exigence non fonctionnelle décrit une qualité : performance, sécurité, disponibilité, ergonomie (« la page de réservation s''affiche en moins de 2 secondes sur une connexion mobile »).

## Fiche 2 : les diagrammes UML essentiels

Étude de cas fil rouge : la compagnie fictive Teranga Voyages veut une application où un client consulte les trajets, réserve des places et paie par mobile ; un agent de guichet enregistre les réservations sur place ; un administrateur gère les trajets. Le paiement passe par un service externe de paiement mobile.

Diagramme de cas d''utilisation : acteurs (bonhommes) à l''extérieur du rectangle du système, cas d''utilisation (ovales) à l''intérieur. Ici : Client relié à « Consulter les trajets », « Réserver des places », « Payer » ; Agent relié à « Réserver des places » ; Administrateur relié à « Gérer les trajets » ; Service de paiement (acteur secondaire, système externe) relié à « Payer ». Relations : « Réserver des places » inclut « S''authentifier » (include : toujours exécuté) ; « Appliquer un code promotionnel » étend « Payer » (extend : optionnel).

Diagramme de classes : chaque classe a un nom, des attributs et des opérations, avec leur visibilité (+ public, − privé, # protégé). Exemple :

- Client : − nom, − telephone ; + reserver(trajet, nb).
- Trajet : − villeDepart, − villeArrivee, − dateHeure, − prix.
- Reservation : − numero, − nbPlaces ; + montant().
- Paiement : − montant, − date, − statut.

Associations et multiplicités : un Client effectue 0..* Réservations, une Réservation appartient à exactement 1 Client ; une Réservation concerne 1 Trajet, un Trajet a 0..* Réservations ; une Réservation donne lieu à 0..1 Paiement. Composition (losange plein) : la partie n''existe pas sans le tout (une ligne de facture et sa facture). Agrégation (losange vide) : lien plus faible. Héritage (flèche à triangle vide) : ClientEntreprise hérite de Client.

Diagramme de séquence : lignes de vie verticales (Client, Interface, ServeurReservation, ServicePaiement), messages horizontaux dans l''ordre chronologique : 1) le client choisit un trajet ; 2) l''interface demande les places disponibles au serveur ; 3) le serveur répond ; 4) le client valide ; 5) le serveur crée la réservation et demande le paiement ; 6) le service de paiement confirme ; 7) l''interface affiche le reçu. Un fragment « alt » représente l''alternative paiement accepté ou refusé.

Diagramme d''activité : enchaînement des actions avec décisions (losanges) et parallélismes. Diagramme d''états-transitions : états d''un objet, par exemple une Réservation : Créée → Payée → Utilisée, ou Créée → Annulée si le paiement n''arrive pas dans le délai.

## Fiche 3 : les tests

Niveaux : tests unitaires (une fonction, une classe), tests d''intégration (plusieurs composants ensemble), tests système (le logiciel complet face à sa spécification), tests d''acceptation ou recette (par le client). Les tests de non-régression vérifient qu''une modification n''a rien cassé.

Boîte noire : on teste à partir de la spécification, sans regarder le code. Boîte blanche : on conçoit les tests à partir du code (chaque branche exécutée au moins une fois).

Partitions d''équivalence et valeurs limites. Spécification : la fonction categorie(age) renvoie "enfant" de 0 à 11 ans, "jeune" de 12 à 25, "adulte" de 26 à 59, "senior" à partir de 60, et lève une erreur si l''âge est négatif ou supérieur à 120. Classes valides : [0, 11], [12, 25], [26, 59], [60, 120] ; classes invalides : moins de 0 et plus de 120. Valeurs limites à tester : −1, 0, 11, 12, 25, 26, 59, 60, 120, 121.

import unittest

def categorie(age):
    if age < 0 or age > 120:
        raise ValueError("âge invalide")
    if age <= 11:
        return "enfant"
    if age <= 25:
        return "jeune"
    if age <= 59:
        return "adulte"
    return "senior"

class TestCategorie(unittest.TestCase):
    def test_limites(self):
        self.assertEqual(categorie(0), "enfant")
        self.assertEqual(categorie(11), "enfant")
        self.assertEqual(categorie(12), "jeune")
        self.assertEqual(categorie(25), "jeune")
        self.assertEqual(categorie(26), "adulte")
        self.assertEqual(categorie(59), "adulte")
        self.assertEqual(categorie(60), "senior")
        self.assertEqual(categorie(120), "senior")

    def test_invalides(self):
        with self.assertRaises(ValueError):
            categorie(-1)
        with self.assertRaises(ValueError):
            categorie(121)

On lance les tests avec la commande python -m unittest suivie du nom du fichier. Les deux tests passent.

## Points clés

- Cascade, V, itératif, agile : savoir citer avantages et limites.
- Cas d''utilisation : acteurs hors du système ; include obligatoire, extend optionnel.
- Classes : attributs, opérations, visibilité, multiplicités des deux côtés de chaque association.
- Tests : niveaux, boîte noire et blanche, valeurs limites de part et d''autre de chaque frontière.

## Exercices pratiques

1. Classe en fonctionnelle ou non fonctionnelle : a) l''agent peut annuler une réservation ; b) les données de paiement sont chiffrées ; c) l''application fonctionne sur un téléphone d''entrée de gamme ; d) le client reçoit un reçu par SMS.
2. Pourquoi le service de paiement mobile est-il un acteur et non une classe du système ?
3. Donne les multiplicités entre Trajet et Bus, sachant qu''un trajet est assuré par un seul bus et qu''un bus assure plusieurs trajets ou aucun (bus en maintenance).
4. Une réduction de 10 % (règle commerciale fictive) s''applique aux réservations de 5 à 9 places et de 20 % à partir de 10 places, avec un maximum de 50 places. Donne les classes d''équivalence et les valeurs limites à tester.
5. Dans quel cas préférer Scrum au cycle en V ? Et l''inverse ?
6. Cas pratique. Une mutuelle de santé fictive veut une application où l''adhérent consulte ses remboursements, l''agent saisit les feuilles de soins, et le médecin-conseil valide les dossiers dépassant un seuil. Donne les acteurs et quatre cas d''utilisation, puis un diagramme de classes simplifié (trois classes avec multiplicités).

## Corrigé

1. a) fonctionnelle ; b) non fonctionnelle (sécurité) ; c) non fonctionnelle (portabilité, performance) ; d) fonctionnelle.

2. Parce qu''il est extérieur au système : l''application interagit avec lui sans le réaliser. Dans le diagramme de classes, on pourra avoir une classe d''interface (par exemple PasserellePaiement) qui l''appelle, mais le service lui-même reste un acteur.

3. Trajet 0..* — 1 Bus : chaque trajet est lié à exactement un bus ; chaque bus est lié à zéro ou plusieurs trajets.

4. Classes valides : 1 à 4 places (pas de réduction), 5 à 9 (10 %), 10 à 50 (20 %) ; invalides : 0 ou moins, plus de 50. Valeurs limites : 0, 1, 4, 5, 9, 10, 50, 51.

5. Scrum quand les besoins sont incertains ou évoluent (application grand public, start-up) et que le client peut participer régulièrement. Le cycle en V quand les exigences sont stables et la traçabilité imposée (logiciel embarqué, système critique).

6. Acteurs : Adhérent, Agent, Médecin-conseil. Cas : Consulter ses remboursements (Adhérent), Saisir une feuille de soins (Agent), Valider un dossier (Médecin-conseil), S''authentifier (inclus par les trois autres). Classes : Adherent 1 — 0..* Dossier ; Dossier 1 — 1..* FeuilleDeSoins ; Dossier 0..* — 0..1 MedecinConseil (seuls certains dossiers sont validés par un médecin-conseil).', 'texte', 75, false, 20
from public.courses c where c.slug = 'lic-info-l3'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Génie logiciel et UML : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Développement web et API : l''essentiel pour l''examen', '## Objectifs de la leçon

- Structurer une page avec HTML et la mettre en forme avec CSS (sélecteurs, modèle de boîte, mise en page flexible).
- Manipuler la page avec JavaScript et appeler une API.
- Décrire une requête et une réponse HTTP, connaître méthodes et codes d''état.
- Concevoir une API REST cohérente.

## Fiche 1 : HTML, la structure

HTML décrit la structure et le sens du contenu à l''aide de balises. Squelette d''une page de recherche pour une bibliothèque universitaire fictive :

<!DOCTYPE html>
<html lang="fr">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bibliothèque universitaire</title>
    <link rel="stylesheet" href="style.css">
  </head>
  <body>
    <header>Bibliothèque universitaire</header>
    <main>
      <form id="recherche">
        <label for="q">Titre recherché</label>
        <input id="q" name="q" type="text" required>
        <button type="submit">Rechercher</button>
      </form>
      <section id="resultats"></section>
    </main>
    <footer>Service de documentation</footer>
  </body>
</html>

À connaître aussi : les titres hiérarchisés (balises h1 à h6), les paragraphes (balise p), les liens (balise a et son attribut href), les images (balise img, avec un attribut alt qui décrit l''image pour l''accessibilité), les listes (ul ou ol contenant des li), les tableaux (table). Le script JavaScript est chargé en fin de body avec la balise script et son attribut src. Les balises sémantiques (header, nav, main, section, article, footer) aident l''accessibilité et le référencement. La balise meta viewport rend la page lisible sur téléphone, essentiel quand la majorité des utilisateurs naviguent sur mobile.

## Fiche 2 : CSS, la présentation

Une règle CSS associe un sélecteur à des déclarations : main { max-width: 800px; margin: 0 auto; }. Sélecteurs : par balise (section), par classe (.carte), par identifiant (#resultats), descendant (main .carte). En cas de conflit, la règle la plus spécifique l''emporte (identifiant plus fort que classe, classe plus forte que balise) ; à spécificité égale, la dernière écrite gagne.

Modèle de boîte : contenu, puis marge intérieure (padding), bordure (border), marge extérieure (margin). Par défaut (box-sizing: content-box), width ne concerne que le contenu : une boîte de width 300px, padding 20px et border 5px occupe 300 + 2 × 20 + 2 × 5 = 350 pixels de large. Avec box-sizing: border-box, la largeur totale reste 300 pixels.

Mise en page : display: flex aligne des éléments sur une ligne ou une colonne (justify-content, align-items, gap). Les requêtes média adaptent la page à la taille d''écran : @media (max-width: 600px) { ... } applique des règles aux petits écrans.

## Fiche 3 : JavaScript

JavaScript s''exécute dans le navigateur. On déclare les variables avec const (non réaffectable) ou let. Exemple de fonction, testable aussi avec Node.js :

function totalPanier(articles) {
  let total = 0;
  for (const a of articles) {
    total += a.prix * a.quantite;
  }
  return total;
}
console.log(totalPanier([{ prix: 2500, quantite: 2 }, { prix: 1200, quantite: 3 }]));

Le programme affiche 8600 (5 000 + 3 600 FCFA).

Manipulation de la page (DOM) et appel d''API avec fetch :

document.querySelector("#recherche").addEventListener("submit", async (e) => {
  e.preventDefault();
  const q = document.querySelector("#q").value;
  const rep = await fetch("/api/v1/livres?titre=" + encodeURIComponent(q));
  if (!rep.ok) {
    document.querySelector("#resultats").textContent = "Erreur " + rep.status;
    return;
  }
  const livres = await rep.json();
  document.querySelector("#resultats").textContent = livres.length + " livre(s) trouvé(s)";
});

preventDefault empêche le rechargement de la page ; await attend la réponse sans bloquer le navigateur ; textContent insère du texte brut, ce qui protège contre l''injection de code (voir la leçon sur la sécurité).

## Fiche 4 : HTTP

HTTP est un protocole client-serveur, sans état : chaque requête est indépendante (la session est simulée par des cookies ou des jetons). Une requête comprend une méthode, un chemin, des en-têtes et éventuellement un corps ; une réponse comprend un code d''état, des en-têtes et un corps.

GET /api/v1/livres/42 HTTP/1.1
Host: bu.exemple.test
Accept: application/json

HTTP/1.1 200 OK
Content-Type: application/json

{"id": 42, "titre": "Algorithmique", "disponible": true}

Méthodes : GET (lire), POST (créer), PUT (remplacer), PATCH (modifier partiellement), DELETE (supprimer). GET, PUT et DELETE sont idempotentes (les répéter produit le même état) ; POST ne l''est pas.

Codes d''état : 200 OK ; 201 Created (ressource créée) ; 204 No Content ; 301 redirection permanente ; 400 requête invalide ; 401 non authentifié ; 403 accès interdit ; 404 introuvable ; 409 conflit ; 500 erreur du serveur. Familles : 2xx succès, 3xx redirection, 4xx erreur du client, 5xx erreur du serveur. HTTPS chiffre les échanges avec TLS.

## Fiche 5 : concevoir une API REST

REST organise une API autour de ressources désignées par des URI, manipulées avec les méthodes HTTP, et échangées dans un format comme JSON. Règles : noms au pluriel, pas de verbe dans l''URI, imbrication pour les relations, version dans le chemin, filtres et pagination en paramètres.

- GET /api/v1/livres?auteur=Diop&page=2 : liste filtrée et paginée → 200.
- GET /api/v1/livres/42 : un livre → 200, ou 404.
- POST /api/v1/livres : création, corps JSON → 201 et en-tête Location.
- PATCH /api/v1/livres/42 : modification partielle → 200.
- DELETE /api/v1/livres/42 : suppression → 204.
- GET /api/v1/etudiants/E01/emprunts : emprunts d''un étudiant.
- POST /api/v1/emprunts : nouvel emprunt → 201, ou 409 si le livre est déjà emprunté.

## Points clés

- HTML pour la structure, CSS pour la présentation, JavaScript pour le comportement.
- Largeur d''une boîte en content-box : width + paddings + bordures.
- GET lit, POST crée, PUT remplace, PATCH modifie, DELETE supprime ; 2xx, 3xx, 4xx, 5xx.
- REST : ressources au pluriel, méthodes HTTP, codes adaptés, JSON.

## Exercices pratiques

1. Une boîte a width: 250px, padding: 15px, border: 2px et margin: 10px. Quelle largeur occupe-t-elle à l''écran (bordure comprise) en content-box ? Et en border-box ?
2. Deux règles : #resultats { color: green; } et .zone { color: red; }. L''élément section id="resultats" class="zone" s''affiche en quelle couleur ?
3. Quel code renvoyer : a) création réussie ; b) jeton absent ; c) jeton valide mais droits insuffisants ; d) panne de la base de données ?
4. Écris en JavaScript une fonction moyenne(notes) qui renvoie la moyenne d''un tableau, et donne moyenne([12, 15, 9]).
5. Pourquoi l''URI POST /api/v1/creerLivre n''est-elle pas conforme à REST ?
6. Cas pratique. Une coopérative agricole fictive de la vallée du fleuve veut une API pour gérer ses membres et leurs livraisons de riz paddy. Propose les routes (méthode, URI, code de succès) pour : lister les membres, consulter un membre, enregistrer une livraison pour un membre, lister les livraisons d''un membre, corriger le poids d''une livraison, supprimer une livraison erronée.

## Corrigé

1. Content-box : 250 + 2 × 15 + 2 × 2 = 284 pixels (la marge de 10 px s''ajoute à l''extérieur, de chaque côté, sans faire partie de la boîte). Border-box : 250 pixels.

2. En vert : le sélecteur d''identifiant est plus spécifique que le sélecteur de classe.

3. a) 201 ; b) 401 ; c) 403 ; d) 500 (ou 503 si le service est temporairement indisponible).

4. On additionne puis on divise par la longueur.

function moyenne(notes) {
  let s = 0;
  for (const n of notes) {
    s += n;
  }
  return s / notes.length;
}
console.log(moyenne([12, 15, 9]));

Résultat : 36 / 3 = 12.

5. L''action est déjà exprimée par la méthode POST ; l''URI doit désigner la ressource : POST /api/v1/livres.

6. GET /api/v1/membres → 200 ; GET /api/v1/membres/{id} → 200 (404 si inconnu) ; POST /api/v1/membres/{id}/livraisons → 201 ; GET /api/v1/membres/{id}/livraisons → 200 ; PATCH /api/v1/livraisons/{idLivraison} avec le corps {"poids_kg": 1250} → 200 ; DELETE /api/v1/livraisons/{idLivraison} → 204.', 'texte', 75, false, 30
from public.courses c where c.slug = 'lic-info-l3'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Développement web et API : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Sécurité informatique : l''essentiel pour l''examen', '## Objectifs de la leçon

- Définir les objectifs de sécurité et identifier les principales menaces.
- Reconnaître et corriger une injection SQL et une faille XSS.
- Distinguer chiffrement symétrique, asymétrique, hachage et signature ; réaliser un petit calcul RSA.
- Recommander des bonnes pratiques adaptées à une organisation.

## Fiche 1 : objectifs et menaces

La sécurité vise trois objectifs (triade CIA) : confidentialité (seules les personnes autorisées accèdent à l''information), intégrité (l''information n''est pas modifiée sans autorisation), disponibilité (le service est accessible quand on en a besoin). On y ajoute l''authentification (prouver son identité) et la non-répudiation (ne pas pouvoir nier une action).

Vocabulaire : une vulnérabilité est une faiblesse ; une menace est ce qui peut l''exploiter ; le risque combine la probabilité et l''impact.

Menaces courantes :

- Hameçonnage (phishing) : faux message (SMS, courriel, appel) qui pousse à révéler un code ou un mot de passe, par exemple un faux agent de transfert d''argent qui demande le code reçu par SMS.
- Logiciels malveillants : virus, ver (se propage seul), cheval de Troie, rançongiciel (chiffre les fichiers et exige une rançon).
- Déni de service : saturer un serveur pour le rendre indisponible.
- Ingénierie sociale : manipuler une personne plutôt que la machine.
- Failles applicatives : injection SQL, XSS, mots de passe faibles, contrôle d''accès absent.

## Fiche 2 : injection SQL et XSS

Injection SQL : quand une requête est construite en collant le texte saisi par l''utilisateur, celui-ci peut modifier la requête.

saisie = "'' OR ''1''=''1"
requete = "SELECT login FROM compte WHERE login = ''" + saisie + "''"
print(db.execute(requete).fetchall())
print(db.execute("SELECT login FROM compte WHERE login = ?", (saisie,)).fetchall())

La requête construite par concaténation devient WHERE login = '''' OR ''1''=''1'' : la condition est toujours vraie et tous les comptes sortent ([(''awa'',), (''ousmane'',)]). Avec une requête paramétrée (le point d''interrogation), la saisie est traitée comme une simple valeur : aucun résultat ([]). Contre-mesures : requêtes paramétrées, validation des entrées, compte de base de données aux droits minimaux.

XSS (cross-site scripting) : un attaquant enregistre un commentaire contenant du code JavaScript ; si le site l''affiche tel quel dans la page, le code s''exécute chez les autres visiteurs (vol de session). Contre-mesures : échapper les caractères spéciaux à l''affichage, utiliser textContent plutôt qu''insérer du HTML, politique de sécurité du contenu (en-tête Content-Security-Policy).

## Fiche 3 : cryptographie de base

- Chiffrement symétrique (AES, par exemple) : la même clé chiffre et déchiffre. Rapide ; difficulté : partager la clé de façon sûre.
- Chiffrement asymétrique (RSA, par exemple) : une clé publique chiffre, la clé privée correspondante déchiffre. Résout l''échange de clés, mais plus lent. En pratique (HTTPS), on utilise l''asymétrique pour établir une clé de session, puis le symétrique pour les données.
- Hachage (SHA-256, par exemple) : empreinte de taille fixe, à sens unique ; une petite modification du message change complètement l''empreinte ; il doit être très difficile de trouver deux messages de même empreinte. Usage : vérifier l''intégrité d''un fichier.
- Signature numérique : on hache le message, puis on signe l''empreinte avec sa clé privée ; tout le monde vérifie avec la clé publique. Elle garantit intégrité, authenticité et non-répudiation.
- Certificat : document signé par une autorité de certification qui lie une clé publique à une identité (un nom de domaine, par exemple).

RSA en miniature (nombres minuscules, uniquement pour comprendre ; une vraie clé utilise des nombres de plusieurs centaines de chiffres) : p = 61, q = 53, n = p × q = 3 233, φ = (p − 1)(q − 1) = 3 120. On choisit e = 17, premier avec 3 120. La clé privée d vérifie e × d ≡ 1 (mod 3 120) : d = 2 753, car 17 × 2 753 = 46 801 = 15 × 3 120 + 1. Chiffrement de m = 65 : c = pow(65, 17, 3233).

n, e, d = 61 * 53, 17, 2753
c = pow(65, e, n)
print(n, (17 * 2753) % 3120, c, pow(c, d, n))

Le programme affiche 3233 1 2790 65 : le message chiffré vaut 2 790 et le déchiffrement redonne 65.

Mots de passe : on ne les stocke jamais en clair ni chiffrés de façon réversible. On stocke un hachage lent et salé (algorithmes comme bcrypt, scrypt, Argon2 ou PBKDF2) : le sel, aléatoire et propre à chaque utilisateur, empêche d''utiliser des tables précalculées.

import hashlib, os
sel = os.urandom(16)
h = hashlib.pbkdf2_hmac("sha256", "Teranga2026!".encode(), sel, 200000)
print(len(h), h == hashlib.pbkdf2_hmac("sha256", "Teranga2026!".encode(), sel, 200000))

Le programme affiche 32 True : l''empreinte fait 32 octets, et le même mot de passe avec le même sel redonne la même empreinte, ce qui permet de vérifier une connexion sans connaître le mot de passe.

## Fiche 4 : bonnes pratiques

- Authentification forte : mots de passe longs (une phrase de passe), gestionnaire de mots de passe, authentification à plusieurs facteurs.
- Mises à jour régulières des systèmes et applications.
- Sauvegardes : règle 3-2-1 (trois copies, deux supports différents, une copie hors site), et tests de restauration.
- Moindre privilège : chacun n''a que les droits nécessaires.
- Journalisation et surveillance des accès.
- Sensibilisation du personnel, car l''humain est souvent visé en premier.
- Protection des données personnelles : le Sénégal dispose d''une loi sur la protection des données à caractère personnel et d''une autorité de contrôle, la Commission de protection des données personnelles (CDP) ; vérifie les obligations en vigueur pour chaque traitement.

## Exercices pratiques

1. Associe chaque incident à un objectif de sécurité : a) un site est saturé et inaccessible ; b) un relevé de notes est modifié ; c) des dossiers médicaux sont publiés sur Internet.
2. Chiffre « DAKAR » avec un décalage de 3 lettres (chiffre de César). Ce chiffrement est-il sûr ?
3. RSA miniature : p = 5, q = 11, e = 3. Calcule n, φ et d. Chiffre m = 8 puis déchiffre.
4. Pourquoi saler les empreintes de mots de passe ?
5. Cas pratique. Une PME de transfert d''argent de Thiès (12 employés) a subi un hameçonnage : un employé a donné son mot de passe. Propose cinq mesures prioritaires.

## Corrigé

1. a) disponibilité ; b) intégrité ; c) confidentialité.

2. D → G, A → D, K → N, A → D, R → U : « GDNDU ». Non : il n''y a que 25 décalages possibles, qu''on teste tous en quelques secondes.

def cesar(texte, k):
    return "".join(chr((ord(c) - 65 + k) % 26 + 65) for c in texte)

print(cesar("DAKAR", 3), cesar("GDNDU", -3))

3. n = 55 ; φ = 4 × 10 = 40 ; d = 27 car 3 × 27 = 81 = 2 × 40 + 1. Chiffrement : pow(8, 3, 55) = 512 mod 55 = 17. Déchiffrement : pow(17, 27, 55) = 8.

4. Sans sel, deux utilisateurs ayant le même mot de passe ont la même empreinte, et un attaquant peut comparer les empreintes volées à des tables précalculées de mots de passe courants. Le sel rend chaque empreinte unique et ces tables inutiles.

5. Changer immédiatement le mot de passe compromis et vérifier les journaux d''accès ; activer l''authentification à plusieurs facteurs ; former le personnel à reconnaître l''hameçonnage ; appliquer le moindre privilège (limiter les montants et opérations par profil) ; mettre en place des sauvegardes testées et un plan de réponse aux incidents.', 'texte', 75, false, 40
from public.courses c where c.slug = 'lic-info-l3'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Sécurité informatique : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Sujet type d''examen de Licence 3 Informatique (corrigé détaillé)', '## Présentation

Sujet d''entraînement, non officiel, sur le modèle d''une épreuve semestrielle de Licence 3. Durée conseillée : 3 heures, sans document. Barème indicatif, non officiel, sur 20 points. L''entreprise et les tarifs sont fictifs.

## Exercice 1 : génie logiciel et UML (7 points)

La start-up fictive Jàng Online propose des cours de soutien en ligne. Un élève crée un compte, consulte le catalogue, s''abonne pour une durée de 1 à 12 mois et paie par paiement mobile. Un enseignant publie des cours, chaque cours relevant d''une seule matière. Un administrateur valide les comptes des enseignants. Le paiement est traité par un opérateur externe.

1.1 (2 pts) Donne les acteurs et au moins cinq cas d''utilisation. Indique une relation include.

1.2 (3 pts) Propose un diagramme de classes avec Eleve, Enseignant, Cours, Matiere et Abonnement : attributs principaux et multiplicités.

1.3 (2 pts) Le prix d''un abonnement est de 5 000 FCFA par mois, avec une remise de 10 % à partir de 6 mois (tarif fictif). Une durée hors de 1 à 12 mois est refusée. Donne les valeurs limites à tester et les résultats attendus.

## Exercice 2 : web et API (6 points)

2.1 (1,5 pt) Quel code HTTP renvoyer : a) cours introuvable ; b) cours publié avec succès ; c) élève non connecté qui veut consulter un cours payant ?

2.2 (2 pts) Propose les routes REST pour : lister les cours d''une matière, consulter un cours, publier un cours, supprimer un cours.

2.3 (1,5 pt) Qu''affiche ce code JavaScript ?

const notes = [14, 8, 17, 11];
const admis = notes.filter(n => n >= 10);
console.log(admis.length, Math.max(...notes));

2.4 (1 pt) Une carte a width: 320px, padding: 12px, border: 1px, en content-box. Quelle largeur occupe-t-elle ?

## Exercice 3 : sécurité (7 points)

3.1 (2 pts) Le code de connexion construit la requête ainsi : "SELECT * FROM eleve WHERE email = ''" + email + "''". Quel est le risque ? Comment corriger ?

3.2 (2,5 pts) RSA miniature : p = 7, q = 11, e = 7. Calcule n, φ, d. Chiffre m = 9.

3.3 (1 pt) Pourquoi ne faut-il pas chiffrer les mots de passe de façon réversible ?

3.4 (1,5 pt) Propose trois mesures pour protéger la disponibilité de la plateforme.

## Corrigé détaillé

1.1 Acteurs principaux : Élève, Enseignant, Administrateur ; acteur secondaire : Opérateur de paiement. Cas : Créer un compte (Élève), Consulter le catalogue (Élève), S''abonner (Élève), Payer (Élève, Opérateur de paiement), Publier un cours (Enseignant), Valider un enseignant (Administrateur). Relation include : « S''abonner » inclut « Payer » (le paiement est obligatoire) ; on peut aussi faire inclure « S''authentifier » par les cas réservés aux utilisateurs connectés.

1.2 Classes et attributs : Eleve (id, nom, telephone), Enseignant (id, nom, valide : booléen), Matiere (code, libelle), Cours (id, titre, datePublication), Abonnement (id, dateDebut, dureeMois, montant). Multiplicités : Eleve 1 — 0..* Abonnement (un élève peut se réabonner) ; Enseignant 1 — 0..* Cours ; Matiere 1 — 0..* Cours (chaque cours relève d''une seule matière) ; Abonnement donne accès au catalogue, sans association directe à un cours. On accepte aussi une classe Utilisateur dont héritent Eleve et Enseignant.

1.3 Classes valides : 1 à 5 mois (sans remise), 6 à 12 mois (remise) ; invalides : 0 ou moins, 13 ou plus. Valeurs limites et résultats : 0 → refus ; 1 → 5 000 FCFA ; 5 → 25 000 FCFA ; 6 → 30 000 − 3 000 = 27 000 FCFA ; 12 → 60 000 − 6 000 = 54 000 FCFA ; 13 → refus.

def prix(mois):
    if mois < 1 or mois > 12:
        raise ValueError("durée refusée")
    brut = 5000 * mois
    if mois >= 6:
        return brut - brut * 10 // 100
    return brut

print(prix(1), prix(5), prix(6), prix(12))

2.1 a) 404 ; b) 201 ; c) 401 (non authentifié). S''il était connecté sans abonnement, on renverrait plutôt 403.

2.2 GET /api/v1/matieres/{code}/cours → 200 ; GET /api/v1/cours/{id} → 200 ou 404 ; POST /api/v1/cours (corps JSON avec titre, matière, contenu) → 201 ; DELETE /api/v1/cours/{id} → 204. Une variante GET /api/v1/cours?matiere=MATH est aussi correcte.

2.3 filter garde 14, 17 et 11 : admis.length vaut 3 ; Math.max(...notes) vaut 17. Affichage : 3 17.

2.4 320 + 2 × 12 + 2 × 1 = 346 pixels.

3.1 Risque d''injection SQL : une saisie comme '' OR ''1''=''1 rend la condition toujours vraie et peut contourner l''authentification ou exposer des données. Correction : requête paramétrée (SELECT * FROM eleve WHERE email = ?, la valeur étant passée séparément), validation du format de l''adresse, compte de base de données aux droits limités, et ne jamais afficher les messages d''erreur SQL à l''utilisateur.

3.2 n = 77 ; φ = 6 × 10 = 60 ; d = 43 car 7 × 43 = 301 = 5 × 60 + 1. Chiffrement : c = pow(9, 7, 77) = 37. Vérification : pow(37, 43, 77) = 9.

print(7 * 11, (7 * 43) % 60, pow(9, 7, 77), pow(37, 43, 77))

3.3 Si la clé de déchiffrement est volée avec la base, tous les mots de passe sont révélés, et les utilisateurs réutilisent souvent leurs mots de passe ailleurs. Un hachage lent et salé ne se « déchiffre » pas : l''attaquant doit essayer les mots de passe un par un.

3.4 Sauvegardes régulières et testées (règle 3-2-1) ; hébergement redondant ou plan de reprise ; protection contre le déni de service (limitation du nombre de requêtes, service de filtrage) ; surveillance et alertes ; mises à jour planifiées hors des heures de forte affluence.

## Exercices pratiques

1. Cite deux différences entre une agrégation et une composition.
2. Quel en-tête HTTP indique le format du corps de la réponse ?
3. Un hachage SHA-256 produit une empreinte de combien de bits ?
4. Que signifie l''idempotence d''une méthode HTTP ?

## Corrigé

1. Dans une composition, la partie ne peut exister sans le tout et disparaît avec lui, et elle n''appartient qu''à un seul tout ; dans une agrégation, la partie peut exister seule et être partagée. Notation : losange plein pour la composition, vide pour l''agrégation.
2. Content-Type (par exemple application/json).
3. 256 bits, soit 32 octets.
4. Répéter la même requête une ou plusieurs fois laisse le serveur dans le même état (GET, PUT, DELETE).', 'texte', 90, false, 50
from public.courses c where c.slug = 'lic-info-l3'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Sujet type d''examen de Licence 3 Informatique (corrigé détaillé)');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Génie logiciel et UML', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : étudiants de Licence 3 Informatique.
- Objectifs : choisir un cycle de vie adapté ; extraire les exigences d''un texte ; construire un diagramme de cas d''utilisation, un diagramme de classes et un diagramme de séquence ; concevoir des tests par valeurs limites.
- Matériel : tableau blanc, diaporama, outil de modélisation UML (ou papier quadrillé), Python pour les tests.
- Prérequis : programmation, bases de données ; leçon « Génie logiciel et UML : l''essentiel pour l''examen ».

## Déroulé minuté

## 00:00 – 05:00 · Accueil

Texte du formateur : « Bonjour. Beaucoup de projets informatiques échouent non pas parce que le code est mauvais, mais parce qu''on a construit le mauvais logiciel, ou qu''on l''a construit sans plan. Le génie logiciel, c''est l''art de construire le bon logiciel, et de le construire bien. Aujourd''hui, nous suivons un projet du texte du client jusqu''aux tests. »

## 05:00 – 15:00 · Cycles de vie : choisir sa méthode

Texte du formateur : « Toute méthode passe par les mêmes activités : comprendre le besoin, spécifier, concevoir, coder, tester, déployer, maintenir. Ce qui change, c''est l''enchaînement. En cascade, on fait tout dans l''ordre, une seule fois. Le cycle en V associe chaque niveau de conception à un niveau de test : c''est rassurant pour un système critique, comme un logiciel de contrôle dans un hôpital. Avec l''itératif et l''agile, on livre souvent, par petits morceaux, et le client corrige le tir à chaque démonstration. »

« Scrum, concrètement : le responsable de produit tient le carnet de produit, une liste priorisée de fonctionnalités écrites comme des récits utilisateur, par exemple "En tant que client, je veux suivre ma commande pour savoir quand elle arrive". Toutes les deux à quatre semaines, l''équipe choisit des récits, les réalise, et les montre. Le scrum master protège l''équipe et anime les réunions. »

Question au public : « Pour une application de livraison de repas dont le client change d''avis chaque semaine, quelle méthode ? » Réponse attendue : agile.

## 15:00 – 30:00 · Du texte aux cas d''utilisation

Énoncé projeté : « La plateforme fictive Lekk Express permet à un client de commander un repas auprès des restaurants partenaires de Dakar, de payer en ligne et de suivre la livraison. Le restaurateur reçoit les commandes et met à jour son menu. Le livreur accepte les courses et confirme la livraison. Un administrateur valide les nouveaux restaurants. »

Texte du formateur : « Méthode : je souligne les acteurs, je mets les verbes en évidence. Acteurs : client, restaurateur, livreur, administrateur, et le service de paiement, acteur externe. Cas d''utilisation : Commander un repas, Payer, Suivre la livraison, Recevoir les commandes, Mettre à jour le menu, Accepter une course, Confirmer la livraison, Valider un restaurant. »

« Commander un repas inclut Payer : impossible de commander sans payer, d''où include. Appliquer un code promotionnel étend Payer : c''est optionnel, d''où extend. Attention au sens des flèches : pour include, la flèche part du cas de base vers le cas inclus ; pour extend, elle part de l''extension vers le cas de base. »

Visuel : le diagramme dessiné en direct, le rectangle du système au centre, les acteurs à gauche et à droite.

« Exigences non fonctionnelles repérées en relisant : la plateforme doit fonctionner sur des téléphones modestes avec une connexion mobile irrégulière, et les paiements doivent être sécurisés. Ce ne sont pas des cas d''utilisation, ce sont des qualités : notez-les à part. »

## 30:00 – 35:00 · Quiz interactif

- Q1 : un acteur peut-il être un système ? Réponse : oui, par exemple le service de paiement.
- Q2 : un cas toujours exécuté avec un autre : include ou extend ? Réponse : include.
- Q3 : dans Scrum, qui priorise le carnet de produit ? Réponse : le responsable de produit (product owner).
- Q4 : « La page s''affiche en moins de 3 secondes » est une exigence de quel type ? Réponse : non fonctionnelle.

## 35:00 – 55:00 · Correction commentée : le diagramme de classes

Texte du formateur : « Je relis l''énoncé et je cherche les noms porteurs de données : client, restaurant, repas (plat), commande, livreur, paiement. Chaque nom devient une classe candidate. Je garde ceux qui ont des attributs propres. »

Classes proposées au tableau :

- Client : nom, téléphone, adresse.
- Restaurant : nom, quartier, validé.
- Plat : nom, prix.
- Commande : numéro, date, statut ; opération montantTotal().
- LigneCommande : quantité.
- Livreur : nom, téléphone.
- Paiement : montant, date, référence.

« Multiplicités, une par une, en lisant dans les deux sens. Un client passe 0..* commandes ; une commande est passée par exactement 1 client. Une commande contient 1..* lignes ; une ligne appartient à 1 commande : composition, car une ligne sans sa commande n''a aucun sens. Une ligne porte sur 1 plat ; un plat apparaît dans 0..* lignes. Un restaurant propose 1..* plats. Une commande est livrée par 0..1 livreur, car au moment de la création, personne n''a encore accepté la course. Une commande a 0..1 paiement. »

Correction d''une copie typique : un étudiant a mis l''attribut « plats » dans Commande, sous forme de liste. Le formateur explique que la quantité de chaque plat n''a alors nulle part où vivre : c''est précisément le rôle de LigneCommande, qui deviendra une table d''association en base de données, exactement comme en Licence 2.

## 55:00 – 1:05:00 · Le diagramme de séquence

Texte du formateur : « Le diagramme de séquence raconte un scénario dans le temps. Scénario nominal "Commander un repas" : le client valide son panier sur l''application ; l''application envoie la commande au serveur ; le serveur calcule le montant et demande le paiement au service externe ; le service répond "accepté" ; le serveur enregistre la commande au statut "payée" et notifie le restaurant ; l''application affiche la confirmation au client. »

« Le scénario alternatif, paiement refusé, se dessine dans un fragment alt : une branche "accepté", une branche "refusé" où le serveur annule la commande et l''application affiche un message d''erreur. Les flèches pleines sont des appels, les flèches en pointillé des retours. »

Visuel : cinq lignes de vie (Client, Application, Serveur, ServicePaiement, Restaurant) avec les messages numérotés.

## 1:05:00 – 1:15:00 · Tester avec les valeurs limites

Texte du formateur : « Règle métier fictive : la livraison est gratuite à partir de 10 000 FCFA de commande, sinon elle coûte 1 000 FCFA ; une commande doit être comprise entre 1 500 et 200 000 FCFA. Où sont les frontières ? À 1 500, à 10 000 et à 200 000. On teste juste en dessous et juste au niveau de chaque frontière, plus une valeur au-dessus du maximum. »

def frais_livraison(montant):
    if montant < 1500 or montant > 200000:
        raise ValueError("montant hors limites")
    if montant >= 10000:
        return 0
    return 1000

cas = [1500, 9999, 10000, 200000]
print([frais_livraison(m) for m in cas])

« Résultat attendu : [1000, 1000, 0, 0]. Et 1 499 et 200 001 doivent lever une erreur. Remarquez : si le développeur avait écrit montant > 10000 au lieu de montant >= 10000, seul le test à 10 000 l''aurait détecté. C''est tout l''intérêt des valeurs limites : les erreurs se cachent aux frontières. »

« Dernier point : ces tests ne s''écrivent pas une fois pour toutes. On les range dans le projet et on les relance automatiquement à chaque modification du code : ce sont les tests de non-régression. Dans une équipe, un serveur d''intégration continue exécute toute la batterie de tests avant d''accepter une nouvelle version. Un test qui échoue bloque la livraison, et c''est tant mieux : mieux vaut un développeur averti qu''un client mécontent. »

## 1:15:00 – 1:22:00 · Synthèse

Texte du formateur : « Le chemin complet : un texte, des acteurs et des cas d''utilisation, des classes avec leurs multiplicités, des scénarios en séquence, puis des tests aux frontières. Choisissez la méthode selon la stabilité des besoins. Et souvenez-vous : un diagramme sert à communiquer ; s''il n''est pas lisible, il ne sert à rien. »

## 1:22:00 – 1:30:00 · Évaluation finale (5 questions)

1. Quelle méthode associe à chaque phase de conception une phase de test ? Réponse : le cycle en V.
2. Écris un récit utilisateur pour le livreur. Réponse : « En tant que livreur, je veux voir les courses disponibles près de moi pour en accepter une rapidement. »
3. Multiplicité côté Livreur pour une commande qui vient d''être créée ? Réponse : 0..1.
4. Quel fragment représente une alternative dans un diagramme de séquence ? Réponse : alt.
5. Valeurs limites pour une note valide de 0 à 20 ? Réponse : −1, 0, 20, 21 (éventuellement 1 et 19).

Mot de fin : « Reprenez l''énoncé Lekk Express seul, sans vos notes, et produisez les trois diagrammes en 45 minutes. C''est le format d''une étude de cas d''examen. »', 'video', 90, false, 60
from public.courses c where c.slug = 'lic-info-l3'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Génie logiciel et UML');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Développement web et API', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : étudiants de Licence 3 Informatique.
- Objectifs : structurer une page HTML accessible ; maîtriser le modèle de boîte et la spécificité CSS ; manipuler des données et la page en JavaScript ; décrire les échanges HTTP ; concevoir une API REST.
- Matériel : éditeur de code et navigateur projetés, outils de développement du navigateur (onglet Réseau), Node.js, diaporama.
- Prérequis : leçon « Développement web et API : l''essentiel pour l''examen » ; notions de réseaux de Licence 2.

## Déroulé minuté

## 00:00 – 05:00 · Accueil

Texte du formateur : « Bonjour. Une application web, c''est trois langages côté navigateur, HTML, CSS et JavaScript, et un dialogue avec un serveur par HTTP. Aujourd''hui, nous construisons mentalement le site d''un restaurant fictif de Saint-Louis qui affiche son menu et reçoit des commandes, puis nous concevons son API. »

## 05:00 – 20:00 · HTML : structure et accessibilité

Texte du formateur : « HTML dit ce que sont les choses, pas à quoi elles ressemblent. Un titre principal se balise en h1, même si vous voulez qu''il soit petit : la taille, c''est le travail du CSS. Les balises sémantiques header, nav, main, section, footer permettent aux lecteurs d''écran, utilisés par les personnes malvoyantes, de naviguer dans la page. »

« Pour le formulaire de commande, chaque champ a son label relié par l''attribut for. Cliquer sur le texte du label place le curseur dans le champ, et le lecteur d''écran annonce correctement le champ. Les attributs type="tel", required ou min font une première validation dans le navigateur. Mais attention : cette validation est un confort pour l''utilisateur, jamais une sécurité. Le serveur doit tout revérifier, car n''importe qui peut envoyer une requête sans passer par votre formulaire. »

Visuel : le formulaire avec trois champs (nom, téléphone, quantité) et un bouton « Commander ».

« Et chaque image du menu porte un attribut alt qui décrit le plat : "Assiette de thiéboudienne au poisson". Si l''image ne se charge pas, sur une connexion lente par exemple, le texte s''affiche à sa place. »

## 20:00 – 35:00 · CSS : boîte, spécificité, mise en page

Texte du formateur : « Premier calcul d''examen : la largeur d''une boîte. width: 280px, padding: 16px, border: 2px. En content-box, le comportement par défaut, la largeur visible est 280 + 32 + 4 = 316 pixels. En border-box, elle reste 280 pixels et c''est le contenu qui rétrécit à 280 − 32 − 4 = 244 pixels. Beaucoup de développeurs appliquent border-box à tous les éléments pour simplifier les calculs. »

« Deuxième notion : la spécificité. Un sélecteur d''identifiant bat un sélecteur de classe, qui bat un sélecteur de balise. Si #menu .plat { color: brown } et .plat { color: black } s''appliquent au même élément, il est marron : un identifiant et une classe pèsent plus lourd qu''une classe seule. »

« Troisième notion : la mise en page. Pour afficher les cartes des plats côte à côte, on écrit sur le conteneur display: flex; flex-wrap: wrap; gap: 16px. Sur un téléphone, une requête média @media (max-width: 600px) passe les cartes en colonne. On conçoit d''abord pour le mobile, puis on enrichit pour les grands écrans. »

## 35:00 – 40:00 · Quiz interactif

- Q1 : quelle balise contient le titre affiché dans l''onglet du navigateur ? Réponse : title, dans head.
- Q2 : quelle largeur pour width: 200px, padding: 10px, border: 1px en content-box ? Réponse : 222 pixels.
- Q3 : un identifiant ou une classe : lequel est le plus spécifique ? Réponse : l''identifiant.
- Q4 : la validation dans le navigateur suffit-elle ? Réponse : non, il faut toujours valider côté serveur.

## 40:00 – 55:00 · JavaScript : données et page

Texte du formateur : « JavaScript manipule des données et la page. Commençons par les données : le menu est un tableau d''objets. »

const menu = [
  { nom: "Thiéboudienne", prix: 2500 },
  { nom: "Yassa poulet", prix: 2000 },
  { nom: "Mafé", prix: 1800 },
  { nom: "Bissap 1 L", prix: 1000 },
];
const abordables = menu.filter(p => p.prix <= 2000).map(p => p.nom);
console.log(abordables.join(", "));
const total = menu.reduce((s, p) => s + p.prix, 0);
console.log(total);

« filter garde les plats à 2 000 FCFA au plus, map ne retient que leur nom, reduce additionne les prix. Affichage : Yassa poulet, Mafé, Bissap 1 L, puis 7300. Ces trois méthodes reviennent sans cesse à l''examen : sachez prévoir leur résultat. »

« Ensuite, la page. On sélectionne un élément avec document.querySelector, on réagit à un événement avec addEventListener, et on modifie le contenu avec textContent. Pour charger le menu depuis le serveur, on utilise fetch avec await : la page reste réactive pendant l''attente. Toujours tester rep.ok avant de lire le JSON : un code 404 ou 500 n''est pas une exception réseau, fetch ne lève pas d''erreur dans ce cas. »

Le formateur montre ensuite comment afficher le menu dans la page, en créant un élément par plat :

const zone = document.querySelector("#menu");
for (const plat of menu) {
  const carte = document.createElement("article");
  carte.className = "plat";
  carte.textContent = plat.nom + " : " + plat.prix + " FCFA";
  zone.append(carte);
}

« createElement fabrique une balise article, className lui donne la classe plat, que la feuille de style mettra en forme, et append l''ajoute dans la zone du menu. Remarquez encore textContent : si un nom de plat contenait du code, il serait affiché comme du texte, jamais exécuté. »

Démonstration : dans l''onglet Réseau des outils de développement, le formateur montre la requête GET vers /api/v1/plats, son code 200, l''en-tête Content-Type: application/json et le corps de la réponse.

## 55:00 – 1:10:00 · Correction commentée : concevoir l''API du restaurant

Énoncé : « Concevoir l''API permettant de lister les plats, consulter un plat, ajouter un plat (gérant), modifier le prix d''un plat, retirer un plat, passer une commande, consulter une commande et l''annuler. »

Proposition corrigée au tableau :

- GET /api/v1/plats → 200, avec pagination ?page=1&taille=20.
- GET /api/v1/plats/{id} → 200, ou 404.
- POST /api/v1/plats → 201 (gérant authentifié ; 401 sans jeton, 403 si le jeton n''est pas celui d''un gérant).
- PATCH /api/v1/plats/{id} avec {"prix": 2200} → 200.
- DELETE /api/v1/plats/{id} → 204.
- POST /api/v1/commandes → 201, avec en-tête Location: /api/v1/commandes/{id} ; 400 si la quantité est invalide.
- GET /api/v1/commandes/{id} → 200.
- Annulation : PATCH /api/v1/commandes/{id} avec {"statut": "annulee"} → 200, ou 409 si la commande est déjà livrée.

Texte du formateur : « Erreurs relevées sur les copies : des verbes dans les URI, comme /annulerCommande ; GET utilisé pour supprimer, ce qui est dangereux car un simple lien ou un robot d''indexation pourrait déclencher la suppression ; 200 renvoyé pour tout, y compris les erreurs, avec un message dans le corps. Les codes d''état existent pour que les clients de l''API réagissent sans lire du texte. »

« Pour les erreurs, renvoyez un corps JSON régulier, par exemple {"erreur": "quantite_invalide", "message": "La quantité doit être comprise entre 1 et 20"}. Le client affiche le message, le programme teste le code. »

## 1:10:00 – 1:20:00 · Bonnes pratiques d''une API

Texte du formateur : « Cinq règles. Un : HTTPS partout. Deux : authentification par jeton envoyé dans l''en-tête Authorization, jamais dans l''URL, car les URL finissent dans les journaux. Trois : validation de toutes les entrées côté serveur. Quatre : versionnement dans le chemin, /v1/, pour faire évoluer l''API sans casser les applications existantes. Cinq : documentation, avec un exemple de requête et de réponse pour chaque route. On ajoute souvent une limitation du nombre de requêtes par client, qui protège le service contre les abus. »

« Un mot sur l''état. HTTP est sans état : le serveur ne se souvient pas de vous entre deux requêtes. C''est le jeton, envoyé à chaque fois, qui dit qui vous êtes. Cette propriété permet de répartir les requêtes sur plusieurs serveurs sans difficulté. »

## 1:20:00 – 1:30:00 · Synthèse et évaluation finale (5 questions)

Synthèse : « HTML pour le sens, CSS pour l''apparence, JavaScript pour le comportement, HTTP pour le dialogue, REST pour une API prévisible. »

1. Qu''affiche [3, 8, 12].map(x => x * 2).filter(x => x > 10) ? Réponse : [16, 24].
2. Code HTTP pour une création réussie ? Réponse : 201.
3. Pourquoi ne pas utiliser GET pour supprimer ? Réponse : GET doit être sûr (sans effet) ; un lien, un préchargement ou un robot pourrait supprimer des données.
4. Largeur d''une boîte width: 300px, padding: 20px, border: 3px en border-box ? Réponse : 300 pixels.
5. Où placer le jeton d''authentification ? Réponse : dans l''en-tête Authorization, sur une connexion HTTPS.

Mot de fin : « Construisez ce petit site chez vous, avec un faux serveur si besoin, et observez chaque requête dans l''onglet Réseau. »', 'video', 90, false, 70
from public.courses c where c.slug = 'lic-info-l3'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Développement web et API');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Sécurité informatique', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : étudiants de Licence 3 Informatique.
- Objectifs : analyser un risque ; expliquer et corriger les attaques courantes ; évaluer la robustesse d''un mot de passe ; comprendre l''échange de clés, le hachage et la signature ; bâtir un plan de sécurité pour une PME.
- Matériel : diaporama, Python projeté, tableau blanc, étude de cas distribuée.
- Prérequis : leçon « Sécurité informatique : l''essentiel pour l''examen » ; SQL et HTTP.

## Déroulé minuté

## 00:00 – 05:00 · Accueil

Texte du formateur : « Bonjour. Avec le développement du paiement mobile et des services en ligne, la sécurité informatique est devenue une préoccupation de toutes les entreprises, petites ou grandes. La bonne nouvelle : la plupart des attaques réussies exploitent des erreurs simples. Aujourd''hui, nous apprenons à les reconnaître et à les éviter. »

## 05:00 – 15:00 · Penser en risques

Texte du formateur : « Le risque, c''est une menace qui exploite une vulnérabilité, avec un certain impact. Prenons une agence fictive de transfert d''argent à Thiès. Ses biens à protéger : les comptes clients, l''argent, la réputation. Menaces : hameçonnage des employés, vol d''un ordinateur portable, rançongiciel, fraude interne. Pour chaque couple menace-vulnérabilité, on estime la probabilité et l''impact, et on traite d''abord les risques élevés. »

Visuel : une matrice probabilité-impact à trois niveaux, où le formateur place l''hameçonnage (probabilité forte, impact fort) et l''incendie de l''agence (probabilité faible, impact fort).

« Une fois les risques classés, quatre traitements sont possibles. Réduire le risque, par une mesure technique ou organisationnelle : la double authentification réduit l''hameçonnage. Transférer le risque, par exemple à un assureur ou à un prestataire spécialisé. Éviter le risque, en renonçant à l''activité qui le crée : ne plus envoyer les relevés clients par courriel non protégé. Accepter le risque, quand il est faible et que la mesure coûterait plus cher que le dommage, à condition de le décider et de l''écrire. Ce qui est interdit, c''est d''ignorer un risque sans l''avoir jamais évalué. »

« Rappel de la triade : confidentialité, intégrité, disponibilité. Un rançongiciel attaque surtout la disponibilité ; une fuite de fichier clients attaque la confidentialité ; un virement modifié attaque l''intégrité. »

## 15:00 – 30:00 · Attaques applicatives et mots de passe

Texte du formateur : « Injection SQL : si le code colle la saisie dans la requête, l''utilisateur écrit du SQL à votre place. La saisie '' OR ''1''=''1 transforme une recherche ciblée en "tout afficher". La correction est toujours la même : requêtes paramétrées. XSS : si le site réaffiche un commentaire sans l''échapper, un script malveillant s''exécute chez chaque visiteur. Correction : échapper à l''affichage et utiliser textContent. »

« Passons aux mots de passe. Combien de combinaisons pour 8 lettres minuscules ? pow(26, 8), soit environ 209 milliards. Cela paraît énorme, mais pour un attaquant qui testerait un milliard d''empreintes par seconde (hypothèse pour l''exemple, cela dépend du matériel et de l''algorithme), il suffit d''environ 209 secondes. Avec 12 caractères pris parmi minuscules, majuscules et chiffres, soit 62 symboles : pow(62, 12), environ 3,2 × 10²¹ combinaisons, soit de l''ordre de 100 000 ans au même rythme. La longueur est l''arme principale. »

print(pow(26, 8), round(pow(26, 8) / 1e9), round(pow(62, 12) / 1e9 / 3600 / 24 / 365))

« Le programme affiche 208827064576, 209 secondes et environ 102 304 ans. Et c''est pour cela qu''on stocke les mots de passe avec un hachage lent : il réduit fortement le nombre d''essais par seconde. »

## 30:00 – 35:00 · Quiz interactif

- Q1 : une sauvegarde chiffrée par un rançongiciel : quel objectif est atteint ? Réponse : la disponibilité.
- Q2 : quelle est la meilleure correction d''une injection SQL ? Réponse : les requêtes paramétrées.
- Q3 : qu''est-ce qui augmente le plus la robustesse d''un mot de passe ? Réponse : sa longueur.
- Q4 : un SMS demandant « votre code secret pour débloquer votre compte » : quelle attaque ? Réponse : l''hameçonnage.

## 35:00 – 55:00 · Cryptographie : partager un secret

Texte du formateur : « Le chiffrement symétrique est rapide, mais comment deux machines qui ne se connaissent pas se mettent-elles d''accord sur une clé, à travers un réseau espionné ? Réponse : l''échange de Diffie-Hellman. Version miniature, au tableau. On choisit publiquement p = 23 et g = 5. Awa choisit en secret a = 6 et envoie A = pow(5, 6, 23) = 8. Moussa choisit en secret b = 15 et envoie B = pow(5, 15, 23) = 19. Awa calcule pow(19, 6, 23) = 2 ; Moussa calcule pow(8, 15, 23) = 2. Ils obtiennent le même secret, 2, sans jamais l''avoir transmis. L''espion voit 23, 5, 8 et 19, mais retrouver a ou b est très difficile quand les nombres sont gigantesques. »

p, g, a, b = 23, 5, 6, 15
A, B = pow(g, a, p), pow(g, b, p)
print(A, B, pow(B, a, p), pow(A, b, p))

« Le programme affiche 8 19 2 2. En pratique, HTTPS utilise ce type d''échange pour établir une clé de session, puis chiffre les données avec un algorithme symétrique comme AES. Le certificat du serveur, signé par une autorité de certification, garantit que vous parlez bien au bon serveur et pas à un imposteur placé au milieu. »

« Et RSA ? Avec la clé publique, on chiffre ; avec la clé privée, on déchiffre. Reprenez l''exemple de la leçon : n = 3 233, e = 17, d = 2 753. Chiffrer 65 donne 2 790, et déchiffrer 2 790 redonne 65. »

## 55:00 – 1:10:00 · Hachage et signature

Texte du formateur : « Une fonction de hachage transforme n''importe quel message en une empreinte de taille fixe. Regardez : je hache "Bonjour" puis "bonjour" avec SHA-256. »

import hashlib
h1 = hashlib.sha256("Bonjour".encode()).hexdigest()
h2 = hashlib.sha256("bonjour".encode()).hexdigest()
print(len(h1), h1[:16], h2[:16])

« Le programme affiche 64 caractères hexadécimaux, soit 256 bits, et les débuts d''empreintes 9172e8eec99f144f et 2cb4b1431b84ec15 : une seule majuscule change tout. C''est l''effet avalanche. Usage : un éditeur publie l''empreinte d''un fichier d''installation ; après téléchargement, vous recalculez l''empreinte et vous comparez. »

« La signature combine hachage et asymétrique. L''émetteur hache le document, puis transforme l''empreinte avec sa clé privée. Le destinataire refait l''opération inverse avec la clé publique et compare avec sa propre empreinte. En miniature, avec la clé de la leçon, signer l''empreinte 123 donne s = pow(123, 2753, 3233) = 2 746 ; vérifier donne pow(2746, 17, 3233) = 123 : la signature est valide. Si un octet du document change, l''empreinte change et la vérification échoue. »

## 1:10:00 – 1:20:00 · Correction commentée : plan de sécurité d''une PME

Énoncé : « Une agence fictive de transfert d''argent (12 employés, 2 agences) vient d''être victime d''un hameçonnage. Proposez un plan d''action priorisé. »

Proposition corrigée :

- Immédiat : réinitialiser les mots de passe compromis, analyser les journaux, bloquer les opérations suspectes, informer les clients concernés si leurs données sont touchées, en respectant les obligations légales en vigueur.
- Court terme : authentification à plusieurs facteurs pour tous les accès sensibles ; plafonds d''opérations par profil (moindre privilège) ; formation de tout le personnel à l''hameçonnage.
- Moyen terme : sauvegardes selon la règle 3-2-1 avec tests de restauration ; mises à jour automatiques ; procédure écrite de réponse aux incidents ; revue trimestrielle des droits d''accès.

Texte du formateur : « Sur les copies, l''erreur la plus fréquente est la liste de mesures sans priorité, ou le tout technique. Ici, l''attaque est humaine : la formation et la double authentification sont prioritaires. Un antivirus de plus n''aurait rien changé. »

## 1:20:00 – 1:30:00 · Synthèse et évaluation finale (5 questions)

Synthèse : « Pensez en risques, corrigez les failles connues, protégez les mots de passe, chiffrez les échanges, signez ce qui doit être authentique, et formez les humains. »

1. Quel objectif de sécurité la signature numérique garantit-elle, en plus de l''intégrité ? Réponse : l''authenticité et la non-répudiation.
2. Diffie-Hellman avec p = 23, g = 5, a = 3, b = 7 : quel secret commun ? Réponse : A = 10, B = 17, secret = pow(17, 3, 23) = 14.
3. Pourquoi ajouter un sel avant de hacher un mot de passe ? Réponse : pour que deux mots de passe identiques aient des empreintes différentes et rendre inutiles les tables précalculées.
4. Combien de combinaisons pour un code à 4 chiffres ? Réponse : pow(10, 4) = 10 000.
5. Citer la règle de sauvegarde vue en cours. Réponse : 3-2-1, trois copies, deux supports, une hors site.

Mot de fin : « La sécurité n''est pas un produit qu''on achète, c''est une habitude. Commencez par la vôtre : activez dès ce soir la double authentification sur vos comptes, et refaites le calcul Diffie-Hellman de l''évaluation sans regarder la correction. »', 'video', 90, false, 80
from public.courses c where c.slug = 'lic-info-l3'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Sécurité informatique');

-- Cours : Contrôle de gestion Licence 1 : réussir ses examens
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'lic-cg-l1', (select id from public.levels where name = 'Licence 1'), null, 'Contrôle de gestion', 'Contrôle de gestion Licence 1 : réussir ses examens', 'Préparation aux partiels et examens semestriels de première année de Licence en contrôle de gestion : introduction au contrôle de gestion et à l''organisation, comptabilité analytique en coûts complets, mathématiques et statistiques de gestion. Fiches de cours, cas d''entreprises fictives d''Afrique de l''Ouest, sujet type corrigé et trois cours vidéo de 1h30. Prérequis : bases de la comptabilité générale (SYSCOHADA révisé) et aisance avec les pourcentages.', true, 331
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Réussir ses examens de Licence 1 en Contrôle de gestion', '## Objectifs de la leçon

- Comprendre l''organisation de la première année de Licence en contrôle de gestion dans le système LMD.
- Identifier les matières clés de l''année et les compétences attendues à l''examen.
- Connaître les types d''épreuves et adopter une méthode de révision efficace.
- Construire un plan de révision réaliste sur six semaines.

## 1. La Licence 1 dans le système LMD

Dans les universités et écoles de gestion du Sénégal et de l''espace UEMOA, la Licence suit le système LMD (Licence, Master, Doctorat). L''année est découpée en deux semestres. Chaque semestre regroupe des unités d''enseignement (UE) qui rassemblent plusieurs matières (éléments constitutifs). Chaque UE est affectée d''un nombre de crédits qui reflète la charge de travail de l''étudiant, cours magistraux, travaux dirigés et travail personnel compris.

Les modalités précises (nombre de crédits par UE, poids du contrôle continu, règles de compensation entre matières, sessions de rattrapage) varient d''un établissement à l''autre. Votre premier réflexe doit donc être de lire le règlement des études et la maquette de votre filière, disponibles auprès de la scolarité. Ne vous fiez pas aux rumeurs de couloir : une seule note éliminatoire mal anticipée peut coûter un semestre.

## 2. Les matières clés de l''année

En première année, la filière contrôle de gestion pose les fondations. Trois matières concentrent l''essentiel des exercices d''examen et sont traitées dans ce cours :

- Introduction au contrôle de gestion et à l''organisation : missions du contrôleur, notions de performance (efficacité, efficience, économie), structures d''organisation, centres de responsabilité, cycle de pilotage.
- Comptabilité analytique 1 : distinction entre charges directes et indirectes, incorporation des charges, tableau de répartition des centres d''analyse, unités d''œuvre, calcul des coûts complets (achat, production, revient) et du résultat analytique.
- Mathématiques et statistiques de gestion : pourcentages et indices, intérêts simples et composés, actualisation, emprunts indivis, statistique descriptive et ajustement linéaire, utilisé pour séparer charges fixes et charges variables.

Ces matières s''appuient sur d''autres enseignements de l''année : comptabilité générale (SYSCOHADA révisé), microéconomie, droit des affaires (OHADA), informatique de gestion (tableur). La comptabilité générale est indispensable : la comptabilité analytique part des charges enregistrées en classe 6.

## 3. Les types d''épreuves

- L''exercice chiffré : le plus fréquent. Exemple : compléter un tableau de répartition puis calculer un coût de revient. Les points se gagnent sur la démarche et la présentation autant que sur le résultat final.
- Le cas pratique : une entreprise fictive, plusieurs annexes, une série de questions enchaînées. Une erreur au début se propage ; le correcteur applique en général la règle de la « cohérence » si vous montrez votre méthode.
- Les questions de cours et le QCM : définitions précises (charge supplétive, unité d''œuvre, centre de profit), avec parfois justification demandée.
- La dissertation ou la question de réflexion : par exemple « Le contrôle de gestion est-il un outil de surveillance ou d''aide à la décision ? ». Il faut une introduction, un plan en deux ou trois parties et des exemples.
- Le projet ou dossier : en contrôle continu, construire un petit modèle de coûts sur tableur pour une entreprise réelle ou fictive.

## 4. Méthode de révision

La méthode la plus efficace combine trois gestes. D''abord, la fiche : une page par chapitre, avec les définitions, les formules et un schéma décrit en mots (par exemple : charges de la comptabilité générale → tri direct/indirect → centres d''analyse → unités d''œuvre → coûts). Ensuite, l''entraînement : refaire les exercices de TD sans regarder le corrigé, chronomètre en main. Enfin, l''auto-correction : comparer ligne par ligne et noter dans un carnet d''erreurs les fautes récurrentes (oubli des charges supplétives, mauvais choix de l''unité d''œuvre, confusion entre quantités produites et vendues).

Pour les exercices chiffrés, adoptez une présentation systématique : tableau clair, unités indiquées (FCFA, heures, kg), résultats intermédiaires encadrés par une phrase. Vérifiez toujours une égalité de contrôle : total de la répartition primaire égal aux charges incorporées, stock initial plus entrées égal à sorties plus stock final, résultat analytique concordant avec le résultat de la comptabilité générale.

## 5. Plan de révision sur 6 semaines

- Semaine 1 : relecture des cours d''introduction au contrôle de gestion ; fiches de définitions ; 2 dissertations rédigées en plan détaillé.
- Semaine 2 : comptabilité analytique, incorporation des charges et tableau de répartition ; 4 exercices de répartition, dont un avec prestations réciproques.
- Semaine 3 : coûts d''achat, inventaire permanent (CUMP), coûts de production et de revient ; 2 cas complets avec concordance des résultats.
- Semaine 4 : mathématiques financières (intérêts, actualisation, tableaux d''emprunt) ; statistiques (moyenne, écart-type, ajustement par les moindres carrés).
- Semaine 5 : sujets d''annales ou sujets types en conditions réelles (3 heures, sans document) ; correction et carnet d''erreurs.
- Semaine 6 : révision ciblée des points faibles, relecture des fiches, sommeil régulier. La veille de l''épreuve, pas de nouveau chapitre.

Travailler en groupe de trois ou quatre étudiants est très rentable pour les cas pratiques : chacun corrige la copie d''un autre, ce qui oblige à expliquer la méthode.

## 6. Le jour de l''épreuve

Lisez tout le sujet pendant les dix premières minutes et repérez les questions indépendantes. Répartissez votre temps selon le barème. Commencez par les questions que vous maîtrisez. Soignez la présentation des tableaux. Si vous êtes bloqué, posez une hypothèse explicite (« à défaut, je retiens un coût d''unité d''œuvre de 400 FCFA ») et poursuivez : vous sauverez les points de la suite. Gardez dix minutes à la fin pour relire les calculs et les unités.

## Points clés

- Lire le règlement des études : crédits, compensation et rattrapage dépendent de votre établissement.
- Trois matières clés : introduction au contrôle de gestion, comptabilité analytique 1, mathématiques et statistiques de gestion.
- Une méthode : fiche, entraînement chronométré, carnet d''erreurs.
- Toujours une égalité de contrôle dans les calculs.

## Exercices

- Exercice 1 : citez trois types d''épreuves et, pour chacun, une erreur fréquente à éviter.
- Exercice 2 : construisez votre propre plan de révision sur 6 semaines en tenant compte de vos points faibles.
- Exercice 3 : rédigez la fiche « schéma des coûts complets » en cinq étapes.

## Corrigé

- Exercice 1 : exercice chiffré, oublier les unités et les résultats intermédiaires ; cas pratique, ne pas exploiter toutes les annexes ; dissertation, réciter le cours sans problématique ni exemples.
- Exercice 2 : réponse personnelle ; un bon plan affecte plus de temps aux matières faibles, prévoit au moins deux sujets complets en conditions réelles et une dernière semaine allégée.
- Exercice 3 : 1) partir des charges de la comptabilité générale ; 2) retirer les charges non incorporables et ajouter les charges supplétives ; 3) affecter les charges directes aux coûts et répartir les charges indirectes dans les centres (répartition primaire puis secondaire) ; 4) calculer le coût des unités d''œuvre et imputer les centres aux coûts ; 5) calculer coûts d''achat, de production, de revient et résultat analytique, puis vérifier la concordance avec la comptabilité générale.', 'texte', 45, true, 10
from public.courses c where c.slug = 'lic-cg-l1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Réussir ses examens de Licence 1 en Contrôle de gestion');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Introduction au contrôle de gestion et à l''organisation : l''essentiel pour l''examen', '## Objectifs de la leçon

- Définir le contrôle de gestion, ses missions et sa place dans l''organisation.
- Mesurer la performance avec les notions d''efficacité, d''efficience et d''économie.
- Distinguer les structures d''organisation et les centres de responsabilité.
- Situer la comptabilité analytique par rapport à la comptabilité générale.

## 1. Définitions

Le contrôle de gestion est l''ensemble des dispositifs qui aident les responsables à piloter l''organisation vers ses objectifs en utilisant les ressources de façon efficace et efficiente. Dans les années 1960, Robert N. Anthony en a proposé une définition devenue classique : un processus par lequel les dirigeants s''assurent que les ressources sont obtenues et utilisées avec efficacité et efficience pour atteindre les objectifs de l''organisation. Les auteurs plus récents insistent sur la dimension d''aide à la décision et d''apprentissage, au-delà de la simple surveillance.

Contrôler ne veut pas dire inspecter ou sanctionner. Le contrôle de gestion se distingue de l''audit interne (qui vérifie la conformité et la maîtrise des risques) et du contrôle fiscal (externe). Il regarde vers l''avenir : prévoir, suivre, corriger.

## 2. Le cycle du contrôle de gestion

Le contrôle de gestion fonctionne en boucle :

- Planifier : traduire la stratégie en objectifs chiffrés (plan opérationnel, budgets).
- Agir : les opérationnels mettent en œuvre les actions.
- Mesurer : comparer le réalisé au prévu (écarts, indicateurs, tableaux de bord).
- Corriger : analyser les causes des écarts et décider des actions correctives, ou réviser les objectifs.

Schéma décrit : un cercle à quatre flèches « prévoir → agir → mesurer → corriger », avec au centre les objectifs stratégiques. On parle aussi de contrôle a priori (avant l''action : budgets), concomitant (pendant : tableaux de bord) et a posteriori (après : analyse des écarts, coûts).

## 3. Les trois dimensions de la performance

- Efficacité : degré d''atteinte des objectifs. Efficacité = résultat obtenu / objectif.
- Efficience : rapport entre résultats et ressources consommées. On la mesure souvent par un coût unitaire ou une productivité.
- Économie : obtention des ressources au meilleur coût (prix d''achat, conditions de financement).

Exemple chiffré. La société fictive Sahel Jus SARL, installée à Thiès, fabrique des jus de bissap et de bouye. Pour le trimestre, l''objectif était de 120 000 bouteilles pour un coût prévu de 450 FCFA par bouteille, soit un budget de 54 000 000 FCFA. Elle a produit 108 000 bouteilles pour un coût total réel de 49 680 000 FCFA.

- Efficacité = 108 000 / 120 000 = 90,0 % : l''objectif de volume n''est pas atteint.
- Coût unitaire réel = 49 680 000 / 108 000 = 460 FCFA, contre 450 FCFA prévus, soit 2,2 % de plus : l''efficience s''est dégradée.
- Piège classique : comparer le coût total réel (49 680 000) au budget initial (54 000 000) laisse croire à une économie de 4 320 000 FCFA. Or il faut comparer au budget ajusté au volume réel : 108 000 × 450 = 48 600 000 FCFA. Le dépassement réel est de 1 080 000 FCFA.

Cette idée de « budget flexible » sera approfondie en Licence 2.

## 4. Le contrôle de gestion dans l''organisation

Le contrôleur de gestion peut être rattaché à la direction générale (position de conseil, indépendance vis-à-vis des opérationnels) ou à la direction administrative et financière (proximité des données comptables, mais risque d''une vision trop financière). Dans les PME, la fonction est souvent assurée par le directeur financier, voire par le dirigeant lui-même.

Ses missions : construire et suivre les budgets, calculer les coûts, produire les tableaux de bord, analyser les écarts, conseiller les responsables, participer aux études de rentabilité, animer le dialogue de gestion.

Les structures d''organisation influencent le contrôle :

- Structure fonctionnelle : découpage par fonctions (production, commercial, finance). Simple, mais la rentabilité n''est visible qu''au niveau global.
- Structure divisionnelle : découpage par produits, marchés ou zones (par exemple une division Dakar et une division Ziguinchor). Chaque division peut être évaluée sur sa rentabilité.
- Structure matricielle : croisement fonctions × projets. Riche, mais la responsabilité est partagée et plus difficile à mesurer.

## 5. Les centres de responsabilité

Un centre de responsabilité est une unité dont le responsable dispose d''une délégation et rend compte de sa performance sur des indicateurs qu''il maîtrise.

- Centre de coût : le responsable maîtrise des coûts (atelier de production, service comptable). Indicateur : coût par unité, écart sur budget.
- Centre de recettes (ou de chiffre d''affaires) : service commercial ; indicateur : chiffre d''affaires, volume, part de marché.
- Centre de profit : le responsable maîtrise coûts et recettes (une agence, une boutique) ; indicateur : marge, résultat.
- Centre d''investissement : il décide aussi de ses investissements (une filiale) ; indicateur : rentabilité des capitaux investis.

Principe de contrôlabilité : on n''évalue un responsable que sur ce qu''il peut influencer.

## 6. Comptabilité générale et comptabilité analytique

La comptabilité générale (SYSCOHADA révisé) est obligatoire, normalisée, tournée vers les tiers ; elle classe les charges par nature (achats, transports, services extérieurs, charges de personnel) et calcule un résultat global. La comptabilité analytique (ou de gestion) est facultative, libre dans ses méthodes, tournée vers les décideurs internes ; elle reclasse les charges par destination (produit, activité, centre) pour calculer des coûts et des résultats partiels.

## Points clés

- Contrôle de gestion = piloter, pas sanctionner.
- Efficacité (objectifs), efficience (ressources), économie (prix des ressources).
- Toujours comparer le réel à un budget ajusté au volume réel.
- Centres de coût, de recettes, de profit, d''investissement ; principe de contrôlabilité.

## Exercices pratiques

- Exercice 1 : définissez en une phrase efficacité, efficience et économie.
- Exercice 2 : classez en centres de responsabilité : l''atelier d''emballage d''une huilerie ; l''agence de Kaolack d''une banque ; la filiale ivoirienne d''un groupe sénégalais ; le service des ventes export.
- Exercice 3 : une clinique fictive de Saint-Louis visait 9 000 consultations pour un coût de 13 500 000 FCFA. Elle en a réalisé 8 100 pour 12 960 000 FCFA. Calculez l''efficacité, les coûts unitaires prévu et réel, et le budget ajusté.
- Exercice 4 : citez deux avantages et deux limites du rattachement du contrôleur de gestion à la DAF.
- Exercice 5 : donnez trois différences entre comptabilité générale et comptabilité analytique.
- Exercice 6 (cas pratique) : le directeur de Sahel Jus affirme : « Nous avons dépensé moins que prévu, la gestion est excellente. » Rédigez une réponse argumentée de dix lignes.

## Corrigé

- Exercice 1 : efficacité = atteinte des objectifs ; efficience = résultats obtenus rapportés aux ressources consommées ; économie = acquisition des ressources au moindre coût à qualité égale.
- Exercice 2 : centre de coût ; centre de profit ; centre d''investissement ; centre de recettes.
- Exercice 3 : efficacité = 8 100 / 9 000 = 90,0 % ; coût unitaire prévu = 1 500 FCFA ; coût unitaire réel = 1 600 FCFA ; budget ajusté = 8 100 × 1 500 = 12 150 000 FCFA ; dépassement = 810 000 FCFA, malgré une dépense totale inférieure au budget initial.
- Exercice 4 : avantages, accès direct aux données comptables, cohérence budget-comptabilité ; limites, vision trop financière, moindre indépendance vis-à-vis du directeur financier.
- Exercice 5 : obligation légale contre caractère facultatif ; classement par nature contre classement par destination ; destinataires externes contre internes (on peut ajouter : normalisation SYSCOHADA contre liberté des méthodes ; périodicité annuelle contre mensuelle ou plus fine).
- Exercice 6 : la dépense totale (49 680 000 FCFA) est inférieure au budget initial uniquement parce que le volume a baissé (90,0 % de l''objectif). Ramené au volume réel, le budget était de 48 600 000 FCFA : il y a un dépassement de 1 080 000 FCFA et le coût unitaire passe de 450 à 460 FCFA. La gestion n''est donc ni efficace (volume manqué) ni efficiente (coût unitaire en hausse). Il faut analyser les causes : prix des intrants, rendement de la main-d''œuvre, pannes, et proposer des actions correctives.', 'texte', 55, false, 20
from public.courses c where c.slug = 'lic-cg-l1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Introduction au contrôle de gestion et à l''organisation : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Comptabilité analytique 1 (coûts complets) : l''essentiel pour l''examen', '## Objectifs de la leçon

- Distinguer charges directes et indirectes, incorporables, non incorporables et supplétives.
- Construire un tableau de répartition et calculer le coût des unités d''œuvre.
- Calculer les coûts complets et le résultat analytique, puis vérifier la concordance.

## 1. Les charges incorporées

On part des charges de la classe 6 du SYSCOHADA révisé. On retire les charges non incorporables (sans lien avec l''exploitation normale : pénalités, charges hors activités ordinaires). On ajoute les charges supplétives, absentes de la comptabilité générale mais économiquement réelles : rémunération des capitaux propres, travail non rémunéré de l''exploitant.

Charges incorporées = charges de la comptabilité générale − charges non incorporables + charges supplétives.

## 2. Charges directes, charges indirectes et centres d''analyse

Une charge directe s''affecte sans calcul intermédiaire à un coût : le bois d''une table, la main-d''œuvre directe (MOD). Une charge indirecte concerne plusieurs coûts (loyer, électricité, chef d''atelier) et passe par des centres d''analyse :

- Centres auxiliaires (administration, entretien) : ils travaillent pour les autres centres et sont vidés lors de la répartition secondaire.
- Centres principaux : leur coût est imputé aux produits par une unité d''œuvre (heure machine, heure de MOD) ou une assiette de frais (100 FCFA de chiffre d''affaires).

Schéma décrit : répartition primaire → répartition secondaire → total du centre principal ÷ nombre d''unités d''œuvre = coût de l''UO → imputation aux coûts.

## 4. Cas complet : Teranga Bois (entreprise fictive, Thiès)

Teranga Bois fabrique des tables et des chaises en bois. Données du mois de mars (montants hors taxes) :

- Charges indirectes de la comptabilité générale : 6 500 000 FCFA, dont 300 000 FCFA de pénalités non incorporables. Charges supplétives (rémunération des capitaux propres) : 200 000 FCFA.
- Stock initial de planches : 500 planches pour 1 450 000 FCFA. Achats : 2 000 planches à 3 000 FCFA.
- Production : 200 tables (6 planches, 2 heures machine, 4 heures de MOD chacune) et 600 chaises (1,5 planche, 0,5 heure machine, 1 heure de MOD chacune). MOD à 2 500 FCFA l''heure, charges sociales comprises.
- Ventes : 180 tables à 60 000 FCFA et 550 chaises à 16 000 FCFA. Pas de stock initial de produits finis. Sorties de stock valorisées au CUMP.

Étape 1, charges incorporées : 6 500 000 − 300 000 + 200 000 = 6 400 000 FCFA.

Étape 2, répartition primaire : Administration 1 000 000, Entretien 500 000, Approvisionnement 540 000, Coupe 1 500 000, Montage 2 140 000, Distribution 720 000. Contrôle : le total est bien égal à 6 400 000 FCFA.

Étape 3, répartition secondaire en cascade. L''administration se répartit : 10 % Entretien, 20 % Approvisionnement, 30 % Coupe, 20 % Montage, 20 % Distribution. L''entretien, qui reçoit 100 000 FCFA de l''administration, totalise 600 000 FCFA et se répartit : 10 % Approvisionnement, 50 % Coupe, 30 % Montage, 10 % Distribution.

- Approvisionnement : primaire 540 000 ; reçu de l''administration 200 000 ; reçu de l''entretien 60 000 ; total 800 000 FCFA.
- Coupe : primaire 1 500 000 ; reçu de l''administration 300 000 ; reçu de l''entretien 300 000 ; total 2 100 000 FCFA.
- Montage : primaire 2 140 000 ; reçu de l''administration 200 000 ; reçu de l''entretien 180 000 ; total 2 520 000 FCFA.
- Distribution : primaire 720 000 ; reçu de l''administration 200 000 ; reçu de l''entretien 60 000 ; total 980 000 FCFA.

Étape 4, unités d''œuvre :

- Approvisionnement : planche achetée, 2 000 UO, coût 400 FCFA.
- Coupe : heure machine, 200 × 2 + 600 × 0,5 = 700 UO, coût 3 000 FCFA.
- Montage : heure de MOD, 200 × 4 + 600 × 1 = 1 400 UO, coût 1 800 FCFA.
- Distribution : 100 FCFA de chiffre d''affaires ; CA = 10 800 000 + 8 800 000 = 19 600 000 FCFA, soit 196 000 UO, coût 5 FCFA.

Étape 5, coût d''achat et stock. Coût d''achat = 6 000 000 + 800 000 = 6 800 000 FCFA, soit 3 400 FCFA la planche. CUMP = (1 450 000 + 6 800 000) / (500 + 2 000) = 3 300 FCFA. Sorties : 1 200 + 900 = 2 100 planches ; stock final 400 planches valant 1 320 000 FCFA.

Étape 6, coûts de production :

- Tables : bois 3 960 000 ; MOD 2 000 000 ; Coupe 1 200 000 ; Montage 1 440 000 ; total 8 600 000 FCFA, soit 43 000 FCFA la table.
- Chaises : bois 2 970 000 ; MOD 1 500 000 ; Coupe 900 000 ; Montage 1 080 000 ; total 6 450 000 FCFA, soit 10 750 FCFA la chaise.

Étape 7, coûts de revient et résultats :

- Tables : 180 × 43 000 + distribution 540 000 = 8 280 000 FCFA ; résultat = 10 800 000 − 8 280 000 = 2 520 000 FCFA.
- Chaises : 550 × 10 750 + distribution 440 000 = 6 352 500 FCFA ; résultat = 8 800 000 − 6 352 500 = 2 447 500 FCFA.
- Résultat analytique global : 4 967 500 FCFA.

Étape 8, concordance : résultat de la comptabilité générale = résultat analytique + charges supplétives − charges non incorporables = 4 967 500 + 200 000 − 300 000 = 4 867 500 FCFA. Vérification directe : ventes 19 600 000 + production stockée 1 397 500 − achats 6 000 000 − variation de stock de bois 130 000 − MOD 3 500 000 − autres charges 6 500 000 = 4 867 500 FCFA.

## Points clés

- Charges incorporées = charges CG − non incorporables + supplétives.
- Répartition primaire, puis secondaire, puis coût de l''unité d''œuvre.
- Coût d''achat → stock (CUMP) → coût de production → coût de revient → résultat → concordance.

## Exercices pratiques

- Exercice 1 : charges CG 9 400 000 FCFA, dont 250 000 de charges non incorporables ; l''exploitant, non salarié, estime son travail à 400 000 FCFA par mois. Calculez les charges incorporées.
- Exercice 2 : stock initial 1 000 kg pour 2 150 000 FCFA ; entrées 3 000 kg pour un coût d''achat de 6 450 000 FCFA. Calculez le CUMP.
- Exercice 3 : coût de production de 400 sacs : matière 1 840 000 FCFA, 320 h de MOD à 2 000 FCFA, atelier 160 UO à 4 500 FCFA. Coût unitaire ?
- Exercice 4 : deux centres auxiliaires se rendent des prestations réciproques. Gestion du personnel (GP) : primaire 600 000, reçoit 20 % de l''Entretien. Entretien : primaire 400 000, reçoit 10 % de GP. Calculez les totaux après répartition secondaire.
- Exercice 5 (cas pratique) : pour Teranga Bois, le prix des chaises passe à 15 000 FCFA (mêmes quantités, distribution toujours à 5 FCFA par 100 FCFA de CA). Calculez le nouveau résultat sur chaises et commentez.

## Corrigé

- Exercice 1 : 9 400 000 − 250 000 + 400 000 = 9 550 000 FCFA.
- Exercice 2 : (2 150 000 + 6 450 000) / (1 000 + 3 000) = 8 600 000 / 4 000 = 2 150 FCFA le kg.
- Exercice 3 : 1 840 000 + 320 × 2 000 + 160 × 4 500 = 1 840 000 + 640 000 + 720 000 = 3 200 000 FCFA ; coût unitaire 8 000 FCFA.
- Exercice 4 : GP = 600 000 + 0,2 E et E = 400 000 + 0,1 GP. En substituant : GP = 600 000 + 80 000 + 0,02 GP, d''où GP = 680 000 / 0,98 = 693 878 FCFA ; E = 400 000 + 0,1 × GP = 469 388 FCFA (arrondis).
- Exercice 5 : CA chaises = 550 × 15 000 = 8 250 000 FCFA ; distribution = 412 500 ; coût de revient = 5 912 500 + 412 500 = 6 325 000 ; résultat = 1 925 000 FCFA, contre 2 447 500 FCFA auparavant, soit une baisse de 21,3 %. Le produit reste bénéficiaire (coût de l''UO de distribution supposé inchangé).', 'texte', 60, false, 30
from public.courses c where c.slug = 'lic-cg-l1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Comptabilité analytique 1 (coûts complets) : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Mathématiques et statistiques de gestion : l''essentiel pour l''examen', '## Objectifs de la leçon

- Maîtriser pourcentages, indices et taux de croissance moyens.
- Calculer intérêts simples, intérêts composés, valeurs actuelles et annuités d''emprunt.
- Décrire une série statistique (moyenne, écart-type) et réaliser un ajustement linéaire par les moindres carrés.
- Utiliser l''ajustement pour séparer la partie fixe et la partie variable d''un coût.

## 1. Pourcentages, indices et taux moyens

Taux de variation = (valeur finale − valeur initiale) / valeur initiale. Une PME de Mbour réalise un chiffre d''affaires de 80 000 000 FCFA en N−1 et 92 000 000 FCFA en N : variation = 15,0 %. Indice N base 100 en N−1 = 100 × 92 000 000 / 80 000 000 = 115.

Attention : des variations successives se multiplient, elles ne s''additionnent pas. Une hausse de 10 % suivie d''une baisse de 10 % donne 1,10 × 0,90 = 0,99, soit −1 %.

Taux moyen annuel sur n années : t = (Vn / V0)^(1/n) − 1. Si le chiffre d''affaires passe de 50 000 000 à 72 000 000 FCFA en 4 ans : t = (72 000 000 / 50 000 000)^(1/4) − 1 = 1,44^(0,25) − 1 ≈ 9,54 %.

## 2. Intérêts simples

Utilisés pour les opérations à court terme (moins d''un an). I = C × t × n, avec n en années ; en jours, on utilise l''année commerciale de 360 jours : I = C × t × j / 360.

Exemple : un découvert de 2 000 000 FCFA pendant 90 jours au taux annuel de 9 % (taux fictif pour l''exemple) coûte 2 000 000 × 0,09 × 90 / 360 = 45 000 FCFA.

## 3. Intérêts composés et actualisation

À intérêts composés, les intérêts s''ajoutent au capital et produisent eux-mêmes des intérêts. Valeur acquise : Cn = C0 × (1 + t)^n. Un placement de 5 000 000 FCFA à 8 % par an pendant 3 ans (taux fictif) devient 5 000 000 × 1,08³ = 6 298 560 FCFA.

L''actualisation fait le chemin inverse : C0 = Cn × (1 + t)^(−n). Une somme de 10 000 000 FCFA reçue dans 2 ans, actualisée à 10 %, vaut aujourd''hui 10 000 000 / 1,1² ≈ 8 264 463 FCFA. C''est la base du choix d''investissement.

## 4. Emprunt indivis remboursé par annuités constantes

Annuité constante : a = C × t / (1 − (1 + t)^(−n)). Chaque annuité = intérêt de l''année (capital restant dû × t) + amortissement du capital.

Exemple : Teranga Bois emprunte 12 000 000 FCFA sur 4 ans à 10 % (taux fictif). a = 12 000 000 × 0,10 / (1 − 1,1^(−4)) ≈ 3 785 650 FCFA. Tableau d''amortissement (arrondi au franc, la dernière annuité étant ajustée de quelques francs pour solder exactement le capital) :

- Année 1 : capital début 12 000 000 ; intérêt 1 200 000 ; amortissement 2 585 650 ; annuité 3 785 650 ; capital fin 9 414 350.
- Année 2 : capital début 9 414 350 ; intérêt 941 435 ; amortissement 2 844 215 ; annuité 3 785 650 ; capital fin 6 570 135.
- Année 3 : capital début 6 570 135 ; intérêt 657 014 ; amortissement 3 128 636 ; annuité 3 785 650 ; capital fin 3 441 499.
- Année 4 : capital début 3 441 499 ; intérêt 344 150 ; amortissement 3 441 499 ; annuité 3 785 649 ; capital fin 0.

Contrôles : la somme des amortissements est égale au capital emprunté ; chaque amortissement est égal, à l''arrondi près, au précédent multiplié par (1 + t).

## 5. Statistique descriptive

Pour une série x1, …, xn : moyenne x̄ = (somme des xi) / n ; variance V = (somme des (xi − x̄)²) / n ; écart-type σ = √V. La médiane partage la série ordonnée en deux moitiés. Le coefficient de variation σ / x̄ permet de comparer la dispersion de séries d''ordres de grandeur différents.

## 6. Ajustement linéaire et séparation fixe/variable

Les charges d''entretien de l''atelier Coupe de Teranga Bois dépendent en partie de l''activité. Relevé sur six mois :

- janvier : 300 heures machine, 1 510 000 FCFA
- février : 400 heures machine, 1 690 000 FCFA
- mars : 500 heures machine, 1 920 000 FCFA
- avril : 600 heures machine, 2 100 000 FCFA
- mai : 700 heures machine, 2 300 000 FCFA
- juin : 500 heures machine, 1 880 000 FCFA

On cherche y = a x + b, où a est le coût variable par heure machine et b la partie fixe mensuelle.

Méthode des moindres carrés : a = cov(x, y) / V(x) et b = ȳ − a x̄.

- x̄ = 500 h ; ȳ = 1 900 000 FCFA.
- V(x) = 16 666,67 ; σ(x) ≈ 129,1 h.
- cov(x, y) = (somme des (xi − x̄)(yi − ȳ)) / n = 33 166 666,67.
- a = 33 166 666,67 / 16 666,67 = 1 990 FCFA par heure ; b = 1 900 000 − 1 990 × 500 = 905 000 FCFA.
- Coefficient de corrélation r = cov / (σx σy) ≈ 0,9988 : la liaison linéaire est très forte.

Fonction de coût : y = 1 990 x + 905 000. Prévision pour 650 heures : 1 990 × 650 + 905 000 = 2 198 500 FCFA.

Méthode des points extrêmes (plus rapide, moins précise) : a = (2 300 000 − 1 510 000) / (700 − 300) = 1 975,0 FCFA ; b = 2 300 000 − 1 975,0 × 700 = 917 500 FCFA. Elle n''utilise que deux points et peut être faussée par un mois atypique.

## Points clés

- Variations successives : on multiplie les coefficients.
- Intérêts simples : C t j / 360 ; composés : C (1 + t)^n ; actualisation : C (1 + t)^(−n).
- Annuité constante : C t / (1 − (1 + t)^(−n)).
- Moindres carrés : a = cov / V(x), b = ȳ − a x̄ ; r proche de 1 ou de −1 = bon ajustement.

## Exercices pratiques

- Exercice 1 : un prix passe de 2 500 à 2 800 FCFA puis baisse de 5 %. Calculez le prix final et la variation globale.
- Exercice 2 : un effet de commerce de 3 600 000 FCFA est escompté 60 jours avant l''échéance au taux de 12 % (fictif). Calculez l''escompte (intérêt simple).
- Exercice 3 : quelle est la valeur acquise de 8 000 000 FCFA placés 5 ans à 7 % composés (taux fictif) ?
- Exercice 4 : quelle est la valeur actuelle à 9 % de 15 000 000 FCFA à recevoir dans 3 ans ?
- Exercice 5 : ventes mensuelles (en millions de FCFA) de cinq agences : 12, 15, 9, 20, 14. Calculez la moyenne, la variance et l''écart-type.
- Exercice 6 (cas pratique) : avec la fonction de coût de l''atelier Coupe, quel budget d''entretien prévoir pour un mois de 480 heures machine ? Pourquoi faut-il être prudent pour une prévision à 1 200 heures ?

## Corrigé

- Exercice 1 : 2 800 × 0,95 = 2 660 FCFA ; variation globale = 2 660 / 2 500 − 1 = 6,4 %.
- Exercice 2 : 3 600 000 × 0,12 × 60 / 360 = 72 000 FCFA.
- Exercice 3 : 8 000 000 × 1,07⁵ ≈ 11 220 414 FCFA.
- Exercice 4 : 15 000 000 / 1,09³ ≈ 11 582 752 FCFA.
- Exercice 5 : moyenne 14 ; variance = (4 + 1 + 25 + 36 + 0) / 5 = 13,2 ; écart-type ≈ 3,63 millions de FCFA.
- Exercice 6 : 1 990 × 480 + 905 000 = 1 860 200 FCFA. À 1 200 heures, on sort largement de la plage observée (300 à 700 h) : de nouvelles charges fixes (deuxième équipe, nouvelle machine) peuvent apparaître et la relation linéaire n''est plus garantie.', 'texte', 60, false, 40
from public.courses c where c.slug = 'lic-cg-l1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Mathématiques et statistiques de gestion : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Sujet type d''examen de Licence 1 en Contrôle de gestion (corrigé)', '## Présentation du sujet

Sujet d''entraînement de Licence 1, contrôle de gestion. Durée : 3 heures. Calculatrice autorisée, documents interdits. Ce sujet n''est pas un sujet officiel : il reproduit le format habituel des examens semestriels. Barème indicatif, non officiel, sur 20 points. Toutes les entreprises sont fictives.

## Dossier 1 · Introduction au contrôle de gestion (5 points)

- 1.1 (1,5 pt) Définissez le contrôle de gestion et présentez son cycle.
- 1.2 (1,5 pt) Distinguez efficacité, efficience et économie, avec un exemple pour chacune.
- 1.3 (2 pts) Une banque régionale décide d''évaluer ses agences sur leur résultat net, frais de siège compris. Que pensez-vous de ce choix au regard du principe de contrôlabilité ?

## Dossier 2 · Comptabilité analytique (9 points)

Baobab Textile, à Kaolack, confectionne des boubous. Pour le mois d''avril :

- Tissu consommé : 2 400 mètres, valorisés au CUMP de 1 250 FCFA le mètre.
- MOD : 1 200 heures à 2 200 FCFA.
- Centre Coupe : 600 heures machine à 2 500 FCFA l''unité d''œuvre.
- Centre Confection : unité d''œuvre heure de MOD, coût 1 100 FCFA.
- Production : 1 200 boubous ; ventes : 1 100 boubous à 9 500 FCFA.
- Distribution : 2 FCFA par 100 FCFA de chiffre d''affaires.

Questions :

- 2.1 (1 pt) Expliquez la différence entre centre principal et centre auxiliaire.
- 2.2 (4 pts) Calculez le coût de production total et unitaire.
- 2.3 (2 pts) Calculez le coût de revient des boubous vendus et le résultat analytique.
- 2.4 (2 pts) Les charges supplétives s''élèvent à 150 000 FCFA et les charges non incorporables à 90 000 FCFA. Quel est le résultat de la comptabilité générale, en supposant qu''il n''y a pas d''autre différence ?

## Dossier 3 · Mathématiques et statistiques de gestion (6 points)

- 3.1 (3 pts) Baobab Textile emprunte 6 000 000 FCFA sur 3 ans à 12 % (taux fictif), par annuités constantes. Calculez l''annuité et présentez le tableau d''amortissement.
- 3.2 (3 pts) Coûts d''électricité de l''atelier selon les heures machine : 800 h, 2 640 000 FCFA ; 1 000 h, 3 000 000 ; 1 200 h, 3 420 000 ; 1 400 h, 3 740 000. Déterminez par les moindres carrés la fonction de coût et prévoyez le coût pour 1 300 h.

## Corrigé détaillé

Dossier 1.

- 1.1 : processus qui aide les responsables à atteindre les objectifs en utilisant les ressources avec efficacité et efficience ; cycle prévoir, agir, mesurer, corriger.
- 1.2 : efficacité, atteindre 95 % des ventes visées ; efficience, baisser le coût par boubou ; économie, négocier le prix du tissu.
- 1.3 : les frais de siège ne sont pas maîtrisés par le chef d''agence ; il faut l''évaluer sur une marge contributive (produits et charges propres à l''agence) et suivre à part le résultat après frais de siège, pour la décision de maintenir ou non l''agence.

Dossier 2.

- 2.1 : le centre principal impute directement ses charges aux coûts des produits par une unité d''œuvre ; le centre auxiliaire travaille pour les autres centres et se vide dans la répartition secondaire.
- 2.2 : tissu 3 000 000 ; MOD 2 640 000 ; Coupe 1 500 000 ; Confection 1 200 × 1 100 = 1 320 000 ; total 8 460 000 FCFA ; coût unitaire 7 050 FCFA.
- 2.3 : CA = 1 100 × 9 500 = 10 450 000 FCFA ; distribution = 104 500 UO × 2 = 209 000 FCFA ; coût de revient = 1 100 × 7 050 + 209 000 = 7 964 000 FCFA ; résultat analytique = 2 486 000 FCFA.
- 2.4 : résultat CG = 2 486 000 + 150 000 − 90 000 = 2 546 000 FCFA.

Dossier 3.

- 3.1 : a = 6 000 000 × 0,12 / (1 − 1,12^(−3)) ≈ 2 498 094 FCFA.

- Année 1 : capital début 6 000 000 ; intérêt 720 000 ; amortissement 1 778 094 ; annuité 2 498 094 ; capital fin 4 221 906.
- Année 2 : capital début 4 221 906 ; intérêt 506 629 ; amortissement 1 991 465 ; annuité 2 498 094 ; capital fin 2 230 441.
- Année 3 : capital début 2 230 441 ; intérêt 267 653 ; amortissement 2 230 441 ; annuité 2 498 094 ; capital fin 0.

- 3.2 : x̄ = 1 100 ; ȳ = 3 200 000 ; V(x) = 50 000 ; cov = 93 000 000 ; a = 1 860 FCFA par heure ; b = 1 154 000 FCFA ; y = 1 860 x + 1 154 000 ; pour 1 300 h : 3 572 000 FCFA.

## Conseils de méthode

Dans le dossier 2, indiquez toujours le détail du calcul : un résultat faux mais bien posé rapporte une partie des points. Dans le dossier 3, vérifiez que la somme des amortissements redonne le capital emprunté. Pour la question 1.3, une réponse argumentée en deux temps (constat puis proposition) est attendue.

## Exercices pratiques

- Exercice 1 : quel serait le coût de production unitaire de Baobab Textile si le CUMP du tissu passait à 1 300 FCFA ?
- Exercice 2 : quelle est la part des intérêts dans le coût total de l''emprunt du dossier 3 ?
- Exercice 3 : citez deux charges supplétives possibles dans une entreprise individuelle.

## Corrigé

- Exercice 1 : le coût augmente de 2 400 × 50 = 120 000 FCFA, soit 8 580 000 FCFA au total et 7 150 FCFA par boubou.
- Exercice 2 : total des annuités 7 494 282 FCFA ; intérêts 1 494 282 FCFA, soit 19,9 % des sommes versées.
- Exercice 3 : rémunération du travail de l''exploitant ; rémunération des capitaux propres apportés.', 'texte', 60, false, 50
from public.courses c where c.slug = 'lic-cg-l1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Sujet type d''examen de Licence 1 en Contrôle de gestion (corrigé)');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Introduction au contrôle de gestion et à l''organisation', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : étudiants de Licence 1 en contrôle de gestion, gestion, comptabilité.
- Objectifs : expliquer le rôle du contrôle de gestion, mesurer la performance (efficacité, efficience, économie), raisonner avec un budget ajusté, identifier les centres de responsabilité et les structures d''organisation.
- Matériel : tableau ou diaporama, schéma du cycle de pilotage, organigrammes types, calculatrice.
- Prérequis : leçon « Introduction au contrôle de gestion et à l''organisation : l''essentiel pour l''examen ».

## Déroulé minuté

## 00:00 – 05:00 · Accueil et objectifs

Bonjour à toutes et à tous. Bienvenue dans ce cours vidéo consacré à l''introduction au contrôle de gestion. Dans une heure et demie, vous saurez expliquer à un jury ce que fait un contrôleur de gestion, calculer et interpréter des indicateurs d''efficacité et d''efficience, et classer les unités d''une organisation en centres de responsabilité. Notre fil rouge sera Sahel Jus SARL, une entreprise fictive de Thiès qui fabrique des jus locaux.

Visuel : diapositive titre, logo fictif de Sahel Jus, plan de la séance en cinq parties.

## 05:00 – 15:00 · Qu''est-ce que contrôler ?

Commençons par un mot piège : « contrôle ». En français courant, contrôler, c''est vérifier ou sanctionner. En gestion, le mot vient de l''anglais « control », qui signifie maîtriser, piloter. Le contrôleur de gestion n''est pas un policier : c''est un copilote. Son rôle est de fournir au dirigeant et aux responsables les informations pour décider à temps.

Dans les années 1960, Robert N. Anthony a défini le contrôle de gestion comme le processus par lequel les dirigeants s''assurent que les ressources sont obtenues et utilisées avec efficacité et efficience pour atteindre les objectifs. Retenez trois mots de cette définition : processus, ressources, objectifs. Les auteurs plus récents ajoutent la cohérence entre stratégie et actions quotidiennes, et l''apprentissage organisationnel.

Question à poser aux étudiants : « Quelle différence entre un contrôleur de gestion et un auditeur interne ? » Réponse attendue : l''auditeur vérifie la conformité et la maîtrise des risques ; le contrôleur aide à piloter la performance, en regardant surtout vers l''avenir.

## 15:00 – 25:00 · Le cycle de pilotage

Visuel : un cercle avec quatre flèches. Prévoir, agir, mesurer, corriger.

Tout commence par la stratégie : Sahel Jus veut devenir la marque de référence des jus locaux dans la région de Thiès. Le contrôle de gestion traduit cette ambition en objectifs chiffrés : produire 120 000 bouteilles au trimestre pour un coût de 450 FCFA la bouteille. Ce sont les budgets. Ensuite, les équipes agissent. Le contrôleur mesure le réalisé, compare au prévu, calcule des écarts. Enfin, avec les responsables, il analyse les causes et propose des actions correctives. Puis le cycle recommence.

On distingue trois moments du contrôle : a priori, avec les budgets ; pendant l''action, avec les tableaux de bord ; a posteriori, avec l''analyse des écarts et le calcul des coûts. Retenez ce triptyque, il revient souvent en question de cours.

## 25:00 – 40:00 · Efficacité, efficience, économie : correction commentée

Passons au chiffré. Je vous donne l''énoncé : objectif 120 000 bouteilles, coût prévu 450 FCFA l''unité, budget 54 000 000 FCFA. Réalisé : 108 000 bouteilles, coût total 49 680 000 FCFA. Prenez trois minutes pour calculer l''efficacité et le coût unitaire réel.

Correction. Efficacité : 108 000 divisé par 120 000, soit 90,0 %. Coût unitaire réel : 49 680 000 divisé par 108 000, soit 460 FCFA. Le coût unitaire a augmenté de 2,2 %.

Maintenant, l''erreur classique. Beaucoup d''étudiants écrivent : « le coût total réel est inférieur au budget, donc la gestion est bonne ». Regardez : 49 680 000 contre 54 000 000, il y a bien 4 320 000 FCFA de moins. Mais on a produit moins ! Il faut comparer à ce qu''on aurait dû dépenser pour 108 000 bouteilles : 108 000 fois 450, soit 48 600 000 FCFA. Le vrai dépassement est de 1 080 000 FCFA. Écrivez au tableau : on compare toujours le réel à un budget ajusté à l''activité réelle.

Et l''économie ? Elle porte sur le prix des ressources. Si Sahel Jus a payé son sucre plus cher que prévu, l''économie est mauvaise, même si le rendement des machines est excellent.

## 40:00 – 50:00 · Pause et quiz interactif

Faisons une pause active. Répondez par vrai ou faux, je vous laisse trente secondes par question.

- Question 1 : un centre de coût est évalué sur son résultat. Faux, il est évalué sur ses coûts.
- Question 2 : l''efficacité se mesure par rapport aux objectifs. Vrai.
- Question 3 : un coût total inférieur au budget initial prouve une bonne efficience. Faux, il faut ajuster le budget au volume réel.
- Question 4 : la comptabilité analytique est obligatoire pour toutes les entreprises. Faux, elle est facultative, contrairement à la comptabilité générale.

Comptez vos points. Trois ou quatre bonnes réponses : vous êtes sur la bonne voie.

## 50:00 – 60:00 · Place du contrôleur et structures d''organisation

Visuel : trois organigrammes, fonctionnel, divisionnel, matriciel.

Où placer le contrôleur ? Rattaché à la direction générale, il gagne en indépendance et en vision transversale. Rattaché à la direction financière, il est proche des données comptables mais risque d''être perçu comme le « gendarme des chiffres ». Dans une PME sénégalaise de vingt salariés, il n''y a souvent pas de contrôleur : c''est le gérant ou le comptable qui assure la fonction, avec un tableur.

La structure compte aussi. Dans une structure fonctionnelle, on mesure bien les coûts par fonction mais la rentabilité par produit est difficile à voir. Dans une structure divisionnelle, par exemple une division Dakar et une division Saint-Louis, chaque division peut être évaluée sur sa marge. Dans une structure matricielle, deux responsables se partagent les mêmes ressources : il faut des règles claires de répartition.

## 60:00 – 75:00 · Centres de responsabilité : exercice corrigé

Exercice : classez les unités suivantes d''un groupe agroalimentaire fictif. L''atelier de conditionnement ; la direction commerciale export ; le magasin de vente directe de Thiès ; la filiale de Bamako qui décide de ses investissements.

Correction. L''atelier de conditionnement maîtrise ses consommations et ses heures : centre de coût, évalué sur un coût par unité conditionnée. La direction export maîtrise ses volumes et ses prix dans une certaine limite : centre de recettes. Le magasin maîtrise ses ventes et ses charges propres : centre de profit. La filiale de Bamako décide de ses investissements : centre d''investissement, évalué sur la rentabilité des capitaux qu''elle engage.

Point de méthode : justifiez toujours par ce que le responsable maîtrise. C''est le principe de contrôlabilité. Un chef d''atelier ne doit pas être jugé sur le prix de vente fixé par le directeur commercial.

## 75:00 – 82:00 · Comptabilité générale et comptabilité analytique

La comptabilité générale, tenue selon le SYSCOHADA révisé, classe les charges par nature : achats, services extérieurs, personnel. Elle s''adresse aux tiers : administration fiscale, banques, associés. La comptabilité analytique reclasse ces mêmes charges par destination : produit, atelier, client. Elle est libre dans ses méthodes et sert les décisions internes. C''est l''objet du cours vidéo suivant.

## 82:00 – 86:00 · Méthode : la question de réflexion

À l''examen, une question comme « Le contrôle de gestion est-il un outil de surveillance ? » appelle une réponse construite. Introduction : définissez les termes, posez la tension entre surveillance et aide à la décision, annoncez le plan. Première partie : le contrôle de gestion comporte bien une dimension de surveillance, avec les budgets, les écarts et l''évaluation des responsables. Deuxième partie : sa finalité principale est l''aide au pilotage et l''apprentissage, avec les tableaux de bord, le dialogue de gestion et les actions correctives. Conclusion : l''équilibre dépend du style de management. Illustrez chaque partie par un exemple, Sahel Jus ou une banque régionale. Évitez la récitation : le correcteur cherche un raisonnement.

## 86:00 – 90:00 · Synthèse et évaluation finale

Synthèse : le contrôle de gestion est un pilotage ; il s''appuie sur un cycle prévoir, agir, mesurer, corriger ; il mesure la performance en efficacité, efficience et économie ; il responsabilise par les centres de responsabilité.

Évaluation finale, cinq questions :

- Question 1 : citez les quatre étapes du cycle de pilotage. Réponse : prévoir, agir, mesurer, corriger.
- Question 2 : une usine visait 50 000 unités et en a produit 46 000. Efficacité ? Réponse : 46 000 / 50 000 = 92 %.
- Question 3 : coût prévu 200 FCFA l''unité ; coût réel total 9 430 000 FCFA pour 46 000 unités. Budget ajusté et écart ? Réponse : budget ajusté 46 000 × 200 = 9 200 000 FCFA ; dépassement de 230 000 FCFA ; coût unitaire réel 205 FCFA.
- Question 4 : quel type de centre pour une agence bancaire évaluée sur sa marge ? Réponse : centre de profit.
- Question 5 : citez deux différences entre comptabilité générale et analytique. Réponse : obligatoire contre facultative ; classement par nature contre par destination.

Merci de votre attention. Pour la prochaine séance, refaites l''exercice Sahel Jus sans vos notes.', 'video', 90, false, 60
from public.courses c where c.slug = 'lic-cg-l1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Introduction au contrôle de gestion et à l''organisation');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Comptabilité analytique 1 (coûts complets)', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : étudiants de Licence 1 en contrôle de gestion et comptabilité.
- Objectifs : passer des charges de la comptabilité générale aux charges incorporées, construire un tableau de répartition, calculer coûts d''achat, de production et de revient, puis vérifier la concordance des résultats.
- Matériel : tableau ou diaporama, modèle vierge de tableau de répartition, fiche de stock, calculatrice.
- Prérequis : comptabilité générale de base (classe 6 du SYSCOHADA révisé) et leçon « Comptabilité analytique 1 : l''essentiel pour l''examen ».

## Déroulé minuté

## 00:00 – 05:00 · Ouverture

Bonjour à tous. Aujourd''hui, nous allons calculer, pas à pas, le coût d''une table et d''une chaise. Notre cas fil rouge est Teranga Bois, une menuiserie fictive de Thiès. À la fin de la séance, vous saurez dérouler un cas complet de coûts complets, c''est-à-dire l''exercice le plus fréquent des partiels de Licence 1.

Visuel : le schéma des coûts complets, de gauche à droite : charges de la comptabilité générale, tri, centres d''analyse, coûts, résultat.

## 05:00 – 15:00 · Charges incorporées

Premier réflexe : on ne reprend pas les charges de la comptabilité générale telles quelles. On retire les charges non incorporables : ce sont des charges qui ne relèvent pas de l''exploitation normale, par exemple des pénalités de retard. On ajoute les charges supplétives : elles ont un coût économique sans être comptabilisées, comme la rémunération des capitaux propres.

Chez Teranga Bois : 6 500 000 moins 300 000 plus 200 000, cela donne 6 400 000 FCFA de charges indirectes incorporées. Notez que les charges directes, bois et main-d''œuvre directe, sont traitées à part : elles vont directement dans les coûts.

## 15:00 – 30:00 · Le tableau de répartition

Visuel : tableau de répartition avec six colonnes : Administration, Entretien, Approvisionnement, Coupe, Montage, Distribution.

La répartition primaire distribue les charges indirectes entre les centres avec des clés : surface pour le loyer, puissance installée pour l''électricité, effectif pour la cantine. Le service comptable nous la donne : Administration 1 000 000, Entretien 500 000, Approvisionnement 540 000, Coupe 1 500 000, Montage 2 140 000, Distribution 720 000. Premier contrôle : la somme fait 6 400 000 FCFA. Toujours vérifier.

Répartition secondaire, en cascade. On vide d''abord l''Administration : 10 % à l''Entretien, soit 100 000 ; 20 % à l''Approvisionnement, soit 200 000 ; 30 % à la Coupe, 300 000 ; 20 % au Montage et 20 % à la Distribution. L''Entretien a maintenant 500 000 plus 100 000, soit 600 000 FCFA, qu''on répartit 10 %, 50 %, 30 %, 10 %.

Totaux des centres principaux : Approvisionnement 800 000, Coupe 2 100 000, Montage 2 520 000, Distribution 980 000. Deuxième contrôle : leur somme redonne 6 400 000 FCFA, puisque les centres auxiliaires sont vidés.

## 30:00 – 40:00 · Unités d''œuvre

Le coût de l''unité d''œuvre est le total du centre divisé par le nombre d''unités. Approvisionnement : 800 000 sur 2 000 planches achetées, 400 FCFA. Coupe : les tables demandent 200 fois 2 heures machine, les chaises 600 fois 0,5 ; total 700 heures, coût 3 000 FCFA. Montage : 1 400 heures de MOD, coût 1 800 FCFA. Distribution : assiette de 100 FCFA de chiffre d''affaires ; CA 19 600 000 FCFA, donc 196 000 unités, coût 5 FCFA.

Question au public : pourquoi une assiette de frais pour la distribution ? Parce que l''activité de ce centre est liée aux ventes, et qu''on n''a pas d''unité physique simple.

## 40:00 – 45:00 · Pause et quiz

Quiz de mi-parcours, répondez sur votre feuille :

- Question 1 : une pénalité fiscale est-elle incorporable ? Non, c''est une charge non incorporable.
- Question 2 : que devient le total d''un centre auxiliaire après répartition secondaire ? Il est nul.
- Question 3 : si le total du centre Coupe était de 2 450 000 FCFA pour 700 heures, quel serait le coût de l''UO ? 3 500 FCFA.

## 45:00 – 55:00 · Prestations réciproques : correction commentée

Dans certains sujets, deux centres auxiliaires travaillent l''un pour l''autre. Exemple : la Gestion du personnel a 600 000 FCFA de charges primaires et reçoit 20 % de l''Entretien ; l''Entretien a 400 000 FCFA et reçoit 10 % de la Gestion du personnel. On ne peut pas vider l''un avant l''autre : il faut poser un système.

Écrivez au tableau : GP = 600 000 + 0,2 E et E = 400 000 + 0,1 GP. On remplace E dans la première équation : GP = 600 000 + 0,2 × (400 000 + 0,1 GP) = 680 000 + 0,02 GP. Donc 0,98 GP = 680 000, et GP ≈ 693 878 FCFA. Puis E = 400 000 + 0,1 × 693 878 ≈ 469 388 FCFA.

Ce sont ces totaux, et non les montants primaires, que l''on répartit ensuite selon les pourcentages. Contrôle : ce qui part vers les centres principaux doit égaler 600 000 + 400 000 = 1 000 000 FCFA. La Gestion du personnel envoie 90 % de son total aux centres principaux et l''Entretien 80 % du sien : 0,9 × 693 878 + 0,8 × 469 388 ≈ 1 000 000 FCFA. Le compte est bon.

## 55:00 – 65:00 · Coût d''achat et stock

Coût d''achat des planches : prix d''achat 6 000 000 plus charges du centre Approvisionnement 800 000, soit 6 800 000 FCFA, 3 400 FCFA la planche.

Visuel : fiche de stock. Stock initial 500 planches pour 1 450 000 ; entrées 2 000 pour 6 800 000. CUMP : 8 250 000 divisé par 2 500, soit 3 300 FCFA. Sorties : 2 100 planches, 6 930 000 FCFA. Stock final : 400 planches, 1 320 000 FCFA. Contrôle : stock initial plus entrées égale sorties plus stock final.

## 65:00 – 74:00 · Coûts de production : correction commentée

Pour les tables : bois 1 200 planches à 3 300, 3 960 000 ; MOD 800 heures à 2 500, 2 000 000 ; Coupe 400 UO à 3 000, 1 200 000 ; Montage 800 UO à 1 800, 1 440 000. Total 8 600 000 FCFA, soit 43 000 FCFA la table.

Pour les chaises : 2 970 000 + 1 500 000 + 900 000 + 1 080 000 = 6 450 000 FCFA, soit 10 750 FCFA la chaise.

Erreur fréquente : imputer les centres Coupe ou Montage sur les quantités vendues. Non : le coût de production porte sur les quantités produites. Autre erreur : oublier la main-d''œuvre directe parce que le centre Montage utilise déjà l''heure de MOD comme unité d''œuvre. Les deux coexistent : la MOD est une charge directe payée aux ouvriers, le centre Montage regroupe les charges indirectes de l''atelier.

## 74:00 – 82:00 · Coût de revient, résultat, concordance

Tables vendues : 180 fois 43 000, plus distribution 540 000, coût de revient 8 280 000 ; résultat 2 520 000 FCFA. Chaises : coût de revient 6 352 500 ; résultat 2 447 500 FCFA. Résultat analytique : 4 967 500 FCFA.

Concordance : résultat de la comptabilité générale égale résultat analytique plus charges supplétives moins charges non incorporables : 4 867 500 FCFA. Pourquoi plus les supplétives ? Parce qu''elles ont diminué le résultat analytique sans exister en comptabilité générale. Et pourquoi moins les non incorporables ? Parce qu''elles ont diminué le résultat de la comptabilité générale sans être prises en compte dans les coûts. Vérification directe en comptabilité générale : ventes 19 600 000, plus production stockée 1 397 500, moins achats 6 000 000, moins variation du stock de bois 130 000, moins MOD 3 500 000, moins les autres charges 6 500 000 : on retrouve 4 867 500 FCFA.

Commentaire de gestion : les deux produits sont rentables. Le résultat représente 23,3 % du chiffre d''affaires pour les tables et 27,8 % pour les chaises. Mais attention : en coûts complets, la rentabilité dépend des clés de répartition choisies. En Licence 2, nous verrons les coûts partiels, plus adaptés aux décisions à court terme.

## 82:00 – 90:00 · Synthèse et évaluation finale

Synthèse : trier, répartir, imputer, valoriser les stocks, calculer les coûts, vérifier la concordance.

Évaluation finale :

- Question 1 : formule des charges incorporées ? Réponse : charges CG − non incorporables + supplétives.
- Question 2 : centre de 1 800 000 FCFA, 600 UO : coût de l''UO ? Réponse : 3 000 FCFA.
- Question 3 : stock initial 100 kg à 500 FCFA, entrée 300 kg à 540 FCFA : CUMP ? Réponse : (50 000 + 162 000) / 400 = 530 FCFA.
- Question 4 : sur quelles quantités impute-t-on le centre Distribution ? Réponse : sur les quantités vendues (ou le chiffre d''affaires).
- Question 5 : résultat analytique 2 000 000, supplétives 100 000, non incorporables 40 000 : résultat CG ? Réponse : 2 060 000 FCFA.

Bon travail, et refaites le cas Teranga Bois seul, en moins de 45 minutes.', 'video', 90, false, 70
from public.courses c where c.slug = 'lic-cg-l1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Comptabilité analytique 1 (coûts complets)');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Mathématiques et statistiques de gestion', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : étudiants de Licence 1 en contrôle de gestion, gestion, économie.
- Objectifs : manipuler taux et indices, calculer intérêts simples et composés, actualiser, construire un tableau d''emprunt, calculer moyenne et écart-type, réaliser un ajustement linéaire pour séparer charges fixes et variables.
- Matériel : tableau, diaporama, calculatrice scientifique, tableur facultatif.
- Prérequis : calcul algébrique et puissances ; leçon « Mathématiques et statistiques de gestion : l''essentiel pour l''examen ».

## Déroulé minuté

## 00:00 – 05:00 · Pourquoi des maths en contrôle de gestion ?

Bonjour à toutes et à tous. On me demande souvent : « Pourquoi des mathématiques en contrôle de gestion ? » Parce que le contrôleur passe ses journées à comparer, prévoir et actualiser. Comparer, ce sont des taux et des indices. Prévoir, ce sont des ajustements statistiques. Actualiser, c''est raisonner sur la valeur de l''argent dans le temps. Aujourd''hui, nous traitons ces trois familles avec des exemples tirés d''entreprises fictives sénégalaises.

## 05:00 – 15:00 · Taux, indices, taux moyen

Un chiffre d''affaires passe de 80 000 000 à 92 000 000 FCFA : la variation est de 12 000 000 divisé par 80 000 000, soit 15,0 %. L''indice base 100 vaut 115.

Piège : une hausse de 20 % puis une baisse de 20 % ne ramènent pas au point de départ. 1,2 fois 0,8 égale 0,96 : on a perdu 4 %. Les coefficients multiplicateurs se multiplient.

Taux moyen : un CA passe de 50 000 000 à 72 000 000 FCFA en quatre ans. Le taux moyen n''est pas 44 % divisé par 4, soit 11 %. C''est 1,44 puissance un quart moins 1, environ 9,54 %. Vérifiez : 1,0954 puissance 4 redonne bien 1,44.

## 15:00 – 30:00 · Intérêts simples et composés

Intérêts simples : I égale C fois t fois j sur 360. Un découvert de 2 000 000 FCFA pendant 90 jours à 9 %, taux fictif, coûte 45 000 FCFA.

Intérêts composés : les intérêts produisent des intérêts. 5 000 000 FCFA placés 3 ans à 8 %, taux fictif, deviennent 5 000 000 fois 1,08 au cube, soit 6 298 560 FCFA. Comparez avec les intérêts simples : 5 000 000 fois 0,08 fois 3 donne 1 200 000 FCFA d''intérêts, donc 6 200 000 FCFA. La différence de 98 560 FCFA vient des intérêts sur intérêts.

Actualisation : combien vaut aujourd''hui 10 000 000 FCFA reçus dans 2 ans, au taux de 10 % ? On divise par 1,1 au carré : environ 8 264 463 FCFA. Retenez l''idée : un franc aujourd''hui vaut plus qu''un franc demain.

## 30:00 – 45:00 · Tableau d''emprunt : correction commentée

Exercice : Teranga Bois emprunte 12 000 000 FCFA sur 4 ans à 10 %, taux fictif, remboursables par annuités constantes. Prenez cinq minutes.

Correction. L''annuité vaut 12 000 000 fois 0,10, divisé par 1 moins 1,1 puissance moins 4. Le dénominateur vaut environ 0,3170. L''annuité est d''environ 3 785 650 FCFA.

Première ligne : capital 12 000 000, intérêt 1 200 000, amortissement 3 785 650 moins 1 200 000, soit 2 585 650. Deuxième ligne : capital 9 414 350, intérêt 941 435, amortissement 2 844 215. Et ainsi de suite jusqu''à un capital restant nul. Deux contrôles : les amortissements additionnés redonnent 12 000 000 FCFA ; chaque amortissement est le précédent multiplié par 1,1, par exemple 2 585 650 fois 1,1 donne 2 844 215.

## 45:00 – 50:00 · Pause et quiz

- Question 1 : +10 % puis +10 % font-ils +20 % ? Non, +21 %.
- Question 2 : intérêt simple sur 1 000 000 FCFA à 6 % pendant 30 jours ? 5 000 FCFA.
- Question 3 : dans un emprunt à annuités constantes, la part d''intérêts augmente-t-elle avec le temps ? Non, elle diminue, car le capital restant dû diminue.

## 50:00 – 58:00 · Escompte et valeur actuelle : correction commentée

Deux exercices de la leçon. Premier : un effet de 3 600 000 FCFA escompté 60 jours avant l''échéance à 12 %, taux fictif. L''escompte est un intérêt simple : 3 600 000 fois 0,12 fois 60 sur 360, soit 72 000 FCFA. L''entreprise reçoit donc 3 528 000 FCFA, avant commissions éventuelles de la banque.

Second : la valeur actuelle de 15 000 000 FCFA reçus dans 3 ans à 9 %. On divise par 1,09 au cube, c''est-à-dire environ 1,2950. Résultat : environ 11 582 752 FCFA. Erreur fréquente : multiplier au lieu de diviser. Ayez le réflexe de bon sens : une somme future actualisée est toujours plus petite que la somme future.

## 58:00 – 64:00 · Statistique descriptive

Les ventes mensuelles de cinq agences, en millions de FCFA, sont 12, 15, 9, 20 et 14. Moyenne : 70 divisé par 5, soit 14. Écarts à la moyenne : −2, 1, −5, 6, 0. Carrés : 4, 1, 25, 36, 0, somme 66. Variance : 66 sur 5, soit 13,2. Écart-type : racine de 13,2, environ 3,63. Le coefficient de variation, 3,63 sur 14, environ 26,0 %, montre une dispersion notable entre agences.

Et la médiane ? On range la série : 9, 12, 14, 15, 20. La valeur centrale est 14 : la moitié des agences vend moins de 14 millions, l''autre moitié plus. Ici médiane et moyenne coïncident. Imaginez maintenant qu''une sixième agence, au centre de Dakar, vende 60 millions. La moyenne monte à 130 divisé par 6, environ 21,7 millions, alors que la médiane, entre 14 et 15, vaut 14,5. La médiane résiste aux valeurs extrêmes ; la moyenne, non. Dans un rapport de gestion, présentez les deux quand la série est très dissymétrique, et signalez la valeur atypique au lieu de la cacher.

Question au public : quelle mesure choisir pour présenter le salaire « typique » d''une entreprise où le directeur gagne vingt fois plus que les ouvriers ? Réponse : la médiane.

## 64:00 – 82:00 · Ajustement linéaire : séparer fixe et variable

Visuel : nuage de points, heures machine en abscisse, coût d''entretien en ordonnée, six points presque alignés.

Données de l''atelier Coupe : 300 h pour 1 510 000 FCFA, 400 h pour 1 690 000, 500 h pour 1 920 000, 600 h pour 2 100 000, 700 h pour 2 300 000, 500 h pour 1 880 000.

Correction commentée. Moyennes : x̄ = 500 heures, ȳ = 1 900 000 FCFA. Variance de x : les écarts sont −200, −100, 0, 100, 200, 0 ; carrés 40 000, 10 000, 0, 10 000, 40 000, 0 ; somme 100 000 ; variance 16 666,67. Covariance : somme des produits des écarts divisée par 6, soit 33 166 666,67. Pente a : covariance sur variance, 1 990 FCFA par heure. Ordonnée b : 1 900 000 moins 1 990 fois 500, soit 905 000 FCFA.

Interprétation : chaque heure machine coûte environ 1 990 FCFA d''entretien, et l''atelier supporte 905 000 FCFA de charges fixes par mois. Le coefficient de corrélation, environ 0,999, confirme l''ajustement. Pour 650 heures, on budgète 2 198 500 FCFA.

Comparaison avec la méthode des points extrêmes : on prend 300 et 700 heures ; pente 1 975,0 FCFA ; partie fixe 917 500 FCFA. Plus rapide, mais dépendante de deux seuls points.

Trois mises en garde à formuler dans une copie. D''abord, corrélation n''est pas causalité : ici le lien technique entre heures machine et entretien est logique, mais il faut toujours le justifier. Ensuite, la droite n''est valable que dans la plage observée, de 300 à 700 heures. Enfin, la partie fixe estimée n''est pas une donnée comptable : c''est une estimation statistique, à confronter avec les contrats réels de l''atelier, par exemple un contrat d''entretien forfaitaire.

## 82:00 – 90:00 · Synthèse et évaluation finale

Synthèse : multiplier les coefficients, actualiser avec (1 + t) puissance moins n, construire un tableau d''emprunt avec deux contrôles, ajuster par les moindres carrés et interpréter a et b. Pour réviser, refaites le tableau d''emprunt sans regarder la correction, puis reprenez l''ajustement de l''atelier Coupe avec un tableur et comparez vos résultats : vous devez retrouver exactement la même pente et la même ordonnée à l''origine.

Évaluation finale :

- Question 1 : un prix passe de 1 000 à 1 210 FCFA en 2 ans ; taux moyen annuel ? Réponse : 10 %.
- Question 2 : valeur acquise de 2 000 000 FCFA à 5 % composés sur 2 ans ? Réponse : 2 205 000 FCFA.
- Question 3 : valeur actuelle de 1 100 000 FCFA dans un an à 10 % ? Réponse : 1 000 000 FCFA.
- Question 4 : cov(x, y) = 5 000 et V(x) = 2 500 ; pente ? Réponse : 2.
- Question 5 : avec x̄ = 100, ȳ = 450 et a = 2, que vaut b ? Réponse : 250.

Merci et bon entraînement.', 'video', 90, false, 80
from public.courses c where c.slug = 'lic-cg-l1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Mathématiques et statistiques de gestion');

-- Cours : Contrôle de gestion Licence 2 : réussir ses examens
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'lic-cg-l2', (select id from public.levels where name = 'Licence 2'), null, 'Contrôle de gestion', 'Contrôle de gestion Licence 2 : réussir ses examens', 'Préparation aux partiels et examens semestriels de deuxième année de Licence en contrôle de gestion : comptabilité analytique en coûts partiels (seuil de rentabilité, levier opérationnel, imputation rationnelle), gestion budgétaire (ventes, production, trésorerie) et analyse des écarts sur coûts et sur marge. Fiches, cas d''entreprises fictives sénégalaises, sujet type corrigé et trois cours vidéo de 1h30. Prérequis : coûts complets et statistiques de Licence 1.', true, 332
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Réussir ses examens de Licence 2 en Contrôle de gestion', '## Objectifs de la leçon

- Situer la deuxième année de Licence en contrôle de gestion dans le système LMD.
- Identifier les matières clés de l''année et ce que les correcteurs attendent.
- Choisir une méthode de révision adaptée aux épreuves de calcul et d''analyse.
- Organiser six semaines de révision.

## 1. La Licence 2 dans le système LMD

La deuxième année se déroule, comme la première, en deux semestres composés d''unités d''enseignement (UE) créditées. Elle marque un changement de niveau : on ne vous demande plus seulement de calculer un coût, mais de l''utiliser pour décider et de commenter un résultat. Les règles de validation (crédits, compensation entre UE, part du contrôle continu, session de rattrapage, conditions de passage en L3) sont propres à chaque université ou école : consultez le règlement des études de votre établissement et la maquette de votre parcours.

## 2. Les matières clés de l''année

Ce cours couvre trois matières centrales, qui forment la boîte à outils du contrôleur de gestion opérationnel :

- Comptabilité analytique 2 : méthode des coûts variables (direct costing), marge sur coût variable, seuil de rentabilité, point mort, marge et indice de sécurité, levier opérationnel, coûts spécifiques et décision d''abandon d''un produit, imputation rationnelle des charges fixes.
- Gestion budgétaire : démarche budgétaire, prévision des ventes (tendance et saisonnalité), budget des ventes, budget de production et lissage, budget des approvisionnements, budget de trésorerie.
- Analyse des écarts : coûts préétablis (standards), écart global, écarts sur matières (prix, quantité), sur main-d''œuvre directe (taux, rendement), sur charges indirectes (budget, activité, rendement), écarts sur marge (prix, quantité).

Ces matières prolongent la comptabilité analytique 1 (coûts complets) et les statistiques de Licence 1. Elles dialoguent avec la finance d''entreprise (trésorerie, investissement) et la fiscalité, enseignées en parallèle.

## 3. Ce que les correcteurs attendent

En Licence 2, une copie excellente se distingue par trois qualités. La rigueur : formules posées avant les chiffres, unités et signes des écarts indiqués (favorable ou défavorable). La cohérence : les chiffres d''une question à l''autre se raccordent (le budget de production découle du budget des ventes, la somme des écarts redonne l''écart global). L''analyse : chaque résultat est commenté en une ou deux phrases opérationnelles (« le seuil est atteint fin septembre : la marge de manœuvre est faible face à une baisse des ventes »).

Les épreuves prennent plusieurs formes :

- Exercice chiffré court : calculer un seuil de rentabilité, un écart sur matières.
- Cas pratique de synthèse : une entreprise, plusieurs annexes, budgets puis écarts.
- QCM et questions de cours : définitions (charge de structure, coût standard, budget flexible).
- Question de réflexion : « Les budgets sont-ils encore utiles dans un environnement instable ? »
- Dossier de contrôle continu : construire un budget de trésorerie sur tableur.

## 4. Méthode de révision

Faites une fiche par matière avec trois rubriques : définitions, formules, pièges. Exemples de pièges : confondre taux de marge sur coût variable et marge unitaire ; oublier le stock initial dans le budget de production ; décaisser des ventes alors qu''il s''agit d''encaisser ; inverser le signe d''un écart.

Pour chaque formule, apprenez aussi la lecture économique. Le seuil de rentabilité, c''est le chiffre d''affaires pour lequel la marge sur coût variable couvre exactement les charges fixes. L''écart sur quantité de matière, c''est le gaspillage ou l''économie de matière valorisé au prix prévu. Cette lecture vous permettra de retrouver une formule oubliée.

Entraînez-vous à chronométrer : un budget de trésorerie trimestriel doit tenir en vingt minutes, une analyse complète des écarts sur coûts en trente minutes.

## 5. Plan de révision sur 6 semaines

- Semaine 1 : comptabilité analytique 2, coûts variables, seuil, point mort, levier ; 6 exercices courts.
- Semaine 2 : coûts spécifiques, imputation rationnelle ; 1 cas de décision (abandon d''un produit) ; 1 dissertation en plan détaillé.
- Semaine 3 : gestion budgétaire, ventes, production, lissage, approvisionnements ; 3 exercices.
- Semaine 4 : budget de trésorerie ; 2 budgets complets avec bilan prévisionnel des créances et dettes.
- Semaine 5 : analyse des écarts sur coûts et sur marge ; 3 cas complets ; un sujet type en 3 heures.
- Semaine 6 : deuxième sujet type, carnet d''erreurs, révision des fiches ; repos la veille.

## 6. Le jour J

Lisez l''ensemble du sujet, repérez les dossiers indépendants et commencez par celui que vous maîtrisez le mieux. Présentez les budgets en tableaux mois par mois ou trimestre par trimestre, avec des totaux. Pour les écarts, adoptez une convention de signe claire, annoncez-la, et indiquez toujours « favorable » ou « défavorable » en toutes lettres.

## Points clés

- Les règles de validation dépendent de votre établissement : lisez le règlement des études.
- Trois matières : comptabilité analytique 2, gestion budgétaire, analyse des écarts.
- Formule, chiffre, commentaire : la trilogie d''une bonne réponse.

## Exercices

- Exercice 1 : citez deux pièges fréquents par matière.
- Exercice 2 : expliquez en une phrase la lecture économique du seuil de rentabilité.
- Exercice 3 : proposez un découpage de votre temps pour un sujet de 3 heures noté sur 20, avec trois dossiers de 7, 6 et 7 points.

## Corrigé

- Exercice 1 : comptabilité analytique 2, confondre marge unitaire et taux de marge ; oublier que le point mort suppose une activité régulière. Gestion budgétaire, oublier le stock initial ; confondre ventes et encaissements. Écarts, inverser les signes ; calculer l''écart sur quantité au prix réel au lieu du prix standard.
- Exercice 2 : c''est le niveau de chiffre d''affaires à partir duquel la marge sur coût variable couvre toutes les charges fixes, donc où le résultat est nul.
- Exercice 3 : 10 minutes de lecture, environ 55 minutes pour chaque dossier de 7 points et 45 minutes pour le dossier de 6 points, 15 minutes de relecture.', 'texte', 45, true, 10
from public.courses c where c.slug = 'lic-cg-l2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Réussir ses examens de Licence 2 en Contrôle de gestion');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Comptabilité analytique 2 (coûts partiels, seuil, imputation rationnelle) : l''essentiel pour l''examen', '## Objectifs de la leçon

- Construire le compte de résultat différentiel ; calculer seuil de rentabilité, point mort, indice de sécurité et levier opérationnel.
- Décider du maintien d''un produit avec les coûts spécifiques.
- Appliquer l''imputation rationnelle des charges fixes.

## 1. Charges variables et charges fixes

Une charge variable évolue avec le volume (matières, commissions). Une charge fixe, ou de structure, en est indépendante à court terme, dans une plage d''activité donnée (loyer, amortissements). Les charges semi-variables se décomposent, par exemple par les moindres carrés vus en Licence 1.

## 2. Le compte de résultat différentiel

Chiffre d''affaires − charges variables = marge sur coût variable (MCV) ; MCV − charges fixes = résultat. Le taux de marge sur coût variable est MCV / CA.

Cas : Keur Briques SARL, entreprise fictive de Rufisque, fabrique des parpaings. Prévisions : 400 000 parpaings à 500 FCFA ; coût variable unitaire 300 FCFA ; charges fixes 60 000 000 FCFA.

- CA = 200 000 000 FCFA ; charges variables = 120 000 000 FCFA ; MCV = 80 000 000 FCFA ; taux de MCV = 40 %.
- Résultat = 80 000 000 − 60 000 000 = 20 000 000 FCFA.

## 3. Seuil de rentabilité, point mort, sécurité

Le seuil de rentabilité (SR) est le chiffre d''affaires pour lequel le résultat est nul : MCV = charges fixes. SR = charges fixes / taux de MCV. En quantités : charges fixes / marge unitaire.

- SR = 60 000 000 / 0,40 = 150 000 000 FCFA, soit 300 000 parpaings (60 000 000 / 200).
- Point mort (date d''atteinte du seuil, activité régulière sur 12 mois) : 150 000 000 / 200 000 000 × 12 = 9 mois, soit le 30 septembre.
- Marge de sécurité = CA − SR = 50 000 000 FCFA ; indice de sécurité = 50 000 000 / 200 000 000 = 25 % : les ventes peuvent baisser de 25 % avant que l''entreprise ne subisse une perte.

Schéma décrit : CA en abscisse ; la droite de MCV (y = 0,4 x) coupe la droite horizontale des charges fixes au point d''abscisse 150 000 000 ; à droite, zone de bénéfice.

Activité saisonnière : on repère le mois où le CA cumulé atteint le SR.

## 4. Le levier opérationnel

Le levier opérationnel (ou coefficient de levier) mesure la sensibilité du résultat aux variations du chiffre d''affaires : LO = variation relative du résultat / variation relative du CA = MCV / résultat.

Pour Keur Briques : LO = 80 000 000 / 20 000 000 = 4. Une hausse de 10 % du CA entraîne une hausse de 40 % du résultat (résultat 28 000 000 FCFA). L''effet joue aussi à la baisse : plus les charges fixes sont lourdes, plus le risque d''exploitation est élevé. On montre que LO = 1 / indice de sécurité : 1 / 0,25 = 4.

## 5. Coûts spécifiques et décision

Le coût spécifique d''un produit = ses charges variables + ses charges fixes propres (machine dédiée, publicité spécifique). La marge sur coût spécifique (MCS) mesure la contribution du produit à la couverture des charges fixes communes.

Cas : une entreprise fictive de cosmétiques de Dakar a trois gammes (montants annuels en FCFA) :

- X : CA 50 000 000, CV 25 000 000, CF spécifiques 8 000 000, MCS 17 000 000.
- Y : CA 30 000 000, CV 21 000 000, CF spécifiques 6 000 000, MCS 3 000 000.
- Z : CA 20 000 000, CV 12 000 000, CF spécifiques 9 000 000, MCS −1 000 000.
- Charges fixes communes : 15 000 000 FCFA ; résultat global 4 000 000 FCFA.

Si l''on répartit les charges communes au prorata du CA, Y affiche un résultat de −1 500 000 FCFA et semble déficitaire. Pourtant sa MCS est positive : l''abandonner ferait perdre 3 000 000 FCFA de contribution et le résultat tomberait à 1 000 000 FCFA. En revanche, Z a une MCS négative : son abandon, si ses charges fixes spécifiques disparaissent vraiment, porterait le résultat à 5 000 000 FCFA. Règle : on décide sur la MCS, pas sur le résultat en coûts complets.

## 6. L''imputation rationnelle des charges fixes

En coûts complets, le coût unitaire varie avec le volume, car les charges fixes sont réparties sur plus ou moins d''unités. L''imputation rationnelle n''impute aux coûts que la part des charges fixes correspondant à l''activité réelle : charges fixes imputées = charges fixes × (activité réelle / activité normale).

Atelier fictif : charges fixes 12 000 000 FCFA par mois, activité normale 2 000 heures (pour 10 000 unités), activité réelle 1 800 heures (9 000 unités), coût variable 2 000 FCFA par unité.

- Coefficient d''imputation rationnelle = 1 800 / 2 000 = 0,9.
- Charges fixes imputées = 12 000 000 × 0,9 = 10 800 000 FCFA ; différence d''incorporation = 1 200 000 FCFA, coût de sous-activité (on parle de boni de suractivité dans le cas inverse).
- Coût unitaire complet réel = 2 000 + 12 000 000 / 9 000 ≈ 3 333,33 FCFA ; coût unitaire en imputation rationnelle = 2 000 + 10 800 000 / 9 000 = 3 200 FCFA, identique au coût en activité normale.

Intérêt : le coût unitaire ne dépend plus du niveau d''activité, et le coût de la sous-activité est isolé.

## Points clés

- SR = CF / taux de MCV ; LO = MCV / résultat ; décision d''abandon sur la MCS ; CF imputées = CF × activité réelle / activité normale.

## Exercices pratiques

- Exercice 1 : CA 80 000 000, charges variables 56 000 000, charges fixes 18 000 000 FCFA. Calculez MCV, taux, résultat, SR, marge de sécurité et levier. Quel CA donnerait un résultat de 9 000 000 FCFA ?
- Exercice 2 : un hôtel fictif de Saly réalise un CA trimestriel de 40, 20, 15 et 45 millions de FCFA (T1 à T4), avec un taux de MCV de 30 % et 45 000 000 FCFA de charges fixes. Calculez le SR et la date du point mort (CA régulier à l''intérieur de chaque trimestre).
- Exercice 3 : dans le cas des trois gammes, le directeur propose d''abandonner Y et Z. Calculez le résultat et concluez.
- Exercice 4 (cas pratique) : Keur Briques peut automatiser sa production : charges fixes +20 000 000 FCFA, coût variable unitaire ramené à 250 FCFA. Calculez le nouveau résultat, le nouveau SR et le nouveau levier. Conseillez la direction.

## Corrigé

- Exercice 1 : MCV 24 000 000 ; taux 30 % ; résultat 6 000 000 ; SR = 18 000 000 / 0,30 = 60 000 000 ; marge de sécurité 20 000 000 ; LO = 24 000 000 / 6 000 000 = 4 ; CA visé = (18 000 000 + 9 000 000) / 0,30 = 90 000 000 FCFA.
- Exercice 2 : SR = 45 000 000 / 0,30 = 112 500 000 FCFA. Cumuls : 40 000 000, 60 000 000, 75 000 000, 120 000 000. Fin septembre, il manque 37 500 000 FCFA ; le T4 rapporte 15 000 000 FCFA par mois : le seuil est atteint fin octobre.
- Exercice 3 : il ne reste que X : 17 000 000 − 15 000 000 = 2 000 000 FCFA, contre 4 000 000 aujourd''hui. Il faut abandonner Z seulement (résultat 5 000 000 FCFA) et garder Y.
- Exercice 4 : MCV = 400 000 × 250 = 100 000 000 ; CF = 80 000 000 ; résultat 20 000 000 FCFA, identique à la situation actuelle ; taux de MCV 50 % ; SR = 160 000 000 FCFA (contre 150 000 000) ; LO = 100 000 000 / 20 000 000 = 5. Point d''indifférence : 200 q − 60 000 000 = 250 q − 80 000 000, d''où q = 400 000 parpaings, le volume actuel. L''automatisation n''est gagnante qu''au-delà de ce volume et accroît le risque d''exploitation (seuil plus élevé, levier 5 au lieu de 4) : à recommander seulement si une croissance durable de la demande est attendue.', 'texte', 60, false, 20
from public.courses c where c.slug = 'lic-cg-l2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Comptabilité analytique 2 (coûts partiels, seuil, imputation rationnelle) : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Gestion budgétaire (ventes, production, trésorerie) : l''essentiel pour l''examen', '## Objectifs de la leçon

- Comprendre la démarche budgétaire et l''articulation des budgets.
- Prévoir les ventes avec des coefficients saisonniers et établir le budget des ventes.
- Établir le budget de production en tenant compte des stocks et de la capacité.
- Construire un budget de trésorerie et proposer des solutions aux déficits.

## 1. La démarche budgétaire

Le budget est la traduction chiffrée, à court terme (en général l''année, découpée en mois ou trimestres), des plans d''action d''un responsable. La gestion budgétaire comporte trois phases : la prévision (hypothèses sur l''activité), la budgétisation (chiffrage en valeur) et le contrôle budgétaire (comparaison réel/prévu et analyse des écarts).

Les budgets s''enchaînent selon une hiérarchie. Schéma décrit : en tête, le budget des ventes ; il commande le budget de production, qui commande les budgets des approvisionnements, de main-d''œuvre et des charges des centres ; à côté, les budgets des frais commerciaux, des frais généraux et des investissements ; tous se déversent dans le budget de trésorerie, puis dans le compte de résultat et le bilan prévisionnels.

La procédure peut être descendante, ascendante ou, le plus souvent, itérative (navettes entre direction et services). La participation favorise l''adhésion mais expose au « slack budgétaire » : des marges de sécurité cachées dans les prévisions.

## 2. Le budget des ventes

La prévision s''appuie sur l''historique (tendance par les moindres carrés, vue en L1), les études de marché et les objectifs commerciaux. Pour une activité saisonnière, on applique des coefficients saisonniers dont la somme vaut le nombre de périodes (4 pour des trimestres).

Cas : Dakar Bissap Industries, entreprise fictive, prévoit 48 000 cartons de sirop pour l''année N+1, à 2 500 FCFA le carton. Coefficients saisonniers : 1,2 ; 0,8 ; 0,7 ; 1,3 (forte demande au premier trimestre et en fin d''année, période de fêtes).

- T1 : 12 000 × 1,2 = 14 400 unités, soit 36 000 000 FCFA.
- T2 : 12 000 × 0,8 = 9 600 unités, soit 24 000 000 FCFA.
- T3 : 12 000 × 0,7 = 8 400 unités, soit 21 000 000 FCFA.
- T4 : 12 000 × 1,3 = 15 600 unités, soit 39 000 000 FCFA.

## 3. Le budget de production

Production = ventes + stock final souhaité − stock initial. L''entreprise souhaite un stock final égal à 20 % des ventes du trimestre suivant. Stock initial au 1er janvier : 2 800 cartons ; ventes prévues au T1 de N+2 : 15 000 cartons.

- T1 : ventes 14 400 + stock final 1 920 − stock initial 2 800 = production 13 520.
- T2 : ventes 9 600 + stock final 1 680 − stock initial 1 920 = production 9 360.
- T3 : ventes 8 400 + stock final 3 120 − stock initial 1 680 = production 9 840.
- T4 : ventes 15 600 + stock final 3 000 − stock initial 3 120 = production 15 480.

Contrainte de capacité : l''usine produit au plus 14 000 cartons par trimestre. Le T4 (15 480) dépasse la capacité de 1 480 cartons. Solution de lissage : produire ces 1 480 cartons dès le T3, où la capacité est disponible.

- T1 : production 13 520 ; stock de fin 1 920.
- T2 : production 9 360 ; stock de fin 1 680.
- T3 : production 11 320 ; stock de fin 4 600.
- T4 : production 14 000 ; stock de fin 3 000.

Le stock final de l''année reste égal à l''objectif (3 000 cartons). Le lissage a un coût (stockage, immobilisation de trésorerie) à comparer au coût d''heures supplémentaires ou de sous-traitance. Le budget des approvisionnements suit la même logique : avec 0,5 kg de fleurs d''hibiscus séchées par carton, les besoins du T1 sont de 6 760 kg, auxquels on ajoute le stock de sécurité souhaité.

## 4. Le budget de trésorerie

Il recense, mois par mois, les encaissements et les décaissements (montants réellement reçus ou payés, et non les produits et charges), puis calcule la trésorerie de fin de mois. On raisonne ici hors taxes pour simplifier ; dans la réalité, il faut intégrer la TVA collectée, la TVA déductible et le reversement de TVA.

Données du premier trimestre de Dakar Bissap Industries (ventes du T1 = 36 000 000 FCFA) :

- Ventes : janvier 13 000 000, février 11 000 000, mars 12 000 000 FCFA ; 40 % encaissés au comptant, 60 % le mois suivant. Créances clients au 1er janvier : 9 000 000 FCFA.
- Achats : 5 000 000, 4 500 000, 4 800 000 FCFA, payés à 30 jours. Dettes fournisseurs au 1er janvier : 4 000 000 FCFA.
- Salaires et charges sociales : 4 200 000 FCFA par mois ; autres charges décaissées : 1 800 000 FCFA par mois.
- Achat d''une machine en février : 9 000 000 FCFA ; échéance d''emprunt en mars : 2 500 000 FCFA. Trésorerie au 1er janvier : 2 000 000 FCFA.

- Janvier : encaissements 14 200 000 ; décaissements 10 000 000 (fournisseurs 4 000 000, salaires 4 200 000, autres charges 1 800 000) ; solde du mois 4 200 000 ; trésorerie de fin 6 200 000 FCFA.
- Février : encaissements 12 200 000 ; décaissements 20 000 000 (fournisseurs 5 000 000, salaires 4 200 000, autres charges 1 800 000, investissement 9 000 000) ; solde du mois −7 800 000 ; trésorerie de fin −1 600 000 FCFA.
- Mars : encaissements 11 400 000 ; décaissements 13 000 000 (fournisseurs 4 500 000, salaires 4 200 000, autres charges 1 800 000, échéance d''emprunt 2 500 000) ; solde du mois −1 600 000 ; trésorerie de fin −3 200 000 FCFA.

Lecture : la trésorerie devient négative en février (−1 600 000) à cause de l''investissement, et le déficit s''aggrave en mars (−3 200 000). Solutions : financer la machine par un emprunt ou un crédit-bail ; négocier une facilité de caisse ; allonger le crédit fournisseur ; accélérer le recouvrement. Au bilan prévisionnel du 31 mars figureront des créances clients de 7 200 000 FCFA et des dettes fournisseurs de 4 800 000 FCFA.

## Points clés

- Le budget des ventes commande tous les autres.
- Production = ventes + stock final − stock initial ; vérifier la capacité et lisser.
- Trésorerie : encaissements et décaissements, pas produits et charges.
- Un déficit de trésorerie appelle une solution de financement adaptée à sa nature (ponctuel ou durable).

## Exercices pratiques

- Exercice 1 : avec des ventes annuelles de 60 000 unités et les mêmes coefficients saisonniers, calculez les ventes trimestrielles.
- Exercice 2 : ventes T1 8 000 ; T2 10 000 ; stock initial 1 500 ; stock final souhaité = 25 % des ventes du trimestre suivant. Production du T1 ?
- Exercice 3 : ventes d''avril, mai et juin : 20 000 000, 25 000 000, 30 000 000 FCFA ; 30 % au comptant, 50 % à 30 jours, 20 % à 60 jours. Encaissements de juin ?
- Exercice 4 (cas pratique) : Dakar Bissap Industries finance la machine par un emprunt de 9 000 000 FCFA encaissé en février, remboursable à partir d''avril. Recalculez la trésorerie de fin février et de fin mars et concluez.

## Corrigé

- Exercice 1 : 15 000 × 1,2 = 18 000 ; 15 000 × 0,8 = 12 000 ; 15 000 × 0,7 = 10 500 ; 15 000 × 1,3 = 19 500 (total 60 000).
- Exercice 2 : 8 000 + 0,25 × 10 000 − 1 500 = 9 000 unités.
- Exercice 3 : 30 % × 30 000 000 + 50 % × 25 000 000 + 20 % × 20 000 000 = 9 000 000 + 12 500 000 + 4 000 000 = 25 500 000 FCFA.
- Exercice 4 : fin février 7 400 000 FCFA ; fin mars 5 800 000 FCFA. La trésorerie reste positive sur le trimestre : le déficit venait du financement de l''investissement sur la trésorerie d''exploitation. Il faudra vérifier que les remboursements à partir d''avril restent supportables.', 'texte', 60, false, 30
from public.courses c where c.slug = 'lic-cg-l2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Gestion budgétaire (ventes, production, trésorerie) : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Analyse des écarts (sur coûts et sur marge) : l''essentiel pour l''examen', '## Objectifs de la leçon

- Établir une fiche de coût standard (coût préétabli) et calculer l''écart global sur coûts.
- Décomposer les écarts sur matières, sur main-d''œuvre directe et sur charges indirectes.
- Calculer et analyser l''écart sur marge (prix et quantité).
- Interpréter les écarts et identifier les responsables.

## 1. Coûts préétablis et principe de l''analyse

Un coût préétabli (ou standard) est un coût calculé à l''avance, à partir de normes techniques (quantités) et de prix prévus. L''analyse des écarts compare le coût réel de la production réelle au coût préétabli de cette même production réelle. C''est fondamental : on ne compare jamais le coût réel au budget initial de la production prévue, sinon l''écart mélange un effet volume et un effet performance.

Convention de ce cours : écart = réel − préétabli. Pour un coût, un écart positif est défavorable (on a dépensé plus) ; pour une marge ou un chiffre d''affaires, un écart positif est favorable.

## 2. Le cas Sénégal Peinture (entreprise fictive, Diamniadio)

Fiche de coût standard d''un pot de peinture :

- Matière : 2 kg à 1 500 FCFA = 3 000 FCFA.
- MOD : 0,5 h à 2 400 FCFA = 1 200 FCFA.
- Centre atelier : 0,5 h (UO = heure de MOD) à 2 000 FCFA = 1 000 FCFA. Budget mensuel du centre : charges fixes 6 240 000 FCFA et charges variables 800 FCFA par heure, pour une activité normale de 5 200 heures, soit 800 + 6 240 000 / 5 200 = 2 000 FCFA l''heure.
- Coût standard unitaire : 5 200 FCFA. Production prévue : 10 400 pots.

Réalisations du mois : 9 600 pots ; 19 800 kg de matière à 1 450 FCFA ; 5 000 heures de MOD à 2 500 FCFA ; charges réelles de l''atelier 10 300 000 FCFA.

Coût réel total = 28 710 000 + 12 500 000 + 10 300 000 = 51 510 000 FCFA. Coût préétabli de la production réelle = 9 600 × 5 200 = 49 920 000 FCFA. Écart global = 1 590 000 FCFA défavorable.

## 3. Écarts sur matières

- Écart sur prix = (prix réel − prix standard) × quantité réelle = (1 450 − 1 500) × 19 800 = 990 000 FCFA favorable.
- Écart sur quantité = (quantité réelle − quantité standard) × prix standard = (19 800 − 19 200) × 1 500 = 900 000 FCFA défavorable.
- Total : 90 000 FCFA favorable.

Lecture : l''acheteur a obtenu un bon prix, mais l''atelier a consommé 600 kg de trop (gaspillage, matière de moindre qualité achetée moins cher ?). Les deux écarts sont peut-être liés.

## 4. Écarts sur main-d''œuvre directe

- Écart sur taux = (taux réel − taux standard) × heures réelles = (2 500 − 2 400) × 5 000 = 500 000 FCFA défavorable.
- Écart sur rendement = (heures réelles − heures standard) × taux standard = (5 000 − 4 800) × 2 400 = 480 000 FCFA défavorable.
- Total : 980 000 FCFA défavorable.

## 5. Écarts sur charges indirectes (centre atelier)

On utilise le budget flexible : budget ajusté à l''activité réelle = charges fixes + charges variables unitaires × heures réelles = 6 240 000 + 800 × 5 000 = 10 240 000 FCFA.

- Écart sur budget = charges réelles − budget flexible = 10 300 000 − 10 240 000 = 60 000 FCFA défavorable.
- Écart sur activité = budget flexible − heures réelles × coût standard de l''UO = 10 240 000 − 5 000 × 2 000 = 240 000 FCFA défavorable ; c''est le coût de la sous-activité (200 heures de moins que l''activité normale, à 1 200 FCFA de charges fixes par heure).
- Écart sur rendement = (heures réelles − heures standard) × coût standard de l''UO = (5 000 − 4 800) × 2 000 = 400 000 FCFA défavorable.
- Total : 700 000 FCFA défavorable.

Contrôle : −90 000 + 980 000 + 700 000 = 1 590 000 FCFA, l''écart global défavorable.

## 6. Écart sur marge

Prix de vente prévu 9 000 FCFA ; prix réel 9 200 FCFA. Marge préétablie unitaire = 9 000 − 5 200 = 3 800 FCFA. On valorise les quantités au coût standard pour isoler la performance commerciale.

- Marge préétablie = 10 400 × 3 800 = 39 520 000 FCFA ; marge réelle au coût standard = 9 600 × (9 200 − 5 200) = 38 400 000 FCFA ; écart sur marge 1 120 000 FCFA défavorable.
- Écart sur prix = (9 200 − 9 000) × 9 600 = 1 920 000 FCFA favorable.
- Écart sur quantité = (9 600 − 10 400) × 3 800 = 3 040 000 FCFA défavorable.

Rapprochement : résultat réel (36 810 000) − résultat préétabli (39 520 000) = écart sur marge (−1 120 000) − écart sur coûts (1 590 000) = −2 710 000 FCFA. Le service commercial a vendu plus cher mais moins de pots ; la production a dépassé les standards de coûts.

## Points clés

- Comparer le réel au préétabli de la production réelle.
- Matières et MOD : écart prix ou taux (sur quantités réelles) + écart quantité ou rendement (au prix standard).
- Charges indirectes : budget, activité, rendement, avec le budget flexible.
- Toujours vérifier que la somme des sous-écarts redonne l''écart global.

## Exercices pratiques

- Exercice 1 : standard 3 kg à 800 FCFA par unité ; production réelle 4 000 unités ; consommation réelle 12 400 kg à 780 FCFA. Calculez les écarts sur matières.
- Exercice 2 : standard 0,25 h à 2 000 FCFA par unité ; réel 1 050 h à 2 100 FCFA pour 4 000 unités. Calculez les écarts sur MOD.
- Exercice 3 : à quoi correspond un écart sur activité favorable ?
- Exercice 4 : pour Sénégal Peinture, si l''activité réelle avait été de 5 200 heures avec les mêmes charges réelles de l''atelier, quel serait l''écart sur budget ?
- Exercice 5 (cas pratique) : rédigez une note de dix lignes au directeur de Sénégal Peinture désignant les responsables des principaux écarts et proposant des actions.

## Corrigé

- Exercice 1 : écart sur prix = −20 × 12 400 = 248 000 FCFA favorable ; écart sur quantité = 400 × 800 = 320 000 FCFA défavorable ; total 72 000 FCFA défavorable.
- Exercice 2 : écart sur taux = 100 × 1 050 = 105 000 FCFA défavorable ; écart sur rendement = (1 050 − 1 000) × 2 000 = 100 000 FCFA défavorable ; total 205 000 FCFA défavorable.
- Exercice 3 : à une suractivité : l''activité réelle dépasse l''activité normale, les charges fixes sont mieux absorbées (boni de suractivité).
- Exercice 4 : budget flexible = 6 240 000 + 800 × 5 200 = 10 400 000 ; écart sur budget = 10 300 000 − 10 400 000 = 100 000 FCFA favorable.
- Exercice 5 : écart matière quantité (900 000 D) et rendements MOD et atelier (480 000 et 400 000 D) relèvent du chef de production : contrôle des dosages, formation, maintenance. L''écart de taux MOD (500 000 D) relève des ressources humaines (heures supplémentaires ? primes ?). L''écart sur prix matière favorable (990 000) revient aux achats, mais il faut vérifier que la matière moins chère n''explique pas la surconsommation. La sous-activité (240 000 D) est liée à la baisse des ventes : action commerciale. Le prix de vente plus élevé a rapporté 1 920 000 FCFA mais s''est peut-être payé par la baisse des volumes (3 040 000 D).', 'texte', 60, false, 40
from public.courses c where c.slug = 'lic-cg-l2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Analyse des écarts (sur coûts et sur marge) : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Sujet type d''examen de Licence 2 en Contrôle de gestion (corrigé)', '## Présentation du sujet

Sujet d''entraînement de Licence 2, contrôle de gestion. Durée : 3 heures ; calculatrice autorisée ; documents interdits. Sujet non officiel, conçu pour l''entraînement ; barème indicatif, non officiel. Les entreprises sont fictives et les montants hors taxes.

## Dossier 1 · Comptabilité analytique 2 (7 points)

Casamance Fruits Séchés vend 50 000 sachets de mangue séchée par an à 3 000 FCFA. Coût variable unitaire : 1 800 FCFA. Charges fixes : 45 000 000 FCFA. Activité régulière sur l''année.

- 1.1 (2 pts) Présentez le compte de résultat différentiel.
- 1.2 (2 pts) Calculez le seuil de rentabilité en valeur et en quantité, la date du point mort et l''indice de sécurité.
- 1.3 (1 pt) Calculez le levier opérationnel et interprétez-le.
- 1.4 (2 pts) Un séchoir solaire augmenterait les charges fixes de 6 000 000 FCFA et ramènerait le coût variable à 1 700 FCFA. Faut-il investir ?

## Dossier 2 · Gestion budgétaire (6 points)

Une entreprise de négoce fictive de Touba prévoit des ventes de 20 000 000 FCFA en avril, 25 000 000 en mai et 30 000 000 en juin, encaissées 50 % au comptant et 50 % à 30 jours. Les achats représentent 50 % des ventes du mois et sont payés à 30 jours. Au 1er avril : créances clients 18 000 000 FCFA, dettes fournisseurs 9 000 000 FCFA, trésorerie 1 000 000 FCFA. Charges fixes décaissées : 8 000 000 FCFA par mois. Investissement payé en mai : 6 000 000 FCFA.

- 2.1 (4 pts) Établissez le budget de trésorerie d''avril à juin.
- 2.2 (2 pts) Commentez et indiquez les montants des créances et dettes au bilan prévisionnel du 30 juin.

## Dossier 3 · Analyse des écarts (7 points)

Standard d''un produit : 3 kg de matière à 800 FCFA ; 0,25 h de MOD à 2 000 FCFA. Production réelle : 4 000 unités ; consommation : 12 400 kg à 780 FCFA ; MOD : 1 050 h à 2 100 FCFA.

- 3.1 (2 pts) Calculez le coût réel, le coût préétabli de la production réelle et l''écart global.
- 3.2 (4 pts) Décomposez les écarts sur matière et sur MOD.
- 3.3 (1 pt) Commentez.

## Corrigé détaillé

Dossier 1.

- 1.1 : CA 150 000 000 ; charges variables 90 000 000 ; MCV 60 000 000 (taux 40 %) ; charges fixes 45 000 000 ; résultat 15 000 000 FCFA.
- 1.2 : SR = 45 000 000 / 0,40 = 112 500 000 FCFA, soit 37 500 sachets ; point mort = 112 500 000 / 150 000 000 × 12 = 9 mois, le 30 septembre ; marge de sécurité 37 500 000 ; indice 25 %.
- 1.3 : LO = 60 000 000 / 15 000 000 = 4 : une variation de 1 % du CA fait varier le résultat de 4 %.
- 1.4 : nouvelle MCV unitaire 1 300 ; résultat = 50 000 × 1 300 − 51 000 000 = 14 000 000 FCFA, inférieur à 15 000 000 ; nouveau seuil 39 231 sachets environ. Point d''indifférence : 1 200 q − 45 000 000 = 1 300 q − 51 000 000, soit q = 60 000 sachets. L''investissement n''est rentable qu''au-delà de 60 000 sachets : refus au volume actuel, sauf perspective de forte croissance.

Dossier 2.

- Avril : encaissements 28 000 000 ; décaissements 17 000 000 ; trésorerie de fin 12 000 000 FCFA.
- Mai : encaissements 22 500 000 ; décaissements 24 000 000 ; trésorerie de fin 10 500 000 FCFA.
- Juin : encaissements 27 500 000 ; décaissements 20 500 000 ; trésorerie de fin 17 500 000 FCFA.

- 2.2 : la trésorerie reste positive ; le creux de mai s''explique par l''investissement, financé sans difficulté. Bilan au 30 juin : créances clients 15 000 000 FCFA ; dettes fournisseurs 15 000 000 FCFA.

Dossier 3.

- 3.1 : coût réel = 9 672 000 + 2 205 000 = 11 877 000 FCFA ; préétabli = 9 600 000 + 2 000 000 = 11 600 000 FCFA ; écart global 277 000 FCFA défavorable.
- 3.2 : matière, prix 248 000 FCFA favorable, quantité 320 000 FCFA défavorable ; MOD, taux 105 000 FCFA défavorable, rendement 100 000 FCFA défavorable. Somme : 277 000 FCFA.
- 3.3 : bon prix d''achat mais surconsommation de matière et heures en trop : à investiguer en production (qualité de la matière, formation, pannes).

## Exercices pratiques

- Exercice 1 : dans le dossier 1, quel prix de vente permettrait d''atteindre un résultat de 20 000 000 FCFA sans investissement ?
- Exercice 2 : dans le dossier 2, quelle serait la trésorerie de fin mai si l''investissement coûtait 12 000 000 FCFA ?
- Exercice 3 : un écart sur rendement de MOD favorable est-il toujours une bonne nouvelle ?

## Corrigé

- Exercice 1 : MCV nécessaire = 45 000 000 + 20 000 000 = 65 000 000 ; marge unitaire = 65 000 000 / 50 000 = 1 300 ; prix = 1 800 + 1 300 = 3 100 FCFA, à volume constant.
- Exercice 2 : 10 500 000 − 6 000 000 = 4 500 000 FCFA.
- Exercice 3 : non : il peut cacher une baisse de qualité (contrôles écourtés) ; il faut le croiser avec les indicateurs de qualité et de rebut.', 'texte', 60, false, 50
from public.courses c where c.slug = 'lic-cg-l2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Sujet type d''examen de Licence 2 en Contrôle de gestion (corrigé)');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Comptabilité analytique 2 (coûts partiels)', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : étudiants de Licence 2 en contrôle de gestion, comptabilité, gestion.
- Objectifs : maîtriser le compte de résultat différentiel, le seuil de rentabilité, le point mort, le levier opérationnel, les coûts spécifiques et l''imputation rationnelle ; savoir commenter ces indicateurs pour une décision.
- Matériel : tableau ou diaporama, graphique du seuil de rentabilité, calculatrice, tableur facultatif.
- Prérequis : coûts complets (L1) ; leçon « Comptabilité analytique 2 : l''essentiel pour l''examen ».

## Déroulé minuté

## 00:00 – 05:00 · Ouverture

Bonjour à toutes et à tous. En Licence 1, vous avez appris à calculer des coûts complets. Aujourd''hui, nous changeons de lunettes : nous séparons ce qui varie avec l''activité de ce qui ne varie pas. Cette simple séparation permet de répondre à des questions que se posent tous les dirigeants : à partir de combien de ventes suis-je bénéficiaire ? Que se passe-t-il si mes ventes baissent de 10 % ? Faut-il abandonner un produit ? Notre fil rouge : Keur Briques SARL, fabricant fictif de parpaings à Rufisque.

## 05:00 – 15:00 · Charges variables, charges fixes

Visuel : deux graphiques. À gauche, une droite qui part de l''origine : les charges variables. À droite, une droite horizontale : les charges fixes.

Le ciment, le sable, l''énergie des presses varient avec le nombre de parpaings : ce sont des charges variables. Le loyer du terrain, l''amortissement des presses, le salaire du directeur ne bougent pas si l''on produit un peu plus ou un peu moins : ce sont des charges fixes. Attention à deux nuances. D''abord, les charges fixes ne sont fixes que dans une plage d''activité : si Keur Briques double sa production, il faudra une deuxième presse. Ensuite, beaucoup de charges sont semi-variables, comme l''électricité avec un abonnement et une consommation : on les sépare par l''ajustement linéaire vu en L1.

## 15:00 – 28:00 · Compte de résultat différentiel et seuil : correction commentée

Énoncé : 400 000 parpaings vendus à 500 FCFA, coût variable 300 FCFA, charges fixes 60 000 000 FCFA. Calculez le résultat et le seuil.

Correction. Chiffre d''affaires : 200 000 000. Charges variables : 120 000 000. Marge sur coût variable : 80 000 000, soit un taux de 40 %. Résultat : 20 000 000 FCFA.

Le seuil de rentabilité, c''est le chiffre d''affaires pour lequel la marge sur coût variable couvre juste les charges fixes. Écrivez : 0,40 × SR = 60 000 000, donc SR = 150 000 000 FCFA. En quantités : chaque parpaing rapporte 200 FCFA de marge ; il en faut 60 000 000 divisé par 200, soit 300 000 parpaings.

Visuel : le graphique. La droite de MCV, d''équation y = 0,4 x, coupe la droite des charges fixes à 150 000 000. À droite, la zone de bénéfice ; à gauche, la zone de perte. Une autre représentation consiste à tracer la droite du résultat, y = 0,4 x − 60 000 000, qui coupe l''axe des abscisses au seuil.

## 28:00 – 38:00 · Point mort, marge et indice de sécurité

Le point mort est une date. Si les ventes sont régulières, le seuil est atteint après 150 000 000 sur 200 000 000 de l''année, soit 9 mois : le 30 septembre. Concrètement, de janvier à septembre, Keur Briques couvre ses charges fixes ; d''octobre à décembre, elle fabrique son bénéfice.

Marge de sécurité : 200 000 000 moins 150 000 000, soit 50 000 000 FCFA. Indice de sécurité : 25 %. Interprétation à écrire dans la copie : les ventes peuvent baisser de 25 % avant que l''entreprise ne passe en perte.

Et si l''activité est saisonnière ? On cumule le chiffre d''affaires mois par mois. Exemple de l''hôtel de Saly : CA trimestriels de 40, 20, 15 et 45 millions, taux de MCV 30 %, charges fixes 45 000 000 FCFA. Seuil 112 500 000 FCFA. Cumul fin septembre : 75 millions ; il manque 15 millions, que le T4 apporte en un mois. Point mort : fin octobre.

## 38:00 – 46:00 · Le levier opérationnel

Le levier mesure l''amplification. LO = MCV / résultat = 80 000 000 / 20 000 000 = 4. Vérifions avec une hausse de 10 % du CA : nouveau CA 220 000 000, MCV 88 000 000, résultat 28 000 000. Le résultat passe de 20 000 000 à 28 000 000, soit +40 %. Quatre fois 10 %.

Retenez l''égalité : LO = 1 / indice de sécurité. Plus l''entreprise est proche de son seuil, plus son levier est fort et plus son résultat est volatil. C''est le risque d''exploitation.

## 46:00 – 52:00 · Pause et quiz

- Question 1 : le taux de MCV est de 25 % et les charges fixes de 30 millions ; SR ? Réponse : 120 millions.
- Question 2 : SR 90 millions, CA annuel 120 millions, activité régulière ; point mort ? Réponse : 9 mois, fin septembre.
- Question 3 : indice de sécurité 20 % ; levier ? Réponse : 5.
- Question 4 : vrai ou faux, une entreprise à fortes charges fixes a un levier faible. Faux.

## 52:00 – 66:00 · Coûts spécifiques : faut-il abandonner un produit ?

Visuel : tableau des trois gammes X, Y, Z.

Le directeur d''une entreprise fictive de cosmétiques me montre un tableau en coûts complets : la gamme Y perd 1 500 000 FCFA, la gamme Z perd 4 000 000 FCFA. Sa conclusion : abandonner Y et Z. Vérifions.

Calculons la marge sur coût spécifique : CA moins charges variables moins charges fixes propres. X : 17 000 000. Y : 3 000 000. Z : −1 000 000. Charges communes : 15 000 000. Résultat : 4 000 000 FCFA.

Si l''on abandonne Y et Z, il ne reste que X : 17 000 000 moins 15 000 000, soit 2 000 000 FCFA. Catastrophe : les charges communes ne disparaissent pas avec les produits. La bonne décision : abandonner Z seul, dont la MCS est négative, ce qui porte le résultat à 5 000 000 FCFA, et conserver Y, qui contribue pour 3 000 000 FCFA. Nuance à écrire : avant d''abandonner Z, vérifier qu''il n''entraîne pas les ventes des autres gammes, et que ses charges fixes propres disparaissent vraiment.

## 66:00 – 78:00 · Imputation rationnelle : correction commentée

Énoncé : charges fixes de l''atelier 12 000 000 FCFA par mois ; activité normale 2 000 heures pour 10 000 unités ; ce mois-ci, 1 800 heures pour 9 000 unités ; coût variable 2 000 FCFA l''unité.

En coûts complets réels, le coût unitaire vaut 2 000 plus 12 000 000 sur 9 000, soit environ 3 333,33 FCFA. Le mois dernier, en activité normale, il valait 3 200. Le produit n''a pas changé, c''est la sous-activité qui gonfle son coût. Le commercial risque d''augmenter son prix, de vendre encore moins : c''est le cercle vicieux.

Solution : le coefficient d''imputation rationnelle, activité réelle sur activité normale, 0,9. Charges fixes imputées : 10 800 000. Coût unitaire : 2 000 + 10 800 000 / 9 000 = 3 200 FCFA, stable. La différence, 1 200 000 FCFA, est le coût du chômage, ou coût de sous-activité, présenté à part dans le compte de résultat analytique. En cas de suractivité, coefficient supérieur à 1, on parle de boni de suractivité.

## 78:00 – 84:00 · Méthode pour l''examen

Trois conseils. Un : présentez toujours le compte de résultat différentiel en tableau, avec une colonne pour les montants et une colonne pour les pourcentages du CA. Deux : pour toute décision, raisonnez en différentiel : qu''est-ce qui change si je fais ou si je ne fais pas ? Trois : terminez chaque calcul par une phrase d''interprétation.

## 84:00 – 90:00 · Synthèse et évaluation finale

Synthèse : MCV, seuil, point mort, sécurité, levier, coûts spécifiques, imputation rationnelle. Ce sont les outils du pilotage à court terme.

- Question 1 : CA 50 millions, charges variables 30 millions, charges fixes 16 millions ; SR ? Réponse : taux 40 %, SR 40 millions.
- Question 2 : avec ces données, levier ? Réponse : MCV 20 / résultat 4 = 5.
- Question 3 : une gamme a une MCS de −2 millions ; que faire ? Réponse : envisager l''abandon si ses charges fixes propres disparaissent et s''il n''y a pas d''effet sur les autres ventes.
- Question 4 : charges fixes 6 millions, activité normale 1 000 h, réelle 1 200 h ; charges imputées ? Réponse : 7,2 millions, boni de 1,2 million.
- Question 5 : que signifie un indice de sécurité de 10 % ? Réponse : une baisse de 10 % des ventes suffit à annuler le résultat.

Merci à toutes et à tous. Pour la prochaine séance, consacrée à la gestion budgétaire, refaites le cas Keur Briques sans vos notes, puis l''exercice des trois gammes.', 'video', 90, false, 60
from public.courses c where c.slug = 'lic-cg-l2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Comptabilité analytique 2 (coûts partiels)');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Gestion budgétaire', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : étudiants de Licence 2 en contrôle de gestion et gestion.
- Objectifs : comprendre la démarche budgétaire, établir les budgets des ventes, de production et de trésorerie, proposer des solutions de financement.
- Matériel : diaporama, schéma de la hiérarchie des budgets, tableau vierge de trésorerie, tableur.
- Prérequis : leçon « Gestion budgétaire : l''essentiel pour l''examen ».

## Déroulé minuté

## 00:00 – 05:00 · Ouverture

Bonjour à toutes et à tous. Un dirigeant qui ne prévoit pas subit. La gestion budgétaire, c''est l''art de chiffrer l''avenir proche pour s''organiser. Aujourd''hui, nous allons construire avec Dakar Bissap Industries, entreprise fictive qui produit du sirop de bissap, trois budgets : ventes, production, trésorerie. Et nous verrons comment une entreprise rentable peut se retrouver à court de trésorerie.

## 05:00 – 15:00 · La démarche budgétaire

Visuel : pyramide des budgets. En haut, le budget des ventes ; au milieu, production, approvisionnements, main-d''œuvre, frais ; en bas, investissements et trésorerie ; à la sortie, compte de résultat et bilan prévisionnels.

Pourquoi le budget des ventes en premier ? Parce que, sauf contrainte de capacité, c''est le marché qui fixe le niveau d''activité. Si la capacité de production est le facteur limitant, comme pour une usine saturée, c''est au contraire le budget de production qui encadre les ventes possibles. Repérez toujours le facteur limitant avant de construire la chaîne des budgets. Dans une entreprise de services, comme un cabinet de conseil de Dakar, le facteur limitant est souvent le nombre d''heures facturables des consultants. La procédure de construction peut être descendante, ascendante ou itérative. La forme itérative, faite de navettes, est la plus courante. Elle implique les responsables mais crée un risque : le slack budgétaire. Un chef des ventes qui prévoit volontairement bas pour être sûr de dépasser son objectif fausse tout le système.

Question au public : quelles sont les trois phases de la gestion budgétaire ? Réponse : prévision, budgétisation, contrôle budgétaire.

## 15:00 – 27:00 · Le budget des ventes : saisonnalité

L''entreprise prévoit 48 000 cartons sur l''année. Les ventes ne sont pas régulières : forte demande en début d''année et en fin d''année, creux pendant la saison des pluies. On applique des coefficients saisonniers : 1,2 ; 0,8 ; 0,7 ; 1,3. Leur somme vaut 4, c''est le contrôle à faire.

Trimestre moyen : 12 000 cartons. T1 : 14 400 ; T2 : 9 600 ; T3 : 8 400 ; T4 : 15 600. Total : 48 000. Avec un prix de 2 500 FCFA, le CA du T1 vaut 36 000 000 FCFA.

Comment obtient-on ces coefficients ? En rapportant, sur plusieurs années, les ventes de chaque trimestre à la tendance ou à la moyenne trimestrielle, puis en faisant la moyenne de ces rapports. Exemple simple : si, sur trois ans, les ventes du premier trimestre ont représenté 1,18, 1,22 et 1,20 fois la moyenne trimestrielle de l''année, on retient un coefficient de 1,20. Si la somme des quatre coefficients obtenus n''est pas exactement 4, on les corrige proportionnellement. On peut ensuite combiner la tendance, estimée par les moindres carrés, et les coefficients : prévision du trimestre = valeur de tendance × coefficient saisonnier.

## 27:00 – 42:00 · Budget de production et lissage : correction commentée

Formule à écrire : production = ventes + stock final − stock initial. Stock final souhaité : 20 % des ventes du trimestre suivant.

T1 : 14 400 + 20 % de 9 600, soit 1 920, moins le stock initial 2 800 : 13 520. T2 : 9 600 + 1 680 − 1 920 = 9 360. T3 : 8 400 + 3 120 − 1 680 = 9 840. T4 : 15 600 + 3 000 − 3 120 = 15 480.

Problème : la capacité est de 14 000 cartons par trimestre. Le T4 dépasse de 1 480. Trois solutions : heures supplémentaires, sous-traitance, ou anticipation. Anticipons : on produit 11 320 au T3 et 14 000 au T4. Stocks de fin : 1 920, 1 680, 4 600, 3 000. Le stock de fin d''année respecte l''objectif. Mais ce stock supplémentaire immobilise de la trésorerie et de la place : il faut chiffrer et comparer les solutions.

## 42:00 – 48:00 · Pause et quiz

- Question 1 : ventes 5 000, stock initial 800, stock final souhaité 600 ; production ? Réponse : 4 800.
- Question 2 : la somme des coefficients saisonniers mensuels vaut ? Réponse : 12.
- Question 3 : vrai ou faux, un budget de trésorerie enregistre les charges calculées comme les amortissements. Faux : un amortissement n''est pas un décaissement.

## 48:00 – 68:00 · Le budget de trésorerie : correction commentée

Visuel : tableau à trois colonnes, janvier, février, mars ; lignes encaissements, décaissements, solde, trésorerie de fin.

Encaissements. Les clients paient 40 % au comptant et 60 % le mois suivant. Janvier : 40 % de 13 000 000, soit 5 200 000, plus les créances de début d''année 9 000 000 : 14 200 000. Février : 4 400 000 + 60 % de janvier 7 800 000 = 12 200 000. Mars : 11 400 000.

Décaissements. Fournisseurs à 30 jours : janvier, la dette de début d''année 4 000 000 ; février, les achats de janvier 5 000 000 ; mars, ceux de février 4 500 000. Salaires 4 200 000 et autres charges 1 800 000 chaque mois. Machine en février : 9 000 000. Échéance d''emprunt en mars : 2 500 000. Totaux : 10 000 000, 20 000 000, 13 000 000.

Trésorerie : départ 2 000 000. Fin janvier : 6 200 000. Fin février : −1 600 000. Fin mars : −3 200 000.

Diagnostic : l''entreprise n''a pas un problème de rentabilité mais de financement. Elle a payé une machine de 9 000 000 FCFA, un bien durable, avec sa trésorerie courante. Règle de l''équilibre financier : un besoin durable se finance par une ressource durable. Solution : emprunt ou crédit-bail. Avec un emprunt de 9 000 000 encaissé en février, la trésorerie serait de 7 400 000 fin février et 5 800 000 fin mars. Pour un déficit ponctuel, en revanche, une facilité de caisse suffit.

## 68:00 – 72:00 · Erreurs fréquentes dans les budgets de trésorerie

Quatre erreurs reviennent dans les copies. Première erreur : inscrire les ventes du mois au lieu des encaissements du mois. Deuxième : oublier les créances et les dettes du début de période, qui sont encaissées ou payées dans les premiers mois. Troisième : intégrer des charges calculées, comme les dotations aux amortissements ou aux provisions, qui ne donnent lieu à aucun décaissement. Quatrième : enregistrer un emprunt pour son montant total en décaissement, alors qu''on encaisse le capital emprunté et qu''on décaisse ensuite les échéances. Pour vous protéger, vérifiez toujours que la variation de trésorerie de la période égale le total des encaissements moins le total des décaissements : ici, 37 800 000 moins 43 000 000, soit −5 200 000 FCFA, ce qui fait bien passer la trésorerie de 2 000 000 à −3 200 000 FCFA.

## 72:00 – 78:00 · Du budget de trésorerie au bilan prévisionnel

Le budget de trésorerie alimente le bilan prévisionnel. Au 31 mars, il reste à encaisser 60 % des ventes de mars, soit 7 200 000 FCFA de créances clients, et à payer les achats de mars, soit 4 800 000 FCFA de dettes fournisseurs. La machine apparaît à l''actif immobilisé. Ce raccordement est un excellent moyen de contrôler la cohérence de votre travail : chaque montant non encaissé ou non décaissé doit se retrouver au bilan.

Dans la réalité, il faudrait ajouter la TVA : les ventes sont encaissées toutes taxes comprises, les achats payés toutes taxes comprises, et la TVA due est reversée à l''administration selon un calendrier légal. Nous avons raisonné hors taxes pour nous concentrer sur la logique.

## 78:00 – 84:00 · Limites et renouveau des budgets

Les budgets sont critiqués : rigides, chronophages, sources de jeux politiques. Des démarches comme les prévisions glissantes (rolling forecasts), actualisées chaque trimestre, ou le « beyond budgeting » proposent plus de souplesse. Dans une copie de dissertation, montrez que le budget reste un outil de coordination et de délégation, à condition de l''actualiser et de l''accompagner d''indicateurs non financiers.

## 84:00 – 90:00 · Synthèse et évaluation finale

- Question 1 : ventes annuelles 36 000, coefficient du T2 0,9 ; ventes du T2 ? Réponse : 8 100.
- Question 2 : ventes 10 000, stock initial 2 000, stock final 1 500 ; production ? Réponse : 9 500.
- Question 3 : ventes du mois 6 millions, 30 % comptant, 70 % à 30 jours ; ventes du mois précédent 5 millions ; encaissements ? Réponse : 1,8 + 3,5 = 5,3 millions.
- Question 4 : un déficit de trésorerie lié à un investissement se finance comment ? Réponse : par une ressource durable, emprunt ou crédit-bail.
- Question 5 : citez une limite des budgets. Réponse : rigidité face à un environnement instable.

Merci et à bientôt pour l''analyse des écarts.', 'video', 90, false, 70
from public.courses c where c.slug = 'lic-cg-l2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Gestion budgétaire');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Analyse des écarts', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : étudiants de Licence 2 en contrôle de gestion.
- Objectifs : calculer et interpréter l''écart global, les écarts sur matières, sur main-d''œuvre directe, sur charges indirectes et sur marge ; désigner les responsables et proposer des actions.
- Matériel : diaporama, fiche de coût standard, calculatrice.
- Prérequis : coûts complets, budget flexible ; leçon « Analyse des écarts : l''essentiel pour l''examen ».

## Déroulé minuté

## 00:00 – 05:00 · Ouverture

Bonjour à tous. Le budget est fait, le mois est passé, les chiffres réels arrivent. Le directeur demande : « Pourquoi avons-nous dépensé plus que prévu ? » Votre mission aujourd''hui : répondre précisément, chiffres à l''appui, en désignant qui doit agir. Notre cas : Sénégal Peinture, entreprise fictive de Diamniadio.

## 05:00 – 15:00 · Le coût standard et la règle d''or

Visuel : la fiche de coût standard d''un pot. Matière 2 kg à 1 500 FCFA, soit 3 000. MOD une demi-heure à 2 400, soit 1 200. Atelier une demi-heure à 2 000, soit 1 000. Total 5 200 FCFA.

La règle d''or : on compare le coût réel de la production réelle au coût standard de cette même production réelle. Ce mois-ci, on prévoyait 10 400 pots et on en a fait 9 600. Comparer au budget de 10 400 pots mélangerait la baisse de volume et la performance. Coût réel : 51 510 000 FCFA. Coût standard de 9 600 pots : 49 920 000 FCFA. Écart global : 1 590 000 FCFA défavorable.

Convention : réel moins standard ; pour un coût, positif veut dire défavorable.

## 15:00 – 28:00 · Écarts sur matières : correction commentée

Énoncé : 19 800 kg achetés et consommés à 1 450 FCFA. Standard pour 9 600 pots : 19 200 kg à 1 500.

Écart sur prix : on isole l''effet prix sur les quantités réellement consommées. (1 450 − 1 500) × 19 800 = 990 000 FCFA favorable. Écart sur quantité : on valorise l''excès de matière au prix standard. (19 800 − 19 200) × 1 500 = 900 000 FCFA défavorable. Total : 90 000 FCFA favorable.

Pourquoi le prix standard pour l''écart sur quantité ? Pour que le chef de production ne soit pas jugé sur un prix qu''il ne maîtrise pas. C''est le principe de contrôlabilité. Visuel : le rectangle classique, quantités en abscisse, prix en ordonnée, avec la bande verticale de l''écart sur quantité et la bande horizontale de l''écart sur prix.

## 28:00 – 38:00 · Écarts sur main-d''œuvre directe

Réel : 5 000 heures à 2 500. Standard : 4 800 heures à 2 400. Écart sur taux : (2 500 − 2 400) × 5 000 = 500 000 FCFA défavorable. Écart sur rendement : (5 000 − 4 800) × 2 400 = 480 000 FCFA défavorable. Total 980 000 FCFA défavorable.

Causes possibles du taux : heures supplémentaires majorées, recours à des ouvriers plus qualifiés, revalorisation salariale. Causes du rendement : pannes, matière difficile à travailler, nouveaux ouvriers en formation. Remarquez le lien possible avec l''écart sur quantité de matière : une matière moins chère, donc de qualité inférieure, peut à la fois être surconsommée et ralentir les ouvriers. L''acheteur affiche un écart favorable, la production deux écarts défavorables. Au total, l''entreprise a perdu de l''argent. C''est pourquoi on ne juge jamais un écart isolément : on cherche les interactions avant de féliciter ou de blâmer.

## 38:00 – 44:00 · Pause et quiz

- Question 1 : prix réel 520, standard 500, quantité réelle 1 000, quantité standard 950 ; écart sur prix ? Réponse : 20 000 défavorable.
- Question 2 : même données, écart sur quantité ? Réponse : 50 × 500 = 25 000 défavorable.
- Question 3 : un écart sur rendement de MOD favorable signifie quoi ? Réponse : moins d''heures que le standard pour la production réelle.

## 44:00 – 62:00 · Écarts sur charges indirectes : correction commentée

C''est la partie la plus redoutée. Prenons-la calmement. Le centre atelier a un budget : 6 240 000 FCFA de charges fixes et 800 FCFA de charges variables par heure, pour une activité normale de 5 200 heures. Coût standard de l''heure : 2 000. Réel : 5 000 heures, charges 10 300 000.

Premier outil, le budget flexible : ce qu''on aurait dû dépenser pour 5 000 heures. 6 240 000 + 800 × 5 000 = 10 240 000.

Écart sur budget : réel moins budget flexible, 10 300 000 − 10 240 000 = 60 000 FCFA défavorable. Il mesure la maîtrise des dépenses du centre.

Écart sur activité : budget flexible moins heures réelles fois coût standard, 10 240 000 − 10 000 000 = 240 000 FCFA défavorable. Il mesure le coût de la sous-activité : 200 heures non travaillées, à 1 200 FCFA de charges fixes par heure.

Écart sur rendement : (heures réelles − heures standard) × coût standard, 200 × 2 000 = 400 000 FCFA défavorable. Les mêmes heures en trop qu''en MOD, puisque l''unité d''œuvre est l''heure de MOD.

Total : 700 000 FCFA défavorable, soit bien 10 300 000 − 9 600 000. Vérification d''ensemble : −90 000 + 980 000 + 700 000 = 1 590 000 FCFA. Le compte est bon.

## 62:00 – 74:00 · Écarts sur marge

Passons au commercial. Prix prévu 9 000, réel 9 200. Marge standard par pot : 3 800. Marge prévue : 39 520 000. Marge réelle valorisée au coût standard : 38 400 000. Écart sur marge : 1 120 000 FCFA défavorable.

Décomposition. Écart sur prix : 200 FCFA de plus sur 9 600 pots, 1 920 000 FCFA favorable. Écart sur quantité : 800 pots de moins, à 3 800 de marge, 3 040 000 FCFA défavorable.

Pourquoi valoriser au coût standard ? Pour ne pas faire porter au commercial les dérives de la production. Rapprochement final : résultat réel 36 810 000, résultat prévu 39 520 000, différence −2 710 000 = écart sur marge −1 120 000 moins écart sur coûts 1 590 000.

## 74:00 – 78:00 · Un mot sur l''écart de composition

Quand une entreprise vend plusieurs produits, l''écart sur quantité peut lui-même se décomposer. Imaginez que Sénégal Peinture vende des pots de 5 litres, très rentables, et des pots de 1 litre, moins rentables. Si le volume total est conforme au budget mais que la part des pots de 1 litre augmente, la marge baisse : c''est un écart de composition, ou écart de mix. Il se calcule en comparant la marge des quantités réelles avec la marge qu''auraient données ces mêmes quantités totales réparties selon la composition prévue. Ce raffinement est surtout traité en Licence 3 ou en Master, mais il est utile d''en connaître le principe pour une question de réflexion.

## 78:00 – 84:00 · Du calcul à l''action

Le contrôleur ne s''arrête pas aux chiffres. Visuel : tableau responsable / écart / action. Production : surconsommation de matière et heures en trop, action sur les réglages et la formation. Achats : bon prix, mais vérifier la qualité de la matière. Ressources humaines : taux horaire en hausse, vérifier les heures supplémentaires. Commercial : prix plus élevé mais volumes en baisse, mesurer l''élasticité. Un écart significatif se signale vite, avec un seuil d''alerte, par exemple 5 % du standard : c''est la gestion par exception.

## 84:00 – 90:00 · Synthèse et évaluation finale

Synthèse : un écart global se décompose toujours en écarts élémentaires dont la somme doit redonner le total. Matières et main-d''œuvre : prix ou taux, puis quantité ou rendement. Charges indirectes : budget, activité, rendement. Commercial : prix et quantité. Et chaque écart a un responsable.

- Question 1 : quel coût compare-t-on au coût réel ? Réponse : le coût standard de la production réelle.
- Question 2 : prix réel 1 200, standard 1 250, 3 000 kg réels ; écart sur prix ? Réponse : 150 000 favorable.
- Question 3 : charges fixes 3 millions, activité normale 1 500 h, activité réelle 1 350 h ; écart sur activité ? Réponse : 2 000 × 150 = 300 000 défavorable.
- Question 4 : prix de vente réel 1 000, prévu 950, 2 000 unités vendues ; écart sur prix de vente ? Réponse : 100 000 favorable.
- Question 5 : qui est responsable de l''écart sur quantité de matière ? Réponse : en principe le responsable de production, sauf si la surconsommation vient d''une matière de mauvaise qualité imposée par les achats.

Merci à tous pour votre attention et votre participation. Refaites le cas Sénégal Peinture en 40 minutes, sans notes et sans calculatrice programmable, puis rédigez la note au directeur demandée dans la leçon : c''est souvent la question qui fait la différence entre une copie moyenne et une très bonne copie.', 'video', 90, false, 80
from public.courses c where c.slug = 'lic-cg-l2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Analyse des écarts');

-- Cours : Contrôle de gestion Licence 3 : réussir ses examens
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'lic-cg-l3', (select id from public.levels where name = 'Licence 3'), null, 'Contrôle de gestion', 'Contrôle de gestion Licence 3 : réussir ses examens', 'Préparation aux partiels et examens semestriels de troisième année de Licence en contrôle de gestion : méthode ABC et coût cible, tableaux de bord et balanced scorecard, contrôle de gestion des PME et du secteur public, prix de cession interne. Fiches, cas d''entreprises et d''organisations fictives d''Afrique de l''Ouest, sujet type corrigé et trois cours vidéo de 1h30. Prérequis : coûts complets et partiels, budgets et analyse des écarts (L1 et L2).', true, 333
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Réussir ses examens de Licence 3 en Contrôle de gestion', '## Objectifs de la leçon

- Situer la troisième année de Licence en contrôle de gestion et ses enjeux (diplôme, poursuite en Master, insertion).
- Identifier les matières clés de l''année et les attentes des correcteurs.
- Adopter une méthode de révision qui combine calcul et analyse critique.
- Planifier six semaines de révision.

## 1. La Licence 3 dans le système LMD

La Licence 3 conclut le premier cycle du système LMD. Ses deux semestres sont organisés en unités d''enseignement créditées ; l''obtention de l''ensemble des crédits de la Licence donne le diplôme. Beaucoup de parcours prévoient aussi un stage ou un mémoire de fin de cycle. Les règles précises (crédits, compensation, rattrapage, poids du stage, conditions d''admission en Master) relèvent du règlement de votre établissement : consultez-le dès la rentrée, car les dossiers de candidature en Master s''appuient souvent sur les résultats de Licence 3.

## 2. Les matières clés de l''année

En Licence 3, le contrôle de gestion devient stratégique et s''ouvre à des contextes variés. Ce cours traite trois matières :

- Méthode ABC et coût cible : limites des coûts complets traditionnels, activités et inducteurs, calcul des coûts par activités, gestion par les activités, coût cible (target costing) et analyse de la valeur.
- Tableaux de bord et indicateurs de performance : conception d''un tableau de bord, choix des indicateurs, balanced scorecard (tableau de bord prospectif) et carte stratégique, pilotage par les feux de signalisation.
- Contrôle de gestion des PME et du secteur public, prix de cession interne : spécificités des PME, budget-programme et performance publique dans l''espace UEMOA, centres de profit et d''investissement, prix de cession interne, ROI et résultat résiduel.

Ces matières mobilisent tout l''acquis de L1 et L2 : coûts complets et partiels, budgets, écarts. Elles dialoguent avec la stratégie, la finance d''entreprise et le management des organisations.

## 3. Ce que les correcteurs attendent

En L3, le calcul juste ne suffit plus : on attend un regard critique. Pour la méthode ABC, il faut savoir calculer, mais aussi expliquer pourquoi les résultats diffèrent de la méthode traditionnelle et ce que l''entreprise doit en faire. Pour le tableau de bord, il faut justifier le choix d''un indicateur au regard de la stratégie. Pour les prix de cession interne, il faut montrer l''effet sur le comportement des responsables de division, pas seulement sur les chiffres.

Types d''épreuves fréquents :

- Cas pratique de synthèse : une entreprise ou un groupe fictif, plusieurs dossiers (coûts par activités, coût cible, tableau de bord, prix de cession).
- Exercices chiffrés : coût d''un inducteur, résultat par division selon le prix de cession, ROI et résultat résiduel.
- Dissertation : « Le balanced scorecard est-il adapté aux PME africaines ? », « Peut-on piloter la performance d''un service public ? ».
- Commentaire de document : un article ou un extrait de rapport à analyser.
- Projet ou mémoire : conception d''un tableau de bord pour une organisation réelle, souvent lors du stage.

## 4. Méthode de révision

Faites des fiches en deux colonnes : à gauche la méthode (étapes de calcul), à droite les apports et les limites. Par exemple : méthode ABC, étapes (identifier les activités, rattacher les ressources, choisir les inducteurs, calculer le coût unitaire de chaque inducteur, affecter aux produits) ; apports (meilleure traçabilité des charges indirectes, révélation des subventions croisées entre produits) ; limites (coût de mise en place, subjectivité des rattachements, charges de structure difficiles à rattacher).

Pour les dissertations, préparez une banque d''exemples sénégalais et africains fictifs mais réalistes : une PME agroalimentaire de Thiès, une institution de microfinance, un hôpital régional, une commune, un groupe industriel à plusieurs divisions. Préparez aussi quelques références d''auteurs bien identifiées (Kaplan et Norton pour le balanced scorecard ; Cooper et Kaplan pour la méthode ABC), sans inventer de citations.

## 5. Plan de révision sur 6 semaines

- Semaine 1 : méthode ABC, 3 cas de calcul et 1 comparaison avec la méthode des centres d''analyse.
- Semaine 2 : coût cible et analyse de la valeur ; 2 cas ; 1 dissertation sur le pilotage par les coûts.
- Semaine 3 : tableaux de bord et balanced scorecard ; construire un tableau de bord complet pour une entreprise de votre choix.
- Semaine 4 : contrôle de gestion des PME et du secteur public ; prix de cession interne, ROI et résultat résiduel ; 3 cas.
- Semaine 5 : sujet type complet en 3 heures, puis correction et carnet d''erreurs.
- Semaine 6 : deuxième sujet type, révision des fiches, entraînement aux introductions de dissertation.

## 6. Le jour J

Lisez le sujet entièrement ; identifiez les dossiers indépendants ; gérez votre temps selon le barème. Dans les dossiers de calcul, présentez des tableaux propres et vérifiez toujours un total (la somme des coûts par activités redonne les charges indirectes ; la somme des résultats des divisions redonne le résultat du groupe). Réservez du temps aux questions de commentaire : elles valent souvent autant de points que les calculs et départagent les copies.

## Points clés

- La L3 est l''année de la synthèse et de l''esprit critique.
- Trois matières : ABC et coût cible ; tableaux de bord et balanced scorecard ; PME, secteur public et prix de cession interne.
- Toujours un total de contrôle et un commentaire.

## Exercices

- Exercice 1 : rédigez la fiche « méthode ABC » en deux colonnes.
- Exercice 2 : proposez une problématique et un plan pour la dissertation « Le balanced scorecard est-il adapté aux PME africaines ? ».
- Exercice 3 : quels totaux de contrôle utiliser dans un exercice sur les prix de cession interne ?

## Corrigé

- Exercice 1 : voir la section 4 ; ajoutez la formule « coût unitaire de l''inducteur = coût de l''activité / volume de l''inducteur ».
- Exercice 2 : problématique, un outil conçu pour de grandes entreprises peut-il être utile à des structures aux ressources limitées ? Plan : I. Un outil pertinent pour clarifier la stratégie et équilibrer les indicateurs ; II. Des conditions d''adaptation : peu d''indicateurs, données simples, implication du dirigeant.
- Exercice 3 : la somme des résultats des divisions égale le résultat du groupe, quel que soit le prix de cession (tant que les volumes ne changent pas) ; les achats internes de l''une égalent les ventes internes de l''autre.', 'texte', 45, true, 10
from public.courses c where c.slug = 'lic-cg-l3'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Réussir ses examens de Licence 3 en Contrôle de gestion');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Méthode ABC et coût cible : l''essentiel pour l''examen', '## Objectifs de la leçon

- Expliquer les limites de la méthode des centres d''analyse et les principes de la méthode ABC.
- Calculer des coûts par activités et les comparer aux coûts traditionnels.
- Déterminer un coût cible et l''effort de réduction de coût à fournir.

## 1. Pourquoi la méthode ABC ?

La méthode des centres d''analyse impute les charges indirectes avec des unités d''œuvre souvent liées au volume (heures de MOD, heures machine). Or, dans les entreprises modernes, une part croissante des charges indirectes dépend de la diversité et de la complexité : nombre de références, de lots, de commandes, de contrôles. Les produits fabriqués en petites séries, personnalisés, consomment beaucoup de ces ressources mais peu d''heures : la méthode traditionnelle les sous-évalue, et surévalue les produits de grande série. On parle de subventionnement croisé.

La méthode ABC (Activity-Based Costing), formalisée à la fin des années 1980 notamment par Robin Cooper et Robert S. Kaplan, repose sur une idée simple : les produits consomment des activités, et les activités consomment des ressources.

## 2. Vocabulaire et démarche

- Activité : ensemble de tâches homogènes (régler une machine, traiter une commande, contrôler un lot).
- Inducteur de coût : facteur qui explique la consommation de ressources par l''activité (nombre de lots, de commandes).
- Processus : enchaînement d''activités orienté vers un résultat (traiter une commande client de bout en bout).

Démarche : 1) identifier les activités ; 2) affecter les charges indirectes aux activités ; 3) choisir un inducteur par activité ; 4) calculer le coût unitaire de l''inducteur = coût de l''activité / volume de l''inducteur ; 5) affecter aux produits selon leur consommation d''inducteurs. Les activités de même inducteur forment des centres de regroupement.

## 3. Cas : Afrik Emballages (entreprise fictive, Dakar)

L''entreprise fabrique des sacs standard (S) et des sacs personnalisés (P). Données du mois :

- Production et ventes : 100 000 sacs S à 550 FCFA ; 20 000 sacs P à 1 200 FCFA.
- Coûts directs unitaires (matière et MOD) : S 300 FCFA ; P 450 FCFA.
- Charges indirectes : 30 000 000 FCFA. MOD : 0,02 h par sac S (2 000 h au total), 0,05 h par sac P (1 000 h).

Méthode traditionnelle (unité d''œuvre heure de MOD) : 30 000 000 / 3 000 = 10 000 FCFA l''heure. S reçoit 20 000 000 FCFA, soit 200 FCFA par sac ; P reçoit 10 000 000, soit 500 FCFA. Coûts complets : S 500 FCFA ; P 950 FCFA.

Méthode ABC :

- Réglage des machines : 9 000 000 FCFA ; inducteur nombre de lots ; volume 90 (S 20, P 70) ; coût de l''inducteur 100 000 FCFA.
- Gestion des commandes : 6 000 000 FCFA ; inducteur nombre de commandes ; volume 300 (S 50, P 250) ; coût de l''inducteur 20 000 FCFA.
- Contrôle qualité : 4 500 000 FCFA ; inducteur nombre de contrôles ; volume 150 (S 30, P 120) ; coût de l''inducteur 30 000 FCFA.
- Fabrication : 10 500 000 FCFA ; inducteur heure machine ; volume 3 500 (S 2 500, P 1 000) ; coût de l''inducteur 3 000 FCFA.

- S : 20 × 100 000 + 50 × 20 000 + 30 × 30 000 + 2 500 × 3 000 = 11 400 000 FCFA, soit 114 FCFA par sac ; coût complet 414 FCFA.
- P : 70 × 100 000 + 250 × 20 000 + 120 × 30 000 + 1 000 × 3 000 = 18 600 000 FCFA, soit 930 FCFA par sac ; coût complet 1 380 FCFA.
- Contrôle : 11 400 000 + 18 600 000 = 30 000 000 FCFA.

Comparaison des résultats :

- Méthode traditionnelle : S 5 000 000 FCFA ; P 5 000 000 FCFA.
- Méthode ABC : S 13 600 000 FCFA ; P −3 600 000 FCFA.

Le résultat total est le même (10 000 000 FCFA), mais la lecture s''inverse : P, qu''on croyait le plus rentable par unité (250 FCFA de marge contre 50 pour S), perd de l''argent, car il consomme beaucoup de réglages et de commandes. Décisions possibles : relever le prix de P, imposer des quantités minimales par commande, réduire le coût des réglages (formation, outillage rapide), ou réorienter l''effort commercial vers S. C''est le passage de l''ABC à l''ABM (Activity-Based Management) : agir sur les activités et leurs inducteurs.

## 4. Le coût cible

La logique traditionnelle part du coût : prix = coût + marge. Le coût cible (target costing), développé dans l''industrie japonaise, inverse le raisonnement : coût cible = prix accepté par le marché − marge souhaitée. Il s''applique surtout en phase de conception, où l''essentiel des coûts futurs est déterminé.

Cas : Afrik Emballages conçoit un sac biodégradable. L''étude de marché indique un prix acceptable de 800 FCFA ; la direction exige une marge de 15 % du prix. Coût cible = 800 × (1 − 0,15) = 680 FCFA. Le bureau d''études estime le coût actuel du projet à 760 FCFA :

- matière : 380 FCFA (50,0 % du coût estimé).
- fabrication : 220 FCFA (28,9 % du coût estimé).
- conditionnement : 60 FCFA (7,9 % du coût estimé).
- distribution : 100 FCFA (13,2 % du coût estimé).

Écart à combler : 760 − 680 = 80 FCFA, soit 10,5 % du coût estimé. L''équipe projet (conception, achats, production, marketing) recourt à l''analyse de la valeur : identifier les fonctions attendues par le client (contenir, résister à l''humidité, afficher la marque, se dégrader), estimer leur importance et allouer le coût cible entre les composants en proportion. On cherche ensuite des solutions : matière alternative, simplification de l''impression, emballage groupé. Si l''écart ne peut être comblé, le projet est revu ou abandonné.

## Points clés

- ABC : les produits consomment des activités, qui consomment des ressources.
- Coût de l''inducteur = coût de l''activité / volume de l''inducteur.
- Coût cible = prix de marché − marge cible ; il pilote la conception.

## Exercices pratiques

- Exercice 1 : l''activité « réception des marchandises » coûte 2 400 000 FCFA pour 160 réceptions. Calculez le coût de l''inducteur et le coût imputé à un produit nécessitant 25 réceptions.
- Exercice 2 : dans le cas Afrik Emballages, quel prix de P permettrait une marge de 10 % du prix en ABC ?
- Exercice 3 : le nombre de lots de P passe de 70 à 40 grâce à des commandes groupées, et le coût de l''activité réglage baisse en proportion du nombre total de lots. Calculez le nouveau coût ABC unitaire de P.
- Exercice 4 : un produit a un prix de marché de 15 000 FCFA ; marge cible 20 % ; coût estimé 13 200 FCFA. Calculez le coût cible et l''effort de réduction.
- Exercice 5 (cas pratique) : rédigez une note au directeur d''Afrik Emballages présentant les résultats ABC et trois recommandations.

## Corrigé

- Exercice 1 : 2 400 000 / 160 = 15 000 FCFA par réception ; 25 × 15 000 = 375 000 FCFA.
- Exercice 2 : prix p tel que p − 1 380 = 0,10 p, soit p = 1 380 / 0,9 ≈ 1 533 FCFA.
- Exercice 3 : total des lots 60 ; coût de l''activité = 9 000 000 × 60 / 90 = 6 000 000 FCFA, toujours 100 000 FCFA par lot ; P reçoit 40 × 100 000 = 4 000 000 au lieu de 7 000 000 ; charges ABC de P = 15 600 000 FCFA, soit 780 FCFA par sac ; coût complet 1 230 FCFA. P redevient rentable à 1 200 FCFA.
- Exercice 4 : coût cible = 15 000 × 0,8 = 12 000 FCFA ; effort = 1 200 FCFA, soit 9,1 % du coût estimé.
- Exercice 5 : constat (P déficitaire de 3 600 000 FCFA, S bénéficiaire de 13 600 000 FCFA en ABC) ; causes (forte consommation de réglages, de commandes et de contrôles par P) ; recommandations (prix de P ou facturation des petites commandes, réduction des temps de réglage, quantité minimale de commande).', 'texte', 60, false, 20
from public.courses c where c.slug = 'lic-cg-l3'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Méthode ABC et coût cible : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Tableaux de bord et indicateurs de performance (balanced scorecard) : l''essentiel pour l''examen', '## Objectifs de la leçon

- Distinguer tableau de bord, reporting et budget.
- Choisir des indicateurs pertinents et construire un tableau de bord.
- Présenter le balanced scorecard et la carte stratégique.
- Calculer et interpréter des indicateurs avec un système de feux.

## 1. Le tableau de bord : définition et rôles

Un tableau de bord est un ensemble restreint d''indicateurs, financiers et non financiers, conçu pour permettre à un responsable de suivre la réalisation de ses objectifs et de réagir vite. Il se distingue du reporting, qui remonte des informations vers la hiérarchie, souvent financières et périodiques, et du budget, qui fixe des objectifs chiffrés annuels. Le tableau de bord est un outil d''aide au pilotage, propre à chaque responsable.

Qualités d''un bon tableau de bord : peu d''indicateurs (une dizaine au plus), rapidité de production, lisibilité (graphiques, feux), lien avec les objectifs et les leviers d''action du responsable, comparaison avec une référence (objectif, période précédente).

## 2. Les indicateurs

Un indicateur est une information chiffrée qui renseigne sur l''atteinte d''un objectif. On distingue :

- Indicateurs de résultat (a posteriori : chiffre d''affaires, marge) et indicateurs de pilotage ou avancés (a priori : taux de livraisons à l''heure, qui annonce la satisfaction future).
- Indicateurs financiers et non financiers (qualité, délais, satisfaction, compétences).
- Indicateurs d''efficacité, d''efficience, de qualité.

Un bon indicateur est pertinent (lié à un objectif), mesurable à un coût raisonnable, compréhensible, maîtrisable par le responsable et assorti d''une cible (méthode SMART : spécifique, mesurable, atteignable, réaliste, temporellement défini).

## 3. Le balanced scorecard

Proposé au début des années 1990 par Robert S. Kaplan et David P. Norton, le balanced scorecard (tableau de bord prospectif ou équilibré) répond à une critique : les indicateurs financiers sont tardifs et poussent au court terme. Il traduit la stratégie en objectifs et indicateurs selon quatre axes :

- Financier : comment satisfaire les actionnaires ? (rentabilité, croissance, trésorerie)
- Clients : comment les clients nous perçoivent-ils ? (satisfaction, fidélité, part de marché)
- Processus internes : dans quels processus exceller ? (qualité, délais, coûts)
- Apprentissage organisationnel : comment progresser ? (compétences, systèmes d''information, climat social)

La carte stratégique relie les objectifs par des relations de cause à effet. Schéma décrit pour un distributeur : en bas, « former les livreurs et équiper les camions de GPS » (apprentissage) ; au-dessus, « livrer à l''heure et sans casse » (processus) ; au-dessus, « clients satisfaits et fidèles » (clients) ; en haut, « croissance du chiffre d''affaires et de la marge » (financier). Des flèches montent d''un niveau à l''autre.

Pour une organisation publique ou associative, on place souvent les bénéficiaires et la mission en haut de la carte, à la place de l''axe financier.

## 4. Cas : Sahel Distribution (entreprise fictive, Dakar)

Distributeur de produits laitiers, Sahel Distribution suit chaque mois un tableau de bord prospectif. Règle des feux : vert si l''objectif est atteint ; orange si l''écart relatif à l''objectif ne dépasse pas 10 % ; rouge au-delà. Tableau de bord du mois de mars :

- Financier · Chiffre d''affaires du mois : objectif 250 000 000 FCFA ; réel 235 000 000 FCFA (relevé des ventes) ; feu orange.
- Financier · Taux de marge brute : objectif 22,0 % ; réel 20,5 % (marge brute 48 175 000 / CA 235 000 000) ; feu orange.
- Financier · Délai moyen de paiement clients (jours) : objectif 30 jours ; réel 36 jours (créances 282 000 000 / CA 235 000 000 × 30) ; feu rouge.
- Clients · Taux de livraisons à l''heure : objectif 95,0 % ; réel 92,1 % (4 420 livraisons à l''heure / 4 800) ; feu orange.
- Clients · Taux de réclamation : objectif 1,0 % ; réel 0,9 % (43 réclamations / 4 800 livraisons) ; feu vert.
- Processus internes · Taux de casse : objectif 0,8 % ; réel 1,1 % (1 650 cartons endommagés / 150 000 livrés) ; feu rouge.
- Processus internes · Couverture du stock (jours) : objectif 10 jours ; réel 9 jours (stock moyen 56 047 500 / coût des ventes 186 825 000 × 30) ; feu vert.
- Apprentissage · Heures de formation par salarié (trimestre) : objectif 6,0 h ; réel 5,7 h (684 heures / 120 salariés) ; feu orange.
- Apprentissage · Taux d''absentéisme : objectif 3,0 % ; réel 5,0 % (1 008 heures d''absence / 20 160 heures théoriques, soit 120 salariés × 168 heures) ; feu rouge.

Lecture. Aucun feu rouge n''est isolé : le délai de paiement clients (36 jours) pèse sur la trésorerie ; la casse (1,1 %) et l''absentéisme (5,0 %) se renforcent probablement (livreurs remplaçants moins expérimentés, manutention plus brutale), ce qui rejoint le taux de livraisons à l''heure en orange. Selon la carte stratégique, ces difficultés dans les processus et l''apprentissage annoncent une dégradation des résultats financiers : le chiffre d''affaires et la marge sont déjà en orange. Actions : plan de relance des créances ; enquête sur l''absentéisme ; formation à la manutention ; suivi hebdomadaire de la casse par tournée.

## 5. Limites et conditions de réussite

Le balanced scorecard peut devenir une usine à gaz (trop d''indicateurs), les relations de cause à effet sont des hypothèses à tester, et les indicateurs peuvent produire des comportements opportunistes (manipuler un indicateur au lieu d''améliorer la performance). Conditions de réussite : implication de la direction, déclinaison par niveaux hiérarchiques, mise à jour régulière, lien avec le dialogue de gestion plutôt qu''avec la sanction.

## Points clés

- Un tableau de bord : peu d''indicateurs, liés aux objectifs et aux leviers d''action.
- Balanced scorecard : quatre axes reliés par une carte stratégique de cause à effet.
- Feux de signalisation : lecture rapide, mais l''analyse des liens entre indicateurs reste indispensable.

## Exercices pratiques

- Exercice 1 : distinguez tableau de bord et reporting.
- Exercice 2 : classez dans les axes du balanced scorecard : taux de fidélisation, nombre de jours de formation, délai de traitement d''une commande, rentabilité des capitaux.
- Exercice 3 : une agence de microfinance fictive a accordé 1 240 crédits pour un objectif de 1 300 ; 62 sont en retard de plus de 30 jours. Calculez le taux de réalisation, le taux de retard et attribuez les feux (objectif de retard : 4 % au plus).
- Exercice 4 : proposez deux indicateurs avancés pour un hôtel.
- Exercice 5 (cas pratique) : proposez une carte stratégique simplifiée (un objectif par axe) pour une clinique privée de Thiès, avec un indicateur par objectif.

## Corrigé

- Exercice 1 : le tableau de bord sert au pilotage par le responsable lui-même, avec des indicateurs variés et rapides ; le reporting remonte vers la hiérarchie des informations surtout financières pour rendre compte.
- Exercice 2 : clients ; apprentissage ; processus internes ; financier.
- Exercice 3 : réalisation = 1 240 / 1 300 = 95,4 %, feu orange (écart relatif de 4,6 %) ; retard = 62 / 1 240 = 5,0 %, feu rouge : l''écart n''est que d''un point, mais il représente 25 % de l''objectif de 4 %.
- Exercice 4 : taux de réservation à 30 jours ; note de satisfaction des clients en cours de séjour.
- Exercice 5 : financier, rentabilité (marge par patient) ; clients, satisfaction des patients (taux de satisfaction en enquête de sortie) ; processus, réduire l''attente (délai moyen avant consultation) ; apprentissage, compétences du personnel (heures de formation par soignant).', 'texte', 60, false, 30
from public.courses c where c.slug = 'lic-cg-l3'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Tableaux de bord et indicateurs de performance (balanced scorecard) : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Contrôle de gestion des PME et du secteur public, prix de cession interne : l''essentiel pour l''examen', '## Objectifs de la leçon

- Adapter les outils du contrôle de gestion aux PME.
- Comprendre le contrôle de gestion dans le secteur public et la logique du budget-programme.
- Évaluer des centres de profit et d''investissement (ROI, résultat résiduel).
- Choisir et analyser un prix de cession interne.

## 1. Le contrôle de gestion dans les PME

Les PME, majoritaires dans le tissu économique sénégalais, ont des caractéristiques propres : rôle central du dirigeant, peu de cadres fonctionnels, information souvent informelle, comptabilité parfois externalisée, forte sensibilité à la trésorerie. Le contrôle de gestion doit y être simple, rapide et orienté vers l''action.

Outils adaptés : un tableau de bord de cinq à huit indicateurs (chiffre d''affaires, marge, trésorerie, créances clients, stock, carnet de commandes), un budget de trésorerie glissant, un calcul de coût de revient par produit ou par chantier, le seuil de rentabilité. Le tableur suffit souvent.

Exemple d''analyse simple et puissante : la concentration du chiffre d''affaires (loi de Pareto). Une PME de Kaolack réalise 100 millions de FCFA avec cinq clients :

- client 1 : 45 millions de FCFA, cumul 45 %.
- client 2 : 25 millions de FCFA, cumul 70 %.
- client 3 : 15 millions de FCFA, cumul 85 %.
- client 4 : 10 millions de FCFA, cumul 95 %.
- client 5 : 5 millions de FCFA, cumul 100 %.

Deux clients font 70 % du chiffre d''affaires : la dépendance est forte. Le dirigeant doit suivre ces clients de près (délais de paiement, satisfaction) et diversifier sa clientèle.

## 2. Le contrôle de gestion dans le secteur public

Les administrations, collectivités territoriales, établissements publics (hôpitaux, universités) ne cherchent pas le profit mais l''accomplissement d''une mission d''intérêt général avec des ressources budgétaires limitées. Dans l''espace UEMOA, le cadre harmonisé des finances publiques a promu la gestion budgétaire axée sur les résultats : les crédits sont présentés par programmes, chacun confié à un responsable de programme, avec des objectifs et des indicateurs de performance, et des rapports annuels de performance. Les modalités et calendriers de mise en œuvre relèvent des textes de chaque État.

Trois dimensions de la performance publique sont habituellement distinguées : l''efficacité socio-économique (impact pour le citoyen), la qualité du service rendu (point de vue de l''usager) et l''efficience de la gestion (point de vue du contribuable).

Exemple : programme « Éducation de base » d''une commune fictive de la région de Thiès. Crédits ouverts : 1 200 000 000 FCFA ; engagements : 1 080 000 000 FCFA ; ordonnancements : 930 000 000 FCFA.

- Taux d''engagement = 1 080 000 000 / 1 200 000 000 = 90,0 % ; taux d''exécution (ordonnancements / crédits) = 77,5 %.
- Efficacité : 18 salles de classe construites sur 24 prévues, soit 75 %.
- Efficience : dépenses de construction 486 000 000 FCFA, soit 27 000 000 FCFA par salle contre 25 000 000 prévus (8,0 %).

Une forte exécution budgétaire ne prouve pas la performance : le contrôle de gestion public doit relier les dépenses aux réalisations et aux effets (taux de scolarisation, effectifs par classe).

## 3. Centres de profit et d''investissement : ROI et résultat résiduel

Le ROI (return on investment, rentabilité des capitaux investis) = résultat de la division / capitaux investis. Le résultat résiduel (RR) = résultat − taux de rémunération exigé × capitaux investis. Le RR évite un effet pervers du ROI : un responsable qui affiche un ROI élevé peut refuser un projet rentable pour le groupe s''il fait baisser son ratio.

## 4. Le prix de cession interne

Quand une division vend à une autre division du même groupe, le prix de cession interne (PCI) détermine le partage du résultat entre elles. Il ne modifie pas le résultat du groupe tant que les volumes ne changent pas, mais il influence les décisions des responsables et leur évaluation.

Méthodes : prix du marché (si un marché existe), coût variable, coût complet, coût majoré d''une marge, prix négocié. Fourchette de négociation : le prix plancher pour la division vendeuse est son coût variable si elle a de la capacité disponible, ou le prix de marché diminué des frais commerciaux économisés si elle est saturée ; le prix plafond pour la division acheteuse est le prix auquel elle pourrait s''approvisionner à l''extérieur.

Cas : le groupe fictif Sénégal Agro comprend une Huilerie et une division Conditionnement. L''Huilerie produit 900 000 litres d''huile en vrac : 600 000 cédés au Conditionnement et 300 000 vendus à l''extérieur à 850 FCFA ; coût variable 600 FCFA le litre ; charges fixes 135 000 000 FCFA (coût complet 750 FCFA le litre). Le Conditionnement embouteille et vend l''huile à 1 400 FCFA le litre, avec un coût variable propre de 250 FCFA et des charges fixes de 60 000 000 FCFA.

- PCI = 600 FCFA (coût variable) : résultat de l''Huilerie −60 000 000 ; résultat du Conditionnement 270 000 000 ; groupe 210 000 000 FCFA.
- PCI = 750 FCFA (coût complet) : résultat de l''Huilerie 30 000 000 ; résultat du Conditionnement 180 000 000 ; groupe 210 000 000 FCFA.
- PCI = 850 FCFA (prix du marché) : résultat de l''Huilerie 90 000 000 ; résultat du Conditionnement 120 000 000 ; groupe 210 000 000 FCFA.

Le résultat du groupe (210 000 000 FCFA) ne dépend pas du PCI. Au coût variable, l''Huilerie est en perte et son responsable est démotivé ; au prix du marché, la performance de chaque division est comparable à celle d''une entreprise indépendante. Si l''Huilerie est saturée et économise 30 FCFA de frais commerciaux par litre cédé en interne, le PCI plancher est 820 FCFA.

Évaluation au prix du marché, capitaux investis 600 000 000 FCFA (Huilerie) et 400 000 000 FCFA (Conditionnement), taux exigé 12 % (fictif) :

- Huilerie : ROI = 90 000 000 / 600 000 000 = 15 % ; RR = 90 000 000 − 12 % × 600 000 000 = 18 000 000 FCFA.
- Conditionnement : ROI = 30 % ; RR = 72 000 000 FCFA.
- Projet de 50 000 000 FCFA au Conditionnement rapportant 10 000 000 FCFA (20 %) : le ROI de la division tomberait à 28,9 %, ce qui pourrait inciter son responsable à refuser ; le RR passerait à 76 000 000 FCFA (+4 000 000), signalant un projet créateur de valeur.

## Points clés

- PME : peu d''outils, simples, centrés sur la trésorerie et la marge.
- Secteur public : budget-programme, performance en efficacité, qualité, efficience.
- PCI : neutre pour le groupe, décisif pour les divisions ; fourchette entre plancher et plafond.

## Exercices pratiques

- Exercice 1 : citez trois spécificités des PME qui influencent leur contrôle de gestion.
- Exercice 2 : un hôpital régional fictif dispose de 800 millions de FCFA de crédits et en a ordonnancé 600 millions. Taux d''exécution ? Pourquoi est-ce insuffisant pour juger sa performance ?
- Exercice 3 : avec un PCI de 800 FCFA, calculez les résultats des deux divisions de Sénégal Agro.
- Exercice 4 : une division a un résultat de 30 millions pour 200 millions de capitaux ; taux exigé 12 % (fictif). ROI et RR ?
- Exercice 5 (cas pratique) : le responsable du Conditionnement veut acheter l''huile à l''extérieur à 820 FCFA. L''Huilerie, non saturée, ne peut pas vendre davantage à l''extérieur. Quel est l''intérêt du groupe ?

## Corrigé

- Exercice 1 : rôle central du dirigeant ; peu de personnel administratif ; priorité à la trésorerie ; information informelle.
- Exercice 2 : 600 / 800 = 75 %. Il faut rapporter les dépenses aux réalisations (actes, patients soignés) et aux effets (qualité des soins, délais d''attente).
- Exercice 3 : Huilerie 60 000 000 FCFA ; Conditionnement 150 000 000 FCFA ; total 210 000 000 FCFA.
- Exercice 4 : ROI = 15 % ; RR = 30 − 24 = 6 millions de FCFA.
- Exercice 5 : pour le groupe, produire en interne coûte 600 FCFA variables par litre, contre 820 FCFA à l''extérieur ; l''achat externe ferait perdre 132 000 000 FCFA au groupe (600 000 × 220). Il faut fixer un PCI inférieur ou égal à 820 FCFA, négocié entre 600 et 820 FCFA.', 'texte', 60, false, 40
from public.courses c where c.slug = 'lic-cg-l3'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Contrôle de gestion des PME et du secteur public, prix de cession interne : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Sujet type d''examen de Licence 3 en Contrôle de gestion (corrigé)', '## Présentation du sujet

Sujet d''entraînement de Licence 3, contrôle de gestion. Durée : 3 heures ; calculatrice autorisée ; documents interdits. Sujet non officiel ; barème indicatif, non officiel. Entreprises fictives ; montants hors taxes.

## Dossier 1 · Méthode ABC (6 points)

Ndiaye Équipements fabrique un modèle standard A (10 000 unités) et un modèle sur mesure B (2 000 unités). Charges indirectes : 14 400 000 FCFA, réparties en activités :

- Approvisionnement : 3 600 000 FCFA ; inducteur nombre de références commandées ; A 20, B 40.
- Réglages : 4 800 000 FCFA ; inducteur nombre de lots ; A 10, B 30.
- Assemblage : 6 000 000 FCFA ; inducteur heure machine ; A 2 000, B 1 000.

- 1.1 (3 pts) Calculez le coût des inducteurs et les charges indirectes par produit et par unité.
- 1.2 (1,5 pt) Comparez avec une imputation traditionnelle sur les heures machine.
- 1.3 (1,5 pt) Commentez.

## Dossier 2 · Coût cible (3 points)

Pour un nouveau modèle, le prix de marché est de 25 000 FCFA ; la marge cible est de 20 % du prix ; le coût estimé est de 23 000 FCFA.

- 2.1 (1,5 pt) Calculez le coût cible et l''écart à combler.
- 2.2 (1,5 pt) Présentez deux démarches pour le combler.

## Dossier 3 · Tableau de bord (5 points)

- 3.1 (2 pts) Présentez les quatre axes du balanced scorecard.
- 3.2 (3 pts) Proposez, pour Ndiaye Équipements, un objectif et un indicateur par axe, et expliquez les liens de cause à effet.

## Dossier 4 · Prix de cession interne (6 points)

La division Filature cède 120 000 mètres de fil à la division Tissage et en vend 50 000 à l''extérieur à 600 FCFA. Coût variable de la Filature : 400 FCFA le mètre ; charges fixes : 20 000 000 FCFA. Le Tissage transforme chaque mètre et vend le produit 1 500 FCFA, avec un coût variable propre de 450 FCFA et des charges fixes de 25 000 000 FCFA.

- 4.1 (3 pts) Calculez le résultat de chaque division et du groupe pour un PCI de 500 FCFA puis de 600 FCFA.
- 4.2 (1,5 pt) Quelle est la fourchette de négociation si la Filature a de la capacité disponible ?
- 4.3 (1,5 pt) Quel PCI recommandez-vous ? Justifiez.

## Corrigé détaillé

Dossier 1.

- 1.1 : coûts des inducteurs : 60 000 FCFA par référence ; 120 000 FCFA par lot ; 2 000 FCFA par heure machine. A : 20 × 60 000 + 10 × 120 000 + 2 000 × 2 000 = 6 400 000 FCFA, soit 640 FCFA par unité. B : 40 × 60 000 + 30 × 120 000 + 1 000 × 2 000 = 8 000 000 FCFA, soit 4 000 FCFA par unité. Contrôle : 14 400 000 FCFA.
- 1.2 : taux traditionnel 14 400 000 / 3 000 = 4 800 FCFA par heure machine ; A 9 600 000 (960 par unité) ; B 4 800 000 (2 400 par unité).
- 1.3 : la méthode traditionnelle surévalue A et sous-évalue B de 1 600 FCFA par unité : le sur-mesure consomme beaucoup de références et de lots. Il faut revoir le prix de B ou réduire le coût de sa complexité.

Dossier 2.

- 2.1 : coût cible = 25 000 × 0,8 = 20 000 FCFA ; écart = 3 000 FCFA, soit 13,0 % du coût estimé.
- 2.2 : analyse de la valeur (supprimer les fonctions peu valorisées par le client, standardiser des composants) ; négociation avec les fournisseurs associés dès la conception ; simplification du processus de fabrication.

Dossier 3.

- 3.1 : financier, clients, processus internes, apprentissage organisationnel (voir la leçon 3).
- 3.2 : exemple : apprentissage, polyvalence des techniciens (part des techniciens formés à deux postes) ; processus, réduire le temps de réglage (minutes par lot) ; clients, respecter les délais du sur-mesure (taux de livraison dans les délais) ; financier, améliorer la marge de B (marge par unité). Liens : la polyvalence réduit les temps de réglage, ce qui raccourcit les délais, satisfait les clients et améliore la marge.

Dossier 4.

- 4.1 : PCI 500 : Filature 2 000 000 ; Tissage 41 000 000 ; groupe 43 000 000 FCFA. PCI 600 : Filature 14 000 000 ; Tissage 29 000 000 ; groupe 43 000 000 FCFA.
- 4.2 : entre 400 FCFA (coût variable, plancher de la Filature) et 600 FCFA (prix du marché, plafond du Tissage).
- 4.3 : un prix proche du marché (600 FCFA, éventuellement diminué des frais commerciaux économisés) permet d''évaluer chaque division comme une entreprise autonome ; il ne change pas le résultat du groupe.

## Exercices pratiques

- Exercice 1 : dans le dossier 4, quel PCI rend nul le résultat de la Filature ?
- Exercice 2 : pourquoi la méthode ABC est-elle coûteuse à mettre en place ?
- Exercice 3 : donnez un indicateur d''efficience pour une université publique.

## Corrigé

- Exercice 1 : 120 000 × (p − 400) + 10 000 000 − 20 000 000 = 0, soit p = 400 + 10 000 000 / 120 000 = 483,33 FCFA.
- Exercice 2 : il faut analyser les activités (entretiens, relevés de temps), mesurer les inducteurs et mettre à jour régulièrement le modèle.
- Exercice 3 : coût par étudiant diplômé ou coût par étudiant inscrit.', 'texte', 60, false, 50
from public.courses c where c.slug = 'lic-cg-l3'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Sujet type d''examen de Licence 3 en Contrôle de gestion (corrigé)');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Méthode ABC et coût cible', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : étudiants de Licence 3 en contrôle de gestion.
- Objectifs : comprendre les limites des coûts complets traditionnels, calculer des coûts par activités, interpréter les écarts avec la méthode traditionnelle, déterminer un coût cible et organiser la démarche de réduction des coûts.
- Matériel : diaporama, schéma ressources → activités → produits, tableur, calculatrice.
- Prérequis : méthode des centres d''analyse (L1) ; leçon « Méthode ABC et coût cible : l''essentiel pour l''examen ».

## Déroulé minuté

## 00:00 – 05:00 · Ouverture

Bonjour à toutes et à tous. Imaginez un directeur qui pousse son produit le plus rentable sur le papier, et dont les résultats se dégradent année après année. C''est souvent la faute d''un mauvais calcul de coûts. Aujourd''hui, nous apprenons la méthode ABC et le coût cible, deux outils qui ont transformé le contrôle de gestion. Notre fil rouge : Afrik Emballages, fabricant fictif de sacs à Dakar.

## 05:00 – 15:00 · Les limites de la méthode traditionnelle

Visuel : un camembert des coûts d''une entreprise industrielle, avec une part importante de charges indirectes.

En L1, vous avez réparti les charges indirectes dans des centres, puis imputé ces centres aux produits avec des unités d''œuvre comme l''heure de main-d''œuvre directe. Cette logique convient quand les charges indirectes sont faibles et liées au volume. Mais aujourd''hui, une large part des charges indirectes vient de la complexité : régler les machines entre deux séries, gérer de nombreuses références, traiter de petites commandes, contrôler la qualité de produits personnalisés.

Question au public : un sac personnalisé fabriqué en petite série consomme-t-il plus ou moins de réglages par sac qu''un sac standard ? Beaucoup plus. Pourtant, la méthode traditionnelle lui impute des charges en proportion de ses heures de MOD. Résultat : les petites séries sont subventionnées par les grandes séries. C''est le subventionnement croisé.

## 15:00 – 25:00 · Les principes de l''ABC

Visuel : trois blocs reliés par des flèches. Ressources, activités, produits.

La méthode ABC a été formalisée à la fin des années 1980, notamment par Robin Cooper et Robert Kaplan. Son principe : les produits consomment des activités, les activités consomment des ressources. Le vocabulaire : une activité est un ensemble de tâches homogènes ; un inducteur est la cause de la consommation de ressources par l''activité ; un processus est une chaîne d''activités.

Démarche en cinq étapes : identifier les activités, leur affecter les charges, choisir les inducteurs, calculer le coût unitaire de chaque inducteur, affecter aux produits.

## 25:00 – 42:00 · Cas Afrik Emballages : correction commentée

Énoncé : 100 000 sacs standard S et 20 000 sacs personnalisés P ; charges indirectes 30 000 000 FCFA.

Méthode traditionnelle : 2 000 heures de MOD pour S, 1 000 pour P. Taux : 10 000 FCFA par heure. S reçoit 200 FCFA par sac, P 500. Coûts complets : 500 et 950.

Méthode ABC. Réglage : 9 000 000 FCFA pour 90 lots, 100 000 par lot. Commandes : 6 000 000 pour 300 commandes, 20 000 par commande. Contrôle qualité : 4 500 000 pour 150 contrôles, 30 000 par contrôle. Fabrication : 10 500 000 pour 3 500 heures machine, 3 000 par heure.

Pour S : 20 lots, 50 commandes, 30 contrôles, 2 500 heures : 11 400 000 FCFA, soit 114 par sac. Pour P : 70 lots, 250 commandes, 120 contrôles, 1 000 heures : 18 600 000 FCFA, soit 930 par sac. Contrôle : le total redonne 30 000 000.

Coûts complets ABC : S 414, P 1 380. Avec des prix de 550 et 1 200 FCFA, S gagne 13 600 000 FCFA et P perd 3 600 000 FCFA. En méthode traditionnelle, chacun semblait gagner 5 000 000 FCFA. Le résultat global, 10 000 000, est identique : l''ABC ne crée pas de profit, il éclaire sa répartition.

## 42:00 – 48:00 · Pause et quiz

- Question 1 : une activité coûte 3 000 000 FCFA pour 150 commandes ; coût de l''inducteur ? Réponse : 20 000 FCFA.
- Question 2 : l''ABC modifie-t-il le résultat global de l''entreprise ? Réponse : non, seulement sa répartition entre produits.
- Question 3 : quel type de produit la méthode traditionnelle a-t-elle tendance à sous-évaluer ? Réponse : les produits de petite série ou complexes.

## 48:00 – 58:00 · De l''ABC à l''ABM

Calculer ne suffit pas : il faut agir. C''est la gestion par les activités, l''ABM. Trois leviers pour Afrik Emballages. Agir sur le prix : facturer la personnalisation, ou appliquer un supplément pour les petites commandes. Agir sur le volume d''inducteurs : regrouper les commandes en lots plus importants ; si P passe de 70 à 40 lots, son coût unitaire tombe à 1 230 FCFA et il redevient rentable. Agir sur le coût de l''inducteur : former les régleurs, adopter des outillages à changement rapide.

Attention aux limites : coût de mise en place, rattachements parfois subjectifs, charges de structure (direction générale) difficiles à rattacher à une activité. Certaines entreprises utilisent une version simplifiée, fondée sur les temps, plus légère à maintenir. Dans une copie, une bonne réponse sur les limites de l''ABC présente aussi la question de la capacité inutilisée : si l''activité réglage est dimensionnée pour 120 lots et n''en traite que 90, faut-il imputer tout son coût aux produits, ou isoler le coût de la capacité inutilisée, comme on le fait en imputation rationnelle ? Les versions récentes de la méthode recommandent de l''isoler.

## 58:00 – 72:00 · Le coût cible : correction commentée

Changeons de logique. Traditionnellement : prix = coût + marge. Avec le coût cible : coût cible = prix de marché − marge souhaitée. C''est le marché qui commande.

Afrik Emballages conçoit un sac biodégradable. Prix accepté par le marché : 800 FCFA. Marge exigée : 15 %. Coût cible : 680 FCFA. Coût estimé par le bureau d''études : 760 FCFA, dont matière 380, fabrication 220, conditionnement 60, distribution 100. Écart : 80 FCFA, 10,5 % du coût estimé.

Comment combler l''écart ? Par l''analyse de la valeur. On liste les fonctions attendues par le client : contenir, résister à l''humidité, porter la marque, se dégrader. On demande aux clients l''importance relative de chaque fonction. Supposons que l''impression de la marque compte peu pour les clients mais représente un coût élevé : on simplifie l''impression. On travaille avec le fournisseur de matière dès la conception. Le coût cible se décline par composant et chaque équipe reçoit un objectif.

## 72:00 – 82:00 · Exercice d''application corrigé

Énoncé : prix de marché 15 000 FCFA, marge cible 20 %, coût estimé 13 200 FCFA. Calculez le coût cible et l''effort.

Correction : coût cible 15 000 × 0,8 = 12 000 FCFA ; effort de 1 200 FCFA, soit 9,1 % du coût estimé. Si l''équipe réduit la matière de 700 FCFA et la fabrication de 300 FCFA, il reste 200 FCFA à trouver : simplification de l''emballage, ou renégociation de la distribution. Si l''écart reste irréductible, la direction peut accepter une marge plus faible pour un produit stratégique, ou renoncer au lancement.

## 82:00 – 86:00 · Et dans les services ?

La méthode ABC est particulièrement utile dans les services, où presque tous les coûts sont indirects. Prenons une banque fictive de Dakar. Ses activités : ouvrir des comptes, instruire des crédits, traiter des opérations au guichet, gérer des réclamations. Les inducteurs : nombre de comptes ouverts, nombre de dossiers de crédit, nombre d''opérations, nombre de réclamations. En calculant le coût de chaque inducteur, la banque découvre par exemple qu''un client qui effectue beaucoup d''opérations au guichet pour de petits montants lui coûte plus qu''il ne rapporte. Elle peut alors orienter ces clients vers le mobile banking, moins coûteux, ou adapter sa tarification. Même logique dans un hôpital : coût d''une admission, d''une journée d''hospitalisation, d''un examen de laboratoire. L''ABC devient un outil de dialogue entre la direction financière et les opérationnels, parce qu''il parle leur langage : des activités, pas des comptes de charges.

## 86:00 – 90:00 · Synthèse et évaluation finale

Synthèse : l''ABC suit la causalité des coûts indirects ; il révèle les subventions croisées ; l''ABM transforme le calcul en actions ; le coût cible part du marché pour piloter la conception.

- Question 1 : formule du coût unitaire d''un inducteur ? Réponse : coût de l''activité / volume de l''inducteur.
- Question 2 : activité réglage 6 000 000 FCFA, 50 lots ; un produit utilise 12 lots ; charges imputées ? Réponse : 1 440 000 FCFA.
- Question 3 : prix de marché 40 000, marge 25 % ; coût cible ? Réponse : 30 000 FCFA.
- Question 4 : citez deux limites de l''ABC. Réponse : coût de mise en place ; subjectivité des rattachements.
- Question 5 : à quelle phase du cycle de vie le coût cible est-il le plus utile ? Réponse : la conception.

Merci et bon entraînement.', 'video', 90, false, 60
from public.courses c where c.slug = 'lic-cg-l3'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Méthode ABC et coût cible');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Tableaux de bord et balanced scorecard', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : étudiants de Licence 3 en contrôle de gestion.
- Objectifs : concevoir un tableau de bord, choisir des indicateurs pertinents, construire un balanced scorecard et une carte stratégique, analyser un tableau de bord avec un système de feux.
- Matériel : diaporama, modèle de tableau de bord, carte stratégique type, tableur.
- Prérequis : budgets et écarts (L2) ; leçon « Tableaux de bord et indicateurs de performance : l''essentiel pour l''examen ».

## Déroulé minuté

## 00:00 – 05:00 · Ouverture

Bonjour à toutes et à tous. Un pilote d''avion ne regarde pas sa comptabilité pour savoir s''il est à la bonne altitude : il regarde son tableau de bord. Le dirigeant d''entreprise a besoin de la même chose : quelques cadrans, mis à jour vite, qui lui disent s''il va dans la bonne direction. Aujourd''hui, nous construisons un tableau de bord et un balanced scorecard pour Sahel Distribution, distributeur fictif de produits laitiers à Dakar.

## 05:00 – 15:00 · Tableau de bord, reporting, budget

Trois outils sont souvent confondus. Le budget fixe des objectifs chiffrés pour l''année. Le reporting fait remonter, vers la hiérarchie ou le siège, des informations surtout financières pour rendre compte. Le tableau de bord est l''outil du responsable lui-même pour piloter son activité : il contient des indicateurs financiers et non financiers, produits vite, souvent chaque semaine ou chaque mois.

Les qualités d''un bon tableau de bord : peu d''indicateurs, une dizaine au plus ; une présentation visuelle ; une comparaison avec une cible ; un lien direct avec les leviers d''action du responsable. Ajoutons la rapidité : un tableau de bord parfait livré le 25 du mois suivant ne sert plus à rien. Mieux vaut un indicateur approché disponible le 2 du mois qu''un chiffre exact trop tardif. C''est une différence majeure avec la comptabilité, qui privilégie l''exactitude.

## 15:00 – 27:00 · Choisir les indicateurs : une démarche en quatre étapes

Visuel : une grille avec en colonnes les objectifs et en lignes les indicateurs candidats.

Une démarche simple, proche de la méthode OVAR enseignée dans de nombreuses écoles de gestion, comporte quatre étapes : définir les objectifs du responsable ; identifier les variables d''action, c''est-à-dire les leviers qu''il maîtrise ; choisir pour chaque objectif et chaque levier un indicateur ; préciser qui est responsable de chaque indicateur. On part toujours des objectifs, jamais des données disponibles. Pour l''objectif « livrer à l''heure », l''indicateur est le taux de livraisons à l''heure. Pour « réduire la casse », le taux de casse. Vérifiez la méthode SMART : spécifique, mesurable, atteignable, réaliste, temporellement défini.

Distinguez les indicateurs de résultat, qui constatent après coup, comme le chiffre d''affaires, et les indicateurs avancés, qui annoncent l''avenir, comme le taux de livraisons à l''heure, qui prépare la fidélité des clients. Un bon tableau de bord mélange les deux.

Question au public : le nombre de visites commerciales par semaine est-il un indicateur de résultat ou avancé ? Réponse : avancé, il prépare les ventes futures.

## 27:00 – 40:00 · Le balanced scorecard et la carte stratégique

Au début des années 1990, Robert Kaplan et David Norton ont proposé le balanced scorecard. Leur constat : les indicateurs financiers seuls regardent dans le rétroviseur. Ils proposent quatre axes : financier, clients, processus internes, apprentissage organisationnel.

Visuel : la carte stratégique de Sahel Distribution. En bas, apprentissage : former les livreurs, réduire l''absentéisme. Au-dessus, processus : livrer à l''heure, réduire la casse, maîtriser les stocks. Au-dessus, clients : satisfaction, peu de réclamations. En haut, financier : chiffre d''affaires, marge, trésorerie. Les flèches montent : des livreurs formés et présents livrent mieux, des clients bien livrés achètent plus, et le chiffre d''affaires progresse.

Retenez : les relations de cause à effet sont des hypothèses. Le contrôleur doit les tester dans le temps en observant si les indicateurs évoluent ensemble.

## 40:00 – 46:00 · Pause et quiz

- Question 1 : dans quel axe placer le taux de fidélisation ? Réponse : clients.
- Question 2 : dans quel axe placer le délai de traitement d''une commande ? Réponse : processus internes.
- Question 3 : vrai ou faux, un tableau de bord doit contenir tous les indicateurs disponibles. Faux.

## 46:00 – 66:00 · Analyse du tableau de bord de mars : correction commentée

Règle des feux : vert si l''objectif est atteint, orange si l''écart relatif ne dépasse pas 10 %, rouge au-delà.

Axe financier. Chiffre d''affaires : 235 000 000 pour 250 000 000 visés, soit 94,0 % de l''objectif : orange. Taux de marge brute : 20,5 % pour 22 % : écart relatif de 6,8 %, orange. Délai clients : créances 282 000 000 divisées par le CA du mois, fois 30 : 36 jours pour 30 visés, écart de 20 %, rouge.

Axe clients. Livraisons à l''heure : 4 420 sur 4 800, 92,1 % : orange. Réclamations : 43 sur 4 800, 0,9 % pour 1 % au plus : vert.

Axe processus. Casse : 1 650 cartons sur 150 000, 1,1 % pour 0,8 % : rouge. Couverture du stock : stock moyen 56 047 500 divisé par le coût des ventes du mois, 186 825 000, fois 30 : 9 jours pour 10 au plus : vert.

Axe apprentissage. Formation : 684 heures pour 120 salariés, 5,7 heures pour 6 : orange. Absentéisme : 1 008 heures d''absence sur 120 fois 168 heures théoriques, soit 5,0 % pour 3 % au plus : rouge.

Lecture transversale : l''absentéisme élevé oblige à recourir à des livreurs remplaçants, moins formés ; la casse augmente et la ponctualité baisse ; à terme, la satisfaction et le chiffre d''affaires en souffriront. Le délai clients, lui, appelle une action spécifique de recouvrement. Plan d''action : entretien avec les équipes sur les causes de l''absentéisme, formation à la manutention, suivi hebdomadaire de la casse par tournée, relance des clients en retard.

## 66:00 – 76:00 · Exercice : la microfinance

Énoncé : une agence fictive de microfinance visait 1 300 crédits et en a accordé 1 240 ; 62 sont en retard de plus de 30 jours ; objectif de retard au plus 4 %.

Correction. Réalisation : 1 240 sur 1 300, soit 95,4 % ; écart relatif de 4,6 %, feu orange. Taux de retard : 62 sur 1 240, soit 5,0 %. L''écart avec l''objectif n''est que d''un point, mais il représente 25 % de l''objectif de 4 % : feu rouge.

Ce cas montre un piège fréquent : un écart d''un point paraît faible, mais rapporté à un objectif bas, il est considérable. Il faut donc écrire clairement en tête du tableau de bord si les seuils s''apprécient en points ou en écart relatif. Pour un taux de retard de remboursement, beaucoup d''institutions préfèrent d''ailleurs des seuils absolus fixés par la politique de risque.

Interprétation : l''agence a presque atteint son objectif de volume, mais la qualité du portefeuille se dégrade. Ces deux indicateurs doivent être lus ensemble : courir après le volume peut conduire à prêter à des emprunteurs plus fragiles.

## 76:00 – 84:00 · Limites et effets pervers

Avant les limites, un mot sur la présentation. Un tableau de bord efficace tient sur une page ou un écran. En haut, l''essentiel : trois ou quatre indicateurs clés avec leur feu. En dessous, le détail par axe. Pour chaque indicateur : la valeur du mois, l''objectif, l''écart, la tendance sur plusieurs mois, souvent sous forme d''une petite courbe, et un commentaire d''une ligne du responsable. La tendance est essentielle : un feu orange qui s''améliore depuis trois mois n''appelle pas la même réaction qu''un feu orange qui se dégrade. Enfin, la périodicité doit correspondre au rythme de décision : quotidienne pour un chef de dépôt, hebdomadaire pour un chef d''agence, mensuelle pour la direction générale.

Un indicateur peut devenir une fin en soi. Si l''on récompense les livreurs uniquement sur la ponctualité, ils risquent de bâcler la manutention. Si l''agent de crédit est jugé seulement sur le nombre de crédits, il prête à des clients fragiles. C''est pourquoi le balanced scorecard équilibre les axes, et pourquoi le dialogue de gestion compte plus que le chiffre. Autres limites : coût de collecte des données, inflation du nombre d''indicateurs, difficulté de tester les liens de cause à effet.

## 84:00 – 90:00 · Synthèse et évaluation finale

- Question 1 : différence entre tableau de bord et reporting ? Réponse : pilotage par le responsable contre compte rendu à la hiérarchie.
- Question 2 : les quatre axes du balanced scorecard ? Réponse : financier, clients, processus internes, apprentissage.
- Question 3 : objectif 95 %, réel 90 %, règle de 10 % d''écart relatif ; feu ? Réponse : orange (écart relatif de 5,3 %).
- Question 4 : 240 heures d''absence sur 6 000 heures théoriques ; taux ? Réponse : 4 %.
- Question 5 : donnez un indicateur avancé pour une boutique. Réponse : nombre de visiteurs ou taux de transformation des visites en achats.

Merci à toutes et à tous.', 'video', 90, false, 70
from public.courses c where c.slug = 'lic-cg-l3'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Tableaux de bord et balanced scorecard');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Contrôle de gestion des PME et du secteur public, prix de cession interne', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : étudiants de Licence 3 en contrôle de gestion.
- Objectifs : adapter le contrôle de gestion aux PME et au secteur public, évaluer des divisions par le ROI et le résultat résiduel, choisir et négocier un prix de cession interne.
- Matériel : diaporama, schéma d''un groupe à deux divisions, calculatrice.
- Prérequis : coûts partiels (L2), centres de responsabilité (L1) ; leçon « Contrôle de gestion des PME et du secteur public, prix de cession interne : l''essentiel pour l''examen ».

## Déroulé minuté

## 00:00 – 05:00 · Ouverture

Bonjour à toutes et à tous. Le contrôle de gestion est né dans les grandes entreprises industrielles. Mais l''essentiel de l''économie sénégalaise, ce sont des PME ; et une large part des services essentiels relève du secteur public. Aujourd''hui, trois questions : comment faire du contrôle de gestion dans une PME ? Comment piloter la performance d''un service public ? Et comment fixer le prix auquel deux divisions d''un même groupe s''échangent des produits ?

## 05:00 – 18:00 · Le contrôle de gestion dans les PME

Les PME ont des traits communs : le dirigeant décide de tout, il y a peu de cadres administratifs, l''information circule oralement, la comptabilité est souvent tenue par un cabinet extérieur, et la trésorerie est la préoccupation numéro un.

Le contrôle de gestion doit donc être léger. Je recommande un tableau de bord d''une page : chiffre d''affaires, marge, trésorerie, créances clients, stock, carnet de commandes. Un budget de trésorerie glissant sur trois mois. Un coût de revient par produit ou par chantier. Le seuil de rentabilité.

Exemple : une PME de Kaolack réalise 100 millions de FCFA avec cinq clients. Les deux premiers font 45 et 25 millions, soit 70 % du total. C''est la loi de Pareto. Le dirigeant doit le savoir : si le premier client part, l''entreprise perd près de la moitié de son activité. Action : suivre ces clients de près et diversifier.

## 18:00 – 32:00 · Le contrôle de gestion dans le secteur public

Une commune, un hôpital, une université ne cherchent pas le profit. Leur performance se juge sur la mission. Dans l''espace UEMOA, le cadre harmonisé des finances publiques a introduit la gestion axée sur les résultats : les crédits sont organisés en programmes, chaque programme a un responsable, des objectifs et des indicateurs, et l''on rend compte dans des rapports de performance. Les modalités précises dépendent des textes de chaque État.

Trois points de vue sur la performance : le citoyen attend un impact, c''est l''efficacité socio-économique ; l''usager attend un service de qualité ; le contribuable attend une gestion efficiente.

Cas de la commune fictive : crédits du programme « Éducation de base » 1 200 000 000 FCFA ; engagements 1 080 000 000 ; ordonnancements 930 000 000. Taux d''engagement 90,0 %, taux d''exécution 77,5 %. Mais construire 18 salles sur 24, c''est 75 % d''efficacité ; et chaque salle a coûté 27 000 000 FCFA contre 25 000 000 prévus, soit 8,0 % de plus. Message clé : dépenser tout son budget n''est pas une performance.

## 32:00 – 40:00 · ROI et résultat résiduel

Revenons aux groupes. Une division centre d''investissement est jugée sur la rentabilité de ses capitaux. ROI : résultat sur capitaux investis. Résultat résiduel : résultat moins le coût des capitaux, c''est-à-dire capitaux fois taux exigé.

Pourquoi deux mesures ? Parce que le ROI peut pousser à refuser des projets rentables. Nous le verrons dans le cas. Le ROI a pourtant un avantage : c''est un ratio, qui permet de comparer des divisions de tailles différentes. Le résultat résiduel est un montant, qui favorise mécaniquement les grandes divisions. En pratique, on présente les deux, avec le même taux exigé pour toutes les divisions de risque comparable.

## 40:00 – 46:00 · Pause et quiz

- Question 1 : résultat 18 millions, capitaux 120 millions ; ROI ? Réponse : 15 %.
- Question 2 : même division, taux exigé 10 % ; résultat résiduel ? Réponse : 6 millions.
- Question 3 : le taux d''exécution budgétaire mesure-t-il l''efficacité d''un service public ? Réponse : non, il mesure la consommation des crédits.

## 46:00 – 66:00 · Prix de cession interne : correction commentée

Visuel : deux rectangles, Huilerie et Conditionnement, reliés par une flèche « 600 000 litres ».

Données : l''Huilerie produit 900 000 litres ; coût variable 600 ; charges fixes 135 000 000 ; coût complet 750 ; elle vend 300 000 litres dehors à 850. Le Conditionnement vend à 1 400, coût variable propre 250, charges fixes 60 000 000.

Testons trois PCI. Au coût variable, 600 : Huilerie −60 000 000, Conditionnement 270 000 000. Au coût complet, 750 : Huilerie 30 000 000, Conditionnement 180 000 000. Au prix du marché, 850 : Huilerie 90 000 000, Conditionnement 120 000 000. Dans les trois cas, le groupe gagne 210 000 000 FCFA.

Conclusion : le PCI est un partage du gâteau, il ne change pas sa taille tant que les volumes restent les mêmes. Mais il change la motivation. Au coût variable, le responsable de l''Huilerie est en perte permanente : il n''a aucune raison de bien servir son client interne. Au coût complet, il couvre ses charges mais ne réalise pas de profit sur les ventes internes, et ses inefficacités sont transmises à l''aval. Le prix du marché est la référence quand un marché existe.

Fourchette de négociation : plancher de l''Huilerie, son coût variable 600 si elle a de la capacité inutilisée ; 820 si elle est saturée et économise 30 FCFA de frais commerciaux par litre cédé en interne. Plafond du Conditionnement : le prix d''achat extérieur.

## 66:00 – 78:00 · ROI, résultat résiduel et décision d''investissement

Au prix du marché, capitaux de 600 000 000 pour l''Huilerie et 400 000 000 pour le Conditionnement, taux exigé 12 %, taux fictif pour l''exemple. Huilerie : ROI 15 %, résultat résiduel 18 000 000. Conditionnement : ROI 30 %, résultat résiduel 72 000 000.

Un projet de 50 000 000 FCFA est proposé au Conditionnement, avec 10 000 000 FCFA de résultat annuel, soit 20 %. C''est plus que les 12 % exigés par le groupe : le projet crée de la valeur. Mais le ROI de la division passerait de 30 % à 28,9 % : un responsable jugé sur son ROI serait tenté de refuser. Le résultat résiduel, lui, augmente de 4 000 000 FCFA. Voilà pourquoi beaucoup de groupes complètent le ROI par le résultat résiduel.

## 78:00 – 82:00 · Exercice corrigé : faut-il acheter dehors ?

Le responsable du Conditionnement annonce qu''un fournisseur extérieur lui propose de l''huile en vrac à 820 FCFA le litre, moins cher que le prix du marché de 850. Il veut acheter dehors. L''Huilerie, non saturée, ne pourrait pas vendre davantage à l''extérieur.

Raisonnons pour le groupe. Si le Conditionnement achète dehors, le groupe paie 820 FCFA par litre. S''il achète à l''Huilerie, le groupe ne supporte que le coût variable, 600 FCFA, puisque les charges fixes de l''Huilerie existent de toute façon. Perte pour le groupe : 220 FCFA par litre, soit 132 000 000 FCFA sur 600 000 litres. Solution : aligner le PCI sur l''offre extérieure, à 820 FCFA au plus, ou laisser la direction générale arbitrer. Retenez la règle : la décision d''achat externe est bonne pour le groupe seulement si le prix extérieur est inférieur au coût variable interne, augmenté du coût d''opportunité de la capacité.

## 82:00 – 85:00 · Méthode pour la dissertation

Sujet possible : « Le prix de cession interne est-il un outil de coordination ou de conflit ? » Plan : I. Un outil de coordination et d''évaluation des divisions ; II. Une source de conflits et de comportements opportunistes, que l''on limite par la négociation encadrée, le prix de marché et l''arbitrage de la direction générale. Exemples : le groupe agroalimentaire du cours, un groupe industriel à plusieurs filiales dans l''UEMOA. Précisez que, entre sociétés de pays différents, les prix de transfert sont aussi encadrés par les règles fiscales, à vérifier dans les textes en vigueur.

## 85:00 – 90:00 · Synthèse et évaluation finale

- Question 1 : citez deux outils prioritaires du contrôle de gestion d''une PME. Réponse : budget de trésorerie, tableau de bord simplifié.
- Question 2 : quels sont les trois points de vue de la performance publique ? Réponse : citoyen, usager, contribuable.
- Question 3 : le PCI change-t-il le résultat du groupe à volumes constants ? Réponse : non.
- Question 4 : plancher du PCI pour une division vendeuse non saturée ? Réponse : son coût variable.
- Question 5 : résultat 40 millions, capitaux 250 millions, taux exigé 12 % ; résultat résiduel ? Réponse : 10 millions.

Merci et bonne préparation. Pour la prochaine fois, refaites le cas Sénégal Agro avec un PCI de 800 FCFA, puis calculez le ROI et le résultat résiduel de chaque division à ce prix : vous vérifierez que la somme des résultats ne change pas.', 'video', 90, false, 80
from public.courses c where c.slug = 'lic-cg-l3'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Contrôle de gestion des PME et du secteur public, prix de cession interne');

-- Cours : Licence 1 Comptabilité : réussir ses examens
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'lic-compta-l1', (select id from public.levels where name = 'Licence 1'), null, 'Comptabilité', 'Licence 1 Comptabilité : réussir ses examens', 'Ce cours prépare les étudiants de première année de Licence en comptabilité, finance ou gestion (universités et écoles du Sénégal et de l''espace UEMOA/OHADA) aux partiels et examens semestriels. Il couvre trois matières clés : la comptabilité générale selon le SYSCOHADA révisé (partie double, journal, grand livre, balance, achats, ventes et TVA), les mathématiques financières (intérêts simples et composés, escompte, annuités) et l''introduction au droit des affaires OHADA (commerçant et sociétés). Fiches, exercices corrigés aux calculs vérifiés, sujet d''entraînement et trois cours vidéo de 1h30. Prérequis : niveau Baccalauréat, aisance avec les pourcentages.', true, 341
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Réussir ses examens de Licence 1 en Comptabilité', '## Objectifs de la leçon

- Comprendre l''organisation de la première année de Licence dans le système LMD.
- Identifier les matières clés de l''année et ce que les correcteurs attendent.
- Connaître les types d''épreuves et la méthode pour chacun.
- Construire un plan de révision réaliste sur six semaines.

## 1. La Licence 1 dans le système LMD

Les universités et grandes écoles du Sénégal et de l''espace UEMOA ont adopté le système LMD (Licence, Master, Doctorat). La Licence se prépare en trois années, soit six semestres. Chaque semestre est découpé en unités d''enseignement (UE), elles-mêmes composées d''éléments constitutifs (les matières). Chaque UE vaut un nombre de crédits ; une année complète correspond en général à 60 crédits, mais le nombre de crédits par UE, les coefficients et les règles de compensation varient d''un établissement à l''autre. Lisez attentivement le règlement des examens de votre établissement : c''est lui qui fait foi.

Retenez trois idées. D''abord, la note d''une UE combine souvent un contrôle continu (devoirs, exposés, travaux dirigés) et un examen terminal. Ensuite, la compensation entre matières d''une même UE, ou entre UE d''un même semestre, existe souvent mais selon des règles locales. Enfin, une session de rattrapage est généralement prévue : ne comptez pas sur elle, préparez la première session sérieusement.

## 2. Les matières clés de l''année

Ce cours se concentre sur trois matières qui pèsent lourd en Licence 1 Comptabilité :

- Comptabilité générale 1 : principes du SYSCOHADA révisé, partie double, journal, grand livre, balance, achats, ventes, réductions commerciales et financières, TVA.
- Mathématiques financières : intérêts simples, escompte commercial, intérêts composés, valeur actuelle, annuités, tableau d''amortissement d''un emprunt.
- Introduction au droit des affaires OHADA : le commerçant, les actes de commerce, le registre du commerce, les grandes formes de sociétés.

D''autres matières complètent l''année (économie générale, statistique descriptive, informatique, techniques d''expression, anglais des affaires). Elles sont traitées dans d''autres cours de la plateforme. En Licence 2, vous approfondirez les travaux d''inventaire, la comptabilité des sociétés et la fiscalité ; en Licence 3, les états financiers, la consolidation et l''audit.

## 3. Ce que les correcteurs attendent

En comptabilité, une écriture juste mais mal présentée perd des points. Le correcteur vérifie : la date, les numéros et intitulés de comptes, le sens débit ou crédit, les montants, l''équilibre de chaque écriture et un libellé clair. En mathématiques financières, il attend la formule littérale, l''application numérique, le résultat arrondi correctement et une phrase de conclusion. En droit, il attend un raisonnement : identifier le problème juridique, rappeler la règle, l''appliquer aux faits, conclure.

## 4. Les types d''épreuves et la méthode

- Exercice chiffré : lisez tout l''énoncé avant de calculer, notez les données dans la marge, posez la formule, calculez, vérifiez l''ordre de grandeur.
- Cas pratique comptable : une entreprise fictive et une liste d''opérations à enregistrer. Travaillez opération par opération, contrôlez l''équilibre de chaque écriture, puis reportez au grand livre et établissez la balance.
- QCM : éliminez d''abord les réponses absurdes ; méfiez-vous des pièges sur le sens débit ou crédit et sur les bases de calcul de la TVA.
- Dissertation ou question de cours (surtout en droit) : introduction (définition, intérêt du sujet, problématique, annonce du plan), deux parties équilibrées, pas de hors-sujet.
- Cas pratique juridique : faits, problème de droit, règle applicable, application, solution.
- Projet ou dossier : certains enseignants demandent un dossier en groupe, par exemple la tenue de la comptabilité d''une petite entreprise sur un mois.

## 5. Gérer son temps le jour de l''examen

Prenez cinq minutes pour lire tout le sujet et répartir votre temps selon le barème. Commencez par la partie où vous êtes le plus solide pour gagner confiance. Gardez dix minutes à la fin pour relire : équilibre des écritures, unités, conclusions. Une copie propre, avec des résultats encadrés et des étapes numérotées, se corrige plus facilement et inspire confiance au correcteur.

## 6. Plan de révision sur six semaines

- Semaine 1 : principes comptables, classes de comptes, partie double. Refaire dix écritures simples par jour.
- Semaine 2 : achats et ventes, réductions commerciales et financières, TVA ; grand livre et balance.
- Semaine 3 : intérêts simples, escompte commercial, intérêts composés, valeur actuelle.
- Semaine 4 : annuités et tableau d''amortissement d''emprunt ; fiches de formules.
- Semaine 5 : droit OHADA (commerçant, actes de commerce, RCCM, sociétés) ; entraînement aux cas pratiques juridiques.
- Semaine 6 : sujets complets en temps limité, correction, révision des points faibles.

Chaque semaine, consacrez une séance à revoir les erreurs des semaines précédentes. Travaillez en petit groupe une fois par semaine : expliquer une notion à un camarade est la meilleure façon de vérifier qu''on la maîtrise.

## 7. Les outils indispensables

- Une calculatrice autorisée par votre établissement, que vous savez utiliser pour les puissances (touche x^y).
- Un plan de comptes SYSCOHADA révisé à jour. Dans ce cours, quand un numéro de compte est cité, vérifiez l''intitulé dans le plan de comptes officiel.
- Des fiches de synthèse d''une page par chapitre.
- Les sujets des années précédentes, s''ils sont disponibles à la bibliothèque ou auprès des associations d''étudiants.

## Points clés

- Le règlement des examens de votre établissement fixe les crédits, coefficients et règles de compensation.
- Trois matières clés dans ce cours : comptabilité générale, mathématiques financières, droit OHADA.
- Chaque type d''épreuve a sa méthode : formule puis calcul, ou problème puis règle puis solution.
- Un plan de six semaines, avec révisions régulières des erreurs, vaut mieux qu''un bachotage de dernière minute.

## Exercices pratiques

- Exercice 1 : citez les trois niveaux du système LMD et le nombre de semestres d''une Licence.
- Exercice 2 : quelle différence faites-vous entre une UE et un élément constitutif ?
- Exercice 3 : un étudiant dispose de 2 heures pour un sujet noté sur 20 : comptabilité 10 points, mathématiques financières 6 points, droit 4 points. Proposez une répartition du temps en gardant 10 minutes de relecture et 5 minutes de lecture initiale.
- Exercice 4 : quelles sont les cinq vérifications à faire sur chaque écriture comptable ?
- Exercice 5 (cas pratique) : Fatou a trois semaines avant ses examens et se sent faible en mathématiques financières. Adaptez le plan de six semaines en un plan de trois semaines.

## Corrigé

- Exercice 1 : Licence, Master, Doctorat. La Licence comprend six semestres (trois années).
- Exercice 2 : l''UE est un regroupement cohérent de matières, auquel sont attachés des crédits ; l''élément constitutif est une matière à l''intérieur de l''UE (par exemple, Comptabilité générale 1 dans une UE Techniques comptables).
- Exercice 3 : 120 − 5 − 10 = 105 minutes à répartir sur 20 points, soit 5,25 minutes par point. Comptabilité : 10 × 5,25 = 52,5 minutes, environ 52 minutes ; mathématiques financières : 6 × 5,25 = 31,5 minutes, environ 32 minutes ; droit : 4 × 5,25 = 21 minutes. Total : 52 + 32 + 21 = 105 minutes.
- Exercice 4 : la date et le libellé ; les numéros et intitulés de comptes ; le sens débit ou crédit ; les montants ; l''égalité total débit = total crédit.
- Exercice 5 : semaine 1 : comptabilité (principes, achats, ventes, TVA, balance) en séances courtes, et une séance quotidienne de mathématiques financières (intérêts simples, escompte) ; semaine 2 : mathématiques financières (intérêts composés, annuités, emprunts) en priorité, plus le droit OHADA ; semaine 3 : deux sujets complets en temps limité, corrections et fiches de formules relues chaque jour. L''essentiel est de donner plus de temps à la matière faible sans abandonner les autres.', 'texte', 45, true, 10
from public.courses c where c.slug = 'lic-compta-l1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Réussir ses examens de Licence 1 en Comptabilité');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Comptabilité générale 1 : l''essentiel pour l''examen', '## Objectifs de la leçon

- Connaître le SYSCOHADA révisé et ses principes.
- Maîtriser partie double, journal, grand livre, balance, achats, ventes et TVA.

## 1. Le cadre : le SYSCOHADA révisé

Dans les États de l''OHADA, la comptabilité relève de l''Acte uniforme relatif au droit comptable et à l''information financière, qui contient le SYSCOHADA révisé, applicable aux comptes personnels des entités depuis les exercices ouverts en 2018. Il fixe un plan de comptes, des règles d''évaluation et des modèles d''états financiers.

Classes du plan de comptes : 1 ressources durables ; 2 actif immobilisé ; 3 stocks ; 4 tiers ; 5 trésorerie ; 6 charges des activités ordinaires ; 7 produits des activités ordinaires ; 8 autres charges et produits (hors activités ordinaires, impôt sur le résultat). Pour chaque numéro cité, vérifiez l''intitulé dans le plan de comptes officiel.

## 2. Les principes comptables

- Prudence : on tient compte des pertes probables, pas des gains probables.
- Continuité d''exploitation : l''entité est supposée poursuivre son activité.
- Permanence des méthodes : pas de changement sans justification ni information.
- Coût historique : un bien est enregistré à son coût d''acquisition.
- Spécialisation des exercices : chaque exercice reçoit ses propres charges et produits.
- Intangibilité du bilan d''ouverture : il reprend le bilan de clôture précédent.
- Non-compensation, transparence, prééminence de la réalité sur l''apparence.

## 3. La partie double

Chaque opération touche au moins deux comptes, débités et crédités pour le même total :

- Un compte d''actif (immobilisations, stocks, créances, trésorerie) augmente au débit et diminue au crédit.
- Un compte de passif (capital, emprunts, dettes) augmente au crédit et diminue au débit.
- Une charge s''enregistre au débit ; un produit au crédit.

Schéma décrit : un « T », débit à gauche, crédit à droite ; le solde est débiteur si le total débit l''emporte.

## 4. Journal, grand livre, balance

Le journal enregistre les opérations dans l''ordre chronologique. Le grand livre regroupe les mouvements compte par compte. La balance liste les comptes et leurs soldes : l''égalité soldes débiteurs = soldes créditeurs est un premier contrôle, qui ne détecte pas une imputation dans le mauvais compte.

## 5. Les réductions sur factures

- Réductions commerciales : remise, rabais (défaut de qualité), ristourne (sur une période). Portées sur la facture, elles ne s''enregistrent pas : on comptabilise le net commercial.
- Escompte de règlement (paiement anticipé) : 673 Escomptes accordés chez le vendeur, 773 Escomptes obtenus chez l''acheteur.
- Ordre de calcul : brut, moins remise, moins rabais (en cascade), égal net commercial ; moins escompte, égal net financier ; la TVA se calcule sur le net financier.

## 6. La TVA

Taux de TVA de 20 % : taux fictif pour l''exemple, choisi pour simplifier les calculs. Le taux réel est fixé par le code général des impôts de chaque État : vérifiez toujours le texte en vigueur.

TVA collectée sur les ventes (4431), TVA récupérable sur achats (4452) et sur immobilisations (4451). TVA due = collectée − récupérable ; si négative : crédit de TVA (4449) reportable. Formules : TVA = HT × taux ; TTC = HT × (1 + taux) ; HT = TTC ÷ (1 + taux).

## 7. Exemples chiffrés (entreprise fictive Sahel Négoce SARL, Kaolack)

Vente de marchandises réglée immédiatement par virement : prix brut 3 000 000, rabais 2 % (60 000), net commercial 2 940 000, escompte 1 % (29 400), net financier 2 910 600, TVA 582 120, net à payer 3 492 720.

- Débit 521 Banques : 3 492 720
- Débit 673 Escomptes accordés : 29 400
- Crédit 701 Ventes de marchandises : 2 940 000
- Crédit 4431 État, TVA facturée sur ventes : 582 120
- Total débit = total crédit = 3 522 120

La vente est enregistrée au net commercial ; l''escompte est une charge financière.

## Points clés

- Total débit = total crédit pour chaque écriture.
- Escompte enregistré (673 ou 773) ; TVA calculée sur le net financier.

## Exercices pratiques

- Exercice 1 : donnez la classe des comptes 101, 2441, 31, 411, 521, 601, 701.
- Exercice 2 : une facture affiche 1 800 000 TTC, TVA 20 % (taux fictif). Calculez le HT et la TVA.
- Exercice 3 : facture d''achat à crédit : brut 4 000 000, remise 5 %, rabais 2 %, TVA 20 % (fictif). Calculez et enregistrez.
- Exercice 4 : en mars, TVA collectée 1 900 000 ; TVA récupérable sur achats 1 150 000 ; sur immobilisations 300 000 ; crédit de TVA de février 100 000. Calculez la TVA due et passez l''écriture de liquidation.
- Exercice 5 (cas pratique) : Ets Fall et Fils SARL (Saint-Louis) démarre le 1er mars. 1/03 : apport en capital de 10 000 000 versé en banque. 5/03 : achat de marchandises à crédit 4 000 000 HT. 12/03 : vente de marchandises réglée par virement 3 000 000 HT. 20/03 : achat de matériel de bureau payé par virement 1 500 000 HT. 28/03 : loyer de mars 400 000 payé par virement (on suppose le loyer hors champ de la TVA pour l''exercice). TVA 20 % (fictif). Passez les écritures, calculez les soldes et présentez la balance.

## Corrigé

- Exercice 1 : le premier chiffre donne la classe : 1, 2, 3, 4, 5, 6, 7 dans l''ordre.
- Exercice 2 : HT = 1 800 000 ÷ 1,2 = 1 500 000 ; TVA = 300 000.

Exercice 3 : remise 200 000, soit 3 800 000 ; rabais 2 % de 3 800 000 = 76 000, soit un net commercial de 3 724 000 ; TVA 744 800 ; TTC 4 468 800.

- Débit 601 Achats de marchandises : 3 724 000
- Débit 4452 État, TVA récupérable sur achats : 744 800
- Crédit 401 Fournisseurs : 4 468 800
- Total débit = total crédit = 4 468 800

Exercice 4 : TVA due = 1 900 000 − 1 150 000 − 300 000 − 100 000 = 350 000.

- Débit 4431 État, TVA facturée sur ventes : 1 900 000
- Crédit 4452 État, TVA récupérable sur achats : 1 150 000
- Crédit 4451 État, TVA récupérable sur immobilisations : 300 000
- Crédit 4449 État, crédit de TVA à reporter : 100 000
- Crédit 4441 État, TVA due : 350 000
- Total débit = total crédit = 1 900 000

Exercice 5 : écritures, toutes équilibrées (vérifier l''intitulé dans le plan de comptes officiel) :

- Débit 521 Banques : 10 000 000
- Crédit 101 Capital social : 10 000 000

- Débit 601 Achats de marchandises : 4 000 000
- Débit 4452 État, TVA récupérable sur achats : 800 000
- Crédit 401 Fournisseurs : 4 800 000

- Débit 521 Banques : 3 600 000
- Crédit 701 Ventes de marchandises : 3 000 000
- Crédit 4431 État, TVA facturée sur ventes : 600 000

- Débit 2441 Matériel de bureau : 1 500 000
- Débit 4451 État, TVA récupérable sur immobilisations : 300 000
- Crédit 521 Banques : 1 800 000

- Débit 622 Locations : 400 000
- Crédit 521 Banques : 400 000

Balance au 31 mars (soldes) :

- 101 Capital social : solde créditeur 10 000 000
- 2441 Matériel de bureau : solde débiteur 1 500 000
- 401 Fournisseurs : solde créditeur 4 800 000
- 4431 État, TVA facturée sur ventes : solde créditeur 600 000
- 4451 État, TVA récupérable sur immobilisations : solde débiteur 300 000
- 4452 État, TVA récupérable sur achats : solde débiteur 800 000
- 521 Banques : solde débiteur 11 400 000
- 601 Achats de marchandises : solde débiteur 4 000 000
- 622 Locations : solde débiteur 400 000
- 701 Ventes de marchandises : solde créditeur 3 000 000
- Totaux : soldes débiteurs 18 400 000 = soldes créditeurs 18 400 000

Banque : 10 000 000 + 3 600 000 − 1 800 000 − 400 000 = 11 400 000. TVA : 600 000 − 1 100 000 = −500 000, crédit de TVA reportable.', 'texte', 60, false, 20
from public.courses c where c.slug = 'lic-compta-l1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Comptabilité générale 1 : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Mathématiques financières : l''essentiel pour l''examen', '## Objectifs de la leçon

- Calculer intérêts simples, valeur acquise et escompte commercial.
- Maîtriser les intérêts composés, les taux équivalents et la valeur actuelle.
- Calculer valeur acquise et valeur actuelle d''une suite d''annuités, et construire un tableau d''amortissement d''emprunt.

Les taux d''intérêt utilisés ici sont des taux de marché imaginés pour les exemples : ce ne sont ni des taux officiels ni des taux de la BCEAO.

## 1. Intérêts simples

Pour le court terme (moins d''un an). Formule : I = C × t × n ÷ 360 si n est en jours (année commerciale de 360 jours) ; I = C × t × n ÷ 12 si n est en mois. Valeur acquise : VA = C + I.

Exemple : la coopérative Jappo (Ziguinchor) place 1 500 000 FCFA à 9 % l''an pendant 120 jours. I = 1 500 000 × 0,09 × 120 ÷ 360 = 45 000. Valeur acquise : 1 545 000.

## 2. L''escompte commercial

Une entreprise peut remettre un effet de commerce à sa banque avant l''échéance pour obtenir de la trésorerie. La banque retient l''escompte, calculé sur la valeur nominale : e = V × t × n ÷ 360, où n est le nombre de jours jusqu''à l''échéance (parfois majoré de jours de banque). S''y ajoutent des commissions ; l''ensemble forme les agios. Valeur nette = valeur nominale − agios.

Exemple : effet de 2 400 000, échéance dans 75 jours, taux 10 %, commission fixe 5 000 (tarif imaginé). e = 2 400 000 × 0,10 × 75 ÷ 360 = 50 000 ; agios = 55 000 ; valeur nette = 2 345 000. Les taxes éventuelles sur commissions sont ignorées ici.

## 3. Intérêts composés

À la fin de chaque période, les intérêts s''ajoutent au capital et produisent eux-mêmes des intérêts. Valeur acquise : Cn = C0 × (1 + i)^n.

Exemple : 2 000 000 placés à 8 % l''an pendant 5 ans : C5 = 2 000 000 × 1,08^5 = 2 938 656 (arrondi au franc). Les intérêts cumulés valent 938 656, contre 800 000 en intérêts simples : c''est l''effet de capitalisation.

Taux équivalents : deux taux sont équivalents s''ils donnent la même valeur acquise sur la même durée. Taux mensuel équivalent à 12 % annuel : im = 1,12^(1/12) − 1 ≈ 0,9489 %. Attention, le taux proportionnel (12 % ÷ 12 = 1 %) n''est pas équivalent en intérêts composés.

Valeur actuelle : C0 = Cn × (1 + i)^(−n). Exemple : recevoir 5 000 000 dans 4 ans, au taux de 10 %, vaut aujourd''hui 5 000 000 ÷ 1,1^4 = 3 415 067.

## 4. Les annuités

Une suite d''annuités constantes est une série de versements égaux, à intervalles réguliers. Notations : a l''annuité, i le taux par période, n le nombre de versements.

- Valeur acquise (au moment du dernier versement) : Vn = a × [(1 + i)^n − 1] ÷ i.
- Valeur actuelle (une période avant le premier versement) : V0 = a × [1 − (1 + i)^(−n)] ÷ i.

Exemple : un commerçant de Touba verse 500 000 en fin d''année pendant 6 ans, à 7 %. V6 = 500 000 × (1,07^6 − 1) ÷ 0,07 = 3 576 645.

## 5. L''emprunt indivis à annuités constantes

Pour un emprunt C remboursé en n annuités constantes au taux i : a = C × i ÷ [1 − (1 + i)^(−n)]. Chaque annuité = intérêt de l''année (capital restant dû × i) + amortissement du capital. Les amortissements croissent en progression géométrique de raison (1 + i).

Exemple : Boulangerie Teranga emprunte 10 000 000 sur 5 ans à 9 %. a = 10 000 000 × 0,09 ÷ (1 − 1,09^(−5)) = 2 570 925 (arrondi au franc). Tableau (arrondi au franc, dernière annuité ajustée) :

- Année 1 : capital dû en début 10 000 000 ; intérêt 900 000 ; amortissement 1 670 925 ; annuité 2 570 925 ; capital restant dû 8 329 075
- Année 2 : capital dû en début 8 329 075 ; intérêt 749 617 ; amortissement 1 821 308 ; annuité 2 570 925 ; capital restant dû 6 507 767
- Année 3 : capital dû en début 6 507 767 ; intérêt 585 699 ; amortissement 1 985 226 ; annuité 2 570 925 ; capital restant dû 4 522 541
- Année 4 : capital dû en début 4 522 541 ; intérêt 407 029 ; amortissement 2 163 896 ; annuité 2 570 925 ; capital restant dû 2 358 645
- Année 5 : capital dû en début 2 358 645 ; intérêt 212 278 ; amortissement 2 358 645 ; annuité 2 570 923 ; capital restant dû 0

Contrôle : la somme des amortissements est égale au capital emprunté, 10 000 000.

## Points clés

- Court terme : intérêts simples (base 360) ; long terme : intérêts composés.
- Taux proportionnel ≠ taux équivalent.
- Annuité = intérêt + amortissement ; dernier capital restant dû nul.

## Exercices pratiques

- Exercice 1 : calculez l''intérêt simple et la valeur acquise de 800 000 placés à 6 % pendant 90 jours.
- Exercice 2 : pendant combien de jours faut-il placer 1 200 000 à 7,5 % pour obtenir 30 000 d''intérêts ?
- Exercice 3 : un effet de 1 800 000 est escompté 60 jours avant l''échéance au taux de 9 %, commission fixe 3 000 (imaginée). Calculez l''escompte, les agios et la valeur nette.
- Exercice 4 : 3 000 000 sont placés 4 ans à 6 % l''an, intérêts composés annuellement. Calculez la valeur acquise. Comparez avec un placement à 3 % par semestre pendant 8 semestres.
- Exercice 5 : à quel taux annuel un capital double-t-il en 10 ans ?
- Exercice 6 (cas pratique) : la société Diallo Transport hésite entre payer un véhicule 4 000 000 comptant ou verser 5 annuités de 1 000 000 en fin d''année. Le taux d''actualisation est 8 %. Quelle option choisir ? Elle emprunte par ailleurs 6 000 000 sur 4 ans à 10 % : calculez l''annuité et dressez le tableau d''amortissement.

## Corrigé

- Exercice 1 : I = 800 000 × 0,06 × 90 ÷ 360 = 12 000 ; valeur acquise 812 000.
- Exercice 2 : n = I × 360 ÷ (C × t) = 30 000 × 360 ÷ (1 200 000 × 0,075) = 120 jours.
- Exercice 3 : e = 1 800 000 × 0,09 × 60 ÷ 360 = 27 000 ; agios = 30 000 ; valeur nette = 1 770 000.
- Exercice 4 : 3 000 000 × 1,06^4 = 3 787 431 ; 3 000 000 × 1,03^8 = 3 800 310. Le placement semestriel rapporte plus (12 879 de plus) car 3 % par semestre équivaut à 1,03² − 1 = 6,09 % par an.
- Exercice 5 : (1 + i)^10 = 2, donc i = 2^(1/10) − 1 ≈ 7,18 %.

Exercice 6 : valeur actuelle des annuités = 1 000 000 × (1 − 1,08^(−5)) ÷ 0,08 = 3 992 710, inférieure à 4 000 000 : le paiement échelonné est plus avantageux, de 7 290 en valeur actuelle. Emprunt : a = 6 000 000 × 0,10 ÷ (1 − 1,1^(−4)) = 1 892 825.

- Année 1 : capital dû en début 6 000 000 ; intérêt 600 000 ; amortissement 1 292 825 ; annuité 1 892 825 ; capital restant dû 4 707 175
- Année 2 : capital dû en début 4 707 175 ; intérêt 470 718 ; amortissement 1 422 107 ; annuité 1 892 825 ; capital restant dû 3 285 068
- Année 3 : capital dû en début 3 285 068 ; intérêt 328 507 ; amortissement 1 564 318 ; annuité 1 892 825 ; capital restant dû 1 720 750
- Année 4 : capital dû en début 1 720 750 ; intérêt 172 075 ; amortissement 1 720 750 ; annuité 1 892 825 ; capital restant dû 0

Contrôle : 1 292 825 + 1 422 107 + 1 564 318 + 1 720 750 = 6 000 000.', 'texte', 60, false, 30
from public.courses c where c.slug = 'lic-compta-l1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Mathématiques financières : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Droit des affaires OHADA : l''essentiel pour l''examen', '## Objectifs de la leçon

- Situer l''OHADA, ses Actes uniformes et ses institutions.
- Définir le commerçant, les actes de commerce et les obligations du commerçant.
- Distinguer les grandes formes de sociétés commerciales et leurs principes de fonctionnement.

Attention : cette leçon présente les principes. Pour tout chiffre (capital minimum, nombre d''associés, délais), reportez-vous au texte officiel en vigueur de l''Acte uniforme concerné et aux éventuelles dispositions nationales.

## 1. L''OHADA en bref

L''Organisation pour l''harmonisation en Afrique du droit des affaires (OHADA) a été créée par le traité de Port-Louis de 1993, révisé à Québec en 2008. Elle regroupe dix-sept États, dont le Sénégal. Elle adopte des Actes uniformes directement applicables dans les États membres. Les plus utiles en Licence 1 sont l''Acte uniforme relatif au droit commercial général (AUDCG) et l''Acte uniforme relatif au droit des sociétés commerciales et du groupement d''intérêt économique (AUSCGIE). La Cour commune de justice et d''arbitrage (CCJA), siégeant à Abidjan, assure l''interprétation et l''application uniformes du droit OHADA ; elle statue notamment en cassation sur les litiges relatifs aux Actes uniformes.

## 2. Le commerçant

Est commerçant celui qui fait de l''accomplissement d''actes de commerce par nature sa profession. Trois conditions ressortent de cette définition : accomplir des actes de commerce par nature ; le faire de manière habituelle et à titre de profession ; agir en son nom et pour son propre compte, de façon indépendante. Un salarié qui vend pour le compte de son employeur n''est donc pas commerçant.

Les actes de commerce par nature comprennent notamment l''achat de biens en vue de leur revente, les opérations de banque, de bourse, de change, de courtage, d''assurance et de transit, les contrats entre commerçants pour les besoins de leur commerce, l''exploitation industrielle de mines et carrières, les opérations de location de meubles, de manufacture et de transport. Les actes de commerce par la forme sont commerciaux quelle que soit la personne qui les accomplit : la lettre de change, le billet à ordre et le warrant, ainsi que les actes des sociétés commerciales par la forme. Il existe aussi des actes de commerce par accessoire, accomplis par un commerçant pour les besoins de son commerce.

## 3. Capacité, incompatibilités et obligations

Pour être commerçant, il faut avoir la capacité juridique ; certaines professions sont incompatibles avec le commerce (fonctionnaires, officiers ministériels, professions libérales réglementées, selon les textes) ; certaines personnes sont frappées d''interdiction. Le commerçant doit :

- s''immatriculer au Registre du commerce et du crédit mobilier (RCCM) ;
- tenir une comptabilité conforme au droit comptable OHADA ;
- respecter les règles de concurrence loyale et ses obligations fiscales et sociales.

L''immatriculation au RCCM fait présumer la qualité de commerçant. Une personne non immatriculée qui exerce une activité commerciale ne peut pas se prévaloir de cette qualité à l''égard des tiers, mais les tiers peuvent, eux, l''invoquer contre elle.

## 4. L''entreprenant

L''AUDCG révisé a créé le statut d''entreprenant : entrepreneur individuel, personne physique, qui exerce une activité professionnelle civile, commerciale, artisanale ou agricole, avec un chiffre d''affaires ne dépassant pas un seuil fixé par les textes. Il fait une simple déclaration d''activité au RCCM et bénéficie d''obligations comptables allégées. C''est un outil de formalisation du secteur informel, très présent au Sénégal.

## 5. Les sociétés commerciales : principes

La société est instituée par deux ou plusieurs personnes qui affectent des biens (apports) à une activité commune, en vue de partager le bénéfice ou de profiter de l''économie qui en résulte, en s''engageant à contribuer aux pertes. L''AUSCGIE admet aussi la société créée par une seule personne (SARL, SA et SAS unipersonnelles). Les éléments caractéristiques : les apports (en numéraire, en nature, en industrie selon la forme), l''affectio societatis (volonté de collaborer sur un pied d''égalité), la vocation aux bénéfices et la contribution aux pertes. La société acquiert la personnalité morale à compter de son immatriculation au RCCM.

Les formes commerciales prévues :

- Société en nom collectif (SNC) : associés commerçants, responsables indéfiniment et solidairement des dettes sociales ; parts difficilement cessibles.
- Société en commandite simple (SCS) : commandités responsables indéfiniment et solidairement ; commanditaires responsables à hauteur de leurs apports.
- Société à responsabilité limitée (SARL) : responsabilité limitée aux apports ; capital divisé en parts sociales ; gérance par un ou plusieurs gérants ; forme la plus fréquente pour les PME.
- Société anonyme (SA) : capital divisé en actions ; responsabilité limitée ; organisation avec conseil d''administration ou administrateur général ; commissaire aux comptes obligatoire.
- Société par actions simplifiée (SAS) : introduite lors de la révision de 2014 ; grande liberté statutaire ; président obligatoire.

Le groupement d''intérêt économique (GIE) n''est pas une société : il prolonge l''activité de ses membres. Le capital minimum des SARL et des SA est fixé par l''Acte uniforme, qui permet aux États de prévoir d''autres montants pour la SARL : vérifiez le montant applicable dans votre pays.

## 6. Exemple d''analyse (cas fictif)

Moussa, informaticien salarié, achète chaque mois des téléphones à Dubaï pour les revendre au marché Sandaga, sans immatriculation. Problème : est-il commerçant ? Règle : est commerçant celui qui accomplit habituellement, à titre professionnel et pour son compte, des actes de commerce par nature. Application : l''achat pour revendre est un acte de commerce par nature ; l''activité est régulière et indépendante de son emploi. Solution : il est commerçant de fait ; faute d''immatriculation, il ne peut pas s''en prévaloir mais les tiers peuvent l''invoquer contre lui ; il doit s''immatriculer, ou opter pour le statut d''entreprenant s''il remplit les conditions.

## Points clés

- OHADA : Actes uniformes directement applicables ; CCJA à Abidjan.
- Commerçant : actes de commerce par nature, habitude, profession, indépendance ; immatriculation au RCCM.
- Sociétés : apports, affectio societatis, bénéfices et pertes ; personnalité morale à l''immatriculation.

## Exercices pratiques

- Exercice 1 : citez les deux Actes uniformes OHADA étudiés dans cette leçon et leur objet.
- Exercice 2 : classez : signature d''une lettre de change par un enseignant ; achat d''un camion par un transporteur pour son activité ; achat de riz par une ménagère pour sa famille ; opération de change par un bureau de change.
- Exercice 3 : quelle différence entre un commerçant et un entreprenant ?
- Exercice 4 : citez quatre éléments caractéristiques du contrat de société.
- Exercice 5 : trois amis veulent créer une agence de voyages à Mbour, limiter leur responsabilité et garder une organisation simple. Quelles formes leur conseillez-vous ?
- Exercice 6 (cas pratique) : Aminata, associée d''une SNC, est poursuivie personnellement par un fournisseur impayé de la société. Elle soutient qu''elle n''a pas signé la commande. Que lui répondez-vous ?

## Corrigé

- Exercice 1 : l''AUDCG (statut du commerçant et de l''entreprenant, RCCM, bail commercial, fonds de commerce, vente commerciale) et l''AUSCGIE (constitution, fonctionnement et dissolution des sociétés commerciales et du GIE).
- Exercice 2 : la lettre de change est un acte de commerce par la forme, même signée par un enseignant ; l''achat du camion est un acte de commerce par accessoire ; l''achat de riz pour la famille est un acte civil ; l''opération de change est un acte de commerce par nature.
- Exercice 3 : l''entreprenant est une personne physique dont l''activité reste en dessous d''un seuil de chiffre d''affaires ; il fait une déclaration d''activité et a des obligations allégées ; le commerçant s''immatricule et supporte l''ensemble des obligations comptables.
- Exercice 4 : les apports, l''affectio societatis, la vocation aux bénéfices ou à l''économie, la contribution aux pertes.
- Exercice 5 : une SARL (forme classique des PME, gérance simple, responsabilité limitée aux apports) ou une SAS (liberté statutaire). Il faut vérifier le capital minimum applicable et les éventuelles autorisations administratives propres à l''activité d''agence de voyages.
- Exercice 6 : dans une SNC, les associés répondent indéfiniment et solidairement des dettes sociales. Le fournisseur peut la poursuivre personnellement, même si elle n''a pas signé, en principe après une mise en demeure infructueuse adressée à la société. Elle pourra ensuite se retourner contre ses coassociés pour leur part.', 'texte', 60, false, 40
from public.courses c where c.slug = 'lic-compta-l1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Droit des affaires OHADA : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Sujet type d''examen de Licence 1 (entraînement)', '## Présentation

Sujet d''entraînement de type examen semestriel de Licence 1 (ce n''est pas un sujet officiel). Durée conseillée : 3 heures. Calculatrice autorisée. Barème indicatif, non officiel, sur 20 points. Taux de TVA de 20 % : taux fictif pour l''exemple, choisi pour simplifier les calculs. Le taux réel est fixé par le code général des impôts de chaque État : vérifiez toujours le texte en vigueur.

## Sujet

Partie I. Comptabilité générale (9 points). Dakar Bureautique SARL vend du matériel de bureau.

- 1. (1 point) Énoncez le principe de prudence et le principe de spécialisation des exercices.
- 2. (3 points) Le 4 mai, elle vend des marchandises à un client qui paie immédiatement par virement : prix brut 5 000 000, remise 10 %, escompte 2 %. Établissez la facture et passez l''écriture.
- 3. (2 points) Le 9 mai, elle achète à crédit des marchandises : prix brut 2 500 000, remise 4 %. Écriture.
- 4. (1 point) Le 15 mai, elle retourne au fournisseur des marchandises défectueuses pour 200 000 HT et reçoit une facture d''avoir. Écriture.
- 5. (2 points) Calculez la TVA due de mai (aucun crédit antérieur) et passez l''écriture de liquidation.

Partie II. Mathématiques financières (7 points)

- 6. (2 points) Un capital de 2 500 000 est placé 3 ans à 7 % l''an à intérêts composés. Valeur acquise ?
- 7. (2 points) Un effet de 900 000 est escompté 40 jours avant l''échéance au taux de 9 %. Escompte et valeur nette (pas de commission).
- 8. (3 points) La société emprunte 8 000 000 sur 3 ans à 8 %, remboursables par annuités constantes. Annuité et tableau d''amortissement.

Partie III. Droit des affaires OHADA (4 points)

- 9. (4 points) Khady vend depuis deux ans des tissus au marché HLM, chaque jour, sans être immatriculée. Elle veut s''associer avec sa sœur pour ouvrir une boutique, en limitant sa responsabilité. Est-elle commerçante ? Quelle forme de société conseiller ?

## Corrigé détaillé

Question 1 : prudence : appréciation raisonnable des faits pour ne pas transférer sur l''avenir des risques présents ; on enregistre les pertes probables, pas les gains probables. Spécialisation : chaque exercice supporte les charges et produits qui le concernent, et eux seuls.

Question 2 : remise 500 000, net commercial 4 500 000 ; escompte 2 % = 90 000 ; net financier 4 410 000 ; TVA 20 % = 882 000 ; net à payer 5 292 000.

- Débit 521 Banques : 5 292 000
- Débit 673 Escomptes accordés : 90 000
- Crédit 701 Ventes de marchandises : 4 500 000
- Crédit 4431 État, TVA facturée sur ventes : 882 000
- Total débit = total crédit = 5 382 000

Question 3 : net commercial 2 400 000 ; TVA 480 000 ; TTC 2 880 000.

- Débit 601 Achats de marchandises : 2 400 000
- Débit 4452 État, TVA récupérable sur achats : 480 000
- Crédit 401 Fournisseurs : 2 880 000
- Total débit = total crédit = 2 880 000

Question 4 : l''avoir annule une partie de l''achat et de la TVA récupérable.

- Débit 401 Fournisseurs : 240 000
- Crédit 601 Achats de marchandises : 200 000
- Crédit 4452 État, TVA récupérable sur achats : 40 000
- Total débit = total crédit = 240 000

Question 5 : TVA récupérable nette = 480 000 − 40 000 = 440 000 ; TVA due = 882 000 − 440 000 = 442 000.

- Débit 4431 État, TVA facturée sur ventes : 882 000
- Crédit 4452 État, TVA récupérable sur achats : 440 000
- Crédit 4441 État, TVA due : 442 000
- Total débit = total crédit = 882 000

Question 6 : 2 500 000 × 1,07³ = 3 062 608 (arrondi au franc).

Question 7 : e = 900 000 × 0,09 × 40 ÷ 360 = 9 000 ; valeur nette 891 000.

Question 8 : a = 8 000 000 × 0,08 ÷ (1 − 1,08^(−3)) = 3 104 268.

- Année 1 : capital dû en début 8 000 000 ; intérêt 640 000 ; amortissement 2 464 268 ; annuité 3 104 268 ; capital restant dû 5 535 732
- Année 2 : capital dû en début 5 535 732 ; intérêt 442 859 ; amortissement 2 661 409 ; annuité 3 104 268 ; capital restant dû 2 874 323
- Année 3 : capital dû en début 2 874 323 ; intérêt 229 946 ; amortissement 2 874 323 ; annuité 3 104 269 ; capital restant dû 0

Question 9 : l''achat pour revendre est un acte de commerce par nature ; Khady l''accomplit chaque jour, à titre professionnel et pour son compte : elle est commerçante de fait. Non immatriculée, elle ne peut se prévaloir de cette qualité mais les tiers peuvent l''invoquer contre elle. Elle doit s''immatriculer au RCCM (ou faire une déclaration d''entreprenant si elle remplit les conditions). Pour s''associer en limitant sa responsabilité : SARL (ou SAS), en vérifiant le capital minimum applicable. La SNC est à écarter : responsabilité indéfinie et solidaire.

## Exercices pratiques

- Exercice 1 : un client paie par chèque une facture de 1 200 000 TTC. Écriture.
- Exercice 2 : valeur actuelle de 1 000 000 payable dans 2 ans au taux de 10 % ?
- Exercice 3 : quel acte de commerce est commercial quelle que soit la personne qui le signe ?
- Exercice 4 : quel compte enregistre un escompte obtenu ?

## Corrigé

- Exercice 1 : débit 521 Banques 1 200 000 ; crédit 411 Clients 1 200 000.
- Exercice 2 : 1 000 000 ÷ 1,1² = 826 446 (arrondi au franc).
- Exercice 3 : la lettre de change (acte de commerce par la forme), comme le billet à ordre et le warrant.
- Exercice 4 : le compte 773 Escomptes obtenus, au crédit (produit financier).', 'texte', 90, false, 50
from public.courses c where c.slug = 'lic-compta-l1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Sujet type d''examen de Licence 1 (entraînement)');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Comptabilité générale 1', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : étudiants de Licence 1 Comptabilité, Finance, Gestion.
- Objectifs : appliquer la partie double, enregistrer achats, ventes, réductions et TVA, reporter au grand livre et établir une balance.
- Matériel : tableau blanc ou diaporama, plan de comptes SYSCOHADA révisé, calculatrice, fiche d''exercices.
- Prérequis : leçon « Comptabilité générale 1 : l''essentiel pour l''examen ».
- Convention : TVA à 20 %, taux fictif pour l''exemple ; vérifier l''intitulé des comptes dans le plan de comptes officiel.

## Déroulé minuté

## 00:00 – 05:00 · Accueil et objectifs

Bonjour à toutes et à tous. Pendant une heure et demie, nous allons faire ce que l''examen vous demandera : enregistrer des opérations, sans hésiter sur le sens débit ou crédit, puis vérifier que tout est équilibré. À la fin de la séance, vous saurez traiter une facture avec remise, rabais et escompte, calculer la TVA due du mois et présenter une balance. Prenez une feuille, une calculatrice et votre plan de comptes. Visuel : la liste des objectifs à l''écran.

## 05:00 – 15:00 · Rappel : le SYSCOHADA révisé et les classes de comptes

Le SYSCOHADA révisé est le référentiel comptable des États de l''OHADA. Il fixe un plan de comptes en classes. Je les écris au tableau : 1 ressources durables, 2 actif immobilisé, 3 stocks, 4 tiers, 5 trésorerie, 6 charges, 7 produits, 8 autres charges et produits. Un moyen mnémotechnique : les classes 1 à 5 forment le bilan, les classes 6 à 8 alimentent le compte de résultat. Question à la salle : dans quelle classe range-t-on un camion de livraison ? Réponse attendue : classe 2, c''est une immobilisation. Et un stock de ciment chez un quincaillier ? Classe 3.

Je rappelle les principes qui tombent souvent en question de cours : prudence, continuité d''exploitation, permanence des méthodes, coût historique, spécialisation des exercices, intangibilité du bilan d''ouverture. Pour chacun, retenez une phrase et un exemple.

## 15:00 – 25:00 · La partie double en image

Je dessine un compte en T. À gauche le débit, à droite le crédit. Règle : un actif augmente au débit, un passif augmente au crédit, une charge se débite, un produit se crédite. Prenons l''apport de 10 000 000 en banque à la création d''une SARL. La banque, actif, augmente : débit 521. Le capital, ressource, augmente : crédit 101. Chaque écriture se termine par le contrôle : total débit égal total crédit.

- Débit 521 Banques : 10 000 000
- Crédit 101 Capital social : 10 000 000
- Total débit = total crédit = 10 000 000

Deuxième exemple : l''entreprise achète un ordinateur de 900 000 HT payé par virement. Le matériel de bureau, actif, augmente : débit 2441. La TVA récupérable sur immobilisations, créance sur l''État, augmente : débit 4451. La banque diminue : crédit 521. Erreur classique : inverser le sens parce qu''on raisonne comme la banque. Sur votre relevé bancaire, la banque « crédite » votre compte quand vous recevez de l''argent : c''est le point de vue de la banque, pas le vôtre.

## 25:00 – 40:00 · Les factures avec réductions

Écran : une facture de vente de la société fictive Kayor Équipements. Prix brut 6 000 000, remise 5 %, rabais 2 %, escompte 1 % pour paiement comptant. Calculons ensemble, dans l''ordre. Remise : 300 000, il reste 5 700 000. Rabais : 2 % de 5 700 000 = 114 000, net commercial 5 586 000. Escompte : 1 % de 5 586 000 = 55 860, net financier 5 530 140. TVA à 20 % fictif : 1 106 028. Net à payer : 6 636 168.

Chez le vendeur, la vente se comptabilise au net commercial, l''escompte en charge financière :

- Débit 521 Banques : 6 636 168
- Débit 673 Escomptes accordés : 55 860
- Crédit 701 Ventes de marchandises : 5 586 000
- Crédit 4431 État, TVA facturée sur ventes : 1 106 028
- Total débit = total crédit = 6 692 028

Chez l''acheteur, la même facture donne :

- Débit 601 Achats de marchandises : 5 586 000
- Débit 4452 État, TVA récupérable sur achats : 1 106 028
- Crédit 521 Banques : 6 636 168
- Crédit 773 Escomptes obtenus : 55 860
- Total débit = total crédit = 6 692 028

Je vous laisse une minute pour vérifier les totaux sur votre calculatrice. Pourquoi la TVA se calcule-t-elle sur le net financier ? Parce que c''est le prix réellement payé pour la marchandise.

## 40:00 – 50:00 · Pause active : quiz

Cinq questions, trente secondes chacune. Notez vos réponses.

- Question 1 : une remise accordée sur facture s''enregistre-t-elle ? Réponse : non, on enregistre le net commercial.
- Question 2 : quel compte pour un escompte accordé ? Réponse : 673.
- Question 3 : TTC de 2 000 000 HT avec TVA à 20 % fictif ? Réponse : 2 400 000.
- Question 4 : HT d''une facture de 3 600 000 TTC ? Réponse : 3 000 000.
- Question 5 : une balance équilibrée garantit-elle l''absence d''erreur ? Réponse : non ; une écriture dans le mauvais compte, ou oubliée, ne déséquilibre pas la balance.

## 50:00 – 1:00:00 · Retours, avoirs et TVA due

Le fournisseur reprend des marchandises défectueuses pour 300 000 HT : il nous adresse une facture d''avoir. Nous annulons partiellement l''achat et la TVA récupérable :

- Débit 401 Fournisseurs : 360 000
- Crédit 601 Achats de marchandises : 300 000
- Crédit 4452 État, TVA récupérable sur achats : 60 000
- Total débit = total crédit = 360 000

Fin du mois : TVA collectée 2 500 000, TVA récupérable sur achats 1 400 000, sur immobilisations 600 000. TVA due 500 000. Écriture de liquidation :

- Débit 4431 État, TVA facturée sur ventes : 2 500 000
- Crédit 4452 État, TVA récupérable sur achats : 1 400 000
- Crédit 4451 État, TVA récupérable sur immobilisations : 600 000
- Crédit 4441 État, TVA due : 500 000
- Total débit = total crédit = 2 500 000

Puis, au paiement : débit 4441, crédit 521. Si la TVA récupérable dépasse la TVA collectée, le solde va au 4449 crédit de TVA à reporter.

## 1:00:00 – 1:15:00 · Correction commentée d''un mini-cas : grand livre et balance

Énoncé à l''écran : une entreprise a passé dans le mois les écritures suivantes : apport 10 000 000 en banque ; achat de marchandises à crédit 4 000 000 HT ; vente au comptant par banque 3 000 000 HT ; achat de matériel de bureau 1 500 000 HT par banque ; loyer 400 000 par banque, hors TVA pour l''exercice. Je reporte au tableau, compte par compte. Banques : débit 10 000 000 et 3 600 000, crédit 1 800 000 et 400 000 ; solde débiteur 11 400 000. Fournisseurs : crédit 4 800 000. Achats : débit 4 000 000. Ventes : crédit 3 000 000. TVA facturée : crédit 600 000. TVA récupérable sur achats : débit 800 000. TVA sur immobilisations : débit 300 000. Matériel de bureau : débit 1 500 000. Locations : débit 400 000. Capital : crédit 10 000 000.

Balance : soldes débiteurs 11 400 000 + 4 000 000 + 800 000 + 300 000 + 1 500 000 + 400 000 = 18 400 000 ; soldes créditeurs 10 000 000 + 4 800 000 + 3 000 000 + 600 000 = 18 400 000. Égalité vérifiée. Commentaire : la TVA du mois est un crédit de 500 000, car l''entreprise a beaucoup acheté en démarrant.

## 1:15:00 – 1:22:00 · Synthèse

Trois réflexes pour l''examen. Un : calculer la facture dans l''ordre brut, remise, rabais, escompte, TVA. Deux : écrire chaque ligne avec numéro, intitulé, sens et montant, puis contrôler l''équilibre. Trois : à la fin du mois, liquider la TVA et vérifier la balance. N''oubliez pas : tous les taux de TVA de cette séance sont fictifs ; au Sénégal comme ailleurs, le taux réel figure dans le code général des impôts en vigueur.

## 1:22:00 – 1:30:00 · Évaluation finale

- Question 1 : une facture brute de 1 000 000 avec remise 10 % et escompte 2 % : net financier ? Réponse : 900 000 − 18 000 = 882 000.
- Question 2 : TVA sur ce net financier au taux fictif de 20 % ? Réponse : 176 400.
- Question 3 : chez l''acheteur, dans quel compte et quel sens enregistre-t-on l''escompte ? Réponse : 773 Escomptes obtenus, au crédit.
- Question 4 : TVA collectée 900 000, récupérable 1 100 000 : conséquence ? Réponse : crédit de TVA de 200 000 au 4449, reportable.
- Question 5 : quel document recense tous les comptes avec leurs soldes ? Réponse : la balance.

Merci pour votre attention. Refaites le mini-cas seuls, sans regarder la correction, avant la prochaine séance.', 'video', 90, false, 60
from public.courses c where c.slug = 'lic-compta-l1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Comptabilité générale 1');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Mathématiques financières', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : étudiants de Licence 1.
- Objectifs : choisir entre intérêts simples et composés, calculer un escompte, une valeur actuelle, une annuité et un tableau d''amortissement.
- Matériel : diaporama, calculatrice scientifique (touche puissance), fiche de formules.
- Prérequis : pourcentages, puissances.
- Convention : les taux d''intérêt utilisés sont des taux imaginés pour les exemples.

## Déroulé minuté

## 00:00 – 05:00 · Pourquoi les mathématiques financières ?

Bonjour. Un franc aujourd''hui ne vaut pas un franc dans un an : on peut le placer, et il rapporte un intérêt. Toute la matière repose sur cette idée. Elle sert à négocier un crédit, à choisir entre payer comptant ou à crédit, à évaluer un investissement. Visuel : une flèche du temps, avec un capital qui grossit vers la droite (capitalisation) et qui rétrécit vers la gauche (actualisation).

## 05:00 – 20:00 · Les intérêts simples et l''escompte

Formule au tableau : I = C × t × n ÷ 360, avec n en jours. Exemple : une tontine d''entreprise place 2 400 000 à 6 % pendant 150 jours. I = 2 400 000 × 0,06 × 150 ÷ 360 = 60 000. Valeur acquise : 2 460 000.

Pour calculer un nombre de jours entre deux dates, on compte les jours réels du calendrier, mais on divise par 360 : c''est la convention commerciale. Du 10 mars au 30 avril : 21 jours restants en mars, plus 30 jours en avril, soit 51 jours.

L''escompte commercial : la banque achète votre effet avant l''échéance. Effet de 3 600 000 à 50 jours, taux 8 % : e = 3 600 000 × 0,08 × 50 ÷ 360 = 40 000. Avec une commission de 4 000 (tarif imaginé), agios 44 000, valeur nette 3 556 000. Question à la salle : pourquoi l''escompte se calcule-t-il sur la valeur nominale et non sur la valeur nette ? Parce que c''est la convention bancaire de l''escompte commercial ; elle avantage légèrement la banque.

Les examinateurs aiment aussi les questions inverses. Retrouver le taux : un placement de 900 000 pendant 80 jours a rapporté 16 000 ; t = I × 360 ÷ (C × n) = 16 000 × 360 ÷ (900 000 × 80) = 0,08, soit 8 %. Retrouver le capital : quel capital, placé à 6 % pendant 120 jours, rapporte 24 000 ? C = I × 360 ÷ (t × n) = 24 000 × 360 ÷ (0,06 × 120) = 1 200 000. Je vous conseille de toujours partir de la formule de base et d''isoler l''inconnue, plutôt que d''apprendre quatre formules différentes.

Dernier point sur le court terme : le taux effectif de l''escompte. La banque vous remet 3 556 000 aujourd''hui et récupère 3 600 000 dans 50 jours. Le coût réel, rapporté à la somme effectivement reçue, est 44 000 × 360 ÷ (3 556 000 × 50), soit environ 8,91 % : plus que le taux affiché de 8 %, à cause de la commission et du calcul sur la valeur nominale. C''est une bonne question de réflexion pour un oral.

## 20:00 – 35:00 · Les intérêts composés

Cn = C0 × (1 + i)^n. Placement de 1 000 000 à 10 % pendant 3 ans : 1 000 000 × 1,1³ = 1 331 000. En intérêts simples, on aurait 1 300 000. Les 31 000 de différence, ce sont les intérêts des intérêts.

Taux équivalent et taux proportionnel : 12 % par an, c''est 1 % par mois en taux proportionnel, mais le taux mensuel équivalent est 1,12^(1/12) − 1, soit environ 0,9489 %. Retenez : en intérêts composés, on utilise le taux équivalent, sauf si l''énoncé précise un taux nominal capitalisé par période.

Actualisation : C0 = Cn × (1 + i)^(−n). Une prime de 2 000 000 promise dans 3 ans, taux 8 % : 2 000 000 ÷ 1,08³ = 1 587 664. C''est la valeur aujourd''hui de cette promesse.

## 35:00 – 45:00 · Pause quiz

- Question 1 : intérêt simple de 600 000 à 9 % pendant 60 jours ? Réponse : 9 000.
- Question 2 : valeur acquise de 1 000 000 à 5 % pendant 2 ans, intérêts composés ? Réponse : 1 102 500.
- Question 3 : 1 % par mois est-il équivalent à 12 % par an en intérêts composés ? Réponse : non, 1,01^12 − 1 ≈ 12,68 %.
- Question 4 : valeur actuelle de 1 210 000 dans 2 ans à 10 % ? Réponse : 1 000 000.

## 45:00 – 1:00:00 · Les annuités

Valeur acquise d''annuités constantes : Vn = a × [(1 + i)^n − 1] ÷ i. Valeur actuelle : V0 = a × [1 − (1 + i)^(−n)] ÷ i. Je montre au tableau d''où vient la formule : la somme des valeurs acquises de chaque versement est une suite géométrique de raison (1 + i).

Exemple : un jeune entrepreneur de Thiès épargne 200 000 à la fin de chaque mois pendant 24 mois, au taux mensuel de 0,5 %. V24 = 200 000 × (1,005^24 − 1) ÷ 0,005 = 5 086 391. Il aura versé 4 800 000 ; la différence, 286 391, ce sont les intérêts.

Utilisons maintenant la valeur actuelle pour décider. Un fournisseur propose une chambre froide à 2 700 000 comptant, ou 3 versements annuels de 1 000 000, le premier dans un an. Au taux de 6 %, la valeur actuelle des versements est 1 000 000 × (1 − 1,06^(−3)) ÷ 0,06 = 2 673 012. Elle est inférieure au prix comptant : le paiement échelonné est plus avantageux, de 26 988 en valeur d''aujourd''hui. Attention au piège : comparer 3 000 000 à 2 700 000 sans actualiser conduit à la mauvaise décision. On ne compare jamais des sommes situées à des dates différentes sans les ramener à la même date.

## 1:00:00 – 1:15:00 · Correction commentée : l''emprunt à annuités constantes

Exercice : un atelier de couture emprunte 5 000 000 sur 3 ans à 10 %. Annuité : a = 5 000 000 × 0,10 ÷ (1 − 1,1^(−3)) = 2 010 574. Tableau, arrondi au franc :

- Année 1 : capital dû en début 5 000 000 ; intérêt 500 000 ; amortissement 1 510 574 ; annuité 2 010 574 ; capital restant dû 3 489 426
- Année 2 : capital dû en début 3 489 426 ; intérêt 348 943 ; amortissement 1 661 631 ; annuité 2 010 574 ; capital restant dû 1 827 795
- Année 3 : capital dû en début 1 827 795 ; intérêt 182 780 ; amortissement 1 827 795 ; annuité 2 010 575 ; capital restant dû 0

Commentaire ligne par ligne : l''intérêt de l''année 1 est 10 % de 5 000 000 ; l''amortissement est l''annuité moins l''intérêt ; le capital restant dû diminue d''autant. Vérifications : la somme des amortissements fait 5 000 000 ; le dernier capital restant dû est nul ; les amortissements augmentent chaque année d''environ 10 %, car ils forment une suite géométrique de raison 1,1. À l''examen, on vous demandera parfois une seule ligne du tableau, par exemple la troisième : inutile alors de tout recalculer, le capital restant dû après k annuités est égal à la valeur actuelle des annuités restantes. Pensez aussi à la lecture comptable : les intérêts vont en charges financières, l''amortissement du capital réduit la dette d''emprunt.

## 1:15:00 – 1:22:00 · Synthèse

Court terme : intérêts simples, base 360. Long terme : intérêts composés. Capitaliser, c''est multiplier par (1 + i)^n ; actualiser, c''est diviser. Pour les annuités, retenez les deux formules et sachez de quelle date vous parlez. Pour un emprunt : annuité, puis tableau, puis contrôles.

Les erreurs les plus fréquentes dans les copies : utiliser 365 jours au lieu de 360 sans que l''énoncé le demande ; écrire 8 au lieu de 0,08 dans la formule ; diviser un taux annuel par 12 en intérêts composés ; oublier d''arrondir au franc ; oublier de conclure par une phrase. Une dernière astuce : estimez toujours l''ordre de grandeur avant de calculer. Un capital placé à 10 % pendant 3 ans doit augmenter d''un peu plus de 30 % : si vous trouvez 300 %, il y a une erreur.

## 1:22:00 – 1:30:00 · Évaluation finale

- Question 1 : intérêt simple de 1 800 000 à 8 % pendant 45 jours ? Réponse : 18 000.
- Question 2 : valeur acquise de 500 000 à 6 % pendant 2 ans en intérêts composés ? Réponse : 561 800.
- Question 3 : valeur actuelle de 1 331 000 payable dans 3 ans à 10 % ? Réponse : 1 000 000.
- Question 4 : valeur acquise de 4 annuités de 100 000 à 10 % ? Réponse : 100 000 × (1,1^4 − 1) ÷ 0,1 = 464 100.
- Question 5 : dans un emprunt à annuités constantes, que deviennent les intérêts au fil des années ? Réponse : ils diminuent, car le capital restant dû diminue.

Merci. Refaites le tableau d''amortissement seul, puis vérifiez avec la correction.', 'video', 90, false, 70
from public.courses c where c.slug = 'lic-compta-l1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Mathématiques financières');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Droit des affaires OHADA', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : étudiants de Licence 1 Comptabilité et Gestion.
- Objectifs : situer l''OHADA, qualifier un commerçant et un acte de commerce, choisir une forme de société, réussir un cas pratique juridique.
- Matériel : diaporama, Actes uniformes (AUDCG, AUSCGIE) en version officielle, fiche méthode du cas pratique.
- Prérequis : leçon « Droit des affaires OHADA : l''essentiel pour l''examen ».
- Précaution : les seuils, montants et délais doivent toujours être vérifiés dans le texte officiel en vigueur ; cette séance présente des principes.

## Déroulé minuté

## 00:00 – 05:00 · Introduction

Bonjour à tous. Vous êtes futurs comptables : pourquoi du droit ? Parce que chaque écriture traduit un acte juridique : une vente, un apport, un contrat de prêt. Et parce que la forme de l''entreprise détermine ses obligations comptables, la responsabilité des associés et le contrôle des comptes. Aujourd''hui : l''OHADA, le commerçant, les sociétés, et la méthode du cas pratique.

## 05:00 – 15:00 · L''OHADA, ses Actes uniformes et la CCJA

L''OHADA naît du traité de Port-Louis en 1993, révisé à Québec en 2008. Dix-sept États membres, dont le Sénégal. Son originalité : les Actes uniformes s''appliquent directement dans chaque État, sans loi de transposition, et priment sur les dispositions nationales contraires. Je les cite au tableau : droit commercial général, sociétés commerciales et GIE, sûretés, procédures de recouvrement et voies d''exécution, procédures collectives, arbitrage, droit comptable et information financière, transport de marchandises par route, sociétés coopératives, médiation. La CCJA, à Abidjan, unifie l''interprétation. Question : un litige sur un bail commercial à Dakar peut-il finir devant la CCJA ? Oui, en cassation, puisqu''il porte sur l''application d''un Acte uniforme.

## 15:00 – 30:00 · Le commerçant et les actes de commerce

Définition : est commerçant celui qui fait de l''accomplissement d''actes de commerce par nature sa profession. Je décompose : des actes de commerce par nature ; accomplis habituellement, à titre de profession ; en son nom et pour son compte.

Trois familles d''actes. Par nature : achat pour revendre, banque, change, assurance, transport, intermédiation. Par la forme : lettre de change, billet à ordre, warrant, et actes des sociétés commerciales par la forme. Par accessoire : actes d''un commerçant pour les besoins de son commerce, comme l''achat d''un véhicule de livraison.

Exemple commenté : Ibrahima, chauffeur salarié d''une société de transport, n''est pas commerçant : il agit pour le compte de son employeur. Sa voisine, qui achète du poisson au port de Joal et le revend chaque jour à Thiès, l''est.

Autres situations à trancher avec vous. Un agriculteur qui vend sa propre récolte d''arachide au marché : en principe, il ne fait pas d''achat pour revendre ; il vend le produit de son travail, ce qui relève d''une activité civile. Un médecin qui ouvre un cabinet : profession libérale, civile, non commerciale. Une gérante de SARL : elle n''est pas commerçante du seul fait de sa fonction, puisque c''est la société qui fait le commerce. En revanche, l''associé d''une SNC a la qualité de commerçant. Retenez la question à se poser : qui accomplit l''acte, à quel titre, et pour le compte de qui ?

Je vous montre aussi l''intérêt pratique de la qualification. Entre commerçants, la preuve est en principe libre ; les règles de prescription et le tribunal compétent peuvent différer de ceux applicables aux actes civils. C''est pourquoi le juge commence toujours par qualifier l''acte et la personne.

## 30:00 – 40:00 · Obligations, RCCM et entreprenant

Le commerçant s''immatricule au RCCM, tient une comptabilité, respecte ses obligations fiscales et sociales. L''immatriculation fait présumer la qualité de commerçant. L''entreprenant, statut créé par la révision de l''AUDCG, fait une simple déclaration d''activité ; ses obligations comptables sont allégées tant que son chiffre d''affaires reste sous le seuil fixé par les textes. Pour le Sénégal, c''est un outil de formalisation de nombreux petits commerces.

## 40:00 – 50:00 · Pause quiz

- Question 1 : où siège la CCJA ? Réponse : Abidjan.
- Question 2 : la signature d''une lettre de change par un fonctionnaire est-elle un acte de commerce ? Réponse : oui, par la forme ; elle ne fait pas pour autant de lui un commerçant.
- Question 3 : qu''est-ce qui fait présumer la qualité de commerçant ? Réponse : l''immatriculation au RCCM.
- Question 4 : l''entreprenant s''immatricule-t-il ? Réponse : non, il fait une déclaration d''activité au RCCM.

## 50:00 – 1:05:00 · Les sociétés commerciales

Le contrat de société : des apports, l''affectio societatis, la vocation aux bénéfices et la contribution aux pertes. La personnalité morale naît avec l''immatriculation. Je projette un tableau comparatif décrit en texte. SNC : associés commerçants, responsabilité indéfinie et solidaire. SCS : commandités indéfiniment responsables, commanditaires limités à leurs apports. SARL : responsabilité limitée aux apports, parts sociales, gérant. SA : actions, conseil d''administration ou administrateur général, commissaire aux comptes. SAS : grande liberté statutaire, président. Le GIE n''est pas une société : il prolonge l''activité de ses membres.

Regardons le fonctionnement. Dans la SARL, le ou les gérants dirigent ; les décisions importantes, comme la modification des statuts, sont prises par les associés en assemblée, selon des conditions de majorité prévues par l''Acte uniforme. Les comptes annuels sont approuvés chaque année par les associés. Dans la SA, le conseil d''administration fixe les orientations et contrôle, le directeur général ou le président-directeur général dirige ; l''assemblée générale ordinaire approuve les comptes et décide de l''affectation du résultat ; l''assemblée extraordinaire modifie les statuts. Le commissaire aux comptes certifie les comptes : vous le retrouverez en Licence 3 dans la matière audit. Dans la SAS, les statuts organisent librement la direction, avec au moins un président qui représente la société.

Pour le capital minimum, l''Acte uniforme fixe des montants pour la SARL et la SA et permet aux États de retenir d''autres montants pour la SARL : vérifiez le texte en vigueur dans votre pays. Ne récitez jamais un chiffre dont vous n''êtes pas sûr à l''examen : expliquez le principe.

## 1:05:00 – 1:20:00 · Correction commentée d''un cas pratique

Énoncé : Mariama et Ousmane exploitent ensemble, depuis trois ans, un restaurant à Saly, sans statuts écrits ni immatriculation. Un fournisseur impayé poursuit Ousmane seul pour la totalité de la dette. Ousmane conteste : c''est Mariama qui a passé la commande.

Méthode en quatre temps. Les faits : deux personnes exploitent en commun une activité commerciale, sans immatriculation. Le problème : quelle est la nature de leur groupement et quelle est l''étendue de la responsabilité d''Ousmane ? La règle : une société non immatriculée n''a pas la personnalité morale ; l''AUSCGIE organise la société créée de fait, à laquelle s''appliquent les règles de la SNC, avec une responsabilité indéfinie et solidaire des associés. Application : Mariama et Ousmane ont mis des moyens en commun et partagent les résultats ; leur comportement révèle une société créée de fait. Solution : Ousmane peut être poursuivi pour la totalité ; il se retournera ensuite contre Mariama pour sa part. Conseil : régulariser en rédigeant des statuts et en immatriculant une SARL ou une SAS pour limiter leur responsabilité à l''avenir.

Variante pour vérifier que vous avez compris : et si Mariama et Ousmane avaient exploité le restaurant sous la forme d''une SARL régulièrement immatriculée ? Le fournisseur aurait dû agir contre la société, personne morale, débitrice de la dette. Les associés n''auraient répondu des dettes qu''à hauteur de leurs apports, sauf engagement personnel, par exemple une caution donnée à la banque, ou faute de gestion engageant la responsabilité du gérant. Vous voyez que le choix de la forme sociale n''est pas un détail administratif : il protège, ou non, le patrimoine personnel des associés. Prenez deux minutes pour rédiger cette variante en cinq lignes, je ramasse quelques copies pour les commenter.

## 1:20:00 – 1:24:00 · Synthèse

Retenez la définition du commerçant et les trois familles d''actes de commerce. Erreurs fréquentes dans les copies : réciter le cours sans l''appliquer aux faits ; confondre acte de commerce par la forme et qualité de commerçant ; oublier de conclure ; inventer un chiffre ou un numéro d''article. Un correcteur préfère une règle bien expliquée à une référence fausse. Pour une société, regardez d''abord la responsabilité des associés, puis l''organisation et le contrôle. Et pour tout cas pratique : faits, problème, règle, application, solution.

## 1:24:00 – 1:30:00 · Évaluation finale

- Question 1 : en quelle année et où le traité OHADA a-t-il été signé ? Réponse : en 1993, à Port-Louis.
- Question 2 : citez les trois conditions pour être commerçant. Réponse : actes de commerce par nature, à titre habituel et professionnel, en son nom et pour son compte.
- Question 3 : dans quelle société les associés sont-ils indéfiniment et solidairement responsables ? Réponse : la SNC (et les commandités de la SCS).
- Question 4 : à quel moment une société acquiert-elle la personnalité morale ? Réponse : à son immatriculation au RCCM.
- Question 5 : quelle forme sociale a été introduite lors de la révision de l''AUSCGIE en 2014 ? Réponse : la SAS.

Merci. Rédigez la solution du cas Mariama et Ousmane en une page pour vous entraîner.', 'video', 90, false, 80
from public.courses c where c.slug = 'lic-compta-l1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Droit des affaires OHADA');
