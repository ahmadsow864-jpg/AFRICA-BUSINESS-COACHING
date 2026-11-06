-- Tests des règles de sécurité (RLS). Lancés par supabase/tests/run.sh sur un PostgreSQL local.
\set ON_ERROR_STOP 1
set client_min_messages = notice;

create or replace function pg_temp.ok(cond boolean, label text) returns void language plpgsql as $$
begin
  if cond is not true then raise exception 'ÉCHEC : %', label; end if;
  raise notice 'OK : %', label;
end $$;

-- Contenus initiaux chargés une seule fois (seed relancé deux fois)
select pg_temp.ok((select count(*) = (select count(distinct slug) from public.courses where slug is not null) from public.courses where slug is not null), 'cours du seed sans doublon');
select pg_temp.ok((select count(*) = 6 * (select count(*) from public.courses where slug is not null) from public.lessons l join public.courses c on c.id = l.course_id where c.slug is not null), 'leçons du seed sans doublon (6 par cours)');
select pg_temp.ok((select count(*) = (select count(*) from public.courses where slug is not null) from public.lessons where kind = 'video' and duration_min = 90), 'un cours vidéo de 1h30 par cours');

-- Utilisateurs de test
insert into auth.users (id, email, raw_user_meta_data) values
  ('00000000-0000-0000-0000-0000000000a1', 'admin@test.sn',  '{"full_name":"Admin"}'),
  ('00000000-0000-0000-0000-0000000000b1', 'eleve1@test.sn', '{"full_name":"Élève Un","country":"Sénégal"}'),
  ('00000000-0000-0000-0000-0000000000b2', 'eleve2@test.sn', '{"full_name":"Élève Deux"}');
select pg_temp.ok((select count(*) = 3 from public.profiles where role = 'student'), 'profils créés en student');

-- Promotion admin par le propriétaire du projet (requête SQL directe)
update public.profiles set role = 'admin' where id = '00000000-0000-0000-0000-0000000000a1';
select pg_temp.ok((select role = 'admin' from public.profiles where id = '00000000-0000-0000-0000-0000000000a1'), 'promotion admin en SQL direct');

-- Données éducation
insert into public.courses (id, level_id, title, published) values
  ('11111111-1111-1111-1111-111111111111', (select id from public.levels where name = 'Terminale'), 'Maths Terminale', true),
  ('22222222-2222-2222-2222-222222222222', (select id from public.levels where name = 'Master 1'),  'GRH Master 1',   true),
  ('33333333-3333-3333-3333-333333333333', (select id from public.levels where name = 'Master 1'),  'Cours brouillon', false);
insert into public.lessons (course_id, title, content, is_free) values
  ('11111111-1111-1111-1111-111111111111', 'Intro gratuite', 'libre', true),
  ('11111111-1111-1111-1111-111111111111', 'Leçon payante maths', 'secret maths', false),
  ('22222222-2222-2222-2222-222222222222', 'Leçon payante GRH', 'secret grh', false);
insert into public.plans (name, level_id, price_xof, duration_days) values
  ('Terminale 30 jours', (select id from public.levels where name = 'Terminale'), 0, 30);
insert into public.contact_messages (name, email, message) values ('Client', 'c@x.sn', 'Bonjour');

-- ===== Visiteur anonyme =====
set role anon;
set request.jwt.claims = '{"role":"anon"}';
select pg_temp.ok((select count(*) = 12 from public.services), 'anon lit les 12 services publiés');
select pg_temp.ok((select count(*) = 2 from public.courses where id in ('11111111-1111-1111-1111-111111111111','22222222-2222-2222-2222-222222222222','33333333-3333-3333-3333-333333333333')), 'anon ne voit pas les cours non publiés');
select pg_temp.ok((select count(*) = 1 from public.lessons where course_id in ('11111111-1111-1111-1111-111111111111','22222222-2222-2222-2222-222222222222','33333333-3333-3333-3333-333333333333')), 'anon ne voit que la leçon gratuite');
select pg_temp.ok((select count(*) = 2 from public.course_outline('11111111-1111-1111-1111-111111111111')), 'anon voit le sommaire (titres) du cours publié');
select pg_temp.ok((select count(*) = 0 from public.course_outline('33333333-3333-3333-3333-333333333333')), 'anon ne voit pas le sommaire d''un cours brouillon');
select pg_temp.ok((select count(*) = 0 from public.contact_messages), 'anon ne lit pas les messages');
select pg_temp.ok((select count(*) = 0 from public.profiles), 'anon ne lit pas les profils');
insert into public.contact_messages (name, email, message) values ('Visiteur', 'v@x.sn', 'Demande de démo');
select pg_temp.ok(true, 'anon peut envoyer un message de contact');
do $$ begin
  update public.services set title = 'piraté';
  if exists (select 1 from public.services where title = 'piraté') then raise exception 'anon a modifié un service'; end if;
