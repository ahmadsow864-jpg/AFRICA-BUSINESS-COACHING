-- Fichier généré par tools/generate-seed.mjs — ne pas modifier à la main.
-- Cours (partie 7/7). À exécuter après seed.sql.

-- Cours : Espagnol LV2 : réussir l'épreuve du Bac
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'bac-espagnol', (select id from public.levels where name = 'Terminale'), null, 'Espagnol (LV2)', 'Espagnol LV2 : réussir l''épreuve du Bac', 'Ce cours d''examen prépare l''épreuve d''espagnol LV2 du Baccalauréat : méthode de compréhension écrite et d''analyse de texte, grammaire du Bac (subjonctif présent et imparfait, concordance des temps, conditionnel et hypothèse, ser et estar, por et para, discours indirect), expression écrite (essai argumenté, lettre) et repères de civilisation hispanique (Espagne, Amérique latine, liens avec l''Afrique). Il s''adresse surtout aux candidats des séries L, et à tout élève de Terminale qui présente l''espagnol en LV2. Les explications sont en français et les exemples en espagnol. Prérequis : les acquis d''espagnol de la Seconde et de la Première.', true, 210
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Comprendre l''épreuve et méthode de travail', '## Objectifs de la leçon

- Savoir ce que l''on attend de toi à l''épreuve d''espagnol LV2 du Bac.
- Connaître les grandes familles d''exercices et une méthode pour chacune.
- Repérer et éviter les erreurs les plus fréquentes des candidats.
- Organiser tes révisions sur 10 semaines.

## À qui s''adresse ce cours

Ce cours s''adresse d''abord aux élèves de Terminale des séries L, pour qui la deuxième langue vivante occupe une place importante, mais aussi à tout candidat qui présente l''espagnol en LV2, quelle que soit sa série (L, S ou G), selon les choix d''options prévus par les textes officiels en vigueur. La durée de l''épreuve, son coefficient et son barème sont fixés par ces textes : vérifie-les auprès de ton établissement. Ici, nous travaillons la méthode, qui reste la même quelle que soit la série.

Le programme révisé couvre les trois années du lycée : les bases de la Seconde (présent, passés, ser et estar), les structures de Première (subjonctif présent, impératif, por et para) et les exigences de Terminale (subjonctif imparfait, concordance des temps, hypothèse, discours indirect, argumentation).

## Comment se présente l''épreuve

L''épreuve s''appuie en général sur un texte authentique ou adapté : extrait de roman, article de presse, témoignage, lettre ou poème. Il est souvent accompagné d''un paratexte (auteur, titre de l''œuvre, date, source). Les questions se répartissent habituellement en trois familles.

- Compréhension écrite : questions sur le sens du texte, vrai ou faux à justifier par une citation, recherche de synonymes ou de contraires, explication d''une expression.
- Compétence linguistique : transformations grammaticales (mettre au passé, au discours indirect, conjuguer au subjonctif), exercices à trous, parfois une courte traduction.
- Expression écrite : un ou deux sujets au choix, en lien avec le thème du texte (essai argumenté, lettre, dialogue, suite de récit).

La présentation exacte varie selon les sujets : lis toujours toutes les consignes avant de commencer.

## Méthode pour la compréhension

Commence par le paratexte : qui écrit, quand, dans quel pays ? Un texte de Gabriel García Márquez ne parle pas du même monde qu''un article d''un journal madrilène. Fais ensuite une première lecture complète sans t''arrêter sur les mots inconnus, pour saisir le thème général. Pendant la deuxième lecture, souligne les personnages, les lieux, les dates et les mots de liaison (pero, sin embargo, por eso, aunque).

Pour répondre, applique trois règles.

- Réponds en espagnol par des phrases complètes, en reformulant la question : à « ¿Por qué se fue Moussa? », on répond « Moussa se fue porque buscaba trabajo ».
- Justifie un vrai ou faux par une citation courte entre guillemets, suivie du numéro de ligne : « no hablaba ni una palabra de español » (l. 2).
- Ne recopie jamais un paragraphe entier : le correcteur veut voir que tu as compris, pas que tu sais recopier.

## Méthode pour la compétence linguistique

Lis la consigne deux fois et repère le temps demandé. Pour une transformation, identifie d''abord la structure (verbe principal, subordonnée, temps), puis applique la règle, puis relis l''accord du verbe avec son sujet. Les leçons 3 et 4 te donnent toutes les règles nécessaires, avec des tableaux à apprendre par cœur.

## Méthode pour l''expression écrite

Prends quelques minutes pour faire un plan au brouillon. Respecte le nombre de lignes ou de mots demandé. Écris des phrases simples et correctes plutôt que des phrases longues et fautives. Réutilise le vocabulaire du texte, mais sans le recopier. Garde du temps pour te relire : accents, accords, conjugaisons.

## Organiser son temps le jour de l''épreuve

Voici une répartition indicative à adapter à la durée officielle de ton épreuve : environ 15 % du temps pour lire le texte, 35 % pour la compréhension, 20 % pour la grammaire, 25 % pour l''expression écrite et 5 % pour la relecture. Si une question te bloque, passe à la suivante et reviens-y à la fin.

## Les erreurs fréquentes à éviter

- Les faux amis : « constipado » signifie enrhumé, « embarazada » signifie enceinte, « éxito » signifie succès (la sortie se dit « la salida »), « realizar » signifie accomplir ou réaliser un projet (« se rendre compte » se dit « darse cuenta »).
- Les gallicismes de genre : on dit « el problema », « el tema », « el sistema », mais « la leche », « la sangre », « la costumbre ».
- Le conditionnel après « si » : on n''écrit jamais « si tendría » ; on écrit « si tuviera ».
- L''oubli des accents écrits, qui changent parfois le sens : « hablo » (je parle) et « habló » (il a parlé), « el » (le) et « él » (lui).
- L''oubli des signes d''ouverture : ¿Dónde vives? ¡Qué calor!
- La confusion de ser et estar : « estoy cansado » (état) mais « soy senegalés » (identité).

## Plan de révision sur 10 semaines

- Semaine 1 : diagnostic (fais un sujet complet sans aide), lecture de cette leçon, constitution d''un carnet de vocabulaire.
- Semaine 2 : méthode de compréhension, deux textes courts par semaine (leçon 2).
- Semaine 3 : repères de civilisation : Espagne, Amérique latine, liens avec l''Afrique (leçon 2).
- Semaine 4 : subjonctif présent et imparfait (leçon 3).
- Semaine 5 : concordance des temps, conditionnel, phrases hypothétiques (leçon 3).
- Semaine 6 : ser et estar, por et para, discours indirect (leçon 4).
- Semaine 7 : expression écrite : essai et lettre, une production corrigée par semaine (leçon 4).
- Semaine 8 : sujet type complet en temps limité (leçon 5).
- Semaine 9 : deuxième sujet blanc, reprise des fiches d''erreurs.
- Semaine 10 : révision légère, cours vidéo « veille du Bac », sommeil et sérénité.

Chaque jour, consacre au moins 20 minutes à l''espagnol : 10 minutes de vocabulaire, 10 minutes de lecture ou de grammaire. La régularité vaut mieux qu''une nuit blanche.

## Points clés

- Lis le paratexte et les consignes avant tout.
- Réponds en phrases complètes et justifie par des citations courtes.
- Apprends les tableaux de conjugaison et les règles de concordance.
- Garde toujours du temps pour la relecture.

## Exercices pratiques

Exercice 1. Cite les trois grandes familles d''exercices de l''épreuve et donne un exemple de question pour chacune.

Exercice 2. Traduis en français : « Mi hermana está embarazada y mi hermano está constipado. »

Exercice 3. Corrige les erreurs : « La problema es que si tendría dinero, viajaría a Sevilla. »

Exercice 4. Réponds par une phrase complète en reformulant la question : « ¿Dónde vive Awa? » (Awa vit à Saint-Louis.)

Exercice 5. Ajoute les accents et les signes manquants : « Donde esta el? Que alegria! »

Exercice 6. Ton épreuve dure, par hypothèse, 3 heures. Calcule le temps à consacrer à chaque partie selon la répartition indicative de la leçon.

## Corrigé

Exercice 1. Compréhension écrite : « ¿Por qué decide el protagonista salir de su país? ». Compétence linguistique : « Pon el verbo entre paréntesis en subjuntivo ». Expression écrite : « Escribe una carta a un amigo para contarle tus proyectos ».

Exercice 2. « Ma sœur est enceinte et mon frère est enrhumé. » Deux faux amis classiques : « embarazada » ne veut pas dire embarrassée, « constipado » ne veut pas dire constipé.

Exercice 3. « El problema es que, si tuviera dinero, viajaría a Sevilla. » « Problema » est masculin ; après « si » d''hypothèse, on emploie le subjonctif imparfait.

Exercice 4. « Awa vive en Saint-Louis. » On reprend le verbe de la question et on ajoute l''information.

Exercice 5. « ¿Dónde está él? ¡Qué alegría! »

Exercice 6. 3 heures = 180 minutes. Lecture : 15 % de 180 = 27 min. Compréhension : 35 % = 63 min. Grammaire : 20 % = 36 min. Expression : 25 % = 45 min. Relecture : 5 % = 9 min. Total : 27 + 63 + 36 + 45 + 9 = 180 min.', 'texte', 50, true, 10
from public.courses c where c.slug = 'bac-espagnol'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Comprendre l''épreuve et méthode de travail');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Compréhension écrite, analyse de texte et civilisation hispanique', '## Objectifs de la leçon

- Appliquer une méthode complète de compréhension et d''analyse d''un texte.
- Maîtriser le vocabulaire espagnol de l''analyse.
- Connaître les repères de civilisation indispensables : Espagne, Amérique latine, liens avec l''Afrique.

## Texte d''étude

Voici un texte d''entraînement rédigé pour ce cours.

« Cuando Moussa llegó a Madrid, hace ya diez años, no hablaba ni una palabra de español. Había cruzado el mar en cayuco desde la costa senegalesa y había pasado varias semanas en un centro de acogida de Canarias. "Al principio, todo me parecía extraño: la comida, el frío, las prisas de la gente", recuerda. Gracias a una asociación de barrio, aprendió el idioma y consiguió un trabajo en un taller de bicicletas. Hoy tiene su propio negocio y ayuda a otros jóvenes africanos a encontrar su camino. Sin embargo, no olvida a su familia de Kaolack: cada mes le envía dinero a su madre y sueña con volver algún día. "Me gustaría que mis hijos conocieran Senegal y que no tuvieran que arriesgar su vida como yo", confiesa. »

## Étape 1 : identifier la situation

Réponds aux questions de base : ¿quién? (Moussa, un emigrante senegalés), ¿dónde? (Madrid, Canarias, Kaolack), ¿cuándo? (hace diez años y hoy), ¿qué? (su llegada, su integración, su nostalgia), ¿cómo? (gracias a una asociación). Le texte est un témoignage : on le voit aux guillemets et aux verbes « recuerda » et « confiesa ».

## Étape 2 : repérer la structure

Les mots de liaison et les temps verbaux découpent le texte. Le passé (llegó, había cruzado, aprendió) raconte le parcours ; le présent (tiene, ayuda, sueña) décrit la situation actuelle ; le conditionnel et le subjonctif imparfait (me gustaría que conocieran) expriment un souhait pour l''avenir. Le connecteur « sin embargo » marque une opposition : la réussite matérielle n''efface pas l''attachement au pays.

## Étape 3 : analyser le sens et le ton

Le ton est à la fois positif (réussite, solidarité) et grave (le risque de la traversée en cayuco). La dernière phrase porte le message du texte : Moussa ne veut pas que ses enfants vivent la même épreuve que lui.

## Le vocabulaire de l''analyse

- El texto trata de... : le texte traite de...
- El autor pone de relieve / subraya... : l''auteur met en relief / souligne...
- El narrador cuenta... ; el protagonista siente... : le narrateur raconte... ; le protagoniste ressent...
- Se trata de un testimonio, un artículo, un fragmento de novela : il s''agit d''un témoignage, d''un article, d''un extrait de roman.
- El tono es irónico, nostálgico, optimista, crítico.
- Primero..., luego..., por fin... : d''abord..., ensuite..., enfin...
- Por una parte..., por otra parte... : d''une part..., d''autre part...
- Sin embargo, no obstante : cependant ; por eso, por lo tanto : c''est pourquoi, donc.

## Repères de civilisation : l''Espagne

- Le « Siglo de Oro » (XVIe-XVIIe siècles) : grande époque culturelle ; Miguel de Cervantes publie la première partie de Don Quijote de la Mancha en 1605.
- La guerre civile (1936-1939) oppose les républicains aux nationalistes du général Franco ; le poète Federico García Lorca est assassiné en 1936.
- La dictature franquiste dure jusqu''à la mort de Franco en 1975. Vient ensuite la « Transición » démocratique : la Constitution est adoptée en 1978.
- L''Espagne entre dans la Communauté européenne en 1986.
- Thèmes actuels fréquents dans les textes : chômage des jeunes, immigration, diversité des régions et des langues (catalan, basque, galicien).

## Repères de civilisation : l''Amérique latine

- La conquête espagnole commence après l''arrivée de Christophe Colomb en 1492 ; les peuples autochtones (aztèques, mayas, incas) subissent la domination coloniale.
- Les indépendances ont lieu au début du XIXe siècle, avec des figures comme Simón Bolívar et José de San Martín.
- La révolution mexicaine commence en 1910.
- Au XXe siècle, beaucoup de pays connaissent des dictatures militaires, puis un retour à la démocratie.
- Littérature : Pablo Neruda (Chili, prix Nobel 1971), Gabriel García Márquez (Colombie, Cien años de soledad, prix Nobel 1982).
- Thèmes fréquents : inégalités, droits des peuples autochtones, exode rural, violence urbaine, migrations vers les États-Unis.

## Repères de civilisation : les liens avec l''Afrique

- La Guinée équatoriale, indépendante depuis 1968, est le seul pays d''Afrique subsaharienne dont l''espagnol est langue officielle.
- Ceuta et Melilla sont deux villes espagnoles situées sur la côte nord du continent africain ; les îles Canaries se trouvent au large des côtes du Maroc et du Sahara occidental.
- Le Sahara occidental est une ancienne colonie espagnole, que l''Espagne a quittée en 1975-1976.
- La traite négrière a déporté des millions d''Africains vers les Amériques : leurs descendants ont profondément marqué la musique, la religion et la littérature de Cuba, de la Colombie, du Venezuela ou du Pérou. Le poète cubain Nicolás Guillén a célébré cet héritage afro-cubain.
- En Colombie, San Basilio de Palenque a été fondé au XVIIe siècle par des Africains réduits en esclavage qui s''étaient libérés ; l''UNESCO a reconnu son patrimoine culturel.
- Depuis les années 2000, des milliers de jeunes Ouest-Africains, dont des Sénégalais, ont tenté la traversée vers les Canaries en pirogue (« cayuco »), souvent au péril de leur vie.

## Points clés

- Qui, où, quand, quoi, comment : c''est la base de toute compréhension.
- Les temps verbaux et les connecteurs révèlent la structure du texte.
- Une citation courte, avec le numéro de ligne, vaut mieux qu''une longue copie.
- Les repères de civilisation enrichissent ton essai, à condition d''être exacts.

## Exercices pratiques

Exercice 1. ¿De dónde salió Moussa y adónde llegó primero?

Exercice 2. Vrai ou faux ? Justifie par une citation. a) Moussa hablaba bien español al llegar. b) Moussa ha olvidado a su familia.

Exercice 3. Trouve dans le texte un synonyme de « lengua » et un contraire de « recordar ».

Exercice 4. Explique en espagnol la phrase « Me gustaría que mis hijos no tuvieran que arriesgar su vida como yo ».

