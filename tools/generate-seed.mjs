// Génère supabase/seed.sql à partir de site/js/data.js (source unique des contenus).
// Utilisation : node tools/generate-seed.mjs
import { readFileSync, writeFileSync, readdirSync, existsSync, unlinkSync } from "node:fs";
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
  ["doctorat", "Doctorat"],
  ["pro", "Formation professionnelle"]
];
out.push("insert into public.levels (cycle, name, sort) values");
out.push(levels.map(([c, n], i) => `  (${q(c)}, ${q(n)}, ${(i + 1) * 10})`).join(",\n") + "\non conflict (name) do nothing;\n");

// ----- Cours (content/courses/*.json) -----
const levelNames = new Set(levels.map((l) => l[1]));
const dir = join(root, "content/courses");
const courses = existsSync(dir)
  ? readdirSync(dir).filter((f) => f.endsWith(".json")).sort()
      .map((f) => JSON.parse(readFileSync(join(dir, f), "utf8")))
  : [];
courses.sort((a, b) => (a.sort || 0) - (b.sort || 0) || a.slug.localeCompare(b.slug));
const serviceIds = new Set(data.services.map((x) => x.id));
let nLessons = 0;
const courseFiles = [];
let cur = null;
for (const c of courses) {
  // Les cours sont répartis dans plusieurs fichiers (≈ 300 Ko max) pour l'éditeur SQL de Supabase.
  if (!cur || cur.size > 300000) {
    cur = { lines: [], size: 0 };
    courseFiles.push(cur);
  }
  const before = out.length;
  if (!/^[a-z0-9-]{2,80}$/.test(c.slug)) throw new Error("slug invalide : " + c.slug);
  if (!levelNames.has(c.level)) throw new Error(c.slug + " : niveau inconnu " + c.level);
  if (c.module && !serviceIds.has(c.module)) throw new Error(c.slug + " : module inconnu " + c.module);
  out.push(`-- Cours : ${c.title.replace(/\n/g, " ")}`);
  out.push(`insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select ${q(c.slug)}, (select id from public.levels where name = ${q(c.level)}), ${c.module ? q(c.module) : "null"}, ${q(c.subject || "")}, ${q(c.title)}, ${q(c.description || "")}, true, ${c.sort || 100}
on conflict (slug) do nothing;`);
  c.lessons.forEach((l, i) => {
    nLessons++;
    out.push(`insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, ${q(l.title)}, ${q(l.content)}, ${q(l.kind === "video" ? "video" : "texte")}, ${Number(l.duration_min) || 45}, ${l.is_free ? "true" : "false"}, ${(i + 1) * 10}
from public.courses c where c.slug = ${q(c.slug)}
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = ${q(l.title)});`);
  });
  out.push("");
  const chunk = out.splice(before);
  cur.lines.push(...chunk);
  cur.size += chunk.join("\n").length;
}

writeFileSync(join(root, "supabase/seed.sql"), out.join("\n"));
for (const f of readdirSync(join(root, "supabase")).filter((f) => /^seed_cours_\d+\.sql$/.test(f))) {
  unlinkSync(join(root, "supabase", f)); // anciens fichiers supprimés puis régénérés ci-dessous
}
courseFiles.forEach((f, i) => {
  writeFileSync(join(root, `supabase/seed_cours_${i + 1}.sql`),
    `-- Fichier généré par tools/generate-seed.mjs — ne pas modifier à la main.\n-- Cours (partie ${i + 1}/${courseFiles.length}). À exécuter après seed.sql.\n\n` + f.lines.join("\n"));
});

// Catalogue public pour le site sans base : titres de toutes les leçons,
// mais texte complet UNIQUEMENT pour les leçons gratuites (le reste est réservé aux abonnés).
const catalog = courses.map((c) => ({
  slug: c.slug, level: c.level, subject: c.subject || "", module: c.module || null,
  title: c.title, description: c.description || "", sort: c.sort || 100,
  lessons: c.lessons.map((l) => Object.assign(
    { title: l.title, kind: l.kind === "video" ? "video" : "texte", is_free: !!l.is_free, duration_min: Number(l.duration_min) || 45 },
    l.is_free ? { content: l.content } : {}
  ))
}));
writeFileSync(join(root, "site/js/courses-catalog.js"),
  "// Fichier généré par tools/generate-seed.mjs — ne pas modifier à la main.\n" +
  "// Catalogue public : seules les leçons gratuites contiennent leur texte.\n" +
  "window.ABC_CATALOG = " + JSON.stringify(catalog, null, 1) + ";\n");

console.log("supabase/seed.sql généré :", data.services.length, "services,", levels.length, "niveaux,",
  courses.length, "cours,", nLessons, "leçons.");
