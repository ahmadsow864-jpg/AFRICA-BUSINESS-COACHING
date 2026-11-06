// Génère supabase/seed.sql à partir de site/js/data.js (source unique des contenus).
// Utilisation : node tools/generate-seed.mjs
import { readFileSync, writeFileSync } from "node:fs";
import { fileURLToPath } from "node:url";
import { dirname, join } from "node:path";
import vm from "node:vm";

const root = join(dirname(fileURLToPath(import.meta.url)), "..");
const ctx = { window: {} };
vm.runInNewContext(readFileSync(join(root, "site/js/data.js"), "utf8"), ctx);
const data = ctx.window.ABC_DATA;

const q = (s) => "'" + String(s).replace(/'/g, "''") + "'";
const arr = (a) => "array[" + a.map(q).join(", ") + "]::text[]";

const out = [];
out.push("-- Fichier généré par tools/generate-seed.mjs — ne pas modifier à la main.");
out.push("-- Contenus initiaux du site. À exécuter après migrations/001_schema.sql.\n");

out.push("insert into public.services (id, pole, title, short, description, features, icon, image_url, badge, sort) values");
out.push(data.services.map((s) =>
  `  (${q(s.id)}, ${q(s.pole)}, ${q(s.title)}, ${q(s.short)}, ${q(s.description)}, ${arr(s.features)}, ${q(s.icon)}, ${q(s.image_url)}, ${q(s.badge)}, ${s.sort})`
).join(",\n") + "\non conflict (id) do nothing;\n");

out.push("insert into public.site_settings (key, value) values");
out.push(Object.entries(data.settings).map(([k, v]) => `  (${q(k)}, ${q(v)})`).join(",\n") + "\non conflict (key) do nothing;\n");

const levels = [
  ["college", "6e"], ["college", "5e"], ["college", "4e"], ["college", "3e"],
  ["lycee", "Seconde"], ["lycee", "Première"], ["lycee", "Terminale"],
  ["licence", "Licence 1"], ["licence", "Licence 2"], ["licence", "Licence 3"],
  ["master", "Master 1"], ["master", "Master 2"],
  ["doctorat", "Doctorat"]
];
out.push("insert into public.levels (cycle, name, sort) values");
out.push(levels.map(([c, n], i) => `  (${q(c)}, ${q(n)}, ${(i + 1) * 10})`).join(",\n") + "\non conflict (name) do nothing;\n");

writeFileSync(join(root, "supabase/seed.sql"), out.join("\n"));
console.log("supabase/seed.sql généré :", data.services.length, "services,", levels.length, "niveaux.");