Exercice 5. Quel est le seul pays d''Afrique subsaharienne où l''espagnol est langue officielle ? Depuis quand est-il indépendant ?

Exercice 6. Remets dans l''ordre chronologique : Constitution espagnole, guerre civile, entrée dans la Communauté européenne, publication de Don Quijote.

Exercice 7. Rédige en espagnol une présentation du texte de 4 ou 5 lignes en utilisant au moins trois expressions de l''analyse.

## Corrigé

Exercice 1. Moussa salió de la costa senegalesa y llegó primero a Canarias, donde pasó varias semanas en un centro de acogida.

Exercice 2. a) Faux : « no hablaba ni una palabra de español ». b) Faux : « no olvida a su familia de Kaolack ».

Exercice 3. Synonyme de « lengua » : « el idioma ». Contraire de « recordar » : « olvidar » (« no olvida »).

Exercice 4. Moussa desea que sus hijos visiten el país de su familia y que tengan una vida más segura: no quiere que crucen el mar en cayuco y pongan su vida en peligro como hizo él.

Exercice 5. La Guinée équatoriale (Guinea Ecuatorial), indépendante depuis 1968.

Exercice 6. Don Quijote (1605), guerre civile (1936-1939), Constitution (1978), entrée dans la Communauté européenne (1986).

Exercice 7. Exemple : « Se trata de un testimonio sobre la emigración africana a España. El texto trata de Moussa, un senegalés que llegó a Madrid en cayuco. Primero, el autor cuenta su difícil llegada; luego, subraya su integración gracias a una asociación. Sin embargo, el tono es también nostálgico, porque Moussa sueña con volver a Senegal. »', 'texte', 60, false, 20
from public.courses c where c.slug = 'bac-espagnol'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Compréhension écrite, analyse de texte et civilisation hispanique');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Grammaire du Bac 1 : subjonctif, concordance des temps et hypothèse', '## Objectifs de la leçon

- Former le subjonctif présent et le subjonctif imparfait, y compris des verbes irréguliers.
- Savoir quand employer le subjonctif.
- Appliquer la concordance des temps.
- Former le conditionnel et construire les phrases hypothétiques.

## Fiche 1 : le subjonctif présent

Formation : on part de la première personne du présent de l''indicatif, on enlève le « o » et on ajoute les terminaisons « inversées » : les verbes en -ar prennent un « e », les verbes en -er et -ir prennent un « a ».

- hablar : hable, hables, hable, hablemos, habléis, hablen.
- comer : coma, comas, coma, comamos, comáis, coman.
- vivir : viva, vivas, viva, vivamos, viváis, vivan.

Les irrégularités du présent se retrouvent au subjonctif : tener (tengo) donne tenga ; hacer (hago) donne haga ; decir (digo) donne diga ; salir (salgo) donne salga ; conocer (conozco) donne conozca. Les verbes à diphtongue gardent la diphtongue sauf à « nosotros » et « vosotros » : poder donne pueda mais podamos ; querer donne quiera mais queramos. Les verbes en -ir à affaiblissement changent aussi à « nosotros » : pedir donne pida et pidamos ; dormir donne duerma et durmamos.

Six verbes totalement irréguliers sont à apprendre par cœur : ser (sea), ir (vaya), estar (esté), dar (dé), saber (sepa), haber (haya).

## Fiche 2 : le subjonctif imparfait

Formation : on part de la troisième personne du pluriel du passé simple (pretérito indefinido), on enlève « -ron » et on ajoute -ra, -ras, -ra, -ramos, -rais, -ran (la forme en -se existe aussi : hablase).

- hablar : hablaron donne hablara, hablaras, hablara, habláramos, hablarais, hablaran.
- comer : comieron donne comiera ; vivir : vivieron donne viviera.
- tener : tuvieron donne tuviera ; hacer : hicieron donne hiciera ; decir : dijeron donne dijera.
- ser et ir : fueron donne fuera ; estar : estuvieron donne estuviera ; poder : pudieron donne pudiera.
- poner : pusieron donne pusiera ; venir : vinieron donne viniera ; leer : leyeron donne leyera.

Remarque : la première personne du pluriel porte un accent écrit (habláramos, tuviéramos, fuéramos).

## Fiche 3 : quand employer le subjonctif

- Après un verbe de volonté, d''ordre, de conseil ou de demande : Quiero que estudies. Te aconsejo que descanses.
- Après un verbe de sentiment : Me alegra que vengas. Siento que estés enfermo.
- Après une expression impersonnelle : Es necesario que todos los niños vayan a la escuela. Es importante que protejamos el medio ambiente.
- Après un verbe d''opinion à la forme négative : No creo que llueva hoy. Mais à la forme affirmative, on emploie l''indicatif : Creo que lloverá.
- Après « para que » (but) : Trabajo para que mis hijos estudien.
- Après « cuando » et les conjonctions de temps, si l''action est future : Cuando tenga dinero, compraré un ordenador. Attention : le français dit « quand j''aurai », l''espagnol ne met jamais le futur après « cuando ».
- Après « aunque » pour une concession hypothétique : Aunque llueva, iré al mercado (même s''il pleut).
- Après « ojalá » (pourvu que) : ¡Ojalá apruebe el bachillerato!
- À l''impératif négatif : No hables. No salgáis.

## Fiche 4 : la concordance des temps

C''est la règle la plus testée au Bac. Le temps du subjonctif dépend du temps du verbe principal.

- Verbe principal au présent, au futur, au passé composé ou à l''impératif : subjonctif présent. Quiero que vengas. Te pediré que vengas. Dile que venga.
- Verbe principal au passé simple, à l''imparfait, au plus-que-parfait ou au conditionnel : subjonctif imparfait. Quería que vinieras. Le pedí que viniera. Me gustaría que vinieras.

Exemple contextualisé : El director exige que los alumnos lleguen a las ocho. Au passé : El director exigió que los alumnos llegaran a las ocho.

## Fiche 5 : le conditionnel

Formation : infinitif + -ía, -ías, -ía, -íamos, -íais, -ían. Hablar donne hablaría ; comer donne comería. Les irréguliers ont le même radical qu''au futur : tener (tendría), poner (pondría), salir (saldría), venir (vendría), poder (podría), saber (sabría), querer (querría), haber (habría), hacer (haría), decir (diría).

Emplois : la politesse (¿Podría usted ayudarme?), le souhait (Me gustaría ser médico), le conseil (Deberías estudiar más), la conséquence d''une hypothèse, et le futur dans le passé (Dijo que vendría).

## Fiche 6 : les phrases hypothétiques avec « si »

- Hypothèse réalisable : si + présent de l''indicatif, puis présent ou futur. Si tengo tiempo, iré a Gorée.
- Hypothèse irréelle dans le présent : si + subjonctif imparfait, puis conditionnel. Si tuviera tiempo, iría a Gorée (si j''avais le temps, j''irais).
- Hypothèse irréelle dans le passé : si + subjonctif plus-que-parfait, puis conditionnel passé. Si hubiera estudiado, habría aprobado (si j''avais étudié, j''aurais réussi).

Règle d''or : jamais de conditionnel, ni de subjonctif présent, juste après « si » d''hypothèse.

## Points clés

- Subjonctif présent : radical du « yo » au présent + voyelle inversée.
- Subjonctif imparfait : 3e personne du pluriel du passé simple sans « -ron » + -ra.
- Principal au passé ou au conditionnel : subjonctif imparfait.
- « Cuando » + subjonctif pour le futur ; « si » + subjonctif imparfait pour l''irréel.

## Exercices pratiques

Exercice 1. Conjugue au subjonctif présent : (yo) tener, (nosotros) poder, (ellos) ser, (tú) ir.

Exercice 2. Conjugue au subjonctif imparfait : (yo) decir, (ella) hacer, (nosotros) ser, (ellos) poner.

Exercice 3. Complète : a) Mis padres quieren que yo (estudiar) medicina. b) Es necesario que (nosotros, plantar) árboles. c) Cuando (llegar) las lluvias, los campesinos sembrarán.

Exercice 4. Mets au passé en respectant la concordance : a) El profesor pide que hagamos los deberes. b) Me alegra que vengas a Dakar.

Exercice 5. Transforme en hypothèse irréelle dans le présent : « Si tengo una beca, estudio en Madrid. »

Exercice 6. Corrige : « Cuando seré mayor, trabajaré en Ziguinchor. » et « Si podría, ayudaría a mi barrio. »

Exercice 7. Traduis : « Si les jeunes trouvaient du travail au Sénégal, ils ne prendraient pas la mer. Il faudrait que l''État crée des emplois pour qu''ils puissent rester. »

## Corrigé

Exercice 1. tenga ; podamos ; sean ; vayas.

Exercice 2. dijera ; hiciera ; fuéramos ; pusieran.

Exercice 3. a) estudie (volonté). b) plantemos (expression impersonnelle). c) lleguen (cuando + futur).

Exercice 4. a) El profesor pidió que hiciéramos los deberes. b) Me alegró que vinieras a Dakar.

Exercice 5. Si tuviera una beca, estudiaría en Madrid.

Exercice 6. « Cuando sea mayor, trabajaré en Ziguinchor. » (cuando + subjonctif présent) ; « Si pudiera, ayudaría a mi barrio. » (si + subjonctif imparfait).

Exercice 7. « Si los jóvenes encontraran trabajo en Senegal, no se irían por mar. Haría falta que el Estado creara empleos para que pudieran quedarse. » Explication : « haría falta » est au conditionnel, donc « creara » et « pudieran » sont au subjonctif imparfait (concordance). Variante acceptée : « Sería necesario que el Estado creara... ».', 'texte', 60, false, 30
from public.courses c where c.slug = 'bac-espagnol'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Grammaire du Bac 1 : subjonctif, concordance des temps et hypothèse');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Grammaire du Bac 2 et expression écrite : ser et estar, por et para, discours indirect, essai et lettre', '## Objectifs de la leçon

- Choisir sans hésiter entre ser et estar, puis entre por et para.
- Passer du discours direct au discours indirect.
- Rédiger un essai argumenté et une lettre en espagnol.

## Fiche 1 : ser et estar

Ser exprime ce qui définit : l''identité, la nationalité, l''origine, la profession, la matière, la caractéristique essentielle, l''heure et la date, le lieu d''un événement, et il sert à former la voix passive.

- Soy senegalés y soy profesor. La mesa es de madera. Son las tres. La reunión es en el liceo. El puente fue construido en 2020.

Estar exprime la situation et l''état : la localisation d''une personne ou d''un objet, un état passager, le résultat d''une action, et il forme la progression avec le gérondif.

- Dakar está en la costa atlántica. Estoy cansado. La puerta está cerrada. Estamos estudiando.

Certains adjectifs changent de sens : ser listo (être intelligent) et estar listo (être prêt) ; ser malo (être méchant) et estar malo (être malade) ; ser rico (être riche) et estar rico (être délicieux) ; ser aburrido (être ennuyeux) et estar aburrido (s''ennuyer).

## Fiche 2 : por et para

Por regarde vers la cause ou le chemin parcouru.

- La cause : Lo hizo por amor. No salimos por la lluvia.
- Le lieu traversé : Paseamos por el centro de Saint-Louis.
- Le moyen : Te llamo por teléfono.
- Le moment approximatif : por la mañana, por la tarde.
- Le prix ou l''échange : Compré el libro por cinco mil francos CFA.
- Le complément d''agent du passif : El libro fue escrito por una autora senegalesa.

Para regarde vers le but ou la destination.

- Le but : Estudio para ser ingeniero.
- La destination : Salgo para Tambacounda.
- Le destinataire : Este regalo es para ti.
- L''échéance : El trabajo es para el lunes.
- Le point de vue : Para mí, la educación es lo más importante.

Astuce : si tu peux dire « à cause de » ou « à travers », c''est por ; si tu peux dire « afin de » ou « à destination de », c''est para.

## Fiche 3 : le discours indirect

Si le verbe introducteur est au présent (dice, pregunta), les temps ne changent pas : Fatou dice: «Estudio en Dakar». Fatou dice que estudia en Dakar.

Si le verbe introducteur est au passé (dijo, preguntó), les temps reculent.

- Présent devient imparfait : Dijo: «Estoy cansado». Dijo que estaba cansado.
- Passé simple ou passé composé devient plus-que-parfait : Awa dijo: «Ayer fui al mercado». Awa dijo que el día anterior había ido al mercado.
- Futur devient conditionnel : El profesor dijo: «Mañana habrá examen». El profesor dijo que al día siguiente habría examen.
- Impératif devient subjonctif imparfait : Mi padre me dijo: «Estudia más». Mi padre me dijo que estudiara más.

Les repères changent aussi : hoy devient aquel día, mañana devient al día siguiente, ayer devient el día anterior, aquí devient allí, este devient aquel. Les pronoms s''adaptent : « mi libro » devient « su libro ».

Pour une question : on introduit avec « si » (question fermée) ou on garde le mot interrogatif, sans point d''interrogation. Él preguntó: «¿Has terminado?». Él preguntó si yo había terminado. Ella preguntó: «¿Dónde está la biblioteca?». Ella preguntó dónde estaba la biblioteca.

## Méthode : l''essai argumenté

Le sujet pose souvent une question : « ¿Es la emigración la única solución para los jóvenes africanos? ».

- Introducción : présente le thème, pose la problématique, annonce ton plan.
- Desarrollo : deux ou trois paragraphes, chacun avec une idée, un argument et un exemple concret (Sénégal, Afrique, monde hispanique).
- Conclusión : réponds clairement à la question et ouvre une perspective.

Connecteurs utiles : en primer lugar, además, por otra parte, sin embargo, no obstante, por eso, por lo tanto, en conclusión, para terminar. Expressions d''opinion : creo que, pienso que, me parece que (indicatif) ; no creo que (subjonctif) ; es verdad que, es evidente que (indicatif) ; es necesario que, hace falta que (subjonctif).

## Méthode : la lettre

- En haut à droite, lieu et date : Dakar, 12 de marzo de 2026.
- Formule d''appel suivie de deux points : Querido Ibrahima: (familier) ; Estimado señor: ou Estimada señora: (formel).
- Corps : salutation, raison de la lettre, développement, souhaits.
- Formule finale : Un abrazo, Besos (familier) ; Atentamente, Le saluda atentamente (formel).
- Signature.

## Points clés

- Ser définit, estar situe ou décrit un état.
- Por : cause, passage, moyen, prix ; para : but, destination, échéance.
- Discours indirect au passé : chaque temps recule d''un cran, l''impératif devient subjonctif imparfait.
- Un essai réussi : plan clair, connecteurs, exemples précis.

## Exercices pratiques

Exercice 1. Complète avec ser ou estar : a) Mi madre ... enfermera. b) Hoy mi madre ... muy cansada. c) Saint-Louis ... en el norte de Senegal. d) El concierto ... en el estadio.

Exercice 2. Complète avec por ou para : a) Trabajo ... ganar dinero. b) Pasamos ... Thiès. c) Gracias ... tu ayuda. d) Este libro es ... mi hermana.

Exercice 3. Mets au discours indirect avec « Dijo que... » : a) «Vivo en Kaolack». b) «Iré a la universidad». c) «Compré un libro ayer».

Exercice 4. Mets au discours indirect avec « Le pidió que... » : «Cierra la ventana».

Exercice 5. Mets au discours indirect avec « Preguntó... » : «¿Cuándo empieza el examen?».

Exercice 6. Rédige l''introduction d''un essai sur le sujet : « ¿Es la escuela la clave del desarrollo? » (5 lignes).

Exercice 7. Rédige le début d''une lettre formelle au directeur d''une entreprise de Dakar pour demander un stage (lieu, date, formule d''appel, première phrase).

## Corrigé