end $$;
select pg_temp.ok(true, 'anon ne modifie pas les services');
reset role;

-- ===== Élève 1 sans abonnement =====
set role authenticated;
set request.jwt.claims = '{"sub":"00000000-0000-0000-0000-0000000000b1","role":"authenticated","aal":"aal1"}';
select pg_temp.ok((select count(*) = 1 from public.profiles), 'élève ne voit que son profil');
select pg_temp.ok((select count(*) = 1 from public.lessons where course_id in ('11111111-1111-1111-1111-111111111111','22222222-2222-2222-2222-222222222222','33333333-3333-3333-3333-333333333333')), 'élève sans abonnement : leçon gratuite seulement');
do $$ begin
  begin
    update public.profiles set role = 'admin' where id = auth.uid();
    raise exception 'élève a pu se promouvoir admin';
  exception when raise_exception then
    if sqlerrm like '%promouvoir%' then raise; end if;
  end;
end $$;
select pg_temp.ok((select role = 'student' from public.profiles), 'élève ne peut pas se promouvoir admin');
update public.profiles set full_name = 'Élève Un modifié' where id = auth.uid();
select pg_temp.ok((select full_name = 'Élève Un modifié' from public.profiles), 'élève modifie son nom');
select pg_temp.ok((select email = 'eleve1@test.sn' from public.profiles), 'email copié dans le profil');
do $$ begin
  begin
    update public.profiles set email = 'autre@x.sn' where id = auth.uid();
    raise exception 'email modifié';
  exception when raise_exception then
    if sqlerrm = 'email modifié' then raise; end if;
  end;
end $$;
select pg_temp.ok(true, 'élève ne peut pas changer son email de profil');
-- Demande d'abonnement
insert into public.subscriptions (user_id, plan_id, payment_ref)
  values (auth.uid(), (select id from public.plans where name = 'Terminale 30 jours'), 'REF-123');
select pg_temp.ok((select count(*) = 1 from public.subscriptions), 'élève demande un abonnement');
do $$ begin
  begin
    insert into public.subscriptions (user_id, plan_id, status, starts_at, ends_at)
      values (auth.uid(), (select id from public.plans where name = 'Terminale 30 jours'), 'active', now(), now() + interval '1 year');
    raise exception 'élève a créé un abonnement actif';
  exception when insufficient_privilege then null; end;
end $$;
select pg_temp.ok(true, 'élève ne peut pas créer un abonnement actif');
do $$ begin
  update public.subscriptions set status = 'active', starts_at = now(), ends_at = now() + interval '1 year';
  if exists (select 1 from public.subscriptions where status = 'active') then raise exception 'élève a activé son abonnement'; end if;
end $$;
select pg_temp.ok(true, 'élève ne peut pas activer son abonnement');
do $$ begin
  begin
    perform public.activate_subscription((select id from public.subscriptions limit 1));
    raise exception 'élève a appelé activate_subscription';
  exception when raise_exception then
    if sqlerrm not like '%Réservé%' then raise; end if;
  end;
end $$;
select pg_temp.ok(true, 'élève ne peut pas appeler activate_subscription');
do $$ begin
  begin
    insert into public.subscriptions (user_id, plan_id) values ('00000000-0000-0000-0000-0000000000b2', 1);
    raise exception 'élève a créé un abonnement pour un autre';
  exception when insufficient_privilege then null; end;
end $$;
select pg_temp.ok(true, 'élève ne crée pas d''abonnement pour un autre');
select pg_temp.ok((select count(*) = 0 from public.audit_logs), 'élève ne lit pas le journal d''audit');
reset role;

