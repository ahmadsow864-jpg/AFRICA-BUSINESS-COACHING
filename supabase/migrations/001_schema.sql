-- =====================================================================
-- Africa Business Development Consulting — Schéma Supabase (site, administration, éducation)
-- À exécuter une fois dans Supabase : SQL Editor → New query → Run.
-- Toute la sécurité repose sur les politiques RLS ci-dessous : le navigateur
-- n'utilise que la clé publique "anon", jamais la clé "service_role".
-- =====================================================================

-- ---------------------------------------------------------------------
-- 1. Profils et rôles
-- ---------------------------------------------------------------------
create table if not exists public.profiles (
  id          uuid primary key references auth.users (id) on delete cascade,
  full_name   text check (char_length(full_name) <= 120),
  email       text check (char_length(email) <= 200),
  country     text check (char_length(country) <= 60),
  role        text not null default 'student' check (role in ('admin', 'student')),
  created_at  timestamptz not null default now()
);

-- Administrateur = rôle "admin" ET session validée par double authentification (MFA, aal2).
create or replace function public.is_admin()
returns boolean
language sql stable security definer
set search_path = public
as $$
  select coalesce(auth.jwt() ->> 'aal', '') = 'aal2'
     and exists (select 1 from public.profiles p where p.id = auth.uid() and p.role = 'admin');
$$;

-- Indique au navigateur si le compte connecté a le rôle admin (sans exiger le MFA),
-- pour savoir s'il faut proposer l'activation du MFA. Ne donne aucun droit.
create or replace function public.has_admin_role()
returns boolean
language sql stable security definer
set search_path = public
as $$
  select exists (select 1 from public.profiles p where p.id = auth.uid() and p.role = 'admin');
$$;

-- Création automatique du profil (toujours "student") à l'inscription.
create or replace function public.handle_new_user()
returns trigger
language plpgsql security definer
set search_path = public
as $$
begin
  insert into public.profiles (id, full_name, email, country, role)
  values (
    new.id,
    left(coalesce(new.raw_user_meta_data ->> 'full_name', ''), 120),
    left(coalesce(new.email, ''), 200),
    left(coalesce(new.raw_user_meta_data ->> 'country', ''), 60),
    'student'
  );
  return new;
end;
$$;

drop trigger if exists on_auth_user_created on auth.users;
create trigger on_auth_user_created
  after insert on auth.users
  for each row execute function public.handle_new_user();

-- Empêche un utilisateur de changer lui-même son rôle.
-- Seul un administrateur (MFA) ou une requête SQL directe du propriétaire du projet le peut.
create or replace function public.protect_profile_role()
returns trigger
language plpgsql
set search_path = public
as $$
begin
  if new.role is distinct from old.role
     and current_user in ('anon', 'authenticated')
     and not public.is_admin() then
    raise exception 'Modification du rôle non autorisée';
  end if;
  if new.email is distinct from old.email
     and current_user in ('anon', 'authenticated')
     and not public.is_admin() then
    raise exception 'Modification de l''email non autorisée';
  end if;
  if new.id is distinct from old.id then
    raise exception 'Modification de l''identifiant non autorisée';
  end if;
  return new;
end;
$$;

drop trigger if exists profiles_protect_role on public.profiles;
create trigger profiles_protect_role
  before update on public.profiles
  for each row execute function public.protect_profile_role();