Exercice 1. a) es (profession). b) está (état passager). c) está (localisation). d) es (lieu d''un événement).

Exercice 2. a) para (but). b) por (lieu traversé). c) por (cause). d) para (destinataire).

Exercice 3. a) Dijo que vivía en Kaolack. b) Dijo que iría a la universidad. c) Dijo que había comprado un libro el día anterior.

Exercice 4. Le pidió que cerrara la ventana.

Exercice 5. Preguntó cuándo empezaba el examen.

Exercice 6. Exemple : « Hoy en día, muchos países africanos invierten en la educación. Pero, ¿es la escuela realmente la clave del desarrollo? En primer lugar, veremos que la educación forma a los trabajadores del futuro; luego, mostraremos que la escuela sola no basta si no hay empleo para los jóvenes diplomados. »

Exercice 7. Exemple : « Dakar, 5 de abril de 2026. Estimado señor director: Me dirijo a usted para solicitar unas prácticas en su empresa durante las vacaciones de verano. » (« prácticas » = stage.)', 'texte', 60, false, 40
from public.courses c where c.slug = 'bac-espagnol'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Grammaire du Bac 2 et expression écrite : ser et estar, por et para, discours indirect, essai et lettre');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Sujet type d''examen : sujet d''entraînement corrigé', '## Présentation

Voici un sujet complet d''entraînement conçu pour ce cours. Ce n''est pas un sujet officiel du Bac. La répartition des points est indicative et non officielle ; elle sert seulement à t''entraîner à gérer ton temps. Fais-le en temps limité avant de lire le corrigé.

## Texte

« Yolanda vive en San Basilio de Palenque, un pueblo del Caribe colombiano fundado por africanos que huyeron de la esclavitud. Cada tarde, después de clase, se sienta con su abuela, que le enseña canciones en lengua palenquera. "Mi abuela dice que estas palabras vinieron de África hace siglos", explica la joven. Durante mucho tiempo, los habitantes del pueblo sufrieron el desprecio de la gente de la ciudad. Hoy, en cambio, muchos turistas vienen a descubrir su música y sus tradiciones. Yolanda quiere ser profesora para que los niños del pueblo no pierdan su cultura. "Si no protegemos nuestra lengua, desaparecerá con los ancianos", afirma. Su sueño sería viajar un día a África para conocer la tierra de sus antepasados. »

## Partie I : compréhension (8 points, indicatif)

1. ¿Dónde vive Yolanda y quiénes fundaron su pueblo? (2 pts)
2. Vrai ou faux ? Justifie par une citation. a) Los habitantes de Palenque siempre fueron respetados. b) Yolanda aprende la lengua palenquera en familia. (2 pts)
3. Trouve dans le texte un synonyme de « ancestros » et une expression qui s''oppose à « hoy ». (1 pt)
4. ¿Por qué quiere Yolanda ser profesora? (1 pt)
5. Explique en espagnol : « Si no protegemos nuestra lengua, desaparecerá con los ancianos ». (2 pts)

## Partie II : compétence linguistique (6 points, indicatif)

1. Mets au passé : « Yolanda quiere ser profesora para que los niños no pierdan su cultura. » (2 pts)
2. Mets au discours indirect en commençant par « Yolanda explicó que... » : « Mi abuela dice que estas palabras vinieron de África. » (1 pt)
3. Transforme en hypothèse irréelle : « Si no protegemos nuestra lengua, desaparecerá. » (1 pt)
4. Complète avec ser ou estar, por ou para : « Palenque ... en Colombia. Yolanda ... estudiante. Viaja ... aprender. Pasa ... la plaza. » (2 pts)

## Partie III : expression écrite (6 points, indicatif)

Traite un sujet au choix (15 lignes environ).

- Sujet A : « ¿Cómo proteger las lenguas y las tradiciones africanas en un mundo globalizado? »
- Sujet B : Yolanda escribe una carta a un joven senegalés para presentarle su pueblo y hacerle preguntas sobre Senegal.

## Corrigé de la partie I

1. Yolanda vive en San Basilio de Palenque, un pueblo del Caribe colombiano. Lo fundaron africanos que huyeron de la esclavitud.

2. a) Faux : « los habitantes del pueblo sufrieron el desprecio de la gente de la ciudad ». b) Vrai : « se sienta con su abuela, que le enseña canciones en lengua palenquera ».

3. Synonyme de « ancestros » : « antepasados ». Expression qui s''oppose à « hoy » : « durante mucho tiempo » (le passé du pueblo) ; « hace siglos » est aussi accepté.

4. Yolanda quiere ser profesora para que los niños del pueblo no pierdan su cultura, es decir, para transmitir la lengua y las tradiciones.

5. Yolanda piensa que, si los jóvenes no aprenden ni hablan la lengua palenquera, esta morirá cuando mueran los ancianos, que son los últimos que la conocen bien. Por eso es urgente enseñarla en la escuela.

Conseil : dans une explication, ne répète pas la phrase ; reformule avec tes mots et ajoute une conséquence.

## Corrigé de la partie II

1. « Yolanda quería ser profesora para que los niños no perdieran su cultura. » Le verbe principal passe à l''imparfait, donc « pierdan » devient « perdieran » (concordance des temps). « Quiso » est aussi accepté.

2. « Yolanda explicó que su abuela decía que aquellas palabras habían venido de África. » Quatre changements : dice devient decía, vinieron devient habían venido, estas devient aquellas, et mi devient su.

3. « Si no protegiéramos nuestra lengua, desaparecería. » Si + subjonctif imparfait, puis conditionnel.

4. « Palenque está en Colombia. Yolanda es estudiante. Viaja para aprender. Pasa por la plaza. »

## Corrigé de la partie III (exemple de plan et extraits)

Sujet A, plan possible.

- Introducción : la mondialisation rapproche les peuples mais menace les langues minoritaires ; problématique : comment protéger ce patrimoine ?
- Primera parte : l''école et la famille. Exemple : la grand-mère de Yolanda ; au Sénégal, l''enseignement en langues nationales comme le wolof ou le pulaar dans certaines classes.
- Segunda parte : la culture et le numérique : musique, radios communautaires, réseaux sociaux, tourisme culturel.
- Conclusión : la protection des langues est l''affaire de tous ; ouverture sur l''échange entre Afrique et Amérique latine.

Extrait : « En primer lugar, es necesario que la familia transmita la lengua a los niños, como hace la abuela de Yolanda. Sin embargo, la familia no basta: hace falta que la escuela también enseñe las lenguas locales. »

Sujet B, extrait : « San Basilio de Palenque, 3 de mayo de 2026. Querido Abdou: Te escribo desde mi pueblo, en el Caribe colombiano. Aquí la música y las canciones de los antepasados están presentes en todas partes. Me gustaría que me contaras cómo viven los jóvenes en Senegal. ¿Hablas varias lenguas? ¿Qué tradiciones son importantes para tu familia? Ojalá pueda visitarte un día. Un abrazo, Yolanda. »

## Conseils du correcteur

- Les points de langue se gagnent avec des règles sûres : apprends la concordance des temps.
- En expression écrite, les correcteurs valorisent un plan visible, des connecteurs et des exemples précis.
- Évite de recopier le texte : réutilise ses idées avec tes propres mots.

## Exercices pratiques

Exercice 1. Calcule ta note sur 20 à partir de tes résultats partiels, en appliquant le barème indicatif.

Exercice 2. Relève dans le texte un verbe au subjonctif présent et justifie son emploi.

Exercice 3. Relève un verbe au conditionnel et indique sa valeur.

Exercice 4. Mets au discours indirect : Yolanda afirmó: «Mañana cantaré con mi abuela».

Exercice 5. Rédige la conclusion du sujet A en 4 lignes.

## Corrigé

Exercice 1. Additionne les points des trois parties (8 + 6 + 6 = 20 au maximum). Par exemple, 6/8 + 4/6 + 4/6 = 14/20.

Exercice 2. « pierdan » : subjonctif présent après « para que », qui exprime le but.

Exercice 3. « sería » : conditionnel qui exprime un souhait, un rêve.

Exercice 4. Yolanda afirmó que al día siguiente cantaría con su abuela.

Exercice 5. Exemple : « En conclusión, proteger las lenguas africanas es responsabilidad de las familias, de la escuela y de los Estados. Si todos actuáramos juntos, nuestras culturas seguirían vivas. Tal vez el ejemplo de Palenque pueda inspirar a la juventud senegalesa. »', 'texte', 60, false, 50
from public.courses c where c.slug = 'bac-espagnol'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Sujet type d''examen : sujet d''entraînement corrigé');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : révision intensive « veille du Bac » en espagnol', '## Fiche du cours vidéo

- Durée : 1h30.
- Thème : séance de révision intensive la veille de l''épreuve d''espagnol LV2 du Bac.
- Objectifs : réactiver les règles clés (subjonctif, concordance, hypothèse, ser et estar, por et para, discours indirect), corriger des exercices de type Bac, revoir la gestion du temps et la méthode d''expression écrite.
- Matériel : tableau ou diaporama, fiches de conjugaison, un texte court imprimé, brouillon.
- Prérequis : leçons 1 à 5 de ce cours. Les exercices sont des exercices d''entraînement, pas des sujets officiels.

## Déroulé minuté

## 00:00 – 05:00 · Accueil et objectifs

« ¡Buenas tardes a todos! Demain, c''est l''épreuve d''espagnol. Ce soir, pas de notions nouvelles : nous consolidons ce que vous savez déjà. Nous allons revoir les règles qui rapportent le plus de points, corriger ensemble des exercices type Bac, puis parler de la gestion du temps. À mi-parcours, un quiz rapide ; à la fin, une évaluation de cinq questions. Préparez une feuille et un stylo. »

Visuel : le plan de la séance en six étapes.

## 05:00 – 15:00 · Rappel 1 : le subjonctif présent et imparfait

« Première règle d''or : le subjonctif présent se forme sur le "yo" du présent. Tengo donne tenga, hago donne haga, conozco donne conozca. Les verbes en -ar prennent un e, les verbes en -er et -ir prennent un a. N''oubliez pas les six irréguliers : sea, vaya, esté, dé, sepa, haya.

Le subjonctif imparfait se forme sur la troisième personne du pluriel du passé simple : tuvieron donne tuviera, hicieron donne hiciera, fueron donne fuera, dijeron donne dijera. Si vous connaissez votre passé simple, vous connaissez votre subjonctif imparfait.

Écrivez avec moi au tableau quelques phrases complètes : "Es necesario que todos los niños vayan a la escuela." "Mis padres quieren que yo sea médico." "Ojalá haga buen tiempo mañana." Dans chaque phrase, entourez le déclencheur du subjonctif : une expression impersonnelle, un verbe de volonté, ojalá. Si vous savez repérer le déclencheur, vous ne vous tromperez pas de mode. »

Visuel : deux colonnes, présent du « yo » et subjonctif présent ; passé simple « ellos » et subjonctif imparfait. Question à poser : « Quel est le subjonctif imparfait de "poder" ? » Réponse attendue : pudiera.

## 15:00 – 25:00 · Rappel 2 : la concordance des temps et l''hypothèse

« Regardez le verbe principal. Présent, futur ou impératif : subjonctif présent. Passé ou conditionnel : subjonctif imparfait. "Quiero que vengas", mais "quería que vinieras" et "me gustaría que vinieras".

Pour l''hypothèse, retenez trois formules. Si tengo tiempo, iré. Si tuviera tiempo, iría. Si hubiera tenido tiempo, habría ido. Et jamais, jamais de conditionnel juste après "si". Écrivez-le en gros sur votre fiche : "si tendría" est interdit. »

Visuel : le tableau des trois hypothèses avec une flèche « interdit » sur « si + conditionnel ».

Question à poser : « Comment dit-on : si nous protégions la forêt de Casamance, il y aurait plus de pluie ? » Laisser une minute, puis corriger : « Si protegiéramos el bosque de Casamance, habría más lluvia. » Faire remarquer l''accent écrit sur « protegiéramos » et le conditionnel de « haber », qui est « habría ». Autre piège à signaler : après « como si », on emploie toujours le subjonctif imparfait : « Habla como si fuera el jefe. »

## 25:00 – 35:00 · Rappel 3 : ser et estar, por et para, discours indirect

« Ser définit : soy senegalés, es profesora, son las cinco. Estar situe ou décrit un état : Dakar está en la costa, estoy nervioso. Attention aux adjectifs pièges : estar listo, c''est être prêt ; ser listo, c''est être intelligent. Demain, j''espère que vous serez les deux !

Por, c''est la cause et le chemin : por la lluvia, por el centro. Para, c''est le but et la destination : para aprobar, para Dakar.

Au discours indirect introduit par un verbe au passé, chaque temps recule : présent vers imparfait, passé vers plus-que-parfait, futur vers conditionnel, impératif vers subjonctif imparfait. "Mañana" devient "al día siguiente". »

Visuel : un tableau de transformation du discours direct au discours indirect.

## 35:00 – 45:00 · Correction commentée : exercice de grammaire type Bac

Énoncé projeté : « 1) Pon en pasado: El profesor exige que los alumnos lleguen a tiempo. 2) Transforma en hipótesis irreal: Si estudio, apruebo. 3) Pon en estilo indirecto: Mi madre me dijo: "Ven temprano". 4) Completa: Este regalo es (por/para) ti. »

« Corrigeons. Un : El profesor exigió que los alumnos llegaran a tiempo. Le principal est au passé, donc subjonctif imparfait. Deux : Si estudiara, aprobaría. Trois : Mi madre me dijo que viniera temprano : l''impératif devient subjonctif imparfait. Quatre : para ti, car c''est le destinataire. Si vous avez quatre bonnes réponses, bravo. Sinon, notez la règle oubliée sur votre fiche d''erreurs. »

## 45:00 – 50:00 · Pause active : quiz éclair

« Petite pause, mais le cerveau continue ! Cinq questions, répondez sur votre feuille en dix secondes chacune. »

- Subjonctif présent de « ir », première personne : vaya.
- Traduction de « estar malo » : être malade.
- « Cuando ... (tener) dinero, viajaré » : tenga.
- Por ou para : « Compré el pan ... 300 francos » : por.
- Que signifie « constipado » ? Enrhumé.

« Comptez vos points. Quatre ou cinq : vous êtes prêts. Moins de trois : relisez votre fiche ce soir, calmement. »

## 50:00 – 1:05:00 · Correction commentée : compréhension d''un texte court

Texte projeté : « Aminata trabaja en un mercado de Ziguinchor. Antes vendía pescado, pero desde hace dos años tiene un pequeño restaurante. Cada día cocina para los estudiantes de la universidad. "Me gustaría que mis hijas estudiaran y no tuvieran que levantarse a las cinco como yo", dice. »

« Question 1 : ¿Dónde trabaja Aminata? Réponse complète : Aminata trabaja en un mercado de Ziguinchor. Question 2 : vrai ou faux, Aminata siempre ha tenido un restaurante. Faux, et je justifie : "Antes vendía pescado". Question 3 : explique le souhait d''Aminata. Elle veut que ses filles fassent des études et aient une vie moins dure. Remarquez la structure "me gustaría que estudiaran" : conditionnel, donc subjonctif imparfait. Le texte vous donne lui-même un exemple de concordance : profitez-en dans vos réponses.

Question 4 : trouvez dans le texte un contraire de « después ». Réponse : « antes ». Question 5 : mettez au discours indirect la phrase d''Aminata en commençant par « Aminata dijo que... ». Réponse : « Aminata dijo que le gustaría que sus hijas estudiaran y no tuvieran que levantarse a las cinco como ella. » Observez bien trois changements : "dice" devient "dijo", "mis hijas" devient "sus hijas", "yo" devient "ella". Le conditionnel et le subjonctif imparfait, eux, ne bougent pas : ils sont déjà au bon temps.

