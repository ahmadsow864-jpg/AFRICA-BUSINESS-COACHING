# Mettre le site en ligne — Guide pas à pas

Ce guide explique comment rendre le site **Africa Business Development Consulting** opérationnel :
site public, espace administrateur sécurisé et plateforme Éducation en ligne.

Durée estimée : 30 à 45 minutes. Le site (dossier `site/`) est hébergé chez **l'hébergeur de
votre choix** — il n'est **pas** publié sur GitHub. Supabase (offre gratuite pour démarrer)
héberge la base de données et les comptes.

---

## Contenu du dépôt

| Dossier / fichier | Rôle |
|---|---|
| `site/` | Le site web (HTML, CSS, JavaScript, images) |
| `site/index.html` | Accueil : services, francophonie, éducation, contact |
| `site/module.html?m=…` | Page détaillée de chaque module |
| `site/education/` | Catalogue des cours, page cours, espace élève |
| `site/admin/` | Espace administrateur (fondateur) |
| `site/js/config.js` | **À remplir** : adresse et clé publique Supabase |
| `site/js/data.js` | Contenus de départ (services, pays, textes) |
| `supabase/migrations/001_schema.sql` | Base de données + règles de sécurité |
| `supabase/seed.sql` | Contenus initiaux (services, niveaux scolaires) |
| `supabase/tests/` | Tests automatiques des règles de sécurité |

---

## Étape 1 — Créer le projet Supabase

1. Créez un compte sur supabase.com puis **New project**.
   - Nom : `africa-business-coaching`
   - Mot de passe de base de données : fort, gardé dans un gestionnaire de mots de passe.
   - Région : la plus proche de vos utilisateurs.
2. Ouvrez **SQL Editor → New query**, collez tout le contenu de
   `supabase/migrations/001_schema.sql`, cliquez **Run**.
3. Nouvelle requête : collez `supabase/seed.sql`, cliquez **Run**.
4. Puis, une requête à la fois : `supabase/seed_cours_1.sql`, `seed_cours_2.sql`,
   `seed_cours_3.sql`, `seed_cours_4.sql` (les 27 cours et leurs 162 leçons).
   Ces fichiers peuvent être relancés sans créer de doublons.

## Étape 2 — Régler l'authentification

Dans **Authentication** :

