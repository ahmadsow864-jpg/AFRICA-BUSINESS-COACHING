#!/usr/bin/env python3
"""Vérifie les fichiers de cours content/courses/*.json (structure, niveaux, longueurs)."""
import json, glob, sys, re
LEVELS = {"6e","5e","4e","3e","Seconde","Première","Terminale","Licence 1","Licence 2","Licence 3",
          "Master 1","Master 2","Doctorat","Formation professionnelle"}
errors = 0
for f in sorted(glob.glob("content/courses/*.json")):
    try:
        c = json.load(open(f, encoding="utf-8"))
    except Exception as e:
        print("ERREUR", f, e); errors += 1; continue
    pb = []
    if not re.fullmatch(r"[a-z0-9-]{2,80}", c.get("slug", "")): pb.append("slug")
    if c.get("level") not in LEVELS: pb.append("niveau")
    ls = c.get("lessons", [])
    # Deux formats : 5 leçons + 1 vidéo (6 leçons) ou, pour les cours d'examen de Licence,
    # 5 leçons + 3 vidéos de 1h30 (8 leçons). Les vidéos sont toujours à la fin.
    kinds = [l.get("kind") for l in ls]
    nvid = kinds.count("video")
    if (len(ls), nvid) not in ((6, 1), (8, 3), (9, 4), (10, 5)): pb.append(f"{len(ls)} leçons / {nvid} vidéo(s)")
    if nvid and kinds[-nvid:] != ["video"] * nvid: pb.append("vidéos pas à la fin")
    if any(l.get("kind") == "video" and l.get("duration_min") != 90 for l in ls): pb.append("vidéo ≠ 90 min")
    if ls and not ls[0].get("is_free"): pb.append("1re leçon non gratuite")
    if re.search(r"</?(p|div|br|b|i|u|strong|em|h[1-6]|ul|ol|li|span|a|img|script|table)(\s[^<>]*)?/?>", json.dumps(c, ensure_ascii=False)): pb.append("HTML ?")
    words = [len(l.get("content", "").split()) for l in ls]
    if any(w < 400 for w in words): pb.append(f"leçon courte {min(words)} mots")
    print(("OK    " if not pb else "ERREUR"), f.split("/")[-1], c.get("level"), "mots:", words, pb or "")
    errors += bool(pb)
sys.exit(1 if errors else 0)