Erreur fréquente à signaler : beaucoup de candidats répondent "Aminata trabaja a Ziguinchor". En espagnol, la situation dans une ville se dit avec "en" : trabaja en Ziguinchor, vive en Dakar. "A" indique le mouvement : va a Ziguinchor. »

Visuel : le texte avec les mots-clés surlignés et les numéros de ligne.

## 1:05:00 – 1:15:00 · Méthode express de l''expression écrite

« Pour l''essai : introduction avec la question posée, deux parties avec un argument et un exemple chacune, conclusion qui répond. Utilisez vos connecteurs : en primer lugar, además, sin embargo, por eso, en conclusión. Pour la lettre : lieu et date, "Querido" ou "Estimado señor" suivi de deux points, formule finale adaptée. Placez au moins un subjonctif et une hypothèse bien construits : c''est là que vous montrez votre niveau de Terminale. Et choisissez des exemples africains précis : la migration vers les Canaries, la Guinée équatoriale, l''héritage africain à Cuba ou en Colombie. »

Lecture à voix haute d''une introduction modèle sur le sujet « ¿Debe Senegal proteger sus lenguas nacionales? » : « Senegal es un país donde se hablan muchas lenguas: el wolof, el pulaar, el serer, el diola y otras. Sin embargo, el francés sigue siendo la lengua de la administración. ¿Es necesario proteger las lenguas nacionales? En primer lugar, veremos que son la base de nuestra identidad; luego, mostraremos que también pueden ser útiles para la educación. »

« Remarquez : une phrase de contexte, une problématique sous forme de question avec les deux points d''interrogation, et l''annonce du plan avec "en primer lugar" et "luego". C''est simple, clair, et le correcteur sait immédiatement où vous allez. »

Visuel : une grille de relecture en cinq points (plan, connecteurs, subjonctif, accents, longueur).

## 1:15:00 – 1:22:00 · Gestion du temps et du stress

« Demain, lisez d''abord tout le sujet. Répartissez votre temps de façon indicative : un sixième environ pour la lecture, un gros tiers pour la compréhension, un cinquième pour la grammaire, un quart pour l''expression, et quelques minutes pour la relecture. Vérifiez la durée officielle sur votre convocation. Si une question bloque, passez. Ce soir : un dernier coup d''œil à vos fiches, puis dormez. Prévoyez vos stylos, votre pièce d''identité et votre convocation. »

## 1:22:00 – 1:30:00 · Synthèse et évaluation finale

« Pour finir, cinq questions. Notez vos réponses, puis nous corrigeons. »

- Question 1 : Mets au passé : « Quiero que me ayudes ». Réponse : Quería que me ayudaras.
- Question 2 : Complète : « Si (tener) un coche, iría a Saly ». Réponse : tuviera.
- Question 3 : Ser ou estar : « La fiesta ... en casa de Moussa ». Réponse : es (lieu d''un événement).
- Question 4 : Discours indirect : Dijo: «Volveré mañana». Réponse : Dijo que volvería al día siguiente.
- Question 5 : Quel est le seul pays d''Afrique subsaharienne où l''espagnol est langue officielle ? Réponse : la Guinée équatoriale.

« Synthèse : subjonctif bien formé, concordance respectée, jamais de conditionnel après "si", ser pour définir et estar pour situer, por pour la cause et para pour le but. Vous avez travaillé, vous êtes prêts. ¡Mucha suerte mañana y hasta pronto! »', 'video', 90, false, 60
from public.courses c where c.slug = 'bac-espagnol'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : révision intensive « veille du Bac » en espagnol');

-- Cours : Arabe LV2 : réussir l'épreuve du Bac
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'bac-arabe', (select id from public.levels where name = 'Terminale'), null, 'Arabe (LV2)', 'Arabe LV2 : réussir l''épreuve du Bac', 'Ce cours d''examen prépare l''épreuve d''arabe LV2 du Baccalauréat : lecture et analyse d''un texte, grammaire du Bac (cas et déclinaison, phrase nominale et phrase verbale, verbes dérivés usuels, nombres, relatifs, phrase conditionnelle), vocabulaire thématique (éducation, société, environnement) et expression écrite (essai court, lettre). Il s''adresse surtout aux candidats des séries L, et à tout élève de Terminale qui présente l''arabe en LV2. Les explications sont en français, les exemples en arabe vocalisé avec translittération et traduction. Prérequis : lire couramment l''arabe et maîtriser les bases du collège et de la Seconde.', true, 211
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Comprendre l''épreuve et méthode de travail', '## Objectifs de la leçon

- Savoir comment se présente l''épreuve d''arabe LV2 du Bac et ce que le correcteur attend.
- Connaître une méthode pour chaque type d''exercice.
- Repérer les erreurs les plus fréquentes et apprendre à les éviter.
- Organiser tes révisions sur 10 semaines.

## À qui s''adresse ce cours

Ce cours s''adresse d''abord aux élèves de Terminale des séries L, et plus largement à tout candidat qui présente l''arabe en deuxième langue vivante, quelle que soit sa série (L, S ou G), selon les options prévues par les textes officiels en vigueur. La durée de l''épreuve, son coefficient et son barème sont fixés par ces textes : renseigne-toi auprès de ton établissement. La méthode présentée ici reste valable dans tous les cas.

Le programme révisé couvre le lycée : la Seconde (phrase nominale, phrase verbale, accompli et inaccompli), la Première (cas et déclinaison, كَانَ et إِنَّ, nombres) et la Terminale (verbes dérivés, relatifs, phrase conditionnelle, expression écrite argumentée).

Dans ce cours, chaque exemple arabe est vocalisé, suivi de sa translittération entre parenthèses et de sa traduction. Les lettres particulières sont notées ainsi : ʿ pour ع, ʾ pour la hamza ء, ḥ pour ح, kh pour خ, dh pour ذ, sh pour ش, ṣ pour ص, ḍ pour ض, ṭ pour ط, ẓ pour ظ, gh pour غ ; les voyelles longues sont ā, ī, ū.

## Comment se présente l''épreuve

L''épreuve repose en général sur un texte en arabe moderne : récit, article, lettre ou dialogue, souvent sur un thème de société (éducation, famille, jeunesse, environnement, santé, solidarité). On y trouve habituellement trois familles d''exercices.

- Compréhension : questions sur le texte, vrai ou faux, recherche de synonymes ou de contraires, titre à proposer.
- Langue : analyse grammaticale de mots (cas, fonction), transformations (pluriel, négation, ajout de كَانَ ou de إِنَّ), conjugaison, nombres, dérivés.
- Expression écrite : un paragraphe ou un court essai, ou une lettre, en lien avec le thème du texte.

La présentation exacte varie : lis toutes les consignes avant de commencer.

## Comprendre les consignes en arabe

Les consignes sont souvent rédigées en arabe. Apprends-les par cœur.

- أَجِبْ عَنِ الْأَسْئِلَةِ (ajib ʿani l-asʾilati) : réponds aux questions.
- ضَعْ عُنْوَانًا مُنَاسِبًا لِلنَّصِّ (ḍaʿ ʿunwānan munāsiban li-n-naṣṣi) : donne un titre approprié au texte.
- اِشْرَحِ الْكَلِمَاتِ التَّالِيَةَ (ishraḥi l-kalimāti t-tāliyata) : explique les mots suivants.
- هَاتِ ضِدَّ (hāti ḍidda) : donne le contraire de.
- هَاتِ جَمْعَ (hāti jamʿa) : donne le pluriel de ; هَاتِ مُفْرَدَ (hāti mufrada) : donne le singulier de.
- أَعْرِبْ (aʿrib) : fais l''analyse grammaticale.
- صَحِيحٌ أَمْ خَطَأٌ (ṣaḥīḥun am khaṭaʾun) : vrai ou faux.

Et les mots interrogatifs : مَنْ (man, qui), مَاذَا (mādhā, que, quoi), أَيْنَ (ayna, où), مَتَى (matā, quand), كَيْفَ (kayfa, comment), لِمَاذَا (limādhā, pourquoi), كَمْ (kam, combien).

## Méthode pour la compréhension

Lis le texte une première fois en entier pour saisir le thème. À la deuxième lecture, souligne les personnages, les lieux, les mots de liaison et les verbes principaux. Pour répondre, reprends les mots de la question et complète avec l''information du texte. À la question أَيْنَ تَعِيشُ فَاطِمَةُ؟ (ayna taʿīshu Fāṭimatu? : où vit Fatima ?), on répond : تَعِيشُ فَاطِمَةُ فِي قَرْيَةٍ صَغِيرَةٍ (taʿīshu Fāṭimatu fī qaryatin ṣaghīratin : Fatima vit dans un petit village). Pour un vrai ou faux, justifie toujours par une courte citation du texte.

## Méthode pour la langue

Avant de répondre, demande-toi trois choses : quel est le type de phrase (nominale ou verbale) ? Quelle est la fonction du mot ? Quel cas ou quel mode en découle ? Écris ensuite la voyelle finale clairement : c''est elle que le correcteur regarde.

## Méthode pour l''expression écrite

Fais un plan au brouillon : une introduction d''une ou deux phrases, deux idées illustrées par un exemple, une conclusion. Écris des phrases courtes et correctes, vocalise les fins de mots dont tu es sûr, et réutilise le vocabulaire du texte. Garde du temps pour relire l''orthographe et les accords.

## Organiser son temps

Répartition indicative, à adapter à la durée officielle de ton épreuve : environ 15 % pour la lecture, 35 % pour la compréhension, 25 % pour la langue, 20 % pour l''expression et 5 % pour la relecture.

## Les erreurs fréquentes

- Accorder au pluriel un verbe placé avant son sujet : on écrit ذَهَبَ الطُّلَّابُ (dhahaba ṭ-ṭullābu : les étudiants sont partis), et non ذَهَبُوا الطُّلَّابُ.
- Oublier qu''un pluriel de non-humains s''accorde au féminin singulier : الْكُتُبُ مُفِيدَةٌ (al-kutubu mufīdatun : les livres sont utiles).
- Se tromper de démonstratif : هَذَا الْكِتَابُ (hādhā l-kitābu : ce livre), mais هَذِهِ الْمَدْرَسَةُ (hādhihi l-madrasatu : cette école).
- Mettre la terminaison -a au lieu de -i après une préposition : فِي الْمَدْرَسَةِ (fī l-madrasati), avec une kasra.
- Confondre la tāʾ marbūṭa ة et le hāʾ ه, ou le yāʾ ي et l''alif maqṣūra ى (عَلَى s''écrit avec ى).
- Mal accorder les nombres de 3 à 10 : on écrit ثَلَاثَةُ كُتُبٍ (thalāthatu kutubin : trois livres), et non ثَلَاثُ كُتُبٍ.

## Plan de révision sur 10 semaines

- Semaine 1 : diagnostic sur un sujet complet, lecture de cette leçon, carnet de vocabulaire.
- Semaine 2 : lecture et analyse de texte, consignes en arabe (leçon 2).
- Semaine 3 : vocabulaire thématique et expression écrite (leçon 2).
- Semaine 4 : cas et déclinaison (leçon 3).
- Semaine 5 : phrase nominale, phrase verbale, كَانَ et إِنَّ, modes du verbe (leçon 3).
- Semaine 6 : verbes dérivés et nombres (leçon 4).
- Semaine 7 : relatifs et phrase conditionnelle (leçon 4).
- Semaine 8 : sujet type en temps limité (leçon 5).
- Semaine 9 : deuxième sujet blanc et fiche d''erreurs personnelles.
- Semaine 10 : révision légère et cours vidéo « veille du Bac ».

Chaque jour, lis au moins un court paragraphe en arabe à voix haute et apprends cinq mots nouveaux.

## Points clés

- Apprends les consignes et les mots interrogatifs : ils rapportent des points faciles.
- Réponds en phrases complètes en reprenant les mots de la question.
- Vérifie la fonction du mot avant d''écrire sa voyelle finale.
- La régularité compte plus que le volume.

## Exercices pratiques

Exercice 1. Traduis les consignes : أَجِبْ عَنِ الْأَسْئِلَةِ ; هَاتِ ضِدَّ ; أَعْرِبْ.

Exercice 2. Associe chaque mot interrogatif à son sens : مَتَى ، كَيْفَ ، لِمَاذَا.

Exercice 3. Corrige : ذَهَبُوا الطُّلَّابُ إِلَى الْمَلْعَبِ.

Exercice 4. Corrige : هَذَا الْمَدْرَسَةُ كَبِيرَةٌ.

Exercice 5. Réponds par une phrase complète : أَيْنَ يَسْكُنُ عَلِيٌّ؟ (Ali habite à Touba.)

Exercice 6. Ton épreuve dure, par hypothèse, 2 heures. Calcule le temps de chaque partie selon la répartition indicative.

## Corrigé

Exercice 1. « Réponds aux questions » ; « donne le contraire de » ; « fais l''analyse grammaticale ».

Exercice 2. مَتَى (matā) : quand ; كَيْفَ (kayfa) : comment ; لِمَاذَا (limādhā) : pourquoi.

Exercice 3. ذَهَبَ الطُّلَّابُ إِلَى الْمَلْعَبِ (dhahaba ṭ-ṭullābu ilā l-malʿabi : les étudiants sont allés au stade). Le verbe placé avant le sujet reste au singulier.

Exercice 4. هَذِهِ الْمَدْرَسَةُ كَبِيرَةٌ (hādhihi l-madrasatu kabīratun : cette école est grande). مَدْرَسَةٌ est féminin, donc démonstratif féminin.

Exercice 5. يَسْكُنُ عَلِيٌّ فِي طُوبَى (yaskunu ʿAliyyun fī Ṭūbā : Ali habite à Touba).

Exercice 6. 2 heures = 120 minutes. Lecture : 15 % = 18 min ; compréhension : 35 % = 42 min ; langue : 25 % = 30 min ; expression : 20 % = 24 min ; relecture : 5 % = 6 min. Total : 18 + 42 + 30 + 24 + 6 = 120 min.', 'texte', 50, true, 10
from public.courses c where c.slug = 'bac-arabe'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Comprendre l''épreuve et méthode de travail');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Lecture, analyse de texte, vocabulaire thématique et expression écrite', '## Objectifs de la leçon

- Lire et analyser un texte en arabe avec méthode.
- Maîtriser le vocabulaire des thèmes du Bac : éducation, société, environnement.
- Rédiger un court essai et une lettre en arabe.

## Texte d''étude

Texte d''entraînement rédigé pour ce cours.

تَعِيشُ فَاطِمَةُ فِي قَرْيَةٍ صَغِيرَةٍ قُرْبَ مَدِينَةِ تِيَاس. فِي الْمَاضِي كَانَتِ الْأَشْجَارُ كَثِيرَةً حَوْلَ الْقَرْيَةِ، لَكِنَّ الْجَفَافَ وَقَطْعَ الْأَشْجَارِ غَيَّرَا الْمَنْظَرَ. لِذَلِكَ قَرَّرَتْ فَاطِمَةُ أَنْ تَجْمَعَ شَبَابَ الْقَرْيَةِ، وَقَالَتْ لَهُمْ: «إِذَا غَرَسْنَا الْأَشْجَارَ الْيَوْمَ، وَجَدَ أَوْلَادُنَا الظِّلَّ غَدًا». وَفِي يَوْمِ الْأَحَدِ اجْتَمَعَ الشَّبَابُ وَغَرَسُوا مِائَةَ شَجَرَةٍ. وَالْآنَ يَسْقِيهَا التَّلَامِيذُ بَعْدَ الدُّرُوسِ.

