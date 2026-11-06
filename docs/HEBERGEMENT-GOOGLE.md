# Mettre le site en ligne avec Google (Firebase Hosting)

Le site est hébergé par **Google Firebase Hosting** — jamais sur GitHub.
Firebase Hosting offre un niveau gratuit pour démarrer, le HTTPS automatique et votre propre
nom de domaine (ex. `www.mon-domaine.sn`).

Le fichier `firebase.json` (déjà prêt dans le dossier du projet) indique à Google :
- de publier uniquement le dossier `site/` ;
- d'ajouter les protections de sécurité (HTTPS obligatoire, anti-clickjacking, politique de
  contenu stricte, espace admin non indexé et jamais mis en cache).

Durée : environ 20 minutes la première fois, puis 1 minute pour chaque mise à jour.

---

## 1. Créer le projet Google Firebase (une seule fois)

1. Allez sur **console.firebase.google.com** et connectez-vous avec votre compte Google.
2. **Ajouter un projet** → nom : `africa-business-development` (Google ajoute parfois des chiffres).
3. Google Analytics : vous pouvez le désactiver (le site n'en a pas besoin).
4. Notez l'**ID du projet** (ex. `africa-business-development-1a2b3`).
5. Dans le fichier `.firebaserc` du projet, remplacez `remplacer-par-id-projet-firebase`
   par cet ID.

## 2. Installer l'outil Firebase sur votre ordinateur Windows (une seule fois)

1. Installez **Node.js** (version LTS) depuis nodejs.org.
2. Ouvrez **PowerShell** et tapez :

   ```powershell
   npm install -g firebase-tools
   firebase login
   ```

   Une page Google s'ouvre dans Edge : connectez-vous avec le même compte Google.

## 3. Indiquer votre nom de domaine dans le site

Dans PowerShell, placez-vous dans le dossier du projet (là où se trouve `firebase.json`) :

```powershell
cd C:\chemin\vers\Africa-Business-Development-Consulting
node tools/set-domain.mjs https://www.mon-domaine.sn
```

Pas encore de nom de domaine ? Utilisez provisoirement l'adresse gratuite donnée par Google :
`https://ID-DU-PROJET.web.app`.

## 4. Publier

```powershell
firebase deploy --only hosting
```

À la fin, Google affiche l'adresse du site (`https://ID-DU-PROJET.web.app`). Ouvrez-la dans Edge.

Pour chaque mise à jour du site : relancez simplement `firebase deploy --only hosting`.
Pour revenir à la version précédente en cas de problème : console Firebase → **Hosting** →
historique des versions → **Restaurer**.

## 5. Brancher votre nom de domaine

1. Console Firebase → **Hosting** → **Ajouter un domaine personnalisé** → `www.mon-domaine.sn`.
2. Google affiche des enregistrements DNS (type A ou TXT) : ajoutez-les chez le vendeur de
   votre nom de domaine.
3. Après validation (de quelques minutes à 24 h), le certificat HTTPS est créé automatiquement.

## 6. Dire à Supabase où se trouve le site

Supabase → **Authentication → URL Configuration** :
- *Site URL* : `https://www.mon-domaine.sn/`
- *Redirect URLs* : `https://www.mon-domaine.sn/education/espace.html`

(et, si vous l'utilisez, la même chose avec l'adresse `https://ID-DU-PROJET.web.app`).

## 7. Apparaître sur Google et sur Edge (Bing)

- **Google** : search.google.com/search-console → ajoutez votre domaine → validez →
  **Sitemaps** → envoyez `sitemap.xml`.
- **Edge / Bing** : bing.com/webmasters → **Importer depuis Google Search Console**
  (un clic) ou ajoutez le site et le même `sitemap.xml`.
- Créez aussi une fiche **Google Business Profile** (business.google.com) pour apparaître
  sur Google Maps à Thiès.

---

## Vérifié avant livraison

La configuration `firebase.json` a été testée avec l'émulateur officiel Firebase : toutes les
pages s'affichent, les en-têtes de sécurité sont présents, l'espace admin est marqué
« ne pas indexer » et « ne pas mettre en cache ». La publication réelle (étape 4) se fait
depuis votre compte Google : rien n'est publié sans vous.