-- ---------------------------------------------------------------------
-- 2. Contenu du site (modifiable par l'administrateur)
-- ---------------------------------------------------------------------
create table if not exists public.site_settings (
  key         text primary key check (key ~ '^[a-z_]{1,40}$'),
  value       text not null default '' check (char_length(value) <= 5000),
  updated_at  timestamptz not null default now()
);

create table if not exists public.services (
  id           text primary key check (id ~ '^[a-z0-9-]{2,40}$'),
  pole         text not null check (pole in ('rh', 'transport', 'vehicules', 'education')),
  title        text not null check (char_length(title) between 2 and 120),
  short        text not null default '' check (char_length(short) <= 300),
  description  text not null default '' check (char_length(description) <= 4000),
  features     text[] not null default '{}',
  icon         text not null default '' check (char_length(icon) <= 8),
  image_url    text not null default '' check (image_url = '' or image_url ~ '^(https://|img/)'),
  badge        text not null default '' check (char_length(badge) <= 40),
  sort         int  not null default 100,
  published    boolean not null default true,
  updated_at   timestamptz not null default now()
);

create table if not exists public.contact_messages (
  id          bigint generated always as identity primary key,
  name        text not null check (char_length(name) between 2 and 120),
  company     text not null default '' check (char_length(company) <= 120),
  email       text not null check (email ~* '^[^@\s]+@[^@\s]+\.[^@\s]+$' and char_length(email) <= 200),
  phone       text not null default '' check (char_length(phone) <= 40),
  country     text not null default '' check (char_length(country) <= 60),
  service     text not null default '' check (char_length(service) <= 120),
  message     text not null check (char_length(message) between 2 and 4000),
  status      text not null default 'nouveau' check (status in ('nouveau', 'traite', 'archive')),
  created_at  timestamptz not null default now()
);
create index if not exists contact_messages_created_idx on public.contact_messages (created_at desc);

-- ---------------------------------------------------------------------
-- 3. Éducation en ligne (collège → doctorat) avec abonnements
-- ---------------------------------------------------------------------
create table if not exists public.levels (
  id     int generated always as identity primary key,
  cycle  text not null check (cycle in ('college', 'lycee', 'licence', 'master', 'doctorat', 'pro')),
  name   text not null unique check (char_length(name) between 1 and 60),
  sort   int not null default 100
);

create table if not exists public.courses (
  id           uuid primary key default gen_random_uuid(),
  level_id     int not null references public.levels (id) on delete restrict,
  module_id    text references public.services (id) on delete set null,
  slug         text unique check (slug ~ '^[a-z0-9-]{2,80}$'),
  subject      text not null default '' check (char_length(subject) <= 80),
  title        text not null check (char_length(title) between 2 and 160),
  description  text not null default '' check (char_length(description) <= 4000),
  published    boolean not null default false,
  sort         int not null default 100,
  created_at   timestamptz not null default now()
);
create index if not exists courses_level_idx on public.courses (level_id);

create table if not exists public.lessons (
  id          uuid primary key default gen_random_uuid(),
  course_id   uuid not null references public.courses (id) on delete cascade,
  title       text not null check (char_length(title) between 2 and 160),
  content     text not null default '' check (char_length(content) <= 50000),
  video_url   text not null default '' check (video_url = '' or video_url ~ '^https://'),
  kind        text not null default 'texte' check (kind in ('texte', 'video')),
  duration_min int not null default 45 check (duration_min between 1 and 600),
  is_free     boolean not null default false,
  sort        int not null default 100,
  created_at  timestamptz not null default now()
);
create index if not exists lessons_course_idx on public.lessons (course_id);

-- Formules d'abonnement : prix et durée fixés par l'administrateur.
-- level_id NULL = accès à tous les niveaux.
create table if not exists public.plans (
  id             int generated always as identity primary key,
  name           text not null check (char_length(name) between 2 and 80),
  level_id       int references public.levels (id) on delete restrict,
  price_xof      int not null check (price_xof >= 0),
  duration_days  int not null check (duration_days between 1 and 1100),
  active         boolean not null default true
);

-- Abonnement d'un élève/étudiant. Il le demande (en_attente) avec sa référence de
-- paiement ; seul l'administrateur l'active après vérification du paiement.
create table if not exists public.subscriptions (
  id           uuid primary key default gen_random_uuid(),
  user_id      uuid not null references auth.users (id) on delete cascade,
  plan_id      int not null references public.plans (id) on delete restrict,
  status       text not null default 'en_attente' check (status in ('en_attente', 'active', 'refusee', 'expiree')),
  payment_ref  text not null default '' check (char_length(payment_ref) <= 120),
  starts_at    timestamptz,
  ends_at      timestamptz,
  created_at   timestamptz not null default now(),
  check (status <> 'active' or (starts_at is not null and ends_at is not null and ends_at > starts_at))
);
create index if not exists subscriptions_user_idx on public.subscriptions (user_id);

-- Accès aux leçons payantes d'un niveau.
create or replace function public.has_level_access(p_level int)
returns boolean
language sql stable security definer
set search_path = public
as $$
  select exists (
    select 1
    from public.subscriptions s
    join public.plans pl on pl.id = s.plan_id
    where s.user_id = auth.uid()
      and s.status = 'active'
      and now() >= s.starts_at and now() < s.ends_at
      and (pl.level_id is null or pl.level_id = p_level)
  );
$$;

-- Sommaire public d'un cours publié : titres des leçons (sans le contenu payant).
create or replace function public.course_outline(p_course uuid)
returns table (id uuid, title text, is_free boolean, sort int, kind text, duration_min int)
language sql stable security definer
set search_path = public
as $$
  select l.id, l.title, l.is_free, l.sort, l.kind, l.duration_min
  from public.lessons l
  join public.courses c on c.id = l.course_id
  where l.course_id = p_course and (c.published or public.is_admin())
  order by l.sort, l.title;
$$;

-- Activation d'un abonnement par l'administrateur (dates calculées côté serveur).
create or replace function public.activate_subscription(p_id uuid)
returns void
language plpgsql security definer
set search_path = public
as $$
declare d int;
begin
  if not public.is_admin() then
    raise exception 'Réservé à l''administrateur';
  end if;
  select pl.duration_days into d
  from public.subscriptions s join public.plans pl on pl.id = s.plan_id
  where s.id = p_id;
  if d is null then
    raise exception 'Abonnement introuvable';
  end if;
  update public.subscriptions
     set status = 'active', starts_at = now(), ends_at = now() + make_interval(days => d)
   where id = p_id;
end;
$$;

-- ---------------------------------------------------------------------
-- 4. Journal d'audit des actions d'administration
-- ---------------------------------------------------------------------
create table if not exists public.audit_logs (
  id          bigint generated always as identity primary key,
  actor       uuid,
  table_name  text not null,
  action      text not null,
  row_id      text,
  created_at  timestamptz not null default now()
);

create or replace function public.audit_trigger()
returns trigger
language plpgsql security definer
set search_path = public
as $$
declare rid text;
begin
  if tg_op = 'DELETE' then rid := to_jsonb(old) ->> 'id'; else rid := to_jsonb(new) ->> 'id'; end if;
  insert into public.audit_logs (actor, table_name, action, row_id)
  values (auth.uid(), tg_table_name, tg_op, rid);
  if tg_op = 'DELETE' then return old; end if;
  return new;
end;
$$;

do $$
declare t text;
begin
  foreach t in array array['site_settings','services','levels','courses','lessons','plans','subscriptions','profiles'] loop
    execute format('drop trigger if exists %I_audit on public.%I', t, t);
    execute format('create trigger %I_audit after insert or update or delete on public.%I
                    for each row execute function public.audit_trigger()', t, t);
  end loop;
end $$;

-- ---------------------------------------------------------------------
-- 5. Sécurité : Row Level Security
-- ---------------------------------------------------------------------
alter table public.profiles         enable row level security;
alter table public.site_settings    enable row level security;
alter table public.services         enable row level security;
alter table public.contact_messages enable row level security;
alter table public.levels           enable row level security;
alter table public.courses          enable row level security;
alter table public.lessons          enable row level security;
alter table public.plans            enable row level security;
alter table public.subscriptions    enable row level security;
alter table public.audit_logs       enable row level security;

-- Profils : chacun voit et modifie le sien ; l'admin voit et modifie tout.
drop policy if exists profiles_select on public.profiles;
create policy profiles_select on public.profiles for select to authenticated
  using (id = auth.uid() or public.is_admin());
drop policy if exists profiles_update on public.profiles;
create policy profiles_update on public.profiles for update to authenticated
  using (id = auth.uid() or public.is_admin())
  with check (id = auth.uid() or public.is_admin());

-- Paramètres du site : lecture publique, écriture admin.
drop policy if exists settings_read on public.site_settings;
create policy settings_read on public.site_settings for select to anon, authenticated using (true);
drop policy if exists settings_admin on public.site_settings;
create policy settings_admin on public.site_settings for all to authenticated
  using (public.is_admin()) with check (public.is_admin());

-- Services : lecture publique des services publiés, tout pour l'admin.
drop policy if exists services_read on public.services;
create policy services_read on public.services for select to anon, authenticated
  using (published or public.is_admin());
drop policy if exists services_admin on public.services;
create policy services_admin on public.services for all to authenticated
  using (public.is_admin()) with check (public.is_admin());

-- Messages de contact : tout visiteur peut écrire un message, seul l'admin le lit.
drop policy if exists contact_insert on public.contact_messages;
create policy contact_insert on public.contact_messages for insert to anon, authenticated
  with check (status = 'nouveau');
drop policy if exists contact_admin on public.contact_messages;
create policy contact_admin on public.contact_messages for all to authenticated
  using (public.is_admin()) with check (public.is_admin());

-- Niveaux et formules : lecture publique, écriture admin.
drop policy if exists levels_read on public.levels;
create policy levels_read on public.levels for select to anon, authenticated using (true);
drop policy if exists levels_admin on public.levels;
create policy levels_admin on public.levels for all to authenticated
  using (public.is_admin()) with check (public.is_admin());

drop policy if exists plans_read on public.plans;
create policy plans_read on public.plans for select to anon, authenticated using (active or public.is_admin());
drop policy if exists plans_admin on public.plans;
create policy plans_admin on public.plans for all to authenticated
  using (public.is_admin()) with check (public.is_admin());

-- Cours : catalogue public (cours publiés), écriture admin.
drop policy if exists courses_read on public.courses;
create policy courses_read on public.courses for select to anon, authenticated
  using (published or public.is_admin());
drop policy if exists courses_admin on public.courses;
create policy courses_admin on public.courses for all to authenticated
  using (public.is_admin()) with check (public.is_admin());

-- Leçons : leçons gratuites visibles de tous ; leçons payantes visibles seulement
-- avec un abonnement actif sur le niveau du cours ; admin : tout.
-- Interrupteur du fondateur : quand actif, toutes les leçons sont lisibles par tout le monde,
-- sans compte ni abonnement (choix réversible depuis l'admin, à tout moment).
create or replace function public.courses_free_for_all()
returns boolean
language sql stable security definer
set search_path = public
as $$
  select coalesce((select value from public.site_settings where key = 'courses_free_for_all'), 'false') = 'true';
$$;

drop policy if exists lessons_read on public.lessons;
create policy lessons_read on public.lessons for select to anon, authenticated
  using (
    public.is_admin()
    or public.courses_free_for_all()
    or exists (
      select 1 from public.courses c
      where c.id = lessons.course_id and c.published
        and (lessons.is_free or public.has_level_access(c.level_id))
    )
  );
drop policy if exists lessons_admin on public.lessons;
create policy lessons_admin on public.lessons for all to authenticated
  using (public.is_admin()) with check (public.is_admin());

-- Abonnements : l'élève voit les siens et peut seulement en DEMANDER un (en_attente).
drop policy if exists subs_select on public.subscriptions;
create policy subs_select on public.subscriptions for select to authenticated
  using (user_id = auth.uid() or public.is_admin());
drop policy if exists subs_request on public.subscriptions;
create policy subs_request on public.subscriptions for insert to authenticated
  with check (user_id = auth.uid() and status = 'en_attente' and starts_at is null and ends_at is null);
drop policy if exists subs_admin on public.subscriptions;
create policy subs_admin on public.subscriptions for all to authenticated
  using (public.is_admin()) with check (public.is_admin());

-- Journal : lecture admin uniquement, aucune écriture directe.
drop policy if exists audit_read on public.audit_logs;
create policy audit_read on public.audit_logs for select to authenticated using (public.is_admin());

-- Droits de base (RLS filtre ensuite ligne par ligne).
revoke all on public.audit_logs from anon, authenticated;
grant select on public.audit_logs to authenticated;
revoke execute on function public.activate_subscription(uuid) from public, anon;
grant execute on function public.activate_subscription(uuid) to authenticated;

-- ---------------------------------------------------------------------
-- 6. Stockage des images (bucket public "media", écriture admin)
-- ---------------------------------------------------------------------
insert into storage.buckets (id, name, public)
values ('media', 'media', true)
on conflict (id) do nothing;

drop policy if exists media_read on storage.objects;
create policy media_read on storage.objects for select to anon, authenticated
  using (bucket_id = 'media');
drop policy if exists media_admin_insert on storage.objects;
create policy media_admin_insert on storage.objects for insert to authenticated
  with check (bucket_id = 'media' and public.is_admin());
drop policy if exists media_admin_update on storage.objects;
create policy media_admin_update on storage.objects for update to authenticated
  using (bucket_id = 'media' and public.is_admin());
drop policy if exists media_admin_delete on storage.objects;
create policy media_admin_delete on storage.objects for delete to authenticated
  using (bucket_id = 'media' and public.is_admin());