Translittération : taʿīshu Fāṭimatu fī qaryatin ṣaghīratin qurba madīnati Tiyās. fī l-māḍī kānati l-ashjāru kathīratan ḥawla l-qaryati, lākinna l-jafāfa wa-qaṭʿa l-ashjāri ghayyarā l-manẓara. li-dhālika qarrarat Fāṭimatu an tajmaʿa shabāba l-qaryati, wa-qālat lahum : « idhā gharasnā l-ashjāra l-yawma, wajada awlādunā ẓ-ẓilla ghadan ». wa-fī yawmi l-aḥadi jtamaʿa sh-shabābu wa-gharasū miʾata shajaratin. wa-l-āna yasqīhā t-talāmīdhu baʿda d-durūsi.

Traduction : Fatima vit dans un petit village près de la ville de Thiès. Autrefois, les arbres étaient nombreux autour du village, mais la sécheresse et la coupe des arbres ont changé le paysage. C''est pourquoi Fatima a décidé de réunir les jeunes du village et leur a dit : « Si nous plantons des arbres aujourd''hui, nos enfants trouveront de l''ombre demain. » Le dimanche, les jeunes se sont réunis et ont planté cent arbres. Maintenant, les élèves les arrosent après les cours.

## Méthode d''analyse en quatre étapes

- Étape 1, la situation : qui ? Fatima et les jeunes. Où ? Un village près de Thiès. Quand ? Autrefois, puis aujourd''hui.
- Étape 2, le problème : la sécheresse et la coupe des arbres ont changé le paysage.
- Étape 3, la solution : Fatima mobilise les jeunes, qui plantent cent arbres.
- Étape 4, le message : chacun peut agir pour l''environnement, et l''effort d''aujourd''hui profite aux générations futures.

Repère aussi les mots de liaison, qui révèlent la structure : لَكِنَّ (lākinna, mais) annonce le problème, لِذَلِكَ (li-dhālika, c''est pourquoi) annonce la réaction.

## Le vocabulaire de l''analyse

- النَّصُّ (an-naṣṣu) : le texte ; الْعُنْوَانُ (al-ʿunwānu) : le titre.
- الْكَاتِبُ (al-kātibu) : l''auteur ; الشَّخْصِيَّاتُ (ash-shakhṣiyyātu) : les personnages.
- الْفِكْرَةُ الرَّئِيسِيَّةُ (al-fikratu r-raʾīsiyyatu) : l''idée principale.
- يَتَحَدَّثُ النَّصُّ عَنْ... (yataḥaddathu n-naṣṣu ʿan...) : le texte parle de...

## Vocabulaire thématique : l''éducation

- التَّعْلِيمُ (at-taʿlīmu) : l''enseignement.
- الْمَدْرَسَةُ (al-madrasatu), pluriel الْمَدَارِسُ (al-madārisu) : l''école, les écoles.
- الْجَامِعَةُ (al-jāmiʿatu) : l''université.
- الِامْتِحَانُ (al-imtiḥānu) : l''examen ; النَّجَاحُ (an-najāḥu) : la réussite.
- الْأُمِّيَّةُ (al-ummiyyatu) : l''analphabétisme ; مَحْوُ الْأُمِّيَّةِ (maḥwu l-ummiyyati) : l''alphabétisation.
- الْمَعْرِفَةُ (al-maʿrifatu) : la connaissance.

## Vocabulaire thématique : la société

- الْمُجْتَمَعُ (al-mujtamaʿu) : la société ; الْأُسْرَةُ (al-usratu) : la famille.
- الشَّبَابُ (ash-shabābu) : les jeunes, la jeunesse.
- الْبَطَالَةُ (al-baṭālatu) : le chômage ; الْهِجْرَةُ (al-hijratu) : l''émigration.
- التَّضَامُنُ (at-taḍāmunu) : la solidarité.
- الْحُقُوقُ وَالْوَاجِبَاتُ (al-ḥuqūqu wa-l-wājibātu) : les droits et les devoirs.

## Vocabulaire thématique : l''environnement

- الْبِيئَةُ (al-bīʾatu) : l''environnement ; التَّلَوُّثُ (at-talawwuthu) : la pollution.
- النُّفَايَاتُ (an-nufāyātu) : les déchets.
- الْجَفَافُ (al-jafāfu) : la sécheresse ; التَّصَحُّرُ (at-taṣaḥḥuru) : la désertification.
- الْغَابَةُ (al-ghābatu) : la forêt ; الشَّجَرَةُ (ash-shajaratu), pluriel الْأَشْجَارُ (al-ashjāru) : l''arbre, les arbres.
- تَغَيُّرُ الْمُنَاخِ (taghayyuru l-munākhi) : le changement climatique.

Contraires utiles : كَثِيرٌ (kathīrun, nombreux) et قَلِيلٌ (qalīlun, peu nombreux) ; قَرِيبٌ (qarībun, proche) et بَعِيدٌ (baʿīdun, lointain) ; أَمْسِ (amsi, hier) et غَدًا (ghadan, demain) ; النَّجَاحُ (an-najāḥu, la réussite) et الرُّسُوبُ (ar-rusūbu, l''échec à un examen).

## Méthode : le court essai

Un essai comprend trois parties : الْمُقَدِّمَةُ (al-muqaddimatu, l''introduction), الْعَرْضُ (al-ʿarḍu, le développement) et الْخَاتِمَةُ (al-khātimatu, la conclusion). Connecteurs : أَوَّلًا (awwalan, d''abord), ثَانِيًا (thāniyan, deuxièmement), ثُمَّ (thumma, ensuite), بِالْإِضَافَةِ إِلَى ذَلِكَ (bi-l-iḍāfati ilā dhālika, de plus), لِأَنَّ (li-anna, parce que), فِي رَأْيِي (fī raʾyī, à mon avis), وَفِي الْخِتَامِ (wa-fī l-khitāmi, en conclusion).

Phrases modèles :

- أَوَّلًا، يَجِبُ عَلَيْنَا أَنْ نَغْرِسَ الْأَشْجَارَ (awwalan, yajibu ʿalaynā an naghrisa l-ashjāra) : d''abord, nous devons planter des arbres.
- ثَانِيًا، لَا تَرْمُوا النُّفَايَاتِ فِي الشَّارِعِ (thāniyan, lā tarmū n-nufāyāti fī sh-shāriʿi) : ensuite, ne jetez pas les déchets dans la rue.
- فِي رَأْيِي، التَّعْلِيمُ مِفْتَاحُ التَّنْمِيَةِ (fī raʾyī, at-taʿlīmu miftāḥu t-tanmiyati) : à mon avis, l''enseignement est la clé du développement.
- وَفِي الْخِتَامِ، حِمَايَةُ الْبِيئَةِ مَسْؤُولِيَّةُ الْجَمِيعِ (wa-fī l-khitāmi, ḥimāyatu l-bīʾati masʾūliyyatu l-jamīʿi) : en conclusion, protéger l''environnement est la responsabilité de tous.

## Méthode : la lettre

- Lieu et date en haut : دَاكَار، فِي 15 مَارِس 2026 (Dākār, fī 15 māris 2026).
- Lettre amicale : عَزِيزِي عُمَر (ʿazīzī ʿUmar : cher Omar), puis السَّلَامُ عَلَيْكُمْ وَرَحْمَةُ اللَّهِ وَبَرَكَاتُهُ (as-salāmu ʿalaykum wa-raḥmatu llāhi wa-barakātuhu).
- Prise de nouvelles : أَرْجُو أَنْ تَكُونَ فِي صِحَّةٍ جَيِّدَةٍ (arjū an takūna fī ṣiḥḥatin jayyidatin : j''espère que tu es en bonne santé).
- Objet : أَكْتُبُ إِلَيْكَ لِأُخْبِرَكَ بِنَجَاحِي فِي الِامْتِحَانِ (aktubu ilayka li-ukhbiraka bi-najāḥī fī l-imtiḥāni : je t''écris pour t''annoncer ma réussite à l''examen).
- Fin : أَبْلِغْ سَلَامِي إِلَى أُسْرَتِكَ (abligh salāmī ilā usratika : transmets mes salutations à ta famille), puis صَدِيقُكَ الْمُخْلِصُ (ṣadīquka l-mukhliṣu : ton ami fidèle).
- Lettre officielle : حَضْرَةَ السَّيِّدِ الْمُدِيرِ الْمُحْتَرَمِ (ḥaḍrata s-sayyidi l-mudīri l-muḥtarami : Monsieur le Directeur), تَحِيَّةً طَيِّبَةً، وَبَعْدُ (taḥiyyatan ṭayyibatan, wa-baʿdu : salutations, et ensuite), et pour finir وَتَفَضَّلُوا بِقَبُولِ فَائِقِ الِاحْتِرَامِ (wa-tafaḍḍalū bi-qabūli fāʾiqi l-iḥtirāmi : veuillez agréer l''expression de mon profond respect).

## Points clés

- Situation, problème, solution, message : quatre étapes pour analyser un texte.
- Apprends le vocabulaire par thème, avec les pluriels et les contraires.
- Un essai : introduction, deux idées avec exemples, conclusion, connecteurs.
- Une lettre : lieu et date, formule d''appel, objet, formule finale adaptée.

## Exercices pratiques

Exercice 1. أَيْنَ تَعِيشُ فَاطِمَةُ؟ (Où vit Fatima ?) Réponds en arabe.

Exercice 2. مَا الَّذِي غَيَّرَ مَنْظَرَ الْقَرْيَةِ؟ (mā lladhī ghayyara manẓara l-qaryati? : qu''est-ce qui a changé le paysage du village ?) Réponds en arabe.

Exercice 3. صَحِيحٌ أَمْ خَطَأٌ : كَانَتِ الْأَشْجَارُ قَلِيلَةً فِي الْمَاضِي. Justifie.

Exercice 4. كَمْ شَجَرَةً غَرَسَ الشَّبَابُ؟ (kam shajaratan gharasa sh-shabābu? : combien d''arbres les jeunes ont-ils plantés ?)

Exercice 5. هَاتِ مِنَ النَّصِّ ضِدَّ : قَلِيلَةً ، أَمْسِ.

Exercice 6. Propose un titre en arabe pour le texte.

Exercice 7. Écris en arabe trois phrases d''un essai sur la protection de l''environnement, avec أَوَّلًا, ثَانِيًا et وَفِي الْخِتَامِ.

## Corrigé

Exercice 1. تَعِيشُ فَاطِمَةُ فِي قَرْيَةٍ صَغِيرَةٍ قُرْبَ مَدِينَةِ تِيَاس (taʿīshu Fāṭimatu fī qaryatin ṣaghīratin qurba madīnati Tiyās).

Exercice 2. غَيَّرَ الْجَفَافُ وَقَطْعُ الْأَشْجَارِ مَنْظَرَ الْقَرْيَةِ (ghayyara l-jafāfu wa-qaṭʿu l-ashjāri manẓara l-qaryati : la sécheresse et la coupe des arbres ont changé le paysage du village). Le verbe placé avant le sujet reste au singulier.

Exercice 3. خَطَأٌ (khaṭaʾun : faux), لِأَنَّ النَّصَّ يَقُولُ (li-anna n-naṣṣa yaqūlu : parce que le texte dit) : « كَانَتِ الْأَشْجَارُ كَثِيرَةً ».

Exercice 4. غَرَسَ الشَّبَابُ مِائَةَ شَجَرَةٍ (gharasa sh-shabābu miʾata shajaratin : les jeunes ont planté cent arbres). Remarque : après كَمْ interrogatif, le nom est au singulier et au cas direct (شَجَرَةً).

Exercice 5. Contraire de قَلِيلَةً : كَثِيرَةً (kathīratan). Contraire de أَمْسِ : غَدًا (ghadan).

Exercice 6. Exemples : الشَّبَابُ وَالْبِيئَةُ (ash-shabābu wa-l-bīʾatu : les jeunes et l''environnement) ; شَجَرَةٌ لِلْمُسْتَقْبَلِ (shajaratun li-l-mustaqbali : un arbre pour l''avenir).

Exercice 7. Exemple : أَوَّلًا، يَجِبُ عَلَيْنَا أَنْ نَغْرِسَ الْأَشْجَارَ. ثَانِيًا، لَا تَرْمُوا النُّفَايَاتِ فِي الشَّارِعِ. وَفِي الْخِتَامِ، حِمَايَةُ الْبِيئَةِ مَسْؤُولِيَّةُ الْجَمِيعِ. Toute production correcte reprenant les trois connecteurs est acceptée.', 'texte', 60, false, 20
from public.courses c where c.slug = 'bac-arabe'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Lecture, analyse de texte, vocabulaire thématique et expression écrite');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Grammaire du Bac 1 : cas et déclinaison, phrase nominale et phrase verbale', '## Objectifs de la leçon

- Connaître les trois cas du nom et leurs marques.
- Décliner le duel, les pluriels, les « cinq noms » et les diptotes.
- Construire et analyser la phrase nominale (avec كَانَ et إِنَّ) et la phrase verbale.
- Employer les modes de l''inaccompli après لَنْ, لَمْ et أَنْ.

## Fiche 1 : les trois cas (الْإِعْرَابُ, al-iʿrāb)

Le nom arabe change de voyelle finale selon sa fonction.

- Cas sujet, الرَّفْعُ (ar-rafʿ), marque : ḍamma (-u). Exemple : جَاءَ الْمُعَلِّمُ (jāʾa l-muʿallimu : l''enseignant est venu).
- Cas direct, النَّصْبُ (an-naṣb), marque : fatḥa (-a). Exemple : رَأَيْتُ الْمُعَلِّمَ (raʾaytu l-muʿallima : j''ai vu l''enseignant).
- Cas indirect, الْجَرُّ (al-jarr), marque : kasra (-i). Exemple : سَلَّمْتُ عَلَى الْمُعَلِّمِ (sallamtu ʿalā l-muʿallimi : j''ai salué l''enseignant).

Le nom indéterminé porte le tanwīn : هَذَا كِتَابٌ (hādhā kitābun : ceci est un livre) ; قَرَأْتُ كِتَابًا (qaraʾtu kitāban : j''ai lu un livre) ; نَظَرْتُ إِلَى كِتَابٍ (naẓartu ilā kitābin : j''ai regardé un livre).

Le cas indirect s''emploie après une préposition (فِي, مِنْ, إِلَى, عَلَى, عَنْ, بِـ, لِـ) et pour le complément de nom.

## Fiche 2 : l''annexion (الْإِضَافَةُ, al-iḍāfa)

Dans كِتَابُ التِّلْمِيذِ (kitābu t-tilmīdhi : le livre de l''élève), le premier terme n''a ni article ni tanwīn, et le second est toujours au cas indirect. Le premier terme prend le cas de sa fonction : قَرَأْتُ كِتَابَ التِّلْمِيذِ (qaraʾtu kitāba t-tilmīdhi : j''ai lu le livre de l''élève).

## Fiche 3 : l''adjectif

L''adjectif suit le nom et s''accorde en cas, en genre, en nombre et en détermination : قَرَأْتُ كِتَابًا مُفِيدًا (qaraʾtu kitāban mufīdan : j''ai lu un livre utile) ; فِي الْمَدْرَسَةِ الْجَدِيدَةِ (fī l-madrasati l-jadīdati : dans la nouvelle école). Règle essentielle : le pluriel d''un nom non humain s''accorde au féminin singulier : الْأَشْجَارُ الْكَبِيرَةُ (al-ashjāru l-kabīratu : les grands arbres).

## Fiche 4 : duel, pluriels, cinq noms et diptotes