-- ===== Admin SANS double authentification (aal1) : aucun droit admin =====
set role authenticated;
set request.jwt.claims = '{"sub":"00000000-0000-0000-0000-0000000000a1","role":"authenticated","aal":"aal1"}';
select pg_temp.ok((select public.has_admin_role()), 'has_admin_role vrai pour l''admin');
select pg_temp.ok((select not public.is_admin()), 'is_admin faux sans MFA');
select pg_temp.ok((select count(*) = 0 from public.contact_messages), 'admin sans MFA ne lit pas les messages');
reset role;

-- ===== Admin AVEC MFA (aal2) =====
set role authenticated;
set request.jwt.claims = '{"sub":"00000000-0000-0000-0000-0000000000a1","role":"authenticated","aal":"aal2"}';
select pg_temp.ok((select public.is_admin()), 'is_admin vrai avec MFA');
select pg_temp.ok((select count(*) = 2 from public.contact_messages), 'admin lit les messages');
select pg_temp.ok((select count(*) = 3 from public.profiles), 'admin voit tous les profils');
select pg_temp.ok((select count(*) = 3 from public.courses where id in ('11111111-1111-1111-1111-111111111111','22222222-2222-2222-2222-222222222222','33333333-3333-3333-3333-333333333333')), 'admin voit les cours brouillons');
update public.services set title = 'Gestion Carburant Pro' where id = 'carburant';
select pg_temp.ok((select title = 'Gestion Carburant Pro' from public.services where id = 'carburant'), 'admin modifie un service');
select public.activate_subscription((select id from public.subscriptions limit 1));
select pg_temp.ok((select status = 'active' and ends_at > now() from public.subscriptions), 'admin active l''abonnement');
insert into storage.objects (bucket_id, name) values ('media', 'photo.jpg');
select pg_temp.ok(true, 'admin téléverse une image');
select pg_temp.ok((select count(*) > 0 from public.audit_logs), 'journal d''audit alimenté');
reset role;

-- ===== Élève 1 avec abonnement Terminale =====
set role authenticated;
set request.jwt.claims = '{"sub":"00000000-0000-0000-0000-0000000000b1","role":"authenticated","aal":"aal1"}';
select pg_temp.ok((select count(*) = 2 from public.lessons where course_id in ('11111111-1111-1111-1111-111111111111','22222222-2222-2222-2222-222222222222','33333333-3333-3333-3333-333333333333')), 'élève abonné voit les leçons Terminale (gratuite + payante)');
select pg_temp.ok((select not exists (select 1 from public.lessons where title = 'Leçon payante GRH')), 'élève abonné Terminale ne voit pas Master 1');
do $$ begin
  begin
    insert into storage.objects (bucket_id, name) values ('media', 'virus.exe');
    raise exception 'élève a téléversé un fichier';
  exception when insufficient_privilege then null; end;
end $$;
select pg_temp.ok(true, 'élève ne téléverse pas de fichier');
reset role;

-- ===== Élève 2 : ne voit rien de l'élève 1 =====
set role authenticated;
set request.jwt.claims = '{"sub":"00000000-0000-0000-0000-0000000000b2","role":"authenticated","aal":"aal1"}';
select pg_temp.ok((select count(*) = 0 from public.subscriptions), 'élève 2 ne voit pas l''abonnement de l''élève 1');
select pg_temp.ok((select count(*) = 1 from public.lessons where course_id in ('11111111-1111-1111-1111-111111111111','22222222-2222-2222-2222-222222222222','33333333-3333-3333-3333-333333333333')), 'élève 2 sans abonnement : leçon gratuite seulement');
reset role;

-- ===== Expiration =====
update public.subscriptions set starts_at = now() - interval '40 days', ends_at = now() - interval '10 days';
set role authenticated;
set request.jwt.claims = '{"sub":"00000000-0000-0000-0000-0000000000b1","role":"authenticated","aal":"aal1"}';
select pg_temp.ok((select count(*) = 1 from public.lessons where course_id in ('11111111-1111-1111-1111-111111111111','22222222-2222-2222-2222-222222222222','33333333-3333-3333-3333-333333333333')), 'abonnement expiré : plus d''accès aux leçons payantes');
reset role;

\echo '=== TOUS LES TESTS RLS SONT PASSÉS ==='
