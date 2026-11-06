#!/usr/bin/env bash
# Lance les tests du schéma sur un PostgreSQL local temporaire (simulation Supabase).
# Utilisation : bash supabase/tests/run.sh
set -euo pipefail
HERE="$(cd "$(dirname "$0")" && pwd)"
ROOT="$(cd "$HERE/../.." && pwd)"
PGBIN="${PGBIN:-$(ls -d /usr/lib/postgresql/*/bin 2>/dev/null | tail -1)}"
WORK="$(mktemp -d)"
chmod 755 "$WORK"
RUN=""
if [ "$(id -u)" = "0" ]; then RUN="runuser -u postgres --"; chown postgres "$WORK"; fi
$RUN "$PGBIN/initdb" -D "$WORK/data" -A trust -U postgres >/dev/null
$RUN "$PGBIN/pg_ctl" -D "$WORK/data" -o "-k $WORK -p 54329 -c listen_addresses=''" -l "$WORK/log" start >/dev/null
trap '$RUN "$PGBIN/pg_ctl" -D "$WORK/data" stop -m fast >/dev/null; rm -rf "$WORK"' EXIT
export PGOPTIONS="-c client_min_messages=warning"
PSQL=(psql -h "$WORK" -p 54329 -U postgres -d postgres -v ON_ERROR_STOP=1 -q)
"${PSQL[@]}" -f "$HERE/supabase_stub.sql"
"${PSQL[@]}" -f "$ROOT/supabase/migrations/001_schema.sql"
"${PSQL[@]}" -f "$ROOT/supabase/migrations/001_schema.sql"   # ré-exécution : doit rester sans erreur
"${PSQL[@]}" -f "$ROOT/supabase/seed.sql"
for f in "$ROOT"/supabase/seed_cours_*.sql; do [ -e "$f" ] && "${PSQL[@]}" -f "$f"; done
for f in "$ROOT"/supabase/seed_cours_*.sql; do [ -e "$f" ] && "${PSQL[@]}" -f "$f"; done   # ré-exécution sans doublon
"${PSQL[@]}" -tA -f "$HERE/rls_test.sql" 2>&1 | grep -E "OK :|ÉCHEC|ERROR|ERREUR|===" || true