- Duel : -āni au cas sujet, -ayni aux deux autres cas. جَاءَ الْمُعَلِّمَانِ (jāʾa l-muʿallimāni : les deux enseignants sont venus) ; رَأَيْتُ الْمُعَلِّمَيْنِ (raʾaytu l-muʿallimayni : j''ai vu les deux enseignants).
- Pluriel masculin régulier : -ūna au cas sujet, -īna aux deux autres cas. جَاءَ الْمُعَلِّمُونَ (jāʾa l-muʿallimūna) ; رَأَيْتُ الْمُعَلِّمِينَ (raʾaytu l-muʿallimīna).
- Pluriel féminin régulier : -u au cas sujet, -i aux deux autres cas, même au cas direct. جَاءَتِ الْمُعَلِّمَاتُ (jāʾati l-muʿallimātu) ; رَأَيْتُ الْمُعَلِّمَاتِ (raʾaytu l-muʿallimāti).
- Les « cinq noms » (أَبٌ, أَخٌ...) suivis d''un complément allongent leur voyelle : جَاءَ أَبُوكَ (jāʾa abūka : ton père est venu) ; رَأَيْتُ أَبَاكَ (raʾaytu abāka) ; سَلَّمْتُ عَلَى أَبِيكَ (sallamtu ʿalā abīka).
- Les diptotes (الْمَمْنُوعُ مِنَ الصَّرْفِ) n''ont pas de tanwīn et, sans article ni annexion, prennent -a au cas indirect : دَرَسْتُ فِي مَدَارِسَ كَثِيرَةٍ (darastu fī madārisa kathīratin : j''ai étudié dans de nombreuses écoles) ; سَلَّمْتُ عَلَى أَحْمَدَ (sallamtu ʿalā Aḥmada : j''ai salué Ahmed).

## Fiche 5 : la phrase nominale

Elle comprend un sujet, الْمُبْتَدَأُ (al-mubtadaʾ), et un prédicat, الْخَبَرُ (al-khabar), tous deux au cas sujet : الْعِلْمُ نُورٌ (al-ʿilmu nūrun : la science est lumière). Si le sujet est indéterminé, le prédicat (un complément de lieu) passe devant : فِي الْقِسْمِ سَبُّورَةٌ (fī l-qismi sabbūratun : il y a un tableau dans la classe).

كَانَ et ses sœurs (أَصْبَحَ, صَارَ, لَيْسَ, مَا زَالَ) : le sujet reste au cas sujet, le prédicat passe au cas direct.

- كَانَ الْجَوُّ حَارًّا (kāna l-jawwu ḥārran) : le temps était chaud.
- أَصْبَحَ الشَّارِعُ نَظِيفًا (aṣbaḥa sh-shāriʿu naẓīfan) : la rue est devenue propre.
- لَيْسَ الدَّرْسُ صَعْبًا (laysa d-darsu ṣaʿban) : la leçon n''est pas difficile.

إِنَّ et ses sœurs (أَنَّ, لَكِنَّ, لَعَلَّ, لَيْتَ, كَأَنَّ) : le sujet passe au cas direct, le prédicat reste au cas sujet.

- إِنَّ الْعِلْمَ نَافِعٌ (inna l-ʿilma nāfiʿun) : certes, la science est utile.
- لَكِنَّ الطَّرِيقَ طَوِيلٌ (lākinna ṭ-ṭarīqa ṭawīlun) : mais la route est longue.

## Fiche 6 : la phrase verbale

Ordre habituel : verbe, sujet الْفَاعِلُ (al-fāʿil, au cas sujet), complément d''objet الْمَفْعُولُ بِهِ (al-mafʿūl bihi, au cas direct).

- كَتَبَ الطَّالِبُ رِسَالَةً (kataba ṭ-ṭālibu risālatan) : l''étudiant a écrit une lettre.
- كَتَبَتِ الطَّالِبَةُ رِسَالَةً (katabati ṭ-ṭālibatu risālatan) : l''étudiante a écrit une lettre.

Accord : placé avant le sujet, le verbe s''accorde en genre mais reste au singulier : حَضَرَ الْمُعَلِّمُونَ (ḥaḍara l-muʿallimūna : les enseignants sont venus). Placé après, il s''accorde complètement : الْمُعَلِّمُونَ حَضَرُوا (al-muʿallimūna ḥaḍarū).

## Fiche 7 : les modes de l''inaccompli

- Indicatif (مَرْفُوعٌ) : يَدْرُسُ (yadrusu : il étudie).
- Subjonctif (مَنْصُوبٌ) après أَنْ, لَنْ, لِـ, كَيْ, حَتَّى : لَنْ يَدْرُسَ (lan yadrusa : il n''étudiera pas).
- Apocopé (مَجْزُومٌ) après لَمْ, لَا de l''interdiction, إِنْ conditionnel : لَمْ يَدْرُسْ (lam yadrus : il n''a pas étudié) ; لَا تَكْتُبْ (lā taktub : n''écris pas).

Les formes en -ūna, -īna, -āni perdent leur nūn au subjonctif et à l''apocopé : يَدْرُسُونَ devient لَنْ يَدْرُسُوا (lan yadrusū) et لَمْ يَدْرُسُوا (lam yadrusū).

## Points clés

- -u sujet, -a complément direct, -i après préposition et en annexion.
- كَانَ : prédicat au cas direct ; إِنَّ : sujet au cas direct.
- Verbe avant un sujet pluriel : singulier.
- لَنْ + subjonctif ; لَمْ + apocopé.

## Exercices pratiques

Exercice 1. Vocalise la fin du mot entre parenthèses selon sa fonction : a) قَرَأَ الْوَلَدُ (الْقِصَّة). b) ذَهَبْتُ إِلَى (السُّوق). c) (الْجَوّ) جَمِيلٌ.

Exercice 2. Mets le mot entre parenthèses au bon cas : رَأَيْتُ (الْمُهَنْدِسُونَ).

Exercice 3. Ajoute كَانَ : الْجَوُّ بَارِدٌ.

Exercice 4. Ajoute إِنَّ : الْبِيئَةُ نَظِيفَةٌ.

Exercice 5. Mets le sujet au pluriel : كَتَبَ الْمُهَنْدِسُ تَقْرِيرًا ; puis : الْمُهَنْدِسُ مَاهِرٌ.

Exercice 6. Mets à la forme négative avec لَمْ, puis avec لَنْ : يَذْهَبُ التِّلْمِيذُ إِلَى الْمَدْرَسَةِ.

Exercice 7. Corrige : الْكُتُبُ مُفِيدُونَ.

## Corrigé

Exercice 1. a) الْقِصَّةَ (al-qiṣṣata) : complément d''objet, cas direct. b) السُّوقِ (as-sūqi) : après إِلَى, cas indirect. c) الْجَوُّ (al-jawwu) : sujet d''une phrase nominale, cas sujet.

Exercice 2. رَأَيْتُ الْمُهَنْدِسِينَ (raʾaytu l-muhandisīna : j''ai vu les ingénieurs).

Exercice 3. كَانَ الْجَوُّ بَارِدًا (kāna l-jawwu bāridan : il faisait froid).

Exercice 4. إِنَّ الْبِيئَةَ نَظِيفَةٌ (inna l-bīʾata naẓīfatun : certes, l''environnement est propre).

Exercice 5. كَتَبَ الْمُهَنْدِسُونَ تَقْرِيرًا (kataba l-muhandisūna taqrīran) : le verbe reste au singulier. الْمُهَنْدِسُونَ مَاهِرُونَ (al-muhandisūna māhirūna) : l''adjectif d''un pluriel humain se met au pluriel.

Exercice 6. لَمْ يَذْهَبِ التِّلْمِيذُ إِلَى الْمَدْرَسَةِ (lam yadhhabi t-tilmīdhu ilā l-madrasati : l''élève n''est pas allé à l''école) ; la kasra sur le bāʾ évite la rencontre de deux sukūn. لَنْ يَذْهَبَ التِّلْمِيذُ إِلَى الْمَدْرَسَةِ (lan yadhhaba t-tilmīdhu ilā l-madrasati : l''élève n''ira pas à l''école).

Exercice 7. الْكُتُبُ مُفِيدَةٌ (al-kutubu mufīdatun) : pluriel non humain, donc féminin singulier.', 'texte', 60, false, 30
from public.courses c where c.slug = 'bac-arabe'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Grammaire du Bac 1 : cas et déclinaison, phrase nominale et phrase verbale');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Grammaire du Bac 2 : verbes dérivés, nombres, relatifs et phrase conditionnelle', '## Objectifs de la leçon

- Reconnaître et conjuguer les formes dérivées usuelles du verbe, avec leurs noms d''action.
- Écrire et accorder les nombres.
- Employer les pronoms relatifs.
- Construire une phrase conditionnelle simple avec إِذَا, إِنْ, مَنْ et لَوْ.

## Fiche 1 : les verbes dérivés

À partir d''une racine de trois lettres, l''arabe forme des verbes dérivés selon des schèmes. Pour chaque forme : accompli, inaccompli, nom d''action (maṣdar), sens.

- Forme II, فَعَّلَ : عَلَّمَ (ʿallama), يُعَلِّمُ (yuʿallimu), تَعْلِيمٌ (taʿlīmun) : enseigner.
- Forme III, فَاعَلَ : سَاعَدَ (sāʿada), يُسَاعِدُ (yusāʿidu), مُسَاعَدَةٌ (musāʿadatun) : aider.
- Forme IV, أَفْعَلَ : أَرْسَلَ (arsala), يُرْسِلُ (yursilu), إِرْسَالٌ (irsālun) : envoyer.
- Forme V, تَفَعَّلَ : تَعَلَّمَ (taʿallama), يَتَعَلَّمُ (yataʿallamu), تَعَلُّمٌ (taʿallumun) : apprendre.
- Forme VI, تَفَاعَلَ : تَعَاوَنَ (taʿāwana), يَتَعَاوَنُ (yataʿāwanu), تَعَاوُنٌ (taʿāwunun) : coopérer.
- Forme VII, اِنْفَعَلَ : اِنْطَلَقَ (inṭalaqa), يَنْطَلِقُ (yanṭaliqu), اِنْطِلَاقٌ (inṭilāqun) : partir, démarrer.
- Forme VIII, اِفْتَعَلَ : اِجْتَمَعَ (ijtamaʿa), يَجْتَمِعُ (yajtamiʿu), اِجْتِمَاعٌ (ijtimāʿun) : se réunir.
- Forme X, اِسْتَفْعَلَ : اِسْتَخْدَمَ (istakhdama), يَسْتَخْدِمُ (yastakhdimu), اِسْتِخْدَامٌ (istikhdāmun) : utiliser.

Astuce : à l''inaccompli, les formes II, III et IV ont un préfixe en u (يُـ) ; les autres ont un préfixe en a (يَـ). La forme V marque souvent le réfléchi de la forme II (enseigner, apprendre), la forme VI la réciprocité.

Beaucoup de mots courants sont des participes de formes dérivées : مُعَلِّمٌ (muʿallimun, enseignant, forme II) ; مُتَعَلِّمٌ (mutaʿallimun, apprenant, forme V) ; مُجْتَمَعٌ (mujtamaʿun, société, forme VIII) ; مُسْتَقْبَلٌ (mustaqbalun, avenir, forme X).

Exemples :

- يُعَلِّمُ الْأُسْتَاذُ التَّلَامِيذَ الْقِرَاءَةَ (yuʿallimu l-ustādhu t-talāmīdha l-qirāʾata) : le professeur enseigne la lecture aux élèves.
- تَتَعَاوَنُ الْأُسَرُ فِي الْحَيِّ (tataʿāwanu l-usaru fī l-ḥayyi) : les familles coopèrent dans le quartier.
- يَسْتَخْدِمُ الشَّبَابُ الْهَاتِفَ كَثِيرًا (yastakhdimu sh-shabābu l-hātifa kathīran) : les jeunes utilisent beaucoup le téléphone.

## Fiche 2 : les nombres

- 1 et 2 se placent après le nom comme des adjectifs et s''accordent : كِتَابٌ وَاحِدٌ (kitābun wāḥidun : un seul livre) ; on emploie le plus souvent le duel seul : كِتَابَانِ (kitābāni : deux livres).
- De 3 à 10, le nombre prend le genre inverse du singulier du nom, et le nom se met au pluriel, au cas indirect : ثَلَاثَةُ كُتُبٍ (thalāthatu kutubin : trois livres, car كِتَابٌ est masculin) ; ثَلَاثُ بَنَاتٍ (thalāthu banātin : trois filles, car بِنْتٌ est féminin) ; خَمْسَةُ أَطْفَالٍ (khamsatu aṭfālin : cinq enfants).
- De 11 à 99, le nom se met au singulier, au cas direct : أَحَدَ عَشَرَ تِلْمِيذًا (aḥada ʿashara tilmīdhan : onze élèves) ; خَمْسَ عَشْرَةَ تِلْمِيذَةً (khamsa ʿashrata tilmīdhatan : quinze élèves filles) ; عِشْرُونَ طَالِبًا (ʿishrūna ṭāliban : vingt étudiants) ; خَمْسَةٌ وَعِشْرُونَ تِلْمِيذًا (khamsatun wa-ʿishrūna tilmīdhan : vingt-cinq élèves).
- 100 et 1000 sont suivis du nom au singulier, au cas indirect : مِائَةُ شَجَرَةٍ (miʾatu shajaratin : cent arbres) ; أَلْفُ كِتَابٍ (alfu kitābin : mille livres). مِائَةٌ s''écrit aussi مِئَةٌ.
- Les dizaines 20 à 90 se déclinent comme un pluriel masculin : فِي الْقِسْمِ ثَلَاثُونَ تِلْمِيذًا (fī l-qismi thalāthūna tilmīdhan : il y a trente élèves dans la classe) ; رَأَيْتُ ثَلَاثِينَ تِلْمِيذًا (raʾaytu thalāthīna tilmīdhan).
- Ordinaux, accordés comme des adjectifs : الدَّرْسُ الثَّالِثُ (ad-darsu th-thālithu : la troisième leçon) ; السَّنَةُ الْأُولَى (as-sanatu l-ūlā : la première année).

## Fiche 3 : les relatifs

Le relatif s''emploie seulement après un nom déterminé. Il s''accorde avec ce nom.

- الَّذِي (alladhī) : masculin singulier. الْكِتَابُ الَّذِي قَرَأْتُهُ مُفِيدٌ (al-kitābu lladhī qaraʾtuhu mufīdun : le livre que j''ai lu est utile).
- الَّتِي (allatī) : féminin singulier. الْمَدْرَسَةُ الَّتِي أَدْرُسُ فِيهَا قَرِيبَةٌ (al-madrasatu llatī adrusu fīhā qarībatun : l''école où j''étudie est proche).
- الَّذِينَ (alladhīna) : masculin pluriel. نَجَحَ التَّلَامِيذُ الَّذِينَ اجْتَهَدُوا (najaḥa t-talāmīdhu lladhīna jtahadū : les élèves qui ont travaillé ont réussi).
- اللَّوَاتِي ou اللَّاتِي (allawātī, allātī) : féminin pluriel. الْبَنَاتُ اللَّوَاتِي يَدْرُسْنَ (al-banātu llawātī yadrusna : les filles qui étudient).
- Duel : اللَّذَانِ et اللَّتَانِ au cas sujet, اللَّذَيْنِ et اللَّتَيْنِ aux autres cas.

Le pronom de rappel (الْعَائِدُ) renvoie au nom : le هُ de قَرَأْتُهُ, le هَا de فِيهَا. Avec un nom indéterminé, pas de relatif : قَرَأْتُ كِتَابًا مُفِيدًا (qaraʾtu kitāban mufīdan) ; هَذَا كِتَابٌ اشْتَرَيْتُهُ (hādhā kitābuni shtaraytuhu : voici un livre que j''ai acheté).

مَنْ (man, celui qui, pour les personnes) et مَا (mā, ce que, pour les choses) : أُحِبُّ مَنْ يَحْتَرِمُ النَّاسَ (uḥibbu man yaḥtarimu n-nāsa : j''aime celui qui respecte les gens) ; اِفْهَمْ مَا تَقْرَأُ (ifham mā taqraʾu : comprends ce que tu lis).

