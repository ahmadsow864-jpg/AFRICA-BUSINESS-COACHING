// Remplace l'adresse provisoire du site (https://www.votre-domaine.com) par votre vrai nom de domaine
// dans les fichiers de référencement (index.html, robots.txt, sitemap.xml).
// Utilisation : node tools/set-domain.mjs https://www.mon-domaine.sn
import { readFileSync, writeFileSync } from "node:fs";
import { fileURLToPath } from "node:url";
import { dirname, join } from "node:path";

const url = (process.argv[2] || "").replace(/\/+$/, "");
if (!/^https:\/\/[a-z0-9.-]+\.[a-z]{2,}$/i.test(url)) {
  console.error("Indiquez une adresse https valide, ex. : node tools/set-domain.mjs https://www.mon-domaine.sn");
  process.exit(1);
}
const root = join(dirname(fileURLToPath(import.meta.url)), "..");
const PLACEHOLDER = "https://www.votre-domaine.com";
for (const f of ["site/index.html", "site/robots.txt", "site/sitemap.xml"]) {
  const p = join(root, f);
  const s = readFileSync(p, "utf8");
  writeFileSync(p, s.split(PLACEHOLDER).join(url));
  console.log("mis à jour :", f);
}