1. **Sign In / Providers → Email** : activé, avec **Confirm email** activé.
2. **Multi-Factor (MFA)** : vérifiez que **TOTP** est activé (obligatoire pour l'admin).
3. **URL Configuration** :
   - *Site URL* : l'adresse de votre site, ex. `https://www.mon-domaine.sn/`
   - *Redirect URLs* : ajoutez `https://www.mon-domaine.sn/education/espace.html`
4. **Policies / Passwords** : longueur minimale 8 caractères (ou plus).
5. Recommandé : **Attack Protection → CAPTCHA** et les limites de débit par défaut.

## Étape 3 — Créer le compte du fondateur (administrateur)

1. Sur le site (après l'étape 5), créez un compte via **Éducation → Créer un compte**
   avec votre email, ou dans Supabase : **Authentication → Users → Add user**.
2. Dans **SQL Editor**, exécutez (remplacez l'email) :

   ```sql
   update public.profiles
      set role = 'admin'
    where id = (select id from auth.users where email = 'sowsenfoods2026@outlook.fr');
   ```

3. À la première connexion sur `/admin/`, le site affiche un **QR code** : scannez-le avec
   Google Authenticator, Microsoft Authenticator ou Authy. Ensuite, chaque connexion admin
   demande le code à 6 chiffres. **Sans ce code, aucune donnée d'administration n'est accessible**
   (règle appliquée par la base elle-même, pas seulement par la page).

## Étape 4 — Brancher le site sur Supabase

Dans Supabase : **Project Settings → API**. Copiez :

- **Project URL** → `SUPABASE_URL`
- La clé **anon / public** (ou *publishable*) → `SUPABASE_ANON_KEY`

Collez-les dans `site/js/config.js`.

> ⚠️ Ne mettez **jamais** la clé `service_role` (ou *secret*) dans le site : elle donne tous
> les droits. Le site refuse d'ailleurs de démarrer avec une telle clé.

La clé *anon* peut être publique : ce sont les règles RLS de la base qui protègent les données.

## Étape 5 — Héberger le site (sans GitHub)

Le site n'est **jamais** publié sur GitHub : GitHub sert uniquement à conserver le code.

1. Choisissez un hébergeur web avec certificat HTTPS (hébergeur au Sénégal ou international)
   et réservez votre nom de domaine (ex. `www.mon-domaine.sn`).
2. Indiquez votre domaine dans les fichiers de référencement :
   `node tools/set-domain.mjs https://www.mon-domaine.sn`
3. Envoyez **le contenu du dossier `site/`** à la racine de votre hébergement
   (gestionnaire de fichiers de l'hébergeur ou FTP sécurisé SFTP).
4. Vérifiez que l'adresse s'ouvre bien en `https://`.

Le site peut aussi être utilisé sur votre ordinateur sans hébergement : double-cliquez sur
`Ouvrir-Site-Edge.bat` (voir plus bas).

## Étape 6 — Être visible sur Google dans les pays francophones

1. Ouvrez Google Search Console, ajoutez l'adresse du site, validez la propriété.
2. **Sitemaps** : envoyez `sitemap.xml`.
3. Faites de même sur Bing Webmaster Tools (utilisé par Microsoft Edge).
4. Partagez le lien sur WhatsApp, LinkedIn et Facebook : l'image d'aperçu
   (`img/og-image.png`) s'affiche automatiquement.

## Ouvrir le site sur votre ordinateur Windows (Edge)

1. Sur GitHub : bouton vert **Code → Download ZIP**, puis clic droit sur le ZIP → **Extraire tout**.
2. Dans le dossier extrait, double-cliquez sur :
   - `Ouvrir-Site-Edge.bat` → le site s'ouvre dans Microsoft Edge ;
   - `Ouvrir-Admin-Edge.bat` → l'espace administrateur s'ouvre dans Edge.
3. Si Windows affiche « Windows a protégé votre ordinateur », cliquez **Informations
   complémentaires → Exécuter quand même** (le fichier ne fait qu'ouvrir Edge).

Le site public fonctionne tout de suite. L'administration, les comptes élèves et
l'enregistrement des messages demandent d'avoir fait les étapes 1 à 4 (Supabase).

## Utiliser l'administration dans Microsoft Edge

Ouvrez `…/admin/` dans Edge, connectez-vous, puis menu **… → Applications → Installer ce
site en tant qu'application**. L'espace admin s'ouvre alors comme un logiciel dans sa
propre fenêtre, avec son icône sur le bureau et dans le menu Démarrer.

Sécurité : déconnexion automatique après 30 minutes d'inactivité, double authentification
obligatoire, journal d'audit de toutes les modifications.

---

## Ce que l'administrateur peut faire (`/admin/`)

- **Messages** : lire les demandes du formulaire de contact, marquer traité, archiver.
- **Services du site** : modifier titres, textes, fonctionnalités, ordre ; envoyer une
  **photo** (PNG/JPEG/WebP, 2 Mo max) qui remplace l'illustration ; publier ou masquer ;
  ajouter un nouveau service.
- **Paramètres** : titre et texte d'accueil, email, téléphone, ville, instructions de paiement.
- **Cours & leçons** : créer des cours par niveau (6e → Doctorat), écrire les leçons,
  ajouter un lien vidéo, choisir les leçons gratuites, publier.
- **Formules** : créer les abonnements (nom, niveau ou tous niveaux, prix en FCFA, durée).
- **Abonnements** : vérifier la référence de paiement envoyée par l'élève, puis **Activer**
  (dates calculées automatiquement) ou **Refuser**.
- **Utilisateurs** : voir les inscrits, nommer ou retirer un administrateur.
- **Journal d'audit** : historique des modifications (non modifiable depuis le site).

## Parcours d'un élève / étudiant

1. **Éducation → Créer un compte** (nom, pays, email, mot de passe) puis confirmation par email.
2. **Mon espace → Demander un abonnement** : choix de la formule + référence du paiement.
3. L'administrateur vérifie et active.
4. L'élève ouvre les cours de son niveau ; les leçons payantes se débloquent jusqu'à la date de fin.

Le paiement en ligne automatique (Wave, Orange Money, carte…) n'est pas encore intégré :
il demande un contrat avec un prestataire de paiement. Le circuit actuel (référence de
paiement + validation par l'administrateur) fonctionne sans prestataire.

---

## Tests de sécurité

Les règles de la base sont vérifiées par 40 tests automatiques
(accès anonyme, élève, autre élève, admin sans et avec double authentification, abonnement
expiré, tentative de se donner le rôle admin, etc.) :

```bash
bash supabase/tests/run.sh
```

Ils tournent aussi automatiquement sur GitHub à chaque modification
(`.github/workflows/tests.yml`).

## Modifier les contenus de départ

Les textes de départ sont dans `site/js/data.js`. Après modification :

```bash
node tools/generate-seed.mjs   # régénère supabase/seed*.sql et site/js/courses-catalog.js
```

Une fois Supabase branché, il est plus simple de tout modifier depuis `/admin/`.

## Les cours fournis

27 cours complets (162 leçons) rangés dans `content/courses/` (un fichier par cours) :

- **Formation professionnelle** (un cours par module) : paie Sénégal, paie UEMOA/CEDEAO,
  transport et logistique, carburant, gestion du transport, parkings d'entreprise, parkings
  publics, station-service, flottes, vente de véhicules, GPS, apprendre et enseigner en ligne.
- **Collège / lycée** : Maths 6e, Français 5e, SVT 4e, Maths 3e (BFEM), Maths, Physique-Chimie
  et Philosophie Terminale.
- **Université** : Économie et Comptabilité (L1), Informatique (L1), Statistiques (L2), GRH et
  Finance (M1), Management stratégique (M2), Méthodologie de la recherche (Doctorat).

Chaque cours : 5 leçons écrites avec exercices et corrigés (la 1re gratuite) + 1 cours vidéo de
1h30 fourni sous forme de **plan minuté et texte complet du formateur**, prêt à être filmé.
Une fois la vidéo tournée et mise en ligne (YouTube non répertorié, Vimeo…), collez son lien
dans **Admin → Cours & leçons → Leçons → Modifier → Lien vidéo**.

Les cours ont été rédigés avec une IA : faites-les relire par un enseignant ou un professionnel
du domaine avant publication commerciale (en particulier les numéros de comptes SYSCOHADA,
les taux marqués « fictifs » et les références juridiques).

## Limites connues

- Le formulaire de contact accepte les messages anonymes : un champ piège bloque les robots
  simples ; activez le CAPTCHA Supabase si vous recevez du spam.
- Les règles juridiques, taux et barèmes de paie ne sont pas dans ce site : ils relèvent des
  logiciels de paie et doivent être validés sur les textes officiels de chaque pays.
- Avant toute commercialisation : test d'intrusion par un professionnel de la sécurité.