## Fiche 4 : la phrase conditionnelle

- إِذَا (idhā) + accompli, pour une condition probable : إِذَا اجْتَهَدْتَ نَجَحْتَ (idhā jtahadta najaḥta : si tu travailles, tu réussiras). Le sens est futur malgré l''accompli.
- La réponse prend فَـ si elle commence par سَـ, par un impératif, par لَنْ ou par une phrase nominale : إِذَا اجْتَهَدْتَ فَسَتَنْجَحُ (idhā jtahadta fa-satanjaḥu) ; إِذَا رَأَيْتَ النُّفَايَاتِ فَاجْمَعْهَا (idhā raʾayta n-nufāyāti fa-jmaʿhā : si tu vois des déchets, ramasse-les).
- إِنْ (in) + deux verbes à l''apocopé : إِنْ تَدْرُسْ تَنْجَحْ (in tadrus tanjaḥ : si tu étudies, tu réussis) ; إِنْ تَزْرَعُوا تَحْصُدُوا (in tazraʿū taḥṣudū : si vous semez, vous récolterez).
- مَنْ (man, quiconque) : مَنْ جَدَّ وَجَدَ (man jadda wajada : qui s''efforce trouve), proverbe très connu.
- لَوْ (law) + accompli, puis لَـ, pour l''irréel : لَوْ دَرَسْتَ لَنَجَحْتَ (law darasta la-najaḥta : si tu avais étudié, tu aurais réussi).

## Points clés

- Inaccompli en yu- pour les formes II, III et IV.
- 3 à 10 : genre inverse et pluriel au cas indirect ; 11 à 99 : singulier au cas direct ; 100 et 1000 : singulier au cas indirect.
- Relatif seulement après un nom déterminé, avec pronom de rappel.
- إِنْ : deux apocopés ; لَوْ : irréel avec لَـ.

## Exercices pratiques

Exercice 1. Donne la forme et le nom d''action : يُسَاعِدُ ; يَتَعَلَّمُ ; يَسْتَخْدِمُ.

Exercice 2. Écris en lettres : 3 (أَطْفَال) ; 4 (بَنَات).

Exercice 3. Écris en lettres : 12 تِلْمِيذ (masculin) ; 20 طَبِيب ; 100 شَجَرَة.

Exercice 4. Complète avec le relatif : a) الطَّبِيبَةُ ... تَعْمَلُ فِي الْقَرْيَةِ نَشِيطَةٌ. b) الْمُعَلِّمُونَ ... حَضَرُوا مِنْ دَاكَار.

Exercice 5. Corrige : قَرَأْتُ كِتَابًا الَّذِي اشْتَرَيْتُهُ.

Exercice 6. Transforme avec إِنْ : إِذَا دَرَسْتَ نَجَحْتَ.

Exercice 7. Transforme en irréel avec لَوْ : إِذَا اجْتَهَدْتَ نَجَحْتَ. Traduis.

## Corrigé

Exercice 1. يُسَاعِدُ : forme III, nom d''action مُسَاعَدَةٌ (musāʿadatun). يَتَعَلَّمُ : forme V, تَعَلُّمٌ (taʿallumun). يَسْتَخْدِمُ : forme X, اِسْتِخْدَامٌ (istikhdāmun).

Exercice 2. ثَلَاثَةُ أَطْفَالٍ (thalāthatu aṭfālin), car طِفْلٌ est masculin. أَرْبَعُ بَنَاتٍ (arbaʿu banātin), car بِنْتٌ est féminin.

Exercice 3. اِثْنَا عَشَرَ تِلْمِيذًا (ithnā ʿashara tilmīdhan) ; عِشْرُونَ طَبِيبًا (ʿishrūna ṭabīban) ; مِائَةُ شَجَرَةٍ (miʾatu shajaratin).

Exercice 4. a) الَّتِي : الطَّبِيبَةُ الَّتِي تَعْمَلُ فِي الْقَرْيَةِ نَشِيطَةٌ (aṭ-ṭabībatu llatī taʿmalu fī l-qaryati nashīṭatun : la médecin qui travaille au village est dynamique). b) الَّذِينَ : الْمُعَلِّمُونَ الَّذِينَ حَضَرُوا مِنْ دَاكَار (al-muʿallimūna lladhīna ḥaḍarū min Dākār : les enseignants qui sont venus de Dakar).

Exercice 5. Deux corrections possibles : قَرَأْتُ الْكِتَابَ الَّذِي اشْتَرَيْتُهُ (qaraʾtu l-kitāba lladhī shtaraytuhu : j''ai lu le livre que j''ai acheté) ou قَرَأْتُ كِتَابًا اشْتَرَيْتُهُ (qaraʾtu kitābani shtaraytuhu : j''ai lu un livre que j''ai acheté).

Exercice 6. إِنْ تَدْرُسْ تَنْجَحْ (in tadrus tanjaḥ).

Exercice 7. لَوِ اجْتَهَدْتَ لَنَجَحْتَ (lawi jtahadta la-najaḥta : si tu avais travaillé, tu aurais réussi). La kasra sur لَوِ permet la liaison avec l''alif de اجْتَهَدْتَ.', 'texte', 60, false, 40
from public.courses c where c.slug = 'bac-arabe'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Grammaire du Bac 2 : verbes dérivés, nombres, relatifs et phrase conditionnelle');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Sujet type d''examen : sujet d''entraînement corrigé', '## Présentation

Voici un sujet complet d''entraînement conçu pour ce cours. Ce n''est pas un sujet officiel du Bac. La répartition des points est indicative et non officielle. Fais-le en temps limité, puis compare avec le corrigé.

## Texte

نَشَأَ مُصْطَفَى فِي قَرْيَةٍ بَعِيدَةٍ عَنِ الْمَدِينَةِ. كَانَتِ الْمَدْرَسَةُ بَعِيدَةً عَنْ بَيْتِهِ، فَكَانَ يَمْشِي كُلَّ صَبَاحٍ سَاعَةً كَامِلَةً. وَرَغْمَ التَّعَبِ لَمْ يَتْرُكِ الدِّرَاسَةَ، وَكَانَ يَقُولُ لِأَصْدِقَائِهِ: «مَنْ جَدَّ وَجَدَ». وَبَعْدَ سَنَوَاتٍ نَجَحَ فِي امْتِحَانِ الْبَكَالُورِيَا، ثُمَّ دَرَسَ الطِّبَّ فِي الْجَامِعَةِ. وَالْيَوْمَ يَعْمَلُ مُصْطَفَى طَبِيبًا فِي قَرْيَتِهِ، وَيُسَاعِدُ الْأَطْفَالَ الَّذِينَ يُرِيدُونَ أَنْ يَتَعَلَّمُوا. يَقُولُ مُصْطَفَى: «التَّعْلِيمُ مِفْتَاحُ الْمُسْتَقْبَلِ».

Translittération : nashaʾa Muṣṭafā fī qaryatin baʿīdatin ʿani l-madīnati. kānati l-madrasatu baʿīdatan ʿan baytihi, fa-kāna yamshī kulla ṣabāḥin sāʿatan kāmilatan. wa-raghma t-taʿabi lam yatruki d-dirāsata, wa-kāna yaqūlu li-aṣdiqāʾihi : « man jadda wajada ». wa-baʿda sanawātin najaḥa fī mtiḥāni l-bakālūriyā, thumma darasa ṭ-ṭibba fī l-jāmiʿati. wa-l-yawma yaʿmalu Muṣṭafā ṭabīban fī qaryatihi, wa-yusāʿidu l-aṭfāla lladhīna yurīdūna an yataʿallamū. yaqūlu Muṣṭafā : « at-taʿlīmu miftāḥu l-mustaqbali ».

Traduction : Moustapha a grandi dans un village éloigné de la ville. L''école était loin de sa maison : il marchait donc chaque matin une heure entière. Malgré la fatigue, il n''a pas abandonné les études, et il disait à ses amis : « Qui s''efforce trouve. » Quelques années plus tard, il a réussi l''examen du baccalauréat, puis il a étudié la médecine à l''université. Aujourd''hui, Moustapha travaille comme médecin dans son village et aide les enfants qui veulent apprendre. Il dit : « L''enseignement est la clé de l''avenir. »

(Au jour de l''examen, le texte n''est évidemment pas traduit.)

## Partie I : compréhension (8 points, indicatif)

1. أَيْنَ نَشَأَ مُصْطَفَى؟ (2 pts)
2. صَحِيحٌ أَمْ خَطَأٌ ؟ a) كَانَتِ الْمَدْرَسَةُ قَرِيبَةً مِنْ بَيْتِهِ. b) دَرَسَ مُصْطَفَى الطِّبَّ. (2 pts)
3. هَاتِ مِنَ النَّصِّ ضِدَّ : قَرِيبَةٍ ، الرَّاحَةِ. (1 pt)
4. مَاذَا يَعْمَلُ مُصْطَفَى الْيَوْمَ؟ (1 pt)
5. Explique en français le proverbe « مَنْ جَدَّ وَجَدَ » et son lien avec l''histoire de Moustapha. (2 pts)

## Partie II : langue (6 points, indicatif)

1. أَعْرِبْ : الْمَدْرَسَةُ et بَعِيدَةً (dans كَانَتِ الْمَدْرَسَةُ بَعِيدَةً) ; الدِّرَاسَةَ (dans لَمْ يَتْرُكِ الدِّرَاسَةَ). (2 pts)
2. Donne la forme dérivée et le nom d''action de يُسَاعِدُ et de يَتَعَلَّمُوا. (1 pt)
3. Écris en lettres : 3 أَطْفَال ; 20 طَبِيب. (1 pt)
4. Transforme en irréel avec لَوْ : إِذَا دَرَسْتَ نَجَحْتَ. (1 pt)
5. Complète avec le relatif : الطَّبِيبَةُ ... تَعْمَلُ مَعَ مُصْطَفَى نَشِيطَةٌ. (1 pt)

## Partie III : expression écrite (6 points, indicatif)

Traite un sujet au choix (8 à 10 lignes).

- Sujet A : essai court : « التَّعْلِيمُ مِفْتَاحُ الْمُسْتَقْبَلِ » (l''enseignement est la clé de l''avenir). Es-tu d''accord ?
- Sujet B : écris une lettre à un ami qui veut abandonner ses études pour l''encourager à continuer.

## Corrigé de la partie I

1. نَشَأَ مُصْطَفَى فِي قَرْيَةٍ بَعِيدَةٍ عَنِ الْمَدِينَةِ (nashaʾa Muṣṭafā fī qaryatin baʿīdatin ʿani l-madīnati : Moustapha a grandi dans un village éloigné de la ville).

2. a) خَطَأٌ (faux) : « كَانَتِ الْمَدْرَسَةُ بَعِيدَةً عَنْ بَيْتِهِ ». b) صَحِيحٌ (vrai) : « ثُمَّ دَرَسَ الطِّبَّ فِي الْجَامِعَةِ ».

3. Contraire de قَرِيبَةٍ : بَعِيدَةٍ (baʿīdatin). Contraire de الرَّاحَةِ (ar-rāḥati, le repos) : التَّعَبِ (at-taʿabi, la fatigue).

4. يَعْمَلُ مُصْطَفَى طَبِيبًا فِي قَرْيَتِهِ (yaʿmalu Muṣṭafā ṭabīban fī qaryatihi : Moustapha travaille comme médecin dans son village).

5. Le proverbe signifie que celui qui fait des efforts obtient un résultat. Moustapha l''illustre : malgré la distance et la fatigue, il a persévéré, il a réussi le baccalauréat puis il est devenu médecin.

## Corrigé de la partie II

1. الْمَدْرَسَةُ : sujet (اِسْمُ كَانَ), au cas sujet, marque ḍamma. بَعِيدَةً : prédicat de كَانَ (خَبَرُ كَانَ), au cas direct, marque fatḥa avec tanwīn. الدِّرَاسَةَ : complément d''objet (مَفْعُولٌ بِهِ), au cas direct, marque fatḥa.

2. يُسَاعِدُ : forme III, nom d''action مُسَاعَدَةٌ. يَتَعَلَّمُوا : forme V, nom d''action تَعَلُّمٌ ; ce verbe est au subjonctif après أَنْ, d''où la chute du nūn.

3. ثَلَاثَةُ أَطْفَالٍ (thalāthatu aṭfālin) ; عِشْرُونَ طَبِيبًا (ʿishrūna ṭabīban).

4. لَوْ دَرَسْتَ لَنَجَحْتَ (law darasta la-najaḥta : si tu avais étudié, tu aurais réussi).

5. الطَّبِيبَةُ الَّتِي تَعْمَلُ مَعَ مُصْطَفَى نَشِيطَةٌ (aṭ-ṭabībatu llatī taʿmalu maʿa Muṣṭafā nashīṭatun : la médecin qui travaille avec Moustapha est dynamique).

## Corrigé de la partie III : exemple pour le sujet A

يَحْتَلُّ التَّعْلِيمُ مَكَانَةً كَبِيرَةً فِي حَيَاةِ الْإِنْسَانِ (yaḥtallu t-taʿlīmu makānatan kabīratan fī ḥayāti l-insāni : l''enseignement occupe une grande place dans la vie de l''homme). أَوَّلًا، يُسَاعِدُ التَّعْلِيمُ الشَّبَابَ عَلَى إِيجَادِ عَمَلٍ (awwalan, yusāʿidu t-taʿlīmu sh-shabāba ʿalā ījādi ʿamalin : d''abord, l''enseignement aide les jeunes à trouver un emploi). ثَانِيًا، يَجْعَلُ التَّعْلِيمُ الْمُوَاطِنَ وَاعِيًا بِحُقُوقِهِ وَوَاجِبَاتِهِ (thāniyan, yajʿalu t-taʿlīmu l-muwāṭina wāʿiyan bi-ḥuqūqihi wa-wājibātihi : ensuite, l''enseignement rend le citoyen conscient de ses droits et de ses devoirs). وَمِثَالُ ذَلِكَ مُصْطَفَى الَّذِي أَصْبَحَ طَبِيبًا بِفَضْلِ الدِّرَاسَةِ (wa-mithālu dhālika Muṣṭafā lladhī aṣbaḥa ṭabīban bi-faḍli d-dirāsati : l''exemple en est Moustapha, devenu médecin grâce aux études). وَفِي الْخِتَامِ، يَجِبُ عَلَيْنَا جَمِيعًا أَنْ نَهْتَمَّ بِتَعْلِيمِ الْأَطْفَالِ (wa-fī l-khitāmi, yajibu ʿalaynā jamīʿan an nahtamma bi-taʿlīmi l-aṭfāli : en conclusion, nous devons tous prendre soin de l''éducation des enfants).

## Corrigé de la partie III : exemple pour le sujet B

دَاكَار، فِي 20 أَبْرِيل 2026. عَزِيزِي إِبْرَاهِيم، السَّلَامُ عَلَيْكُمْ وَرَحْمَةُ اللَّهِ وَبَرَكَاتُهُ. أَرْجُو أَنْ تَكُونَ فِي صِحَّةٍ جَيِّدَةٍ. أَكْتُبُ إِلَيْكَ لِأُشَجِّعَكَ عَلَى مُوَاصَلَةِ الدِّرَاسَةِ (aktubu ilayka li-ushajjiʿaka ʿalā muwāṣalati d-dirāsati : je t''écris pour t''encourager à poursuivre tes études). إِنَّ الدِّرَاسَةَ طَرِيقُ النَّجَاحِ (inna d-dirāsata ṭarīqu n-najāḥi : les études sont le chemin de la réussite). أَبْلِغْ سَلَامِي إِلَى أُسْرَتِكَ. صَدِيقُكَ الْمُخْلِصُ.

## Conseils du correcteur

- En langue, une voyelle finale juste, justifiée par la fonction, rapporte des points sûrs.
- En expression, mieux vaut huit phrases simples et correctes que quinze phrases fautives.
- Réutilise le vocabulaire du texte sans le recopier mot pour mot.

## Exercices pratiques

Exercice 1. Relève dans le texte une phrase conditionnelle et indique l''outil employé.

Exercice 2. Relève un verbe à l''apocopé et justifie.

Exercice 3. Relève un relatif et le nom auquel il renvoie.

Exercice 4. Calcule ta note sur 20 si tu obtiens 6/8, 4/6 et 3,5/6.

Exercice 5. Mets au pluriel masculin : يَعْمَلُ الطَّبِيبُ فِي الْقَرْيَةِ.

## Corrigé

Exercice 1. مَنْ جَدَّ وَجَدَ : condition avec مَنْ ; les deux verbes sont à l''accompli.

Exercice 2. يَتْرُكِ après لَمْ : apocopé (sukūn remplacé par une kasra de liaison devant l''article).

Exercice 3. الَّذِينَ renvoie à الْأَطْفَالَ (masculin pluriel, êtres humains).

Exercice 4. 6 + 4 + 3,5 = 13,5. Ta note est 13,5/20.

Exercice 5. يَعْمَلُ الْأَطِبَّاءُ فِي الْقَرْيَةِ (yaʿmalu l-aṭibbāʾu fī l-qaryati : les médecins travaillent au village). Le verbe placé avant reste au singulier ; أَطِبَّاءُ est un pluriel brisé.', 'texte', 60, false, 50
from public.courses c where c.slug = 'bac-arabe'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Sujet type d''examen : sujet d''entraînement corrigé');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : révision intensive « veille du Bac » en arabe', '## Fiche du cours vidéo

- Durée : 1h30.
- Thème : séance de révision intensive la veille de l''épreuve d''arabe LV2 du Bac.
- Objectifs : réactiver les règles clés (cas, phrase nominale et verbale, كَانَ et إِنَّ, dérivés, nombres, relatifs, conditionnel), corriger des exercices de type Bac, revoir la gestion du temps et la méthode d''expression écrite.
- Matériel : tableau ou diaporama, fiches de révision, un texte court imprimé et vocalisé, brouillon.
- Prérequis : leçons 1 à 5 de ce cours. Les exercices sont des exercices d''entraînement, pas des sujets officiels.

## Déroulé minuté

## 00:00 – 05:00 · Accueil et objectifs

« السَّلَامُ عَلَيْكُمْ (as-salāmu ʿalaykum) à toutes et à tous. Demain, c''est l''épreuve d''arabe. Ce soir, aucune notion nouvelle : nous consolidons. Nous reverrons les règles qui rapportent le plus de points, nous corrigerons ensemble des exercices type Bac, puis nous parlerons du temps et de l''expression écrite. Au milieu, un quiz ; à la fin, une évaluation de cinq questions. Prenez une feuille. »

Visuel : le plan de la séance en six étapes.

## 05:00 – 15:00 · Rappel 1 : les trois cas

« Une règle simple vaut beaucoup de points : -u pour le sujet, -a pour le complément d''objet, -i après une préposition et pour le complément de nom. جَاءَ الْمُعَلِّمُ (jāʾa l-muʿallimu), رَأَيْتُ الْمُعَلِّمَ (raʾaytu l-muʿallima), سَلَّمْتُ عَلَى الْمُعَلِّمِ (sallamtu ʿalā l-muʿallimi). Au duel, -āni puis -ayni ; au pluriel masculin, -ūna puis -īna ; au pluriel féminin, attention : رَأَيْتُ الْمُعَلِّمَاتِ (raʾaytu l-muʿallimāti), avec un -i même au cas direct. Et les diptotes, comme مَدَارِسُ, n''ont jamais de tanwīn. »

Visuel : tableau de déclinaison à trois colonnes. Question : « Quel est le cas après فِي ? » Réponse attendue : le cas indirect, avec kasra.

Exercice flash à faire au tableau avec les élèves : analyser les deux mots de بَابُ الْمَدْرَسَةِ (bābu l-madrasati : la porte de l''école). بَابُ est le premier terme de l''annexion : pas d''article, pas de tanwīn, et son cas dépend de sa fonction dans la phrase. الْمَدْرَسَةِ est le complément de nom : toujours au cas indirect. Puis ajouter un adjectif : فِي الْمَدْرَسَةِ الْجَدِيدَةِ (fī l-madrasati l-jadīdati : dans la nouvelle école). L''adjectif copie tout : le cas indirect, le féminin, le singulier et l''article. Rappeler enfin le piège des pluriels de choses : الْأَشْجَارُ الْكَبِيرَةُ (al-ashjāru l-kabīratu : les grands arbres), avec un adjectif au féminin singulier.

## 15:00 – 25:00 · Rappel 2 : phrase nominale, كَانَ et إِنَّ, phrase verbale

« Dans la phrase nominale, tout est au cas sujet : الْعِلْمُ نُورٌ (al-ʿilmu nūrun). Avec كَانَ, le prédicat passe au cas direct : كَانَ الْجَوُّ حَارًّا (kāna l-jawwu ḥārran). Avec إِنَّ, c''est le sujet qui passe au cas direct : إِنَّ الْعِلْمَ نَافِعٌ (inna l-ʿilma nāfiʿun). Retenez : كَانَ agit sur le prédicat, إِنَّ agit sur le sujet.

Dans la phrase verbale, le verbe placé avant un sujet pluriel reste au singulier : حَضَرَ الْمُعَلِّمُونَ (ḥaḍara l-muʿallimūna). Et un pluriel de non-humains s''accorde au féminin singulier : الْكُتُبُ مُفِيدَةٌ. »

Visuel : deux flèches, l''une de كَانَ vers le prédicat, l''autre de إِنَّ vers le sujet.

## 25:00 – 35:00 · Rappel 3 : dérivés, nombres, relatifs, conditionnel

« Les formes dérivées : عَلَّمَ يُعَلِّمُ تَعْلِيمٌ, تَعَلَّمَ يَتَعَلَّمُ تَعَلُّمٌ, اِجْتَمَعَ يَجْتَمِعُ اِجْتِمَاعٌ, اِسْتَخْدَمَ يَسْتَخْدِمُ اِسْتِخْدَامٌ. Les formes II, III et IV ont un inaccompli en yu-.

Les nombres : de 3 à 10, genre inverse et pluriel au cas indirect, ثَلَاثَةُ كُتُبٍ (thalāthatu kutubin) ; de 11 à 99, singulier au cas direct, عِشْرُونَ طَالِبًا (ʿishrūna ṭāliban) ; 100 et 1000, singulier au cas indirect, مِائَةُ شَجَرَةٍ (miʾatu shajaratin).

Les relatifs seulement après un nom déterminé : الْكِتَابُ الَّذِي قَرَأْتُهُ (al-kitābu lladhī qaraʾtuhu). Le conditionnel : إِذَا + accompli, إِنْ + deux apocopés, لَوْ pour l''irréel avec لَـ. »

Questions à poser à la classe, avec un temps de réflexion de trente secondes : « Quel est l''inaccompli de أَرْسَلَ ? » Réponse : يُرْسِلُ (yursilu), avec un préfixe en u car c''est la forme IV. « Comment écrire quinze élèves garçons ? » Réponse : خَمْسَةَ عَشَرَ تِلْمِيذًا (khamsata ʿashara tilmīdhan) : le nom est au singulier et au cas direct. « Quel relatif après الطُّلَّابُ ? » Réponse : الَّذِينَ (alladhīna), car ce sont des êtres humains au masculin pluriel.

Visuel : un tableau récapitulatif des nombres, avec trois lignes (3 à 10, 11 à 99, 100 et 1000) et un exemple par ligne.

## 35:00 – 45:00 · Correction commentée : exercice de langue type Bac

Énoncé projeté : « 1) Ajoute إِنَّ : الطَّرِيقُ طَوِيلٌ. 2) Négation avec لَمْ : يَكْتُبُ الطُّلَّابُ الدَّرْسَ. 3) Écris en lettres : 5 كُتُب. 4) Transforme avec إِنْ : إِذَا قَرَأْتَ فَهِمْتَ. »

« Corrigeons. Un : إِنَّ الطَّرِيقَ طَوِيلٌ (inna ṭ-ṭarīqa ṭawīlun). Deux : لَمْ يَكْتُبِ الطُّلَّابُ الدَّرْسَ (lam yaktubi ṭ-ṭullābu d-darsa) : apocopé, avec une kasra de liaison devant l''article. Trois : خَمْسَةُ كُتُبٍ (khamsatu kutubin), car كِتَابٌ est masculin. Quatre : إِنْ تَقْرَأْ تَفْهَمْ (in taqraʾ tafham : si tu lis, tu comprends). Quatre bonnes réponses ? Excellent. Sinon, notez la règle sur votre fiche d''erreurs. »

## 45:00 – 50:00 · Pause active : quiz éclair

« Cinq questions, dix secondes chacune. »

- Pluriel de مَدْرَسَةٌ : مَدَارِسُ (madārisu).
- Contraire de قَرِيبٌ : بَعِيدٌ (baʿīdun).
- Nom d''action de سَاعَدَ : مُسَاعَدَةٌ (musāʿadatun).
- Relatif pour الْبِنْتُ : الَّتِي (allatī).
- Sens de مَنْ جَدَّ وَجَدَ : qui s''efforce trouve.

« Quatre ou cinq : vous êtes prêts. Moins de trois : relisez vos fiches ce soir, sans paniquer. »

## 50:00 – 1:05:00 · Correction commentée : compréhension d''un texte court

Texte projeté : تَعْمَلُ عَائِشَةُ مُعَلِّمَةً فِي مَدْرَسَةٍ بِمَدِينَةِ كَوْلَخ. تُعَلِّمُ الْأَطْفَالَ الْقِرَاءَةَ وَالْكِتَابَةَ، وَتُشَجِّعُهُمْ عَلَى حِمَايَةِ الْبِيئَةِ. (taʿmalu ʿĀʾishatu muʿallimatan fī madrasatin bi-madīnati Kawlakh. tuʿallimu l-aṭfāla l-qirāʾata wa-l-kitābata, wa-tushajjiʿuhum ʿalā ḥimāyati l-bīʾati : Aïcha travaille comme enseignante dans une école de la ville de Kaolack. Elle enseigne aux enfants la lecture et l''écriture, et les encourage à protéger l''environnement.)

« Question 1 : مَاذَا تَعْمَلُ عَائِشَةُ؟ Réponse : تَعْمَلُ عَائِشَةُ مُعَلِّمَةً (taʿmalu ʿĀʾishatu muʿallimatan). Question 2 : relevez un verbe dérivé. تُعَلِّمُ, forme II, ou تُشَجِّعُ, forme II aussi. Question 3 : analysez الْأَطْفَالَ : complément d''objet, cas direct. Remarquez que عَائِشَةُ n''a pas de tanwīn : c''est un nom propre féminin, donc diptote.

Question 4 : ajoutez كَانَ à la phrase عَائِشَةُ مُعَلِّمَةٌ. Réponse : كَانَتْ عَائِشَةُ مُعَلِّمَةً (kānat ʿĀʾishatu muʿallimatan : Aïcha était enseignante). Le verbe se met au féminin, et le prédicat passe au cas direct. Question 5 : donnez le pluriel de مُعَلِّمَةٌ. Réponse : مُعَلِّمَاتٌ (muʿallimātun), pluriel féminin régulier. Question 6 : proposez un titre. Par exemple : الْمُعَلِّمَةُ وَالْبِيئَةُ (al-muʿallimatu wa-l-bīʾatu : l''enseignante et l''environnement). Un bon titre est court et reprend l''idée principale. »

Visuel : le texte vocalisé avec les mots clés surlignés.

## 1:05:00 – 1:15:00 · Méthode express de l''expression écrite

« Pour l''essai : une phrase d''introduction, deux idées avec أَوَّلًا et ثَانِيًا, un exemple, une conclusion avec وَفِي الْخِتَامِ. Pour la lettre : lieu et date, عَزِيزِي pour un ami ou حَضْرَةَ السَّيِّدِ pour un responsable, l''objet de la lettre, la formule finale. Phrases courtes, vocabulaire du texte, accords vérifiés. Placez une phrase avec كَانَ ou إِنَّ bien vocalisée, et une phrase conditionnelle correcte : c''est votre signature de Terminale. »

Lecture d''un début et d''une fin d''essai modèles sur le chômage des jeunes :

- Introduction : الْبَطَالَةُ مُشْكِلَةٌ كَبِيرَةٌ فِي مُجْتَمَعِنَا. فَمَا أَسْبَابُهَا؟ وَمَا الْحُلُولُ؟ (al-baṭālatu mushkilatun kabīratun fī mujtamaʿinā. fa-mā asbābuhā? wa-mā l-ḥulūlu? : le chômage est un grand problème dans notre société. Quelles en sont les causes ? Et quelles sont les solutions ?)
- Conclusion : وَفِي الْخِتَامِ، إِذَا تَعَاوَنَتِ الدَّوْلَةُ وَالشَّبَابُ قَلَّتِ الْبَطَالَةُ. (wa-fī l-khitāmi, idhā taʿāwanati d-dawlatu wa-sh-shabābu qallati l-baṭālatu : en conclusion, si l''État et les jeunes coopèrent, le chômage diminuera.)

« Regardez la conclusion : en une seule phrase, elle contient un verbe dérivé de forme VI, تَعَاوَنَ, et une phrase conditionnelle avec إِذَا. Voilà comment montrer votre niveau sans prendre de risque. »

Visuel : grille de relecture en cinq points (plan, connecteurs, accords, voyelles finales, orthographe de ة et ى).

## 1:15:00 – 1:22:00 · Gestion du temps et du stress

« Demain, lisez d''abord tout le sujet. Répartition indicative : lecture, un peu moins d''un cinquième ; compréhension, environ un tiers ; langue, un quart ; expression, un cinquième ; et quelques minutes de relecture. Vérifiez la durée officielle sur votre convocation. Si une question bloque, passez et revenez. Ce soir, préparez stylos, convocation et pièce d''identité, puis dormez. »

## 1:22:00 – 1:30:00 · Synthèse et évaluation finale

« Cinq dernières questions. Notez, puis corrigeons. »

- Question 1 : Ajoute كَانَ : الْجَوُّ بَارِدٌ. Réponse : كَانَ الْجَوُّ بَارِدًا (kāna l-jawwu bāridan).
- Question 2 : Mets au bon cas : رَأَيْتُ (الْمُعَلِّمُونَ). Réponse : رَأَيْتُ الْمُعَلِّمِينَ (raʾaytu l-muʿallimīna).
- Question 3 : Écris en lettres : 3 بَنَات. Réponse : ثَلَاثُ بَنَاتٍ (thalāthu banātin).
- Question 4 : Donne la forme et le nom d''action de اِسْتَخْدَمَ. Réponse : forme X, اِسْتِخْدَامٌ (istikhdāmun).
- Question 5 : Traduis لَوْ دَرَسْتَ لَنَجَحْتَ. Réponse : si tu avais étudié, tu aurais réussi.

« Synthèse : -u, -a, -i selon la fonction ; كَانَ sur le prédicat, إِنَّ sur le sujet ; verbe singulier devant un sujet pluriel ; nombres de 3 à 10 au genre inverse ; relatif après un nom déterminé. Vous avez travaillé : faites-vous confiance. بِالتَّوْفِيقِ (bi-t-tawfīqi : bonne chance) et à bientôt ! »', 'video', 90, false, 60
from public.courses c where c.slug = 'bac-arabe'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : révision intensive « veille du Bac » en arabe');
