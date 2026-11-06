-- Fichier généré par tools/generate-seed.mjs — ne pas modifier à la main.
-- Cours (partie 7/21). À exécuter après seed.sql.

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

-- Cours : Ressources humaines Licence 1 : réussir ses examens
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'lic-rh-l1', (select id from public.levels where name = 'Licence 1'), null, 'Ressources humaines', 'Ressources humaines Licence 1 : réussir ses examens', 'Préparation aux partiels et examens semestriels de la Licence 1 en gestion des ressources humaines (système LMD, contexte Sénégal et UEMOA). Le cours couvre l''introduction à la GRH, les bases du droit du travail (contrat, durée du travail, rupture, en tenant compte de la transition vers un nouveau Code du travail) et le comportement organisationnel et la communication. Fiches, exercices corrigés, sujet type et trois cours vidéo de 1h30. Aucun prérequis.', true, 301
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Réussir ses examens de Licence 1 en ressources humaines', '## Objectifs de la leçon

- Comprendre l''organisation de la Licence 1 en système LMD : semestres, unités d''enseignement (UE), crédits et modalités d''évaluation.
- Connaître les matières clés de la première année en ressources humaines et ce que l''on attend de vous à l''examen.
- Disposer d''une méthode de révision efficace et d''un plan de travail sur 6 semaines.
- Savoir aborder chaque type d''épreuve : cas pratique, QCM, dissertation, exercice chiffré, projet.

## 1. La Licence 1 dans le système LMD

Le système LMD (Licence, Master, Doctorat) est adopté par les universités et écoles de l''espace UEMOA, dont le Sénégal. La Licence compte trois années de deux semestres. Chaque semestre regroupe des unités d''enseignement (UE) qui rassemblent une ou plusieurs matières, par exemple une UE « Fondamentaux de la GRH ».

Chaque UE porte des crédits qui traduisent le volume de travail demandé (cours, TD, travail personnel) et s''obtiennent en validant l''UE. Crédits, coefficients, règles de compensation et conditions de passage varient d''un établissement à l''autre : seul le règlement des études de votre établissement fait foi.

Retenez trois mécanismes généraux :

- Le contrôle continu : devoirs, exposés, travaux dirigés, petits tests pendant le semestre.
- L''examen semestriel (ou examen terminal) : épreuve écrite en fin de semestre, souvent la plus lourde dans la note finale.
- La session de rattrapage : seconde chance pour les UE non validées, selon les règles de l''établissement.

## 2. Les matières de la Licence 1 en ressources humaines

La première année pose les fondations. Ce cours travaille trois matières clés, à côté des matières de tronc commun (économie, comptabilité, expression écrite, informatique).

- Introduction à la GRH : définitions, évolution de la fonction, missions du service RH, acteurs, grands processus (recruter, rémunérer, former, gérer les carrières, gérer les relations sociales).
- Droit du travail (bases) : sources du droit du travail, contrat de travail, période d''essai, durée du travail, suspension et rupture du contrat, rôle de l''inspection du travail. Le Sénégal est en transition vers un nouveau Code du travail (projet de loi n°15/2026) : vous devez connaître les mécanismes et rester prudent sur les détails.
- Comportement organisationnel et communication : motivation, leadership, travail en groupe, culture d''entreprise, communication interpersonnelle et interne, gestion des conflits.

## 3. Méthode de révision

Réviser, ce n''est pas relire. Pour retenir durablement, utilisez trois outils.

Premier outil : la fiche de synthèse, une page par chapitre (définitions, schéma, étapes d''une méthode, un exemple), rédigée par vous-même.

Deuxième outil : la récupération active. Fermez le cours et essayez de restituer : « Quels sont les éléments du contrat de travail ? », « Citez trois théories de la motivation et leur auteur ». Ce qui ne revient pas est à retravailler.

Troisième outil : l''entraînement sur sujets en temps limité, pour arriver à l''examen avec des réflexes.

Travaillez aussi en petit groupe une fois par semaine : expliquer une notion à un camarade est une excellente façon de la comprendre.

## 4. Les types d''épreuves et comment les aborder

Le cas pratique : une situation d''entreprise est décrite (par exemple, la société fictive Teranga Distribution à Thiès qui embauche un magasinier) et vous devez l''analyser. Méthode en quatre temps : relever les faits utiles ; identifier le problème (juridique ou managérial) ; rappeler la règle ou le concept ; appliquer aux faits et conclure clairement.

Le QCM : lisez toutes les propositions ; méfiez-vous des mots absolus (« toujours », « jamais ») ; vérifiez si les mauvaises réponses enlèvent des points.

La dissertation ou question de réflexion : par exemple « La GRH est-elle une fonction stratégique dans les PME sénégalaises ? ». Introduction (accroche, définitions, problématique, annonce du plan), deux ou trois parties argumentées avec exemples, conclusion (réponse et ouverture).

L''exercice chiffré : en L1, il s''agit surtout de calculs simples d''effectif, de taux d''absentéisme, d''heures de travail ou de coûts. Posez la formule, faites l''application numérique, donnez l''unité, interprétez le résultat en une phrase.

Le projet ou dossier : par exemple rédiger une fiche de poste ou une note interne, en respectant consigne, forme et délais.

## 5. Plan de révision sur 6 semaines

- Semaine 1 : Introduction à la GRH. Fiches sur les définitions, l''histoire de la fonction, les missions et les acteurs. Un QCM d''auto-évaluation.
- Semaine 2 : Droit du travail, partie 1. Sources, contrat de travail, période d''essai, CDD et CDI. Deux cas pratiques.
- Semaine 3 : Droit du travail, partie 2. Durée du travail, heures supplémentaires, congés, suspension et rupture du contrat. Deux cas pratiques.
- Semaine 4 : Comportement organisationnel. Motivation, leadership, groupes, culture. Une question de réflexion rédigée.
- Semaine 5 : Communication et conflits. Schéma de la communication, communication interne, gestion des conflits. Un exercice de rédaction de note.
- Semaine 6 : Sujets types en conditions réelles (sujet de la leçon 5), correction, reprise des fiches faibles, repos la veille.

## Points clés

- Le règlement des études de votre établissement fait foi pour les crédits, coefficients et compensations.
- Trois matières clés en L1 RH : introduction à la GRH, droit du travail (bases), comportement organisationnel et communication.
- Réviser = fiches + récupération active + entraînement chronométré.
- Chaque type d''épreuve a sa méthode : maîtrisez-la avant le jour J.

## Exercices pratiques

- Exercice 1. Expliquez avec vos mots la différence entre une UE et une matière, et entre contrôle continu et examen semestriel.
- Exercice 2. Rédigez la liste des étapes de la méthode du cas pratique et appliquez-la au cas suivant : Awa, embauchée par une boutique fictive de Ziguinchor, a signé un contrat de travail sans date de fin ; elle se demande si elle est en CDD ou en CDI.
- Exercice 3. Proposez une problématique et un plan en deux parties pour le sujet : « La communication interne est-elle un luxe pour une petite entreprise ? ».
- Exercice 4. Dans un atelier fictif, 20 salariés devaient travailler 160 heures chacun dans le mois ; 128 heures d''absence ont été relevées. Calculez le taux d''absentéisme.
- Exercice 5 (cas pratique). Moussa a 6 semaines avant ses examens et travaille le week-end dans un commerce. Il dispose de 3 heures par jour du lundi au vendredi. Construisez-lui un plan de révision réaliste.

## Corrigé

Exercice 1. Une matière est un enseignement précis (par exemple le droit du travail) ; une UE est un bloc qui regroupe une ou plusieurs matières et auquel sont attachés des crédits. Le contrôle continu évalue l''étudiant tout au long du semestre (devoirs, TD, exposés) ; l''examen semestriel est une épreuve finale, généralement écrite, en fin de semestre.

Exercice 2. Étapes : relever les faits ; poser le problème ; rappeler la règle ; appliquer et conclure. Application : Awa a signé un contrat sans terme précis. Problème : quelle est la nature de son contrat ? Règle générale : le contrat à durée indéterminée est la forme normale ; le contrat à durée déterminée doit préciser son terme ou l''objet qui le justifie, en principe par écrit. Conclusion : sauf disposition particulière à vérifier dans le texte en vigueur, un contrat sans date de fin ni objet précis s''analyse comme un CDI.

Exercice 3. Problématique possible : une petite entreprise, aux moyens limités, peut-elle se passer d''organiser la circulation de l''information entre ses salariés ? Plan : I. Une communication interne souvent informelle et jugée coûteuse dans les petites structures (proximité, oral, manque de temps). II. Une nécessité pour la performance et le climat social (consignes claires, motivation, prévention des conflits), avec des outils simples et peu coûteux (réunion hebdomadaire, tableau d''affichage, groupe de messagerie professionnelle).

Exercice 4. Heures théoriques = 20 × 160 = 3 200 heures. Taux d''absentéisme = 128 / 3 200 × 100 = 4 % du temps de travail prévu.

Exercice 5. Moussa dispose de 15 heures par semaine, soit 90 heures en 6 semaines. Répartition proposée : semaine 1, introduction à la GRH (15 h) ; semaines 2 et 3, droit du travail (30 h) ; semaine 4, comportement organisationnel (15 h) ; semaine 5, communication et conflits (15 h) ; semaine 6, deux sujets complets en conditions réelles et révision des fiches (15 h). Chaque jour : 2 heures de fiches et exercices, 1 heure de récupération active.', 'texte', 45, true, 10
from public.courses c where c.slug = 'lic-rh-l1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Réussir ses examens de Licence 1 en ressources humaines');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Introduction à la GRH : l''essentiel pour l''examen', '## Objectifs de la leçon

- Définir la GRH et situer son évolution historique.
- Présenter les missions, les processus et les acteurs de la fonction RH.
- Comprendre la place de la GRH dans les entreprises sénégalaises et africaines.
- Savoir calculer et interpréter quelques indicateurs simples d''effectif.

## Fiche 1 : définition et finalités

La gestion des ressources humaines (GRH) est l''ensemble des activités qui permettent à une organisation de disposer, au bon moment, des personnes dont elle a besoin, en nombre et en compétences, et de les mobiliser pour atteindre ses objectifs, dans le respect du droit et des personnes.

La GRH poursuit une double finalité :

- Une finalité économique : contribuer à la performance de l''organisation (productivité, qualité, maîtrise des coûts salariaux).
- Une finalité sociale : assurer des conditions de travail correctes, l''équité, le développement des compétences et le dialogue avec les salariés.

Retenez la formule : la GRH cherche à concilier efficacité économique et satisfaction des salariés. À l''examen, une bonne copie montre que ces deux finalités peuvent être en tension (réduire les coûts ou augmenter les salaires ?) et que le rôle du responsable RH est de trouver un équilibre.

## Fiche 2 : l''évolution de la fonction

Schéma décrit en texte : une frise en quatre étapes.

- Étape 1, la gestion administrative du personnel : tenir les registres, établir les bulletins de paie, appliquer la réglementation. Le « chef du personnel » est un administrateur.
- Étape 2, la gestion du personnel : on ajoute le recrutement, la formation, les relations avec les représentants du personnel.
- Étape 3, la gestion des ressources humaines : le salarié est vu comme une ressource à développer ; apparaissent la gestion des compétences et des carrières.
- Étape 4, la GRH stratégique : la fonction RH participe aux choix de l''entreprise et devient un partenaire de la direction générale.

En Afrique de l''Ouest, ces étapes coexistent : une grande banque ou une société de télécommunications dispose d''une direction des ressources humaines structurée, tandis que de nombreuses PME et entreprises familiales confient la paie à un comptable et le recrutement au gérant. L''importance du secteur informel, la jeunesse de la population active et le rôle des réseaux familiaux dans l''accès à l''emploi sont des traits à mentionner dans une copie.

## Fiche 3 : les grands processus RH

On présente souvent la GRH comme un cycle de vie du salarié dans l''entreprise :

- Acquérir : prévoir les besoins, recruter, intégrer.
- Rémunérer : fixer les salaires, gérer la paie, les avantages.
- Développer : former, évaluer, gérer les carrières et les compétences.
- Mobiliser : motiver, communiquer, améliorer les conditions de travail, la santé et la sécurité.
- Administrer et dialoguer : contrats, dossiers du personnel, déclarations sociales, relations avec les représentants du personnel.
- Gérer les départs : démissions, licenciements, retraites, fins de contrat.

## Fiche 4 : les acteurs de la GRH

- La direction générale fixe la stratégie et arbitre les budgets.
- Le service ou la direction RH conçoit les politiques, les outils et assure l''administration.
- Les managers de proximité (chefs d''équipe, chefs de service) appliquent au quotidien : ils accueillent, évaluent, organisent le travail. On dit que la GRH est « partagée ».
- Les salariés et leurs représentants (délégués du personnel, syndicats) participent au dialogue social.
- Les acteurs externes : inspection du travail, organismes de sécurité sociale et de retraite (au Sénégal : Caisse de sécurité sociale, IPRES, institutions de prévoyance maladie), cabinets de recrutement, organismes de formation.

## Fiche 5 : quelques indicateurs de base

L''effectif inscrit au 31 décembre est le nombre de salariés liés par un contrat à cette date. L''effectif moyen sur une période est souvent approché par la moyenne des effectifs de début et de fin de période, ou mieux par la moyenne des effectifs mensuels.

Exemple chiffré : la société fictive Sahel Agro, à Kaolack, compte 80 salariés au 1er janvier et 100 au 31 décembre. Effectif moyen approché = (80 + 100) / 2 = 90 salariés.

La masse salariale est la somme des rémunérations brutes versées sur la période. Si Sahel Agro a versé 324 000 000 FCFA de salaires bruts sur l''année, le salaire brut moyen annuel par salarié = 324 000 000 / 90 = 3 600 000 FCFA, soit 300 000 FCFA par mois.

Le taux d''encadrement = nombre de cadres / effectif total × 100. Avec 9 cadres sur 90 salariés : 10 %.

## Fiche 6 : la GRH au service de la stratégie, un cas fictif

Teranga Logistique, entreprise fictive de transport basée à Dakar, décide d''ouvrir une agence à Tambacounda. Conséquences RH : prévoir les postes (chauffeurs, magasiniers, un chef d''agence), décider de recruter localement ou de muter des salariés de Dakar, organiser la formation à la sécurité routière, adapter la rémunération (indemnité de déplacement), informer les représentants du personnel. Cet exemple montre que chaque décision stratégique a une traduction RH.

## Points clés

- GRH = double finalité économique et sociale.
- De l''administration du personnel à la GRH stratégique.
- Six processus : acquérir, rémunérer, développer, mobiliser, administrer et dialoguer, gérer les départs.
- La GRH est partagée entre le service RH et les managers.

## Exercices pratiques

- Exercice 1. Définissez la GRH et expliquez pourquoi ses deux finalités peuvent entrer en conflit. Donnez un exemple.
- Exercice 2. QCM : lequel de ces acteurs n''est pas un acteur interne de la GRH ? a) le chef d''atelier ; b) l''inspection du travail ; c) le délégué du personnel ; d) le directeur général.
- Exercice 3. Une entreprise fictive compte 150 salariés au 1er janvier et 130 au 31 décembre. Calculez l''effectif moyen approché.
- Exercice 4. Avec l''effectif moyen de l''exercice 3 et une masse salariale annuelle de 504 000 000 FCFA, calculez le salaire brut moyen annuel puis mensuel.
- Exercice 5. Dans la même entreprise, 21 salariés sont cadres. Calculez le taux d''encadrement sur l''effectif moyen.
- Exercice 6 (cas pratique). Kër Couture, atelier de confection fictif de 12 salariés à Saint-Louis, vient de décrocher un gros marché d''uniformes scolaires. Le gérant fait tout lui-même : recrutement, paie, organisation. Identifiez les processus RH concernés et proposez trois actions prioritaires.

## Corrigé

Exercice 1. La GRH est l''ensemble des activités permettant à l''organisation de disposer des personnes et des compétences nécessaires et de les mobiliser au service de ses objectifs, dans le respect du droit et des personnes. La finalité économique pousse à maîtriser les coûts ; la finalité sociale pousse à améliorer salaires et conditions de travail. Exemple : une hausse générale des salaires améliore la motivation mais augmente la masse salariale ; le responsable RH doit argumenter un compromis (hausse ciblée, primes liées aux résultats).

Exercice 2. Réponse b : l''inspection du travail est une administration publique, donc un acteur externe.

Exercice 3. Effectif moyen = (150 + 130) / 2 = 140 salariés.

Exercice 4. Salaire brut moyen annuel = 504 000 000 / 140 = 3 600 000 FCFA ; mensuel = 3 600 000 / 12 = 300 000 FCFA.

Exercice 5. Taux d''encadrement = 21 / 140 × 100 = 15 %.

Exercice 6. Processus concernés : acquérir (recruter des couturières temporaires), rémunérer (heures supplémentaires, primes de rendement), développer (former rapidement les nouvelles recrues), administrer (contrats, déclarations sociales) et mobiliser (organiser les équipes). Actions prioritaires : 1) évaluer le besoin en heures de travail et en postes et recruter en CDD justifié par le surcroît d''activité, en respectant la réglementation ; 2) désigner une couturière expérimentée comme tutrice pour former et encadrer les nouvelles ; 3) confier l''administration de la paie à un cabinet ou à un logiciel simple pour libérer du temps au gérant, et tenir à jour les dossiers du personnel.', 'texte', 60, false, 20
from public.courses c where c.slug = 'lic-rh-l1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Introduction à la GRH : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Droit du travail (bases) : l''essentiel pour l''examen', '## Objectifs de la leçon

- Connaître les sources du droit du travail et leur articulation.
- Identifier un contrat de travail et distinguer CDI et CDD.
- Maîtriser les mécanismes de la durée du travail et des heures supplémentaires.
- Connaître les grands modes de rupture du contrat et la méthode du cas pratique juridique.

## Avertissement préalable

Au Sénégal, le droit du travail repose sur le Code du travail issu de la loi n°97-17 du 1er décembre 1997 et ses textes d''application. Une réforme est en cours (projet de loi n°15/2026 portant nouveau Code du travail). À l''examen, maîtrisez les mécanismes et les raisonnements, citez prudemment les textes, et vérifiez toujours avec votre enseignant quel texte sert de référence pour votre session. Dans cette leçon, tous les taux utilisés dans les exemples sont fictifs.

## Fiche 1 : les sources du droit du travail

Schéma décrit en texte : une pyramide, du haut vers le bas.

- Normes internationales : conventions de l''OIT ratifiées par le Sénégal.
- Constitution : droit au travail, liberté syndicale, droit de grève.
- Loi : le Code du travail.
- Règlements : décrets et arrêtés d''application (par exemple sur le salaire minimum, les heures supplémentaires).
- Conventions collectives : la Convention collective nationale interprofessionnelle (CCNI) et les conventions de branche (commerce, banques, bâtiment, etc.), négociées entre employeurs et syndicats.
- Règlement intérieur de l''entreprise : discipline, hygiène et sécurité.
- Contrat de travail et usages.

Principe essentiel : le principe de faveur. En cas de conflit entre deux normes, on applique en général la plus favorable au salarié, sans violer l''ordre public. Une convention collective peut accorder plus que la loi, jamais moins.

## Fiche 2 : le contrat de travail

Le contrat de travail est la convention par laquelle une personne (le travailleur) s''engage à mettre son activité professionnelle, moyennant rémunération, sous la direction et l''autorité d''une autre personne (l''employeur).

Trois éléments cumulatifs :

- Une prestation de travail.
- Une rémunération.
- Un lien de subordination juridique : pouvoir de donner des ordres, de contrôler et de sanctionner.

Le lien de subordination est le critère décisif : il distingue le salarié du prestataire indépendant. Le juge regarde la réalité de la relation, pas le nom donné au contrat.

La période d''essai permet à chaque partie d''apprécier l''autre. Prévue par écrit, sa durée maximale est encadrée par les textes et conventions. Pendant l''essai, la rupture est en principe libre, sans préavis ni indemnité, sauf abus.

## Fiche 3 : CDI et CDD

Le contrat à durée indéterminée (CDI) est la forme normale de la relation de travail. Il n''a pas de terme fixé à l''avance.

Le contrat à durée déterminée (CDD) a un terme précis, fixé dès la conclusion ou lié à un objet (fin d''un chantier, retour d''un salarié absent). Il est encadré : écrit, durée maximale, renouvellements limités, selon des limites fixées par les textes. Sanction classique : un CDD qui ne respecte pas les règles ou qui se poursuit après son terme peut être requalifié en CDI.

## Fiche 4 : la durée du travail

Dans le Code de 1997, la durée légale du travail des établissements non agricoles est fixée à 40 heures par semaine ; les règles du nouveau Code devront être vérifiées. Au-delà de la durée légale, les heures sont des heures supplémentaires : elles sont majorées selon des taux fixés par voie réglementaire ou conventionnelle, et encadrées (autorisations, plafonds, repos).

Méthode de calcul du taux horaire : pour un horaire de 40 heures par semaine, le nombre d''heures mensuelles moyen est 40 × 52 / 12 = 173,33 heures. Taux horaire = salaire mensuel de base / 173,33.

Exemple chiffré : Fatou, caissière dans un supermarché fictif de Mbour, a un salaire de base de 260 000 FCFA. Taux horaire = 260 000 / 173,33 ≈ 1 500 FCFA (arrondi à l''unité). Ce mois-ci, elle a fait 8 heures supplémentaires : 6 heures majorées à 15 % et 2 heures majorées à 40 % (taux fictifs pour l''exemple).

- 6 × 1 500 × 1,15 = 10 350 FCFA
- 2 × 1 500 × 1,40 = 4 200 FCFA
- Total des heures supplémentaires = 14 550 FCFA
- Salaire brut du mois = 260 000 + 14 550 = 274 550 FCFA

## Fiche 5 : suspension et rupture du contrat

La suspension interrompt temporairement l''exécution du contrat sans le rompre : maladie, maternité, accident du travail, mise à pied, etc.

La rupture du CDI :

- La démission : initiative du salarié, volonté claire et non équivoque, respect du préavis.
- Le licenciement pour motif personnel : il exige un motif légitime (faute, insuffisance professionnelle), une procédure et le respect du préavis. Le salarié peut avoir droit à une indemnité de licenciement selon son ancienneté. La faute lourde peut priver du préavis et des indemnités.
- Le licenciement pour motif économique : suppression ou transformation d''emploi pour raisons économiques ou techniques ; procédure renforcée (information des délégués du personnel et de l''inspection du travail, ordre des licenciements).
- Un licenciement sans motif légitime est abusif : le juge peut accorder des dommages-intérêts.

La rupture du CDD : il prend fin à son terme. Avant, la rupture n''est en principe possible que dans des cas limités (faute lourde, accord des parties, force majeure), sinon des dommages-intérêts sont dus.

Les litiges individuels passent par une conciliation devant l''inspection du travail, puis le tribunal du travail.

## Points clés

- Contrat de travail = prestation + rémunération + subordination.
- Le CDI est la règle, le CDD l''exception encadrée.
- Taux horaire = salaire mensuel / 173,33 pour 40 heures hebdomadaires.
- Rupture : qui rompt, quel motif, quelle procédure, quel préavis, quelles indemnités.

## Exercices pratiques

- Exercice 1. Citez les trois éléments du contrat de travail et indiquez celui qui permet de distinguer un salarié d''un prestataire indépendant.
- Exercice 2. Expliquez le principe de faveur avec un exemple.
- Exercice 3. Un salarié perçoit 346 660 FCFA de salaire de base mensuel pour 40 heures hebdomadaires. Calculez son taux horaire.
- Exercice 4. Il effectue 10 heures supplémentaires : 8 heures majorées à 15 % et 2 heures majorées à 50 % (taux fictifs). Calculez le montant des heures supplémentaires et le salaire brut.
- Exercice 5 (cas pratique). Ibrahima est « prestataire informatique » pour une société fictive de Dakar depuis deux ans. Il pointe chaque jour de 8 h à 17 h, reçoit ses tâches de la directrice informatique et a reçu un avertissement écrit pour retard. La société met fin à la relation du jour au lendemain. Analysez sa situation.
- Exercice 6. Un CDD de 6 mois est rompu au bout de 2 mois par l''employeur car « l''activité a baissé ». Est-ce régulier ?

## Corrigé

Exercice 1. Prestation de travail, rémunération, lien de subordination juridique. Le lien de subordination est le critère distinctif.

Exercice 2. Lorsque plusieurs normes s''appliquent, on retient en principe la plus favorable au salarié. Exemple : si la convention de branche accorde plus de congés que la loi, la durée conventionnelle s''applique.

Exercice 3. Taux horaire = 346 660 / 173,33 = 2 000 FCFA.

Exercice 4. 8 × 2 000 × 1,15 = 18 400 FCFA ; 2 × 2 000 × 1,50 = 6 000 FCFA ; total = 24 400 FCFA. Salaire brut = 346 660 + 24 400 = 371 060 FCFA.

Exercice 5. Faits : horaires imposés, ordres de la directrice, sanction disciplinaire. Problème : Ibrahima est-il un salarié ? Règle : le contrat de travail se caractérise par le lien de subordination, apprécié selon la réalité de la relation. Application : pouvoir de direction (tâches), de contrôle (pointage) et de sanction (avertissement) : la subordination est établie. Conclusion : il peut demander la requalification en contrat de travail, probablement à durée indéterminée ; la rupture brutale, sans motif ni procédure ni préavis, s''analyserait comme un licenciement irrégulier et potentiellement abusif, ouvrant droit à des indemnités. Démarche : saisir l''inspection du travail pour une tentative de conciliation, puis le tribunal du travail.

Exercice 6. En principe non : la baisse d''activité n''est pas un cas de rupture anticipée du CDD (faute lourde, accord des parties, force majeure). L''employeur s''expose à des dommages-intérêts ; vérifiez la règle exacte dans le texte en vigueur.', 'texte', 60, false, 30
from public.courses c where c.slug = 'lic-rh-l1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Droit du travail (bases) : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Comportement organisationnel et communication : l''essentiel pour l''examen', '## Objectifs de la leçon

- Connaître les principales théories de la motivation et du leadership et savoir les appliquer à un cas.
- Comprendre le fonctionnement des groupes et la notion de culture d''organisation.
- Maîtriser le schéma de la communication et les outils de communication interne.
- Analyser un conflit et choisir un mode de gestion adapté.

## Fiche 1 : le comportement organisationnel

Le comportement organisationnel étudie la manière dont les individus et les groupes agissent dans les organisations, et comment ces comportements influencent la performance. Il s''intéresse à trois niveaux : l''individu (perception, motivation, satisfaction), le groupe (dynamique, leadership, conflits) et l''organisation (structure, culture, changement).

## Fiche 2 : les théories de la motivation

La motivation est l''ensemble des forces qui poussent une personne à agir, orientent son action et la font persister.

- Maslow : hiérarchie des besoins, souvent représentée par une pyramide à cinq niveaux, de la base au sommet : besoins physiologiques, sécurité, appartenance, estime, accomplissement. Un besoin satisfait cesse de motiver. Limite : l''ordre n''est pas universel ; dans de nombreuses sociétés africaines, l''appartenance à la famille et à la communauté peut primer.
- Herzberg : deux familles de facteurs. Les facteurs d''hygiène (salaire, conditions de travail, relations, politique de l''entreprise) évitent l''insatisfaction mais ne motivent pas durablement. Les facteurs moteurs (reconnaissance, responsabilité, intérêt du travail, progression) créent la satisfaction.
- McGregor : la théorie X suppose que l''individu n''aime pas travailler et doit être contrôlé ; la théorie Y suppose qu''il peut s''engager et rechercher des responsabilités si les conditions s''y prêtent.
- Vroom (théorie des attentes) : la force de motivation dépend de trois éléments : l''expectation E (probabilité que l''effort mène à la performance), l''instrumentalité I (probabilité que la performance soit récompensée) et la valence V (valeur accordée à la récompense). On écrit M = E × I × V, chaque terme étant noté ici entre 0 et 1.

Exemple chiffré : chez Baobab Assurances, société fictive de Dakar, un commercial estime à 0,8 la probabilité d''atteindre son objectif s''il fait un effort, à 0,5 la probabilité que la prime promise soit réellement versée, et il attache une valeur de 0,9 à cette prime. M = 0,8 × 0,5 × 0,9 = 0,36. Si la direction rend la prime transparente et garantie (I = 0,9), M = 0,8 × 0,9 × 0,9 = 0,648. Leçon : la crédibilité des promesses de la hiérarchie est un levier de motivation.

## Fiche 3 : le leadership

Le leadership est la capacité d''influencer un groupe pour atteindre des objectifs.

- Lewin distingue trois styles : autocratique (le chef décide seul), démocratique (le chef associe le groupe), laisser-faire (le chef intervient peu).
- L''approche situationnelle de Hersey et Blanchard : le bon style dépend de la maturité des collaborateurs (compétence et motivation). On passe du style directif (collaborateur débutant) au style persuasif, puis participatif, enfin délégatif (collaborateur autonome et motivé).

Exemple : une cheffe d''équipe d''une usine fictive de transformation de mangues à Sédhiou sera directive avec des saisonniers recrutés la veille, et délégative avec des opératrices de dix ans d''ancienneté.

## Fiche 4 : les groupes et la culture

Tuckman décrit les étapes du développement d''une équipe : formation (on se découvre), tension (conflits de rôle), normalisation (règles communes), performance (l''équipe est efficace), puis dissolution à la fin d''un projet.

La culture d''organisation est l''ensemble des valeurs, croyances, normes et pratiques partagées par ses membres. Schein distingue trois niveaux : les artefacts visibles (locaux, tenue, rituels, langage), les valeurs affichées (charte, slogans) et les hypothèses de base, implicites et profondes. Dans le contexte sénégalais, des valeurs comme la teranga (hospitalité), le respect des aînés ou la solidarité influencent les relations de travail : prise de parole en réunion, rapport à la hiérarchie, gestion des absences pour événements familiaux.

## Fiche 5 : la communication

Schéma de la communication, décrit en texte : un émetteur code un message et l''envoie par un canal à un récepteur qui le décode ; des bruits (bruit physique, jargon, différence de langue, émotions) perturbent la transmission ; la rétroaction (feedback) du récepteur permet à l''émetteur de vérifier la compréhension.

La communication interne vise à informer, coordonner et fédérer. On distingue :

- La communication descendante : de la direction vers les salariés (notes de service, réunions, affichage).
- La communication ascendante : des salariés vers la direction (boîte à idées, entretiens, enquêtes de satisfaction).
- La communication horizontale : entre services ou collègues.
- La communication formelle et la communication informelle (rumeurs, discussions autour du thé).

Dans un contexte multilingue, choisir la langue (français, wolof, pulaar, sérère ou autre) et le canal (réunion orale plutôt que note écrite pour des équipes de terrain) améliore l''efficacité.

## Fiche 6 : les conflits

Un conflit est une opposition entre personnes ou groupes dont les intérêts, les valeurs ou les objectifs divergent. Le modèle de Thomas et Kilmann propose cinq modes de gestion, selon le degré d''affirmation de soi et de coopération : la compétition, la collaboration, le compromis, l''évitement et l''accommodation. La collaboration recherche une solution gagnant-gagnant ; elle prend du temps mais règle durablement les conflits importants.

## Points clés

- Motivation : Maslow, Herzberg, McGregor, Vroom (M = E × I × V).
- Le leadership efficace s''adapte à la situation.
- La culture se lit à trois niveaux (Schein) et s''inscrit dans la société environnante.
- Communication : émetteur, message, canal, récepteur, bruit, feedback.

## Exercices pratiques

- Exercice 1. Classez selon Herzberg : salaire, reconnaissance du travail, climatisation des bureaux, possibilité de promotion, relation avec le chef.
- Exercice 2. Un employé estime E = 0,6, I = 0,7 et V = 0,5. Calculez M. Quel facteur proposeriez-vous d''améliorer en priorité si la direction peut porter un seul des trois à 0,9 ?
- Exercice 3. Identifiez les bruits possibles dans la situation suivante : un directeur envoie par courriel, en français technique, une consigne de sécurité à des manutentionnaires qui n''ont pas d''adresse électronique professionnelle.
- Exercice 4. Quel style de leadership situationnel conseillez-vous pour : a) une stagiaire motivée mais sans expérience ; b) un comptable expérimenté et engagé ?
- Exercice 5 (cas pratique). À la clinique fictive Santé Plus de Thiès, les infirmières de nuit se plaignent que l''équipe de jour leur laisse des tâches non terminées. Le ton monte. Analysez le conflit et proposez un mode de gestion ainsi que trois actions concrètes.

## Corrigé

Exercice 1. Facteurs d''hygiène : salaire, climatisation des bureaux, relation avec le chef. Facteurs moteurs : reconnaissance du travail, possibilité de promotion.

Exercice 2. M = 0,6 × 0,7 × 0,5 = 0,21. Si E passe à 0,9 : 0,9 × 0,7 × 0,5 = 0,315. Si I passe à 0,9 : 0,6 × 0,9 × 0,5 = 0,27. Si V passe à 0,9 : 0,6 × 0,7 × 0,9 = 0,378. On améliore en priorité la valence (proposer une récompense qui a plus de valeur pour l''employé), qui donne la plus forte hausse.

Exercice 3. Bruits : canal inadapté (courriel inaccessible), code inadapté (français technique), absence de feedback. Solution : briefing oral sur le lieu de travail, dans une langue comprise par tous, avec démonstration et vérification de la compréhension, complété par un affichage illustré.

Exercice 4. a) Style persuasif (ou directif au tout début) : beaucoup de consignes et d''explications, tout en entretenant sa motivation. b) Style délégatif : fixer les objectifs et lui laisser l''autonomie.

Exercice 5. Nature : conflit entre groupes, lié à l''organisation du travail (répartition des tâches, transmission) plus qu''aux personnes. Mode conseillé : la collaboration, car l''enjeu (qualité des soins) est important et la relation doit durer. Actions : 1) réunion de médiation animée par la cadre de santé avec des représentantes des deux équipes pour lister les tâches litigieuses ; 2) mise en place d''une fiche de transmission écrite et d''un temps de relève de 15 minutes ; 3) point de suivi après un mois et règle claire sur les tâches qui doivent être terminées avant la relève.', 'texte', 60, false, 40
from public.courses c where c.slug = 'lic-rh-l1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Comportement organisationnel et communication : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Sujet type d''examen de Licence 1 RH (entraînement, corrigé détaillé)', '## Présentation du sujet

Ce sujet d''entraînement couvre les trois matières clés de la Licence 1 RH. Il ne s''agit pas d''un sujet officiel : il a été conçu pour vous entraîner dans des conditions proches d''un examen semestriel. Durée conseillée : 3 heures. Barème indicatif, non officiel : 20 points. Documents non autorisés. Tous les taux sont fictifs pour l''exemple.

## Dossier 1 : Introduction à la GRH (5 points)

La société fictive Delta Riz, implantée à Richard-Toll, transforme et conditionne du riz local. Elle comptait 220 salariés au 1er janvier N et 260 au 31 décembre N. Elle a versé 1 008 000 000 FCFA de salaires bruts sur l''année N. Elle emploie 24 cadres en moyenne. La direction envisage de créer un véritable service RH ; aujourd''hui, la paie est faite par le service comptable et les recrutements par chaque chef d''atelier.

- 1.1 Calculez l''effectif moyen approché, le salaire brut moyen mensuel et le taux d''encadrement. (2 points)
- 1.2 À quelle étape de l''évolution de la fonction RH se situe Delta Riz ? Justifiez. (1 point)
- 1.3 Proposez trois missions prioritaires pour le futur service RH et expliquez le rôle que conserveront les chefs d''atelier. (2 points)

## Dossier 2 : Droit du travail (8 points)

Situation A. Khady a été embauchée par Delta Riz le 1er mars N comme opératrice de conditionnement par un contrat écrit intitulé « contrat saisonnier », sans date de fin ni indication de la campagne concernée. En novembre, le chef d''atelier lui annonce oralement que « la saison est finie » et qu''elle ne doit plus revenir.

Situation B. Ousmane, technicien de maintenance, perçoit un salaire de base de 433 325 FCFA pour 40 heures hebdomadaires. En octobre, il a effectué 12 heures supplémentaires : 8 heures majorées à 15 % et 4 heures majorées à 40 % (taux fictifs).

- 2.1 Situation A : quelle est la nature du contrat de Khady ? Analysez la rupture selon la méthode du cas pratique. (4 points)
- 2.2 Situation B : calculez le taux horaire, le montant des heures supplémentaires et le salaire brut d''octobre. (3 points)
- 2.3 Citez deux sources conventionnelles du droit du travail. (1 point)

## Dossier 3 : Comportement organisationnel et communication (7 points)

Depuis l''arrivée d''une nouvelle machine d''ensachage, l''absentéisme augmente dans l''atelier 2 de Delta Riz. Les opérateurs disent ne pas avoir été informés, la cheffe d''atelier affirme qu''une note a été affichée. Une prime de productivité a été annoncée « si les résultats sont bons », sans plus de précision.

- 3.1 Analysez la situation de communication à l''aide du schéma émetteur-récepteur. (2 points)
- 3.2 À l''aide de la théorie de Vroom, expliquez pourquoi la prime annoncée motive peu. (2 points)
- 3.3 Question de réflexion : « Le style de management doit-il changer lors de l''introduction d''une nouvelle technologie ? » Rédigez une introduction complète et le plan détaillé. (3 points)

## Corrigé détaillé

1.1 Effectif moyen = (220 + 260) / 2 = 240 salariés. Salaire brut moyen annuel = 1 008 000 000 / 240 = 4 200 000 FCFA ; mensuel = 4 200 000 / 12 = 350 000 FCFA. Taux d''encadrement = 24 / 240 × 100 = 10 %. Barème indicatif : 0,5 point pour l''effectif, 1 point pour le salaire (annuel et mensuel), 0,5 point pour le taux.

1.2 Delta Riz se situe au stade de la gestion administrative du personnel, avec une GRH dispersée : la paie est un travail comptable, le recrutement est laissé aux chefs d''atelier sans politique commune, il n''existe pas de vision prévisionnelle. Avec 240 salariés, ce niveau devient insuffisant.

1.3 Missions prioritaires : 1) sécuriser l''administration du personnel et la paie (contrats, dossiers, déclarations sociales) ; 2) harmoniser le recrutement et l''intégration (fiches de poste, procédure commune) ; 3) organiser la formation, notamment sur les nouvelles machines. Les chefs d''atelier restent des acteurs de la GRH partagée : ils expriment les besoins, participent aux entretiens, accueillent, forment sur le poste et évaluent leurs équipes.

2.1 Faits : contrat écrit dit saisonnier, sans terme ni campagne précisée ; rupture orale en novembre. Problème : le contrat est-il un véritable CDD saisonnier et la rupture est-elle régulière ? Règle : le CDI est la forme normale ; le CDD, y compris saisonnier, doit préciser son terme ou l''objet qui le détermine (ici, la campagne) ; à défaut, il peut être requalifié en CDI. Le licenciement d''un salarié en CDI exige un motif légitime, le respect d''une procédure et d''un préavis. Application : le contrat ne mentionne ni date ni campagne ; l''intitulé ne suffit pas. Le contrat peut être requalifié en CDI. La rupture orale, sans motif légitime ni préavis, constitue alors un licenciement irrégulier et probablement abusif. Conclusion : Khady peut saisir l''inspection du travail en vue d''une conciliation, puis le tribunal du travail, pour obtenir l''indemnité de préavis, une éventuelle indemnité de licenciement selon les textes et des dommages-intérêts. Barème : 1 point pour les faits et le problème, 1 point pour la règle, 1,5 point pour l''application, 0,5 point pour la conclusion.

2.2 Taux horaire = 433 325 / 173,33 ≈ 2 500 FCFA. Heures supplémentaires : 8 × 2 500 × 1,15 = 23 000 FCFA ; 4 × 2 500 × 1,40 = 14 000 FCFA ; total = 37 000 FCFA. Salaire brut d''octobre = 433 325 + 37 000 = 470 325 FCFA.

2.3 La Convention collective nationale interprofessionnelle et les conventions collectives de branche ; on accepte aussi les accords d''entreprise et le règlement intérieur, en précisant que ce dernier est un acte de l''employeur.

3.1 Émetteur : la cheffe d''atelier ; message : informations sur la nouvelle machine ; canal : note affichée ; récepteurs : les opérateurs. Bruits : canal peu adapté à des équipes en rotation, langue ou vocabulaire technique, absence d''explication orale. Pas de feedback : la cheffe n''a pas vérifié la compréhension. Le message a été émis mais pas reçu.

3.2 Selon Vroom, M = E × I × V. L''instrumentalité est faible car le lien entre performance et prime est flou (« si les résultats sont bons ») ; l''expectation peut aussi être faible si les opérateurs ne maîtrisent pas la machine. Même si la valence est forte, le produit reste bas. Il faut fixer un objectif mesurable, un montant et des règles transparentes, et former les opérateurs.

3.3 Introduction : accroche sur la mécanisation des ateliers agroalimentaires ; définitions (style de management, nouvelle technologie) ; problématique : le manager doit-il adapter sa manière de diriger quand les compétences de son équipe sont remises en cause par une technologie ? Annonce du plan. Plan : I. Le changement technologique fait baisser temporairement la maturité professionnelle des équipes (perte de repères, inquiétude) : un style plus directif et explicatif s''impose au départ (Hersey et Blanchard). II. Mais l''adhésion durable suppose la participation (consultation, formation, reconnaissance) avant de revenir à la délégation. Conclusion : le style doit évoluer au rythme de l''appropriation de la technologie.

## Exercices pratiques

- Exercice 1. Vrai ou faux : la faute lourde peut priver le salarié du préavis.
- Exercice 2. Calculez le taux d''absentéisme d''un atelier de 30 salariés à 173 heures théoriques chacun, avec 519 heures d''absence.
- Exercice 3. Citez les cinq modes de gestion des conflits de Thomas et Kilmann.
- Exercice 4. Donnez deux différences entre une démission et un licenciement.
- Exercice 5. Citez deux acteurs externes de la GRH au Sénégal.

## Corrigé

Exercice 1. Vrai, sous réserve des textes en vigueur et de l''appréciation du juge.

Exercice 2. Heures théoriques = 30 × 173 = 5 190 heures ; taux = 519 / 5 190 × 100 = 10 %.

Exercice 3. Compétition, collaboration, compromis, évitement, accommodation.

Exercice 4. L''initiative : le salarié pour la démission, l''employeur pour le licenciement. Le motif : la démission n''a pas à être justifiée, le licenciement exige un motif légitime ; de plus, le licenciement peut ouvrir droit à une indemnité de licenciement.

Exercice 5. L''inspection du travail et l''IPRES (ou la Caisse de sécurité sociale).', 'texte', 60, false, 50
from public.courses c where c.slug = 'lic-rh-l1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Sujet type d''examen de Licence 1 RH (entraînement, corrigé détaillé)');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Introduction à la GRH', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : étudiants de Licence 1 en ressources humaines, gestion ou administration des entreprises.
- Objectifs : définir la GRH et ses finalités, retracer son évolution, présenter les processus et les acteurs, calculer les indicateurs de base (effectif moyen, salaire moyen, taux d''encadrement), réussir une question de cours et un mini-cas à l''examen.
- Matériel : diaporama (frise historique, schéma du cycle de vie du salarié, tableau des acteurs), tableau blanc, calculatrice, fiche d''exercices distribuée.
- Prérequis : aucun, sinon avoir lu la leçon « Introduction à la GRH : l''essentiel pour l''examen ».

## Déroulé minuté

## 00:00 – 05:00 · Accueil et objectifs

Bonjour à toutes et à tous. Pendant une heure et demie, nous allons construire ensemble les fondations de votre Licence en ressources humaines. À la fin de cette séance, vous saurez définir la GRH sans hésiter, expliquer comment la fonction a évolué, citer ses grands processus et ses acteurs, et faire les petits calculs qui tombent souvent à l''examen. Préparez une feuille et une calculatrice. Toutes les entreprises citées sont fictives.

Visuel : diapositive avec les quatre objectifs et le plan de la séance.

## 05:00 – 15:00 · Définir la GRH et ses deux finalités

Commençons par une question : selon vous, à quoi sert un service RH ? Notez une phrase. Beaucoup d''entre vous écrivent « à recruter » ou « à faire la paie ». C''est juste, mais incomplet. La GRH est l''ensemble des activités qui permettent à une organisation de disposer des personnes dont elle a besoin, en nombre et en compétences, au bon moment, et de les mobiliser pour atteindre ses objectifs, dans le respect du droit et des personnes.

Retenez la double finalité. La finalité économique : la GRH contribue à la performance, à la productivité, à la maîtrise de la masse salariale. La finalité sociale : elle veille à l''équité, aux conditions de travail, au développement des personnes et au dialogue. Ces deux finalités ne vont pas toujours dans le même sens. Imaginez une entreprise de transport qui veut réduire ses coûts alors que ses chauffeurs demandent une revalorisation. Le responsable RH ne choisit pas un camp : il construit un compromis argumenté.

Visuel : une balance avec « performance économique » d''un côté et « satisfaction et développement des salariés » de l''autre.

## 15:00 – 27:00 · L''évolution de la fonction RH

Regardons maintenant la frise. Au départ, on parlait de gestion administrative du personnel : tenir les registres, établir les bulletins de paie, appliquer les textes. Le responsable était un « chef du personnel ». Ensuite, la gestion du personnel s''est enrichie du recrutement, de la formation et des relations avec les représentants du personnel. Puis on a parlé de gestion des ressources humaines : le salarié devient une ressource à développer, on gère les compétences et les carrières. Enfin, la GRH stratégique associe la fonction RH aux grandes décisions de l''entreprise.

Attention à un piège d''examen : ces étapes ne se remplacent pas partout au même rythme. Au Sénégal comme ailleurs en Afrique de l''Ouest, une grande entreprise de télécommunications peut avoir une direction RH très structurée, tandis qu''une PME familiale de Kaolack fait encore tout « à la main ». Mentionnez aussi le poids du secteur informel et la jeunesse de la population active : ce sont des éléments de contexte appréciés par les correcteurs.

Question au public : dans quelle étape situeriez-vous une boulangerie de 15 salariés dont le gérant fait lui-même la paie ? Réponse attendue : la gestion administrative, avec quelques éléments de gestion du personnel.

## 27:00 – 40:00 · Les processus RH : le cycle de vie du salarié

Je projette le schéma circulaire. On entre dans l''entreprise : c''est le processus « acquérir », avec la prévision des besoins, le recrutement et l''intégration. On est payé : « rémunérer ». On progresse : « développer », avec la formation, l''évaluation, la gestion des carrières. On s''implique : « mobiliser », avec la motivation, la communication, la santé et la sécurité. Tout au long, il faut « administrer et dialoguer » : contrats, dossiers, déclarations sociales, relations avec les délégués du personnel. Et un jour, on part : « gérer les départs », qu''il s''agisse de démission, de licenciement, de fin de CDD ou de retraite.

Prenons l''exemple de Teranga Logistique, entreprise fictive de Dakar, qui ouvre une agence à Tambacounda. Combien de processus sont touchés ? Tous ! Il faut prévoir les postes, recruter ou muter, former, fixer une indemnité de déplacement, informer les représentants du personnel. Voilà pourquoi on dit que chaque décision stratégique a une traduction RH.

## 40:00 – 45:00 · Quiz interactif de mi-parcours

Pause active. Répondez sur votre feuille, sans regarder vos notes.

- Question 1 : citez les deux finalités de la GRH.
- Question 2 : quelle étape suit la gestion du personnel dans la frise ?
- Question 3 : à quel processus rattachez-vous l''accueil d''un nouvel embauché ?
- Question 4 : vrai ou faux, la GRH n''est faite que par le service RH ?

Réponses : 1) finalité économique et finalité sociale ; 2) la gestion des ressources humaines ; 3) au processus « acquérir », plus précisément l''intégration ; 4) faux, la GRH est partagée avec les managers de proximité.

## 45:00 – 55:00 · Les acteurs de la GRH

Construisons le tableau des acteurs au tableau blanc. En interne : la direction générale, qui fixe la stratégie et le budget ; la direction ou le service RH, qui conçoit les politiques et assure l''administration ; les managers de proximité, qui accueillent, organisent, évaluent ; les salariés et leurs représentants, délégués du personnel et syndicats. En externe : l''inspection du travail, les organismes de sécurité sociale et de retraite comme la Caisse de sécurité sociale et l''IPRES, les institutions de prévoyance maladie, les cabinets de recrutement, les organismes de formation.

Insistez dans vos copies sur le rôle des managers. Un excellent dispositif d''intégration échoue si le chef d''équipe ne prend pas dix minutes pour accueillir la nouvelle recrue.

## 55:00 – 1:10:00 · Les indicateurs de base : méthode et exercices corrigés

Passons aux chiffres. Trois formules à connaître. Effectif moyen approché = (effectif de début + effectif de fin) / 2. Salaire brut moyen = masse salariale brute / effectif moyen. Taux d''encadrement = nombre de cadres / effectif × 100.

Exercice projeté : Sahel Agro, à Kaolack, compte 80 salariés au 1er janvier et 100 au 31 décembre ; masse salariale brute annuelle 324 000 000 FCFA ; 9 cadres. Faites le calcul, je vous laisse trois minutes.

Correction commentée. Effectif moyen = (80 + 100) / 2 = 90. Salaire moyen annuel = 324 000 000 / 90 = 3 600 000 FCFA, soit 300 000 FCFA par mois. Taux d''encadrement = 9 / 90 × 100 = 10 %. Erreur fréquente : diviser la masse salariale par l''effectif de fin, 100, ce qui donne 3 240 000 FCFA et sous-estime le salaire moyen. Autre erreur : oublier l''unité. Écrivez toujours FCFA, salariés, pourcentage.

Deuxième exercice, plus rapide : 150 salariés au début, 130 à la fin, masse salariale 504 000 000 FCFA, 21 cadres. Résultats : effectif moyen 140, salaire moyen annuel 3 600 000 FCFA, soit 300 000 FCFA par mois, taux d''encadrement 15 %. Interprétation : l''effectif a baissé de 20 personnes ; il faudrait savoir pourquoi, départs volontaires ou licenciements, avant de conclure.

## 1:10:00 – 1:20:00 · Méthode du mini-cas à l''examen

À l''examen, on vous donnera souvent un mini-cas : « Kër Couture, atelier de 12 salariés à Saint-Louis, décroche un gros marché ; le gérant fait tout lui-même ». Méthode : identifier le contexte et le problème RH ; repérer les processus concernés ; proposer des actions concrètes, hiérarchisées et réalistes compte tenu des moyens. Ici : recruter en CDD justifié par le surcroît d''activité, désigner une tutrice pour former, externaliser la paie à un cabinet. Trois actions bien justifiées valent mieux que dix idées en vrac.

Pour la présentation, je vous conseille un tableau à trois colonnes : action proposée, processus RH concerné, justification. Par exemple : « recruter quatre couturières en CDD » ; « acquérir » ; « surcroît temporaire d''activité lié au marché, sans alourdir durablement la masse salariale ». Le correcteur voit immédiatement que vous reliez la théorie au cas. Terminez par une phrase de conclusion qui hiérarchise : ce qu''il faut faire cette semaine, ce qui peut attendre la fin du marché.

## 1:20:00 – 1:27:00 · Synthèse

Résumons. La GRH a deux finalités. Elle a évolué de l''administration du personnel vers la GRH stratégique, à des rythmes différents selon les entreprises. Elle s''organise en six processus. Elle est partagée entre le service RH et les managers, et s''appuie sur des acteurs externes. Les indicateurs de base se calculent avec l''effectif moyen.

## 1:27:00 – 1:30:00 · Évaluation finale

Cinq questions pour vérifier vos acquis. Les réponses suivent.

- Question 1 : définissez la GRH en une phrase.
- Question 2 : citez quatre des six processus RH.
- Question 3 : une entreprise passe de 60 à 80 salariés sur l''année ; quel est l''effectif moyen approché ?
- Question 4 : avec une masse salariale annuelle de 252 000 000 FCFA, quel est le salaire brut moyen mensuel ?
- Question 5 : pourquoi dit-on que la GRH est partagée ?

Réponses : 1) l''ensemble des activités permettant à l''organisation de disposer des personnes et compétences nécessaires et de les mobiliser au service de ses objectifs, dans le respect du droit et des personnes ; 2) par exemple acquérir, rémunérer, développer, mobiliser ; 3) (60 + 80) / 2 = 70 salariés ; 4) 252 000 000 / 70 = 3 600 000 FCFA par an, soit 300 000 FCFA par mois ; 5) parce que les managers de proximité appliquent au quotidien les politiques RH : accueil, organisation du travail, évaluation. Merci et bonnes révisions.', 'video', 90, false, 60
from public.courses c where c.slug = 'lic-rh-l1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Introduction à la GRH');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Droit du travail (bases)', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : étudiants de Licence 1 en ressources humaines et en gestion.
- Objectifs : maîtriser les sources du droit du travail, qualifier un contrat de travail, distinguer CDI et CDD, calculer des heures supplémentaires, analyser une rupture de contrat avec la méthode du cas pratique juridique.
- Matériel : diaporama (pyramide des sources, tableau CDI/CDD, arbre de décision de la rupture), tableau blanc, calculatrice.
- Prérequis : leçon « Droit du travail : l''essentiel pour l''examen ».
- Avertissement : le Sénégal est en transition vers un nouveau Code du travail (projet de loi n°15/2026). Ce cours enseigne les mécanismes ; les taux utilisés sont fictifs pour l''exemple.

## Déroulé minuté

## 00:00 – 05:00 · Introduction et règles du jeu

Bonjour. Le droit du travail fait peur à beaucoup d''étudiants de première année, parce qu''ils pensent qu''il faut apprendre des centaines d''articles. Ce n''est pas l''objectif en L1. L''objectif est de raisonner juste : qualifier une situation, trouver la règle applicable, l''appliquer aux faits. Je vous rappelle un point de prudence : le Code du travail sénégalais de 1997 est en cours de réforme. Quand vous citez un texte, restez général et vérifiez auprès de votre enseignant le texte de référence de votre session.

## 05:00 – 17:00 · Les sources et le principe de faveur

Je projette la pyramide. Au sommet, les normes internationales, notamment les conventions de l''Organisation internationale du travail ratifiées. Puis la Constitution, qui garantit la liberté syndicale et le droit de grève. Puis la loi, le Code du travail, et les règlements d''application. Viennent ensuite les conventions collectives : la Convention collective nationale interprofessionnelle et les conventions de branche. Enfin, le règlement intérieur, le contrat de travail et les usages.

Retenez une idée forte : le principe de faveur. Quand deux normes s''appliquent, on retient en principe la plus favorable au salarié, sans porter atteinte à l''ordre public. Exemple : si une convention de branche accorde une prime d''ancienneté plus élevée que la convention interprofessionnelle, c''est la prime de branche qui s''applique. Question au public : un contrat de travail peut-il prévoir un salaire inférieur au salaire minimum ? Non, car le salaire minimum est d''ordre public ; une telle clause serait sans effet.

## 17:00 – 30:00 · Qualifier un contrat de travail

Trois éléments : une prestation de travail, une rémunération, un lien de subordination. Le troisième est décisif. La subordination, c''est le pouvoir de l''employeur de donner des ordres, d''en contrôler l''exécution et de sanctionner les manquements.

Étudions le cas d''Ibrahima, présenté comme « prestataire informatique » depuis deux ans dans une société fictive de Dakar. Il pointe de 8 h à 17 h, reçoit ses tâches de la directrice informatique, a reçu un avertissement écrit pour retard. Qu''en pensez-vous ? Les trois pouvoirs sont présents : direction, contrôle, sanction. Le juge ne s''arrête pas au titre du contrat ; il regarde la réalité. Ibrahima peut demander la requalification en contrat de travail. C''est un raisonnement classique de cas pratique.

Un mot sur la période d''essai : elle doit être prévue par écrit, sa durée maximale est encadrée par les textes, et pendant l''essai la rupture est en principe libre, sans préavis ni indemnité, sauf abus.

## 30:00 – 42:00 · CDI et CDD

Tableau comparatif au tableau blanc. Colonne CDI : forme normale, pas de terme, rupture par démission ou licenciement. Colonne CDD : exception, terme précis ou objet défini, écrit exigé, durée et renouvellements limités par les textes, fin normale à l''échéance, rupture anticipée limitée à quelques cas comme la faute lourde, l''accord des parties ou la force majeure.

Sanction à retenir : un CDD irrégulier, par exemple sans terme ni objet, ou qui continue après son échéance, peut être requalifié en CDI. Exemple d''examen : un « contrat saisonnier » qui ne précise ni la campagne ni la date de fin. L''intitulé ne suffit pas : le risque de requalification est réel.

## 42:00 – 47:00 · Quiz interactif

Prenez deux minutes pour répondre.

- Question 1 : quel est le critère décisif du contrat de travail ?
- Question 2 : quelle est la forme normale du contrat de travail ?
- Question 3 : une baisse d''activité permet-elle de rompre un CDD avant son terme ?
- Question 4 : citez une source conventionnelle du droit du travail.

Réponses : 1) le lien de subordination ; 2) le CDI ; 3) en principe non, ce n''est pas un des cas limités de rupture anticipée ; 4) la Convention collective nationale interprofessionnelle ou une convention de branche.

## 47:00 – 1:02:00 · Durée du travail et heures supplémentaires : exercices corrigés

Dans le Code de 1997, la durée légale hebdomadaire des établissements non agricoles est de 40 heures ; vérifiez ce que prévoit le texte réformé. Au-delà, ce sont des heures supplémentaires, majorées selon des taux fixés par les textes. Pour nos exercices, nous utiliserons des taux fictifs.

Méthode en trois étapes. Étape 1 : heures mensuelles moyennes = 40 × 52 / 12 = 173,33. Étape 2 : taux horaire = salaire de base / 173,33. Étape 3 : pour chaque tranche, nombre d''heures × taux horaire × (1 + majoration).

Exercice 1 : Fatou, salaire de base 260 000 FCFA, 6 heures à 15 % et 2 heures à 40 %. Taux horaire ≈ 1 500 FCFA. 6 × 1 500 × 1,15 = 10 350 ; 2 × 1 500 × 1,40 = 4 200 ; total 14 550 FCFA ; brut 274 550 FCFA.

Exercice 2, à vous : salaire de base 346 660 FCFA, 8 heures à 15 % et 2 heures à 50 %. Je vous laisse quatre minutes. Correction : taux horaire = 346 660 / 173,33 = 2 000 FCFA. 8 × 2 000 × 1,15 = 18 400 ; 2 × 2 000 × 1,50 = 6 000 ; total 24 400 FCFA ; brut 371 060 FCFA. L''erreur la plus fréquente : ajouter seulement la majoration, par exemple 8 × 2 000 × 0,15, en oubliant de payer l''heure elle-même. Une heure supplémentaire, c''est l''heure plus la majoration.

Retenez aussi la présentation attendue : posez la formule, faites l''application numérique ligne par ligne, totalisez, puis rédigez une phrase de conclusion, par exemple « Le salaire brut d''octobre s''élève à 371 060 FCFA ». Si l''énoncé vous donne plusieurs tranches de majoration, traitez chaque tranche sur une ligne séparée : vous limitez les erreurs et le correcteur peut vous donner des points partiels.

## 1:02:00 – 1:15:00 · Suspension et rupture du contrat

Distinguez d''abord suspension et rupture. La maladie, la maternité, l''accident du travail suspendent le contrat : il reprend ensuite. La rupture, elle, met fin au contrat.

Arbre de décision projeté. Première question : quel contrat ? Si c''est un CDD, il prend fin à son terme ; avant, seulement dans des cas limités. Si c''est un CDI, deuxième question : qui prend l''initiative ? Le salarié : c''est une démission, qui doit être claire et non équivoque, avec respect du préavis. L''employeur : c''est un licenciement. Troisième question : pour quel motif ? Personnel, comme une faute ou une insuffisance professionnelle, ou économique, comme une suppression de poste. Quatrième question : la procédure et le préavis ont-ils été respectés ? Le licenciement économique impose notamment l''information des délégués du personnel et de l''inspection du travail. Cinquième question : quelles conséquences ? Indemnité de préavis si le préavis n''a pas été exécuté, indemnité de licenciement selon l''ancienneté, dommages-intérêts si le licenciement est abusif. La faute lourde peut priver le salarié du préavis et de l''indemnité.

Dernier point : les litiges individuels passent d''abord par une tentative de conciliation devant l''inspection du travail, puis, à défaut, par le tribunal du travail.

## 1:15:00 – 1:25:00 · Corrigé commenté d''un cas pratique complet

Khady est embauchée par un « contrat saisonnier » sans date de fin ni campagne indiquée, puis renvoyée oralement en novembre. Rédigeons ensemble. Faits : contrat écrit sans terme ni objet, rupture orale. Problème : nature du contrat et régularité de la rupture. Règle : le CDD doit préciser son terme ou son objet, à défaut il peut être requalifié en CDI ; le licenciement exige motif légitime, procédure et préavis. Application : l''intitulé « saisonnier » ne suffit pas ; requalification probable ; rupture orale sans motif ni préavis. Conclusion : licenciement irrégulier et vraisemblablement abusif ; Khady peut saisir l''inspection du travail puis le tribunal pour obtenir indemnités et dommages-intérêts. Remarquez la structure : les correcteurs notent la méthode autant que la solution.

Deux conseils de rédaction. D''abord, n''inventez pas de numéros d''articles ou de montants : écrivez « selon le Code du travail » ou « selon les textes en vigueur », c''est accepté et c''est plus honnête qu''un chiffre faux. Ensuite, envisagez l''argument adverse : l''employeur pourrait soutenir que tout le monde savait que l''emploi était lié à la campagne de conditionnement. Répondez-y : en droit du travail, l''écrit protège le salarié, et l''absence de précision joue contre celui qui a rédigé le contrat. Cette discussion en deux temps montre au correcteur que vous maîtrisez le raisonnement juridique et pas seulement la règle.

## 1:25:00 – 1:30:00 · Évaluation finale

- Question 1 : citez les trois éléments du contrat de travail.
- Question 2 : qu''est-ce que le principe de faveur ?
- Question 3 : un salarié gagne 433 325 FCFA pour 40 heures hebdomadaires ; quel est son taux horaire ?
- Question 4 : avec ce taux, combien valent 4 heures majorées à 25 % (taux fictif) ?
- Question 5 : quelle est la première étape pour régler un litige individuel du travail ?

Réponses : 1) prestation de travail, rémunération, lien de subordination ; 2) en cas de concours de normes, on applique en principe la plus favorable au salarié ; 3) 433 325 / 173,33 = 2 500 FCFA ; 4) 4 × 2 500 × 1,25 = 12 500 FCFA ; 5) la tentative de conciliation devant l''inspection du travail. Révisez l''arbre de décision de la rupture : c''est votre meilleur outil pour les cas pratiques.', 'video', 90, false, 70
from public.courses c where c.slug = 'lic-rh-l1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Droit du travail (bases)');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Comportement organisationnel et communication', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : étudiants de Licence 1 en ressources humaines, gestion, communication.
- Objectifs : appliquer les théories de la motivation (Maslow, Herzberg, McGregor, Vroom), choisir un style de leadership adapté, comprendre la dynamique des groupes et la culture, analyser une situation de communication, gérer un conflit.
- Matériel : diaporama (pyramide de Maslow, tableau de Herzberg, formule de Vroom, schéma de la communication, grille des cinq modes de gestion des conflits), tableau blanc, calculatrice.
- Prérequis : leçon « Comportement organisationnel et communication : l''essentiel pour l''examen ».

## Déroulé minuté

## 00:00 – 05:00 · Ouverture

Bonjour à tous. Je commence par une situation. Dans une usine fictive de transformation de mangues à Sédhiou, deux équipes ont le même salaire, les mêmes machines, le même horaire. L''une dépasse ses objectifs, l''autre accumule retards et absences. Pourquoi ? Les réponses sont rarement techniques : elles tiennent à la motivation, au management, à la communication. C''est l''objet du comportement organisationnel. Aujourd''hui, vous apprendrez à utiliser les théories comme des outils d''analyse, ce que les correcteurs attendent dans un cas pratique.

## 05:00 – 20:00 · Maslow, Herzberg, McGregor

Première théorie : Maslow. Je projette la pyramide : besoins physiologiques, sécurité, appartenance, estime, accomplissement. L''idée centrale : un besoin satisfait cesse d''être moteur, et l''individu cherche alors à satisfaire le besoin du niveau supérieur. Limite à citer : l''ordre n''est pas universel. Dans beaucoup de familles sénégalaises, un salarié peut privilégier l''appartenance et les obligations familiales avant sa propre sécurité financière.

Deuxième théorie : Herzberg. Tableau à deux colonnes. À gauche, les facteurs d''hygiène : salaire, conditions de travail, relations avec le chef, politique de l''entreprise. S''ils manquent, il y a insatisfaction, mais leur amélioration ne crée pas une motivation durable. À droite, les facteurs moteurs : reconnaissance, responsabilité, intérêt du travail, possibilités de progression. Question au public : la climatisation des bureaux, à gauche ou à droite ? À gauche, c''est un facteur d''hygiène. Et la promotion ? À droite.

Troisième théorie : McGregor. Le manager « X » pense que les salariés fuient le travail et doivent être contrôlés ; le manager « Y » pense qu''ils peuvent s''engager. Ces croyances deviennent souvent des prophéties autoréalisatrices : un chef qui contrôle tout obtient des salariés passifs.

## 20:00 – 33:00 · Vroom : la théorie des attentes et les calculs

Formule au tableau : M = E × I × V. E, l''expectation : est-ce que mon effort me permettra d''atteindre la performance ? I, l''instrumentalité : si j''atteins la performance, serai-je vraiment récompensé ? V, la valence : la récompense a-t-elle de la valeur pour moi ? Nous notons chaque terme entre 0 et 1. C''est un produit : si un seul terme est nul, la motivation est nulle.

Exercice corrigé. Commercial de Baobab Assurances, société fictive : E = 0,8, I = 0,5, V = 0,9. M = 0,8 × 0,5 × 0,9 = 0,36. Si la direction garantit la prime par écrit, I monte à 0,9 : M = 0,8 × 0,9 × 0,9 = 0,648. La motivation a presque doublé sans changer le montant de la prime.

Exercice à vous : E = 0,6, I = 0,7, V = 0,5. Calculez M puis dites quel facteur porter à 0,9 en priorité. Trois minutes. Correction : M = 0,21. E à 0,9 donne 0,315 ; I à 0,9 donne 0,27 ; V à 0,9 donne 0,378. On agit d''abord sur la valence : proposer une récompense qui compte pour la personne, par exemple une formation qualifiante plutôt qu''un bon d''achat. Astuce de calcul : on gagne le plus en relevant le facteur le plus faible, puisque le produit est multiplié par 0,9 divisé par ce facteur.

## 33:00 – 43:00 · Le leadership

Lewin distingue trois styles : autocratique, démocratique, laisser-faire. Mais le style idéal n''existe pas dans l''absolu. Hersey et Blanchard proposent le leadership situationnel : on adapte le style à la maturité du collaborateur. Débutant motivé : style directif, beaucoup de consignes. Collaborateur qui progresse mais doute : style persuasif, on explique et on encourage. Collaborateur compétent mais peu motivé : style participatif, on l''associe aux décisions. Collaborateur compétent et motivé : style délégatif.

Application : la cheffe d''équipe de l''usine de mangues sera directive avec les saisonniers arrivés la veille, délégative avec les opératrices expérimentées. Un bon manager change de style plusieurs fois dans la même journée.

Question au public : votre nouveau collègue est très compétent mais il vient d''apprendre que sa promotion est refusée, il est démotivé. Quel style ? Le style participatif : on ne lui explique pas son métier, il le connaît ; on l''associe aux décisions et on discute avec lui de ses perspectives. Vous voyez que le diagnostic porte sur deux dimensions, la compétence et la motivation, et qu''il faut les analyser séparément dans une copie.

## 43:00 – 48:00 · Quiz de mi-parcours

- Question 1 : le salaire est-il un facteur moteur selon Herzberg ?
- Question 2 : que vaut M si E = 1, I = 0 et V = 1 ?
- Question 3 : quel style pour un collaborateur compétent et motivé ?
- Question 4 : citez les cinq niveaux de Maslow.

Réponses : 1) non, c''est un facteur d''hygiène ; 2) M = 0, la récompense n''étant jamais versée, l''effort ne sert à rien ; 3) le style délégatif ; 4) physiologiques, sécurité, appartenance, estime, accomplissement.

## 48:00 – 58:00 · Groupes et culture

Les équipes passent par des étapes, selon Tuckman : formation, tension, normalisation, performance, et dissolution en fin de projet. La phase de tension est normale ; le manager ne doit pas paniquer mais clarifier les rôles.

La culture d''organisation, selon Schein, se lit à trois niveaux. Les artefacts, visibles : tenue, locaux, rituels comme la réunion du lundi ou le thé partagé. Les valeurs affichées : la charte, les slogans. Les hypothèses de base, invisibles : ce que tout le monde tient pour évident, par exemple « on ne contredit pas un aîné en réunion ». Dans un cas pratique, montrez que la culture locale, la teranga, le respect des aînés, la solidarité familiale, peut être une force, cohésion et entraide, mais aussi une source de difficultés, prise de parole limitée des jeunes, absences pour cérémonies, si l''organisation ne l''intègre pas intelligemment.

## 58:00 – 1:10:00 · La communication

Schéma projeté : émetteur, codage, message, canal, décodage, récepteur, et la boucle de rétroaction. Sur tout le circuit, des bruits : vacarme de l''atelier, jargon technique, langue, émotions.

Cas corrigé : à l''atelier 2 de Delta Riz, entreprise fictive, une note sur la nouvelle machine a été affichée, mais les opérateurs disent ne pas avoir été informés. Analyse : émetteur, la cheffe d''atelier ; canal, l''affichage, peu adapté à des équipes en rotation ; code, un vocabulaire technique ; absence de rétroaction. Conclusion : le message a été émis mais pas reçu. Remède : réunion de début de poste, explication orale dans une langue comprise par tous, démonstration, questions, affiche illustrée en complément.

Rappelez aussi les directions de la communication interne : descendante, ascendante, horizontale ; et la place de l''informel, rumeurs et discussions, qui se développe quand l''information officielle manque.

## 1:10:00 – 1:20:00 · Gérer un conflit

Grille de Thomas et Kilmann : deux axes, l''affirmation de soi et la coopération. Cinq modes : compétition, forte affirmation et faible coopération ; accommodation, l''inverse ; évitement, faible sur les deux axes ; collaboration, forte sur les deux ; compromis, au milieu.

Cas de la clinique fictive Santé Plus à Thiès : les infirmières de nuit reprochent à l''équipe de jour de laisser des tâches inachevées. Mode conseillé : la collaboration, car l''enjeu, la qualité des soins, est important et les équipes doivent continuer à travailler ensemble. Actions : réunion de médiation, fiche de transmission écrite, temps de relève de quinze minutes, point de suivi après un mois. L''évitement serait une erreur : le conflit grossirait.

## 1:20:00 – 1:26:00 · Synthèse et méthode de rédaction

Pour réussir un cas de comportement organisationnel : 1) décrire la situation avec les mots du cas ; 2) choisir la ou les théories pertinentes, pas toutes ; 3) appliquer la théorie aux faits, avec des calculs si c''est Vroom ; 4) proposer des actions concrètes et réalistes. Évitez la récitation de cours sans lien avec le cas : c''est l''erreur la plus sanctionnée.

Exemple de bonne phrase de copie : « Selon Herzberg, l''amélioration de la cantine est un facteur d''hygiène : elle réduira l''insatisfaction des opérateurs de Delta Riz mais ne suffira pas à les motiver ; il faut y ajouter des facteurs moteurs, comme la reconnaissance des meilleurs opérateurs de la nouvelle machine. » En une phrase, on cite l''auteur, on qualifie le fait, on en tire une conséquence et une proposition. Exemple de mauvaise phrase : « Herzberg a distingué les facteurs d''hygiène et les facteurs moteurs. » C''est juste, mais cela ne répond pas au cas.

## 1:26:00 – 1:30:00 · Évaluation finale

- Question 1 : citez deux facteurs d''hygiène et deux facteurs moteurs.
- Question 2 : E = 0,5, I = 0,8, V = 0,75. Calculez M.
- Question 3 : quels sont les trois niveaux de la culture selon Schein ?
- Question 4 : quel élément du schéma de la communication permet de vérifier la compréhension ?
- Question 5 : quel mode de gestion des conflits recherche une solution gagnant-gagnant ?

Réponses : 1) hygiène : salaire, conditions de travail ; moteurs : reconnaissance, responsabilité ; 2) M = 0,5 × 0,8 × 0,75 = 0,3 ; 3) artefacts, valeurs affichées, hypothèses de base ; 4) la rétroaction ou feedback ; 5) la collaboration. Merci, et entraînez-vous sur le sujet type de la leçon 5.', 'video', 90, false, 80
from public.courses c where c.slug = 'lic-rh-l1'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Comportement organisationnel et communication');

-- Cours : Ressources humaines Licence 2 : réussir ses examens
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'lic-rh-l2', (select id from public.levels where name = 'Licence 2'), null, 'Ressources humaines', 'Ressources humaines Licence 2 : réussir ses examens', 'Préparation aux partiels et examens semestriels de la Licence 2 en gestion des ressources humaines (système LMD, contexte Sénégal et UEMOA). Le cours couvre le recrutement et l''intégration, la gestion de la paie et l''administration du personnel (mécanismes, avec des taux fictifs pour l''exemple) et la formation et la gestion des compétences. Fiches, exercices chiffrés corrigés, sujet type et trois cours vidéo de 1h30. Prérequis : les acquis de la Licence 1 RH (introduction à la GRH, bases du droit du travail).', true, 302
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Réussir ses examens de Licence 2 en ressources humaines', '## Objectifs de la leçon

- Situer la Licence 2 dans le parcours LMD et comprendre ce qui change par rapport à la L1.
- Identifier les trois matières clés de l''année et les compétences attendues à l''examen.
- Adopter une méthode de révision adaptée aux matières techniques (paie, indicateurs) et rédactionnelles.
- Planifier six semaines de révision et savoir traiter chaque type d''épreuve.

## 1. La Licence 2 dans le système LMD

En système LMD, la Licence 2 correspond aux semestres 3 et 4. Les unités d''enseignement (UE) deviennent plus professionnalisantes : après les fondamentaux de la L1 (introduction à la GRH, bases du droit du travail, comportement organisationnel), vous entrez dans les processus opérationnels de la fonction RH. Chaque UE est créditée ; le nombre de crédits, les coefficients, les règles de compensation et de rattrapage dépendent de votre établissement et figurent dans son règlement des études. Lisez-le dès la rentrée : certaines écoles exigent une note minimale dans chaque matière fondamentale, d''autres compensent à l''intérieur de l''UE.

La L2 est souvent l''année du premier stage ou des premiers projets tutorés. Les enseignants attendent davantage de rigueur technique (calculs justes, documents bien présentés) et de capacité à proposer des solutions concrètes.

## 2. Les matières clés de la Licence 2 RH

- Recrutement et intégration : définition du besoin, fiche de poste et profil, sourcing, sélection (CV, tests, entretiens, grilles d''évaluation), décision, accueil et intégration, indicateurs de recrutement.
- Gestion de la paie et administration du personnel : structure du bulletin de paie, du salaire de base au net à payer, cotisations sociales et retenues fiscales (mécanismes ; à l''examen, les taux sont fournis par l''énoncé), charges patronales et coût employeur, obligations administratives (registres, dossiers, déclarations), écriture comptable de la paie.
- Formation et gestion des compétences : notion de compétence, référentiels, analyse des besoins, plan et budget de formation, ingénierie pédagogique, évaluation des formations, indicateurs.

Les matières de tronc commun (comptabilité, statistiques, droit des affaires OHADA, anglais, informatique) restent importantes : la paie mobilise la comptabilité, les indicateurs mobilisent les statistiques.

## 3. Méthode de révision adaptée à la L2

Pour les matières techniques comme la paie, la règle d''or est la répétition : refaites les bulletins jusqu''à les produire sans hésitation, en respectant toujours le même ordre de calcul. Construisez une fiche « ordre de calcul » et une fiche « erreurs fréquentes » (oublier un plafond, appliquer un taux patronal à la place d''un taux salarial, oublier de déduire un acompte).

Pour les matières rédactionnelles (recrutement, formation), préparez des « boîtes à outils » : les étapes d''un processus, deux ou trois outils par étape, un exemple d''entreprise. Exemple : pour l''intégration, retenez le livret d''accueil, le parrainage et le rapport d''étonnement.

Dans tous les cas, entraînez-vous sur des sujets complets en temps limité et corrigez-vous avec un barème.

## 4. Les types d''épreuves en L2

- L''exercice chiffré de paie : on vous donne une situation (salaire, primes, heures supplémentaires, avantages, acompte) et des taux. Présentez le bulletin en tableau : rubrique, base, taux, montant salarial, montant patronal. Vérifiez par un contrôle : brut − retenues salariales = net.
- Le cas pratique de recrutement ou de formation : analysez le besoin, proposez une démarche argumentée et des outils (fiche de poste, grille d''entretien, plan de formation), chiffrez si possible (coût, budget).
- Le QCM ou les questions de cours : définitions précises (sourcing, onboarding, compétence, plan de formation, coût employeur).
- La question de réflexion : par exemple « Le recrutement par cooptation est-il un atout ou un risque pour l''entreprise ? ».
- Le projet : par exemple rédiger une annonce de recrutement ou un plan de formation pour une PME fictive.

## 5. Plan de révision sur 6 semaines

- Semaine 1 : Recrutement. Processus complet, outils de sélection, grilles pondérées, indicateurs (coût par recrutement, taux de transformation). Deux cas.
- Semaine 2 : Intégration et administration du personnel. Dossier du salarié, registres, déclarations, documents de fin de contrat. Un QCM.
- Semaine 3 : Paie, partie 1. Du salaire de base au brut, cotisations salariales, net à payer. Cinq bulletins.
- Semaine 4 : Paie, partie 2. Charges patronales, coût employeur, écriture comptable, cas du cadre. Cinq bulletins.
- Semaine 5 : Formation et compétences. Référentiel, analyse des besoins, plan et budget, évaluation à quatre niveaux. Deux cas.
- Semaine 6 : Sujet type complet (leçon 5) en 3 heures, correction, reprise des fiches « erreurs fréquentes ».

## Points clés

- La L2 entre dans les processus opérationnels : recruter, payer, former.
- Paie : un ordre de calcul fixe et un contrôle systématique.
- À l''examen, les taux de cotisation et d''impôt sont fournis : on vous évalue sur le mécanisme.
- Le règlement des études de votre établissement fixe crédits et compensations.

## Exercices pratiques

- Exercice 1. Citez dans l''ordre les grandes étapes du calcul d''un bulletin de paie.
- Exercice 2. Expliquez la différence entre une cotisation salariale et une cotisation patronale.
- Exercice 3. Un salaire brut de 400 000 FCFA supporte 32 000 FCFA de cotisations salariales et 25 000 FCFA de retenue fiscale (montants fictifs). Un acompte de 60 000 FCFA a été versé. Calculez le net à payer.
- Exercice 4. Dans un recrutement, 120 candidatures ont été reçues, 24 candidats convoqués à un entretien, 6 en second entretien et 2 embauchés. Calculez le taux de transformation entre chaque étape et le taux global.
- Exercice 5 (cas pratique). Mariama, étudiante en L2, a un stage de 4 semaines qui chevauche les semaines 2 à 5 de son plan de révision. Adaptez son plan.

## Corrigé

Exercice 1. Salaire de base ; ajout des primes, indemnités, heures supplémentaires et avantages en nature pour obtenir le brut ; calcul des cotisations salariales ; calcul de la retenue fiscale selon la base et le barème fournis ; net = brut − cotisations salariales − retenues fiscales ; net à payer = net − acomptes et autres retenues ; calcul des charges patronales et du coût employeur.

Exercice 2. La cotisation salariale est retenue sur le salaire brut : elle diminue ce que reçoit le salarié. La cotisation patronale est payée par l''employeur en plus du brut : elle augmente le coût du travail sans figurer dans le net du salarié.

Exercice 3. Net = 400 000 − 32 000 − 25 000 = 343 000 FCFA. Net à payer = 343 000 − 60 000 = 283 000 FCFA.

Exercice 4. Candidatures vers premier entretien : 24 / 120 = 20 %. Premier vers second entretien : 6 / 24 = 25 %. Second entretien vers embauche : 2 / 6 ≈ 33,3 %. Taux global : 2 / 120 ≈ 1,7 %.

Exercice 5. Mariama conserve le principe du plan mais réduit le volume quotidien pendant le stage : une heure par jour en semaine, consacrée à la récupération active sur ses fiches, et des séances de 3 heures le samedi et le dimanche pour les bulletins de paie et les cas. Elle utilise son stage comme ressource : observer comment l''entreprise organise l''accueil, consulter (avec autorisation et en respectant la confidentialité) un modèle de bulletin anonymisé. La semaine 6, libérée, est entièrement consacrée au sujet type et aux points faibles.', 'texte', 45, true, 10
from public.courses c where c.slug = 'lic-rh-l2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Réussir ses examens de Licence 2 en ressources humaines');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Recrutement et intégration : l''essentiel pour l''examen', '## Objectifs de la leçon

- Maîtriser les étapes du processus de recrutement, de l''expression du besoin à la décision.
- Construire une fiche de poste, un profil et une grille d''évaluation pondérée.
- Calculer les indicateurs de recrutement (taux de transformation, coût par recrutement).
- Organiser l''intégration d''un nouveau salarié.

## Fiche 1 : le processus de recrutement

Recruter, c''est rechercher et sélectionner la personne dont les compétences, le potentiel et la motivation correspondent à un poste, pour un coût raisonnable et dans le respect du droit.

Schéma décrit en texte : une chaîne de sept maillons.

- 1. Analyse du besoin : s''agit-il d''un remplacement, d''une création de poste, d''un besoin temporaire ? Peut-on y répondre autrement (réorganisation, heures supplémentaires, mobilité interne) ?
- 2. Définition du poste et du profil : fiche de poste (missions, activités, rattachement, conditions) et profil (diplôme, expérience, compétences, qualités).
- 3. Recherche de candidats (sourcing) : interne ou externe.
- 4. Présélection : tri des candidatures sur des critères annoncés.
- 5. Sélection : tests, entretiens, mises en situation, vérification des références.
- 6. Décision et proposition : choix argumenté, offre, contrat.
- 7. Accueil et intégration, jusqu''à la fin de la période d''essai.

## Fiche 2 : fiche de poste et profil

La fiche de poste décrit le poste, pas la personne : intitulé, service, supérieur hiérarchique, finalité, activités principales, relations, conditions de travail, indicateurs de performance.

Le profil décrit la personne recherchée : formation, expérience, compétences techniques et comportementales, langues. Distinguez critères indispensables et critères souhaitables.

Exemple : la société fictive Niayes Maraîchage, à Pikine, recrute un chef de culture. Indispensable : formation agricole de niveau technicien, trois ans d''expérience en maraîchage. Souhaitable : maîtrise de l''irrigation goutte-à-goutte, pratique du wolof et du français, permis de conduire.

## Fiche 3 : le sourcing

Recrutement interne : promotion, mutation. Avantages : rapidité, coût faible, motivation du personnel, connaissance de l''entreprise. Limites : peu de sang neuf, poste à remplacer derrière.

Recrutement externe : annonces sur sites d''emploi et réseaux sociaux professionnels, presse, écoles et universités, cabinets de recrutement, cooptation (recommandation par un salarié), candidatures spontanées, services publics de l''emploi. La cooptation est très pratiquée en Afrique de l''Ouest : elle est rapide et rassurante, mais elle comporte un risque de favoritisme et de reproduction des mêmes profils. Une bonne pratique consiste à soumettre les candidats cooptés aux mêmes épreuves que les autres.

Principe juridique transversal : le recrutement doit être non discriminatoire. Les critères doivent être liés au poste ; les questions sur la religion, l''appartenance ethnique, les opinions, la grossesse ou la situation familiale sont à proscrire.

## Fiche 4 : la sélection et la grille pondérée

L''entretien structuré, avec les mêmes questions pour tous et une grille de notation, est plus fiable que l''entretien libre. Les questions comportementales (« Racontez une situation où vous avez dû… ») font parler de faits réels.

La grille pondérée permet de comparer objectivement les candidats. Méthode : définir les critères, leur attribuer un poids dont la somme fait 100 %, noter chaque candidat sur une même échelle, calculer la note pondérée = somme des (poids × note).

Exemple chiffré pour le chef de culture, notes sur 5 :

- Critères et poids : compétences techniques 40 %, expérience 25 %, savoir-être 20 %, motivation 15 %.
- Candidat A : 4, 3, 4, 3. Note = 0,40 × 4 + 0,25 × 3 + 0,20 × 4 + 0,15 × 3 = 1,60 + 0,75 + 0,80 + 0,45 = 3,60.
- Candidat B : 3, 5, 3, 4. Note = 1,20 + 1,25 + 0,60 + 0,60 = 3,65.
- Candidat C : 5, 2, 4, 4. Note = 2,00 + 0,50 + 0,80 + 0,60 = 3,90.

Le candidat C arrive en tête grâce au critère le plus pondéré. La grille aide la décision sans la remplacer : vérifiez aussi les références.

## Fiche 5 : les indicateurs de recrutement

- Taux de transformation d''une étape = candidats retenus à l''étape suivante / candidats de l''étape × 100.
- Coût par recrutement = coûts totaux du recrutement / nombre de personnes recrutées.
- Délai de recrutement = nombre de jours entre l''expression du besoin et l''arrivée du salarié.
- Taux de départ pendant la période d''essai : mesure la qualité du recrutement et de l''intégration.

Exemple : Niayes Maraîchage a dépensé 150 000 FCFA d''annonces, 90 000 FCFA de tests, 60 000 FCFA de frais de déplacement des candidats, et ses responsables ont consacré 20 heures valorisées à 5 000 FCFA l''heure. Coût total = 150 000 + 90 000 + 60 000 + 20 × 5 000 = 400 000 FCFA. Pour 2 recrutements, le coût par recrutement est de 200 000 FCFA.

## Fiche 6 : l''intégration

L''intégration (ou onboarding) vise à rendre le nouveau salarié vite opérationnel et à lui donner envie de rester. Elle commence avant l''arrivée et dure jusqu''à la fin de la période d''essai.

Outils : livret d''accueil (histoire, organisation, règles, contacts), journée d''accueil, parrainage par un salarié expérimenté, plan de formation au poste, entretiens de suivi (fin de première semaine, fin de premier mois, avant la fin de l''essai), rapport d''étonnement (le nouveau note ce qui le surprend, ce qui est un regard neuf précieux pour l''entreprise).

## Points clés

- Sept étapes, de l''analyse du besoin à l''intégration.
- Fiche de poste = le poste ; profil = la personne ; critères indispensables et souhaitables.
- Grille pondérée : somme des poids × notes.
- Le recrutement se termine à la fin réussie de l''essai.

## Exercices pratiques

- Exercice 1. Distinguez fiche de poste et profil de poste.
- Exercice 2. Donnez deux avantages et deux limites du recrutement interne.
- Exercice 3. Pondérations : compétences 50 %, expérience 30 %, savoir-être 20 %. Candidat D : 3, 4, 5 ; candidat E : 4, 3, 3 (notes sur 5). Calculez les notes pondérées et classez.
- Exercice 4. Un recrutement a coûté 300 000 FCFA d''annonces, 150 000 FCFA de cabinet, et 30 heures de travail interne valorisées à 6 000 FCFA. Trois personnes ont été recrutées. Calculez le coût par recrutement.
- Exercice 5. Parmi ces questions d''entretien, lesquelles sont à proscrire : a) « Quelle est votre religion ? » ; b) « Décrivez un conflit que vous avez résolu » ; c) « Comptez-vous avoir des enfants bientôt ? » ; d) « Pourquoi ce poste vous intéresse-t-il ? »
- Exercice 6 (cas pratique). Sahel Pharma Distribution, société fictive de Dakar, a perdu 4 des 10 délégués commerciaux recrutés l''an dernier avant la fin de leur période d''essai. Diagnostiquez les causes possibles et proposez un plan d''action.

## Corrigé

Exercice 1. La fiche de poste décrit le poste (missions, activités, rattachement, conditions). Le profil décrit la personne recherchée (formation, expérience, compétences, qualités).

Exercice 2. Avantages : rapidité, faible coût, motivation. Limites : peu d''idées nouvelles, poste libéré à pourvoir.

Exercice 3. D = 0,5 × 3 + 0,3 × 4 + 0,2 × 5 = 1,5 + 1,2 + 1,0 = 3,7. E = 0,5 × 4 + 0,3 × 3 + 0,2 × 3 = 2,0 + 0,9 + 0,6 = 3,5. Classement : D puis E.

Exercice 4. Coût total = 300 000 + 150 000 + 30 × 6 000 = 630 000 FCFA. Coût par recrutement = 630 000 / 3 = 210 000 FCFA.

Exercice 5. À proscrire : a) et c), discriminatoires et sans lien avec le poste. Les questions b) et d) sont pertinentes.

Exercice 6. Taux de départ en période d''essai : 4 / 10 = 40 %, très élevé. Causes possibles : profil mal défini (objectifs commerciaux irréalistes), sélection insuffisante (pas de mise en situation de vente), promesses excessives à l''embauche, intégration absente (pas de formation aux produits, pas de parrain), management de terrain défaillant. Plan d''action : 1) mener des entretiens de départ et interroger les managers ; 2) revoir la fiche de poste et le profil avec les ventes ; 3) introduire une mise en situation et une grille pondérée ; 4) créer un parcours d''intégration : formation produits, parrainage par un délégué expérimenté, entretiens de suivi à une semaine et un mois ; 5) suivre l''indicateur de départ pendant l''essai à chaque promotion de recrues.', 'texte', 60, false, 20
from public.courses c where c.slug = 'lic-rh-l2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Recrutement et intégration : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Gestion de la paie et administration du personnel : l''essentiel pour l''examen', '## Objectifs de la leçon

- Connaître les obligations d''administration du personnel.
- Établir un bulletin de paie complet, du salaire de base au net à payer, en appliquant des taux et plafonds donnés.
- Calculer les charges patronales et le coût employeur.
- Passer l''écriture de paie (SYSCOHADA révisé).

## Avertissement

Les taux, plafonds et montants de retenue fiscale de cette leçon sont fictifs pour l''exemple. Au Sénégal, les cotisations sont dues notamment à la Caisse de sécurité sociale (prestations familiales, accidents du travail et maladies professionnelles), à l''IPRES (retraite, avec un régime complémentaire pour les cadres) et aux institutions de prévoyance maladie ; l''employeur retient aussi l''impôt sur le revenu et la TRIMF. Les taux, plafonds et barèmes officiels évoluent : vérifiez toujours les textes en vigueur. À l''examen, ils sont fournis par l''énoncé.

## Fiche 1 : l''administration du personnel

L''administration du personnel regroupe les tâches qui permettent de respecter les obligations envers les salariés et les organismes :

- À l''embauche : contrat écrit, déclaration aux services compétents, immatriculation du salarié auprès des caisses, ouverture du dossier individuel.
- Pendant le contrat : registre d''employeur, absences et congés, bulletins et livre de paie, déclarations et versements périodiques des cotisations et impôts retenus, visites médicales.
- À la sortie : certificat de travail, solde de tout compte, attestations, archivage.

## Fiche 2 : l''ordre de calcul du bulletin

Schéma décrit en texte : un escalier qui descend du brut au net, puis une marche qui remonte vers le coût employeur.

- 1. Salaire de base (selon le contrat et la catégorie conventionnelle).
- 2. + éléments soumis : primes (ancienneté, rendement), heures supplémentaires, indemnités imposables, avantages en nature. On obtient le salaire brut.
- 3. − cotisations salariales, calculées sur le brut dans la limite d''éventuels plafonds.
- 4. − retenues fiscales (impôt sur le revenu, TRIMF), calculées selon le barème et la situation familiale du salarié.
- 5. = salaire net ; puis − acomptes et avances, + éléments non soumis éventuels = net à payer.
- 6. Côté employeur : brut + cotisations patronales (+ contributions assises sur les salaires) = coût employeur.

Un plafond limite l''assiette d''une cotisation. Exemple : taux de retraite salarial de 5 %, plafond mensuel de 400 000 FCFA (fictifs). Pour un brut de 335 000 FCFA, la cotisation est 335 000 × 5 % = 16 750 FCFA. Pour un brut de 500 000 FCFA, elle est 400 000 × 5 % = 20 000 FCFA, et non 25 000.

## Fiche 3 : un bulletin complet

Situation : Aïssatou, comptable non cadre chez Saloum Emballages, entreprise fictive de Kaolack. Salaire de base 300 000 FCFA ; prime d''ancienneté 15 000 FCFA ; heures supplémentaires du mois 20 000 FCFA ; acompte versé le 15 : 50 000 FCFA.

Taux fictifs pour l''exemple : retraite salariale 5 % (plafond 400 000), retraite patronale 7,5 % (même plafond), maladie 3 % salarié et 3 % employeur, prestations familiales 6 % employeur, accidents du travail 3 % employeur, contribution patronale forfaitaire sur salaires 3 %. Retenue fiscale du mois selon barème : 18 000 FCFA (montant fictif).

- Salaire brut = 300 000 + 15 000 + 20 000 = 335 000 FCFA.
- Retraite salariale = 335 000 × 5 % = 16 750 FCFA.
- Maladie salariale = 335 000 × 3 % = 10 050 FCFA.
- Total des cotisations salariales = 26 800 FCFA.
- Retenue fiscale = 18 000 FCFA.
- Salaire net = 335 000 − 26 800 − 18 000 = 290 200 FCFA.
- Net à payer = 290 200 − 50 000 = 240 200 FCFA.

Charges patronales :

- Retraite = 335 000 × 7,5 % = 25 125 FCFA.
- Maladie = 10 050 FCFA ; prestations familiales = 20 100 FCFA ; accidents du travail = 10 050 FCFA.
- Contribution forfaitaire = 10 050 FCFA.
- Total = 75 375 FCFA. Coût employeur = 335 000 + 75 375 = 410 375 FCFA.

## Fiche 4 : l''écriture comptable de la paie (SYSCOHADA révisé)

Écriture 1, constatation des salaires :

- Débit 661 Rémunérations directes versées au personnel national : 335 000.
- Crédit 432 Caisses de retraite : 16 750.
- Crédit 433 Autres organismes sociaux (prévoyance maladie) : 10 050.
- Crédit 447 État, impôts retenus à la source : 18 000.
- Crédit 421 Personnel, avances et acomptes : 50 000.
- Crédit 422 Personnel, rémunérations dues : 240 200.

Total débit 335 000 = total crédit 335 000.

Écriture 2, charges patronales :

- Débit 664 Charges sociales : 65 325 (retraite 25 125 + maladie 10 050 + prestations familiales 20 100 + accidents du travail 10 050).
- Débit 641 Impôts et taxes directs : 10 050 (contribution forfaitaire).
- Crédit 431 Sécurité sociale : 30 150 (prestations familiales et accidents du travail).
- Crédit 432 Caisses de retraite : 25 125.
- Crédit 433 Autres organismes sociaux : 10 050.
- Crédit 442 État, autres impôts et taxes : 10 050.

Total débit 75 375 = total crédit 75 375 (subdivisions à adapter à votre cours).

## Points clés

- Brut − cotisations salariales − retenue fiscale = net ; net − acomptes = net à payer.
- Coût employeur = brut + charges patronales.
- Vérifier les plafonds avant chaque cotisation.
- Écriture de paie : le brut se répartit entre organismes, État, acomptes et net dû.

## Exercices pratiques

- Exercice 1. Citez trois documents à remettre ou établir à la sortie d''un salarié.
- Exercice 2. Brut 520 000 FCFA, retraite salariale 5 % plafonnée à 400 000 FCFA, maladie 3 % sans plafond (taux fictifs). Calculez les cotisations salariales.
- Exercice 3. Avec les cotisations de l''exercice 2, une retenue fiscale de 41 000 FCFA (fictive) et un acompte de 100 000 FCFA, calculez le net et le net à payer.
- Exercice 4. Pour le même salarié, charges patronales fictives : retraite 7,5 % plafonnée à 400 000 FCFA, maladie 3 %, prestations familiales 6 %, accidents du travail 3 %, contribution forfaitaire 3 %. Calculez le coût employeur.
- Exercice 5. Passez l''écriture de constatation des salaires de l''exercice 3.
- Exercice 6 (cas pratique). Moussa, cadre : brut 950 000 FCFA. Taux fictifs : retraite générale 5 % plafonnée à 400 000 FCFA ; retraite complémentaire cadre 2,4 % plafonnée à 1 200 000 FCFA ; maladie 3 %. Retenue fiscale fictive : 120 000 FCFA. Calculez son net. Il conteste : « On me prélève plus de retraite qu''à mes collègues non cadres. » Que lui répondez-vous ?

## Corrigé

Exercice 1. Certificat de travail, solde de tout compte, attestations destinées aux organismes sociaux.

Exercice 2. Retraite = 400 000 × 5 % = 20 000 FCFA (plafond appliqué). Maladie = 520 000 × 3 % = 15 600 FCFA. Total = 35 600 FCFA.

Exercice 3. Net = 520 000 − 35 600 − 41 000 = 443 400 FCFA. Net à payer = 443 400 − 100 000 = 343 400 FCFA.

Exercice 4. Retraite = 400 000 × 7,5 % = 30 000 ; maladie = 15 600 ; prestations familiales = 31 200 ; accidents du travail = 15 600 ; contribution forfaitaire = 15 600. Total = 108 000 FCFA. Coût employeur = 520 000 + 108 000 = 628 000 FCFA.

Exercice 5. Débit 661 : 520 000. Crédit 432 : 20 000 ; crédit 433 : 15 600 ; crédit 447 : 41 000 ; crédit 421 : 100 000 ; crédit 422 : 343 400. Total crédit = 520 000, l''écriture est équilibrée.

Exercice 6. Retraite générale = 400 000 × 5 % = 20 000 ; retraite cadre = 950 000 × 2,4 % = 22 800 ; maladie = 950 000 × 3 % = 28 500 ; total = 71 300 FCFA. Net = 950 000 − 71 300 − 120 000 = 758 700 FCFA. Réponse : en tant que cadre, Moussa cotise en plus à un régime de retraite complémentaire réservé aux cadres, qui lui ouvrira des droits à une pension complémentaire. Ce n''est pas une erreur, sous réserve que les taux et plafonds appliqués soient ceux en vigueur.', 'texte', 60, false, 30
from public.courses c where c.slug = 'lic-rh-l2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Gestion de la paie et administration du personnel : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Formation et gestion des compétences : l''essentiel pour l''examen', '## Objectifs de la leçon

- Définir la compétence et construire un référentiel et une matrice de compétences.
- Conduire l''analyse des besoins de formation et élaborer un plan de formation.
- Calculer un budget, des indicateurs de formation et un retour sur investissement simple.
- Évaluer une formation selon les quatre niveaux de Kirkpatrick.

## Fiche 1 : la compétence

Une compétence est la capacité à mobiliser, dans une situation de travail donnée, un ensemble de ressources (savoirs, savoir-faire, savoir-être) pour obtenir un résultat attendu. Elle est contextualisée (elle se voit dans l''action), évolutive (elle se développe ou se perd) et évaluable (on peut l''observer).

- Savoirs : connaissances théoriques (règles d''hygiène, notions de comptabilité).
- Savoir-faire : pratiques maîtrisées (conduire un chariot élévateur, établir un bulletin de paie).
- Savoir-être : comportements professionnels (rigueur, sens du service, travail en équipe).

On distingue aussi les compétences techniques, propres à un métier, et les compétences transversales, utiles dans plusieurs métiers (communication, organisation, usage du numérique).

## Fiche 2 : référentiel et matrice de compétences

Le référentiel de compétences liste, pour un emploi, les compétences requises et le niveau attendu pour chacune. Une échelle courante comporte quatre niveaux : 1 notions, 2 application avec aide, 3 maîtrise autonome, 4 expertise (capable de former les autres).

La matrice de compétences (ou de polyvalence), décrite en texte : un tableau avec les salariés en lignes, les compétences en colonnes, et dans chaque case le niveau actuel. On y repère les écarts entre niveau requis et niveau détenu, les compétences rares (une seule personne au niveau 3) et les possibilités de polyvalence.

Exemple : à l''atelier de conditionnement d''Atlantic Pêche, entreprise fictive de Mbour, seule une opératrice maîtrise le réglage de la machine de mise sous vide (niveau 3). Si elle est absente, la production s''arrête : c''est une compétence critique à transmettre en priorité.

## Fiche 3 : l''analyse des besoins de formation

Un besoin de formation est un écart entre les compétences requises et les compétences détenues, qu''une formation peut réduire. Attention : tous les écarts ne relèvent pas de la formation (un problème de matériel, d''organisation ou de motivation ne se règle pas en formant).

Sources des besoins :

- La stratégie : nouveau produit, nouvelle machine, nouveau logiciel, exigences de clients ou de normes.
- Les entretiens annuels et professionnels, qui recueillent les besoins exprimés par les salariés et leurs managers.
- Les indicateurs de dysfonctionnement : accidents, rebuts, réclamations clients.
- Les obligations réglementaires : sécurité, hygiène.

## Fiche 4 : le plan de formation et l''ingénierie

Le plan de formation rassemble les actions retenues pour une période, généralement l''année : objectif, public, durée, modalité (interne, externe, en situation de travail, à distance), prestataire, coût, calendrier, priorité. Il est arbitré par la direction en fonction du budget et présenté pour information ou consultation aux représentants du personnel selon les règles applicables. Au Sénégal, le Fonds de financement de la formation professionnelle et technique (3FPT) peut, selon ses dispositifs et conditions, contribuer au financement de certaines formations : renseignez-vous sur les modalités en vigueur.

L''ingénierie de formation suit un cycle : analyser le besoin, concevoir le dispositif (objectifs pédagogiques, contenus, méthodes), réaliser, évaluer, puis ajuster. Un objectif pédagogique bien formulé commence par un verbe d''action observable : « À l''issue de la formation, l''opératrice sera capable de régler la machine en moins de 15 minutes sans aide. »

## Fiche 5 : budget et indicateurs, exemple chiffré

Atlantic Pêche (150 salariés, masse salariale annuelle de 900 000 000 FCFA) retient trois actions :

- A, sécurité à bord : 40 marins, 14 heures, coût 2 800 000 FCFA.
- B, hygiène et maîtrise des risques sanitaires : 30 opératrices, 21 heures, coût 3 150 000 FCFA.
- C, management d''équipe : 10 chefs d''équipe, 35 heures, coût 4 200 000 FCFA.

Calculs (chaque salarié ne suit qu''une action) :

- Coût total = 2 800 000 + 3 150 000 + 4 200 000 = 10 150 000 FCFA.
- Heures-stagiaires = 40 × 14 + 30 × 21 + 10 × 35 = 560 + 630 + 350 = 1 540 heures.
- Coût par heure-stagiaire : A = 2 800 000 / 560 = 5 000 FCFA ; B = 3 150 000 / 630 = 5 000 FCFA ; C = 4 200 000 / 350 = 12 000 FCFA.
- Taux d''accès à la formation = 80 / 150 × 100 ≈ 53,3 %.
- Effort de formation = 10 150 000 / 900 000 000 × 100 ≈ 1,13 % de la masse salariale.

Retour sur investissement de l''action B : les pertes liées aux produits non conformes passent de 12 000 000 à 7 000 000 FCFA par an, soit un gain de 5 000 000 FCFA. ROI = (gain − coût) / coût × 100 = (5 000 000 − 3 150 000) / 3 150 000 × 100 ≈ 58,7 %. Prudence : il faut s''assurer que la baisse des pertes est bien due à la formation et non à un autre facteur (nouveau matériel, changement de fournisseur).

## Fiche 6 : évaluer une formation, les quatre niveaux de Kirkpatrick

- Niveau 1, réaction : les participants sont-ils satisfaits ? (questionnaire à chaud)
- Niveau 2, apprentissage : ont-ils acquis les connaissances et savoir-faire ? (test, mise en situation)
- Niveau 3, comportement : appliquent-ils ces acquis au travail ? (observation par le manager quelques semaines plus tard)
- Niveau 4, résultats : quel impact sur les indicateurs de l''entreprise ? (accidents, rebuts, ventes)

Plus on monte, plus l''évaluation est utile, et plus elle est difficile à mener.

## Points clés

- Compétence = savoirs + savoir-faire + savoir-être mobilisés en situation.
- Référentiel (requis) + matrice (détenu) = écarts.
- Tout écart ne se règle pas par la formation.
- Indicateurs : taux d''accès, heures par salarié, coût par heure-stagiaire, effort de formation, ROI.

## Exercices pratiques

- Exercice 1. Classez en savoir, savoir-faire ou savoir-être : connaître les règles d''hygiène ; accueillir un client avec courtoisie ; utiliser un tableur.
- Exercice 2. Reformulez en objectif pédagogique : « former les caissières au nouveau logiciel ».
- Exercice 3. Une formation de 18 heures pour 12 personnes coûte 1 728 000 FCFA. Calculez le coût par heure-stagiaire.
- Exercice 4. Entreprise de 240 salariés, 96 salariés formés, masse salariale de 1 200 000 000 FCFA, budget de formation de 15 000 000 FCFA. Calculez le taux d''accès et l''effort de formation.
- Exercice 5. Une formation de 2 000 000 FCFA permet d''économiser 2 600 000 FCFA par an. Calculez le ROI sur un an.
- Exercice 6 (cas pratique). Dans une agence fictive de transfert d''argent à Touba, les erreurs de saisie se multiplient depuis l''arrivée d''un nouveau logiciel. La directrice veut « envoyer tout le monde en formation ». Que lui conseillez-vous ?

## Corrigé

Exercice 1. Connaître les règles d''hygiène : savoir. Accueillir un client avec courtoisie : savoir-être. Utiliser un tableur : savoir-faire.

Exercice 2. « À l''issue de la formation, chaque caissière sera capable d''enregistrer une vente, un retour et une remise dans le nouveau logiciel, sans erreur et sans aide. »

Exercice 3. Heures-stagiaires = 18 × 12 = 216. Coût = 1 728 000 / 216 = 8 000 FCFA par heure-stagiaire.

Exercice 4. Taux d''accès = 96 / 240 × 100 = 40 %. Effort de formation = 15 000 000 / 1 200 000 000 × 100 = 1,25 %.

Exercice 5. ROI = (2 600 000 − 2 000 000) / 2 000 000 × 100 = 30 %.

Exercice 6. D''abord diagnostiquer : relever les erreurs (types, agents, moments), interroger les agents, vérifier le paramétrage du logiciel et l''ergonomie des écrans. Si l''écart est bien un manque de compétences, cibler la formation sur les agents et les opérations concernés, avec des objectifs mesurables, une formation pratique sur le logiciel, un agent référent formé au niveau 4 pour assister les autres, puis une évaluation aux niveaux 2 (test), 3 (observation après un mois) et 4 (nombre d''erreurs). Si le problème vient du logiciel ou de la charge de travail, la formation ne suffira pas.', 'texte', 60, false, 40
from public.courses c where c.slug = 'lic-rh-l2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Formation et gestion des compétences : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Sujet type d''examen de Licence 2 RH (entraînement, corrigé détaillé)', '## Présentation du sujet

Sujet d''entraînement multi-matières de Licence 2 RH. Ce n''est pas un sujet officiel. Durée conseillée : 3 heures. Barème indicatif, non officiel : 20 points. Calculatrice autorisée. Tous les taux, plafonds et montants de retenue fiscale sont fictifs pour l''exemple.

Contexte commun : Casamance Fruits, entreprise fictive de transformation de fruits implantée à Ziguinchor, 200 salariés, masse salariale annuelle de 1 000 000 000 FCFA. Elle lance une ligne de jus en bouteille et doit recruter deux techniciens de maintenance, gérer la paie de nouveaux profils et former ses équipes.

## Dossier 1 : Recrutement et intégration (6 points)

La DRH a retenu la grille suivante pour le poste de technicien de maintenance : compétences techniques 35 %, expérience 25 %, relationnel 25 %, langues 15 %. Deux finalistes, notés sur 5 : Pape (4, 4, 3, 5) et Seynabou (5, 3, 4, 3). Le recrutement a coûté : cabinet 1 200 000 FCFA, annonces 200 000 FCFA, 25 heures de travail interne valorisées à 8 000 FCFA. Deux techniciens seront finalement recrutés.

- 1.1 Calculez la note pondérée de chaque finaliste et commentez. (2 points)
- 1.2 Calculez le coût par recrutement. (1 point)
- 1.3 Proposez un parcours d''intégration de trois mois pour les deux techniciens. (3 points)

## Dossier 2 : Paie et administration du personnel (8 points)

Ndèye, technicienne non cadre, a pour le mois de mars : salaire de base 380 000 FCFA ; prime de rendement 40 000 FCFA ; heures supplémentaires 25 000 FCFA ; acompte versé 80 000 FCFA. Taux fictifs : retraite salariale 5 % et patronale 7,5 %, plafond 400 000 FCFA ; maladie 3 % salarié et 3 % employeur ; prestations familiales 6 % ; accidents du travail 3 % ; contribution forfaitaire employeur 3 % ; ces quatre dernières sans plafond. Retenue fiscale selon barème : 30 000 FCFA.

- 2.1 Établissez le bulletin : brut, cotisations salariales, net, net à payer. (3 points)
- 2.2 Calculez les charges patronales et le coût employeur. (2 points)
- 2.3 Passez l''écriture de constatation des salaires (SYSCOHADA révisé). (2 points)
- 2.4 Citez deux obligations administratives liées à l''embauche des nouveaux techniciens. (1 point)

## Dossier 3 : Formation et gestion des compétences (6 points)

Deux actions sont prévues : action 1, hygiène alimentaire pour 25 opérateurs, 16 heures, 2 400 000 FCFA ; action 2, maintenance de la nouvelle ligne pour 15 techniciens, 24 heures, 2 880 000 FCFA. Chaque salarié suit une seule action.

- 3.1 Calculez le coût total, les heures-stagiaires, le coût par heure-stagiaire de chaque action, le taux d''accès et l''effort de formation. (3 points)
- 3.2 Proposez un dispositif d''évaluation de l''action 2 selon les quatre niveaux de Kirkpatrick. (3 points)

## Corrigé détaillé

1.1 Pape = 0,35 × 4 + 0,25 × 4 + 0,25 × 3 + 0,15 × 5 = 1,40 + 1,00 + 0,75 + 0,75 = 3,90. Seynabou = 0,35 × 5 + 0,25 × 3 + 0,25 × 4 + 0,15 × 3 = 1,75 + 0,75 + 1,00 + 0,45 = 3,95. Seynabou devance très légèrement Pape. L''écart (0,05) est trop faible pour trancher mécaniquement : on vérifie les références, on peut organiser une mise en situation technique ; comme deux postes sont ouverts, les deux peuvent d''ailleurs être recrutés s''ils satisfont tous les critères indispensables.

1.2 Coût total = 1 200 000 + 200 000 + 25 × 8 000 = 1 600 000 FCFA. Coût par recrutement = 1 600 000 / 2 = 800 000 FCFA.

1.3 Avant l''arrivée : poste et outillage prêts, équipements de protection, annonce à l''équipe, désignation d''un parrain. Semaine 1 : accueil, livret d''accueil, visite du site, règles de sécurité et d''hygiène, présentation de la ligne. Mois 1 : formation au poste avec le parrain, interventions en binôme, entretien de suivi en fin de mois. Mois 2 : autonomie progressive sur les interventions courantes, formation de maintenance (action 2). Mois 3 : rapport d''étonnement, évaluation des compétences par le responsable maintenance, entretien de fin de période d''essai et décision de confirmation. Barème : 1 point pour la chronologie, 1 point pour les outils, 1 point pour le suivi et l''évaluation.

2.1 Brut = 380 000 + 40 000 + 25 000 = 445 000 FCFA. Retraite = 400 000 × 5 % = 20 000 (plafond). Maladie = 445 000 × 3 % = 13 350. Total salarial = 33 350 FCFA. Net = 445 000 − 33 350 − 30 000 = 381 650 FCFA. Net à payer = 381 650 − 80 000 = 301 650 FCFA.

2.2 Retraite patronale = 400 000 × 7,5 % = 30 000 ; maladie = 13 350 ; prestations familiales = 445 000 × 6 % = 26 700 ; accidents du travail = 13 350 ; contribution forfaitaire = 13 350. Total = 96 750 FCFA. Coût employeur = 445 000 + 96 750 = 541 750 FCFA.

2.3 Débit 661 Rémunérations directes versées au personnel national : 445 000. Crédit 432 Caisses de retraite : 20 000 ; crédit 433 Autres organismes sociaux : 13 350 ; crédit 447 État, impôts retenus à la source : 30 000 ; crédit 421 Personnel, avances et acomptes : 80 000 ; crédit 422 Personnel, rémunérations dues : 301 650. Total crédit = 445 000 : équilibre vérifié.

2.4 Contrat de travail écrit, déclaration d''embauche aux services compétents, immatriculation auprès des organismes sociaux, ouverture du dossier individuel, inscription au registre d''employeur (deux réponses suffisent).

3.1 Coût total = 2 400 000 + 2 880 000 = 5 280 000 FCFA. Heures-stagiaires : 25 × 16 = 400 ; 15 × 24 = 360 ; total 760. Coût par heure-stagiaire : action 1 = 2 400 000 / 400 = 6 000 FCFA ; action 2 = 2 880 000 / 360 = 8 000 FCFA. Taux d''accès = 40 / 200 × 100 = 20 %. Effort de formation = 5 280 000 / 1 000 000 000 × 100 = 0,528 %.

3.2 Niveau 1 : questionnaire de satisfaction en fin de session (contenu, formateur, organisation). Niveau 2 : test pratique de diagnostic d''une panne simulée sur la ligne, avec grille de notation. Niveau 3 : après six semaines, observation des interventions par le responsable maintenance et revue des fiches d''intervention. Niveau 4 : suivi des indicateurs de la ligne (taux d''arrêt, durée moyenne de réparation) sur trois à six mois, comparés à l''objectif. Barème : 0,75 point par niveau correctement décrit.

## Exercices pratiques

- Exercice 1. Un brut de 380 000 FCFA est soumis à une retraite salariale de 5 % plafonnée à 400 000 FCFA : montant ?
- Exercice 2. Quel compte crédite-t-on pour un acompte versé au salarié et récupéré sur la paie ?
- Exercice 3. Citez deux outils d''intégration.
- Exercice 4. Différence entre taux d''accès et effort de formation ?
- Exercice 5. Une formation coûte 1 500 000 FCFA et génère 1 950 000 FCFA d''économies par an : ROI ?

## Corrigé

Exercice 1. Le brut est sous le plafond : 380 000 × 5 % = 19 000 FCFA.

Exercice 2. Le compte 421 Personnel, avances et acomptes.

Exercice 3. Le parrainage et le livret d''accueil (ou le rapport d''étonnement, les entretiens de suivi).

Exercice 4. Le taux d''accès mesure la part des salariés formés dans l''effectif ; l''effort de formation mesure la part des dépenses de formation dans la masse salariale.

Exercice 5. ROI = (1 950 000 − 1 500 000) / 1 500 000 × 100 = 30 %.', 'texte', 60, false, 50
from public.courses c where c.slug = 'lic-rh-l2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Sujet type d''examen de Licence 2 RH (entraînement, corrigé détaillé)');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Recrutement et intégration', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : étudiants de Licence 2 en ressources humaines et en gestion.
- Objectifs : maîtriser les sept étapes du recrutement, rédiger une fiche de poste et un profil, construire et utiliser une grille d''évaluation pondérée, calculer les indicateurs de recrutement, concevoir un parcours d''intégration.
- Matériel : diaporama (chaîne du recrutement, modèle de fiche de poste, grille pondérée, tableau des indicateurs), tableau blanc, calculatrice, modèle de grille vierge à distribuer.
- Prérequis : leçon « Recrutement et intégration : l''essentiel pour l''examen » ; notions de L1 sur le contrat de travail et la période d''essai.

## Déroulé minuté

## 00:00 – 05:00 · Pourquoi le recrutement est une décision d''investissement

Bonjour à toutes et à tous. Je vous pose une question pour démarrer : combien coûte une erreur de recrutement ? Pensez au salaire versé pendant des mois sans résultat, au temps que le manager passe à corriger les erreurs, au climat de l''équipe, puis au coût d''un nouveau recrutement. Recruter, c''est investir. Aujourd''hui, nous allons dérouler le processus complet, avec ses outils et ses calculs, comme vous devrez le faire dans un cas d''examen. Les entreprises citées sont fictives.

## 05:00 – 18:00 · La chaîne du recrutement et l''analyse du besoin

Je projette la chaîne à sept maillons : analyse du besoin, définition du poste et du profil, sourcing, présélection, sélection, décision et proposition, accueil et intégration.

Le premier maillon est souvent bâclé. Avant de publier une annonce, il faut se demander : ce besoin est-il durable ou temporaire ? S''agit-il d''un remplacement à l''identique ou faut-il profiter du départ pour faire évoluer le poste ? Peut-on répondre autrement, par une réorganisation, de la polyvalence, une mobilité interne ? Exemple : chez Niayes Maraîchage, à Pikine, le chef de culture part à la retraite. Le gérant veut un remplaçant identique. Mais l''entreprise vient d''investir dans l''irrigation goutte-à-goutte : le nouveau chef de culture devra maîtriser cette technique. L''analyse du besoin change donc le profil.

Question au public : un pic d''activité de trois mois justifie-t-il un recrutement en CDI ? Réponse attendue : plutôt un CDD justifié par le surcroît d''activité, ou des heures supplémentaires encadrées, ou encore l''intérim selon les possibilités légales.

## 18:00 – 30:00 · Fiche de poste et profil

Construisons ensemble la fiche de poste du chef de culture. Intitulé. Rattachement : le gérant. Finalité : assurer la production maraîchère en quantité et en qualité. Activités : planifier les cultures, encadrer les ouvriers agricoles, piloter l''irrigation, suivre les traitements, tenir les fiches de production. Relations : fournisseurs d''intrants, acheteurs. Conditions : travail en plein air, horaires matinaux. Indicateurs : rendement par parcelle, pertes.

Puis le profil, en deux colonnes. Indispensable : formation agricole de niveau technicien, trois ans d''expérience. Souhaitable : goutte-à-goutte, permis de conduire, bilinguisme wolof-français. Rappel important : les critères doivent être liés au poste et non discriminatoires. Jamais de critère de religion, d''ethnie, de situation familiale ou de grossesse.

## 30:00 – 42:00 · Le sourcing : où trouver les candidats

Deux grandes voies. Interne : promotion, mutation ; avantages, rapidité, coût faible, motivation ; limites, pas de sang neuf et un poste à remplacer. Externe : sites d''emploi, réseaux sociaux professionnels, écoles et universités, cabinets, services publics de l''emploi, candidatures spontanées, cooptation.

Arrêtons-nous sur la cooptation, très pratiquée au Sénégal. Elle est rapide, le candidat est recommandé, on lui fait confiance. Mais elle peut favoriser les proches au détriment des plus compétents et uniformiser les profils. La bonne pratique : accepter la cooptation comme source de candidatures, mais soumettre les cooptés aux mêmes épreuves que tout le monde. C''est une excellente idée de plan pour une question de réflexion : I. un atout, II. un risque à encadrer.

Un mot aussi sur l''annonce de recrutement, qui est souvent demandée en projet. Elle doit présenter l''entreprise en deux phrases, le poste et ses missions principales, le profil avec les critères indispensables, les conditions proposées (lieu, type de contrat), et la manière de candidater avec une date limite. Rédigez-la avec des mots simples et attractifs : une annonce est aussi un outil de communication de l''image de l''employeur. Évitez toute mention discriminatoire, y compris des formules apparemment anodines comme une limite d''âge sans justification liée au poste.

## 42:00 – 47:00 · Quiz de mi-parcours

- Question 1 : quelle différence entre fiche de poste et profil ?
- Question 2 : citez deux sources de recrutement externe.
- Question 3 : vrai ou faux, on peut demander à une candidate si elle envisage une grossesse ?
- Question 4 : quel est le premier maillon de la chaîne ?

Réponses : 1) la fiche décrit le poste, le profil décrit la personne ; 2) par exemple un cabinet et une école ; 3) faux, c''est une question discriminatoire ; 4) l''analyse du besoin.

## 47:00 – 1:02:00 · La sélection et la grille pondérée : exercices corrigés

L''entretien structuré, avec les mêmes questions pour tous, est plus fiable qu''une conversation libre. Préférez les questions comportementales : « Décrivez une situation où une panne d''irrigation a menacé une récolte. Qu''avez-vous fait ? » On obtient des faits, pas des déclarations.

Pour comparer, on utilise la grille pondérée. Méthode : critères, poids totalisant 100 %, notes sur une même échelle, note pondérée égale à la somme des poids multipliés par les notes.

Exercice 1 projeté : compétences techniques 40 %, expérience 25 %, savoir-être 20 %, motivation 15 %. A : 4, 3, 4, 3. B : 3, 5, 3, 4. C : 5, 2, 4, 4. Trois minutes. Correction : A = 1,60 + 0,75 + 0,80 + 0,45 = 3,60. B = 1,20 + 1,25 + 0,60 + 0,60 = 3,65. C = 2,00 + 0,50 + 0,80 + 0,60 = 3,90. C est en tête. Commentaire : C n''a que 2 en expérience ; si l''expérience minimale de trois ans est un critère indispensable et qu''il ne la remplit pas, il est éliminé quelle que soit sa note. La grille ne remplace pas les critères éliminatoires.

Exercice 2 : poids 50 %, 30 %, 20 % ; D : 3, 4, 5 ; E : 4, 3, 3. Correction : D = 1,5 + 1,2 + 1,0 = 3,7 ; E = 2,0 + 0,9 + 0,6 = 3,5. Erreur fréquente : additionner les notes sans les pondérer, ce qui donnerait 12 contre 10, le même classement ici, mais pas toujours. Montrez toujours le calcul pondéré.

## 1:02:00 – 1:12:00 · Les indicateurs de recrutement

Quatre indicateurs. Le taux de transformation à chaque étape. Le coût par recrutement. Le délai de recrutement. Le taux de départ pendant la période d''essai.

Exercice : 120 candidatures, 24 premiers entretiens, 6 seconds entretiens, 2 embauches. Taux : 20 %, 25 %, environ 33,3 %, et global environ 1,7 %. Coûts : annonces 150 000 FCFA, tests 90 000 FCFA, déplacements 60 000 FCFA, 20 heures internes à 5 000 FCFA. Total : 400 000 FCFA, soit 200 000 FCFA par recrutement. Remarquez que le temps interne compte : l''oublier est l''erreur classique.

Interprétation : si le taux de transformation entre candidatures et entretiens est très bas, l''annonce attire des profils inadaptés ; il faut revoir sa rédaction ou le canal choisi.

## 1:12:00 – 1:22:00 · L''intégration : du premier jour à la fin de l''essai

Cas Sahel Pharma Distribution : 4 délégués commerciaux sur 10 partis pendant l''essai, soit 40 %. Le recrutement ne s''arrête pas à la signature. Concevons un parcours. Avant l''arrivée : poste, téléphone, véhicule, fichier clients prêts. Semaine 1 : accueil par le directeur commercial, livret d''accueil, formation produits. Mois 1 : tournées en binôme avec un parrain expérimenté, entretien de suivi. Mois 2 : premières tournées seul, objectifs progressifs. Fin de l''essai : rapport d''étonnement et entretien de bilan. Ajoutez un indicateur : le taux de départ pendant l''essai, suivi à chaque promotion.

Le rapport d''étonnement mérite une explication. Après quelques semaines, on demande au nouveau d''écrire ce qui l''a surpris, en bien et en mal. C''est un regard neuf, précieux pour améliorer l''organisation, à condition de lui répondre.

## 1:22:00 – 1:26:00 · Synthèse et conseils d''examen

Dans un cas de recrutement, suivez la chaîne : partez du besoin, justifiez le profil, choisissez des canaux adaptés, proposez des outils de sélection objectifs, chiffrez, et terminez par l''intégration. Respectez le droit : non-discrimination, contrat écrit, période d''essai prévue par écrit.

## 1:26:00 – 1:30:00 · Évaluation finale

- Question 1 : citez les sept étapes du recrutement.
- Question 2 : poids 60 % et 40 % ; notes 4 et 5. Note pondérée ?
- Question 3 : coût total 630 000 FCFA pour 3 recrutements. Coût par recrutement ?
- Question 4 : citez deux outils d''intégration.
- Question 5 : pourquoi les cooptés doivent-ils passer les mêmes épreuves ?

Réponses : 1) analyse du besoin, poste et profil, sourcing, présélection, sélection, décision et proposition, intégration ; 2) 0,6 × 4 + 0,4 × 5 = 4,4 ; 3) 210 000 FCFA ; 4) parrainage, livret d''accueil ; 5) pour garantir l''égalité de traitement, limiter le favoritisme et recruter sur les compétences. Bon travail.', 'video', 90, false, 60
from public.courses c where c.slug = 'lic-rh-l2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Recrutement et intégration');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Gestion de la paie et administration du personnel', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : étudiants de Licence 2 en ressources humaines, gestion et comptabilité.
- Objectifs : connaître les obligations d''administration du personnel, établir un bulletin de paie complet avec plafonds, calculer le coût employeur, passer les écritures de paie selon le SYSCOHADA révisé, traiter le cas d''un cadre.
- Matériel : diaporama (escalier du brut au net, modèle de bulletin en tableau, schéma des écritures), tableau blanc, calculatrice, modèle de bulletin vierge à distribuer.
- Prérequis : leçon « Gestion de la paie et administration du personnel : l''essentiel pour l''examen » ; calcul du taux horaire et des heures supplémentaires vu en L1.
- Avertissement : tous les taux, plafonds et montants de retenue fiscale utilisés sont fictifs pour l''exemple. Les taux officiels sont fixés par les textes et évoluent ; à l''examen, ils sont fournis.

## Déroulé minuté

## 00:00 – 05:00 · Introduction

Bonjour. La paie est la matière où l''on gagne ou perd le plus de points en L2, parce qu''elle est mécanique : si vous suivez l''ordre de calcul et vérifiez chaque ligne, vous obtenez tous les points. Si vous inversez un taux ou oubliez un plafond, l''erreur se propage jusqu''au net. Aujourd''hui, nous allons calculer ensemble, lentement, puis de plus en plus vite. Ayez votre calculatrice et le modèle de bulletin.

## 05:00 – 15:00 · L''administration du personnel en trois temps

Avant la paie, l''administration. À l''embauche : contrat écrit, déclaration aux services compétents, immatriculation auprès des organismes sociaux, ouverture du dossier individuel. Pendant le contrat : registre d''employeur, suivi des absences et congés, bulletins et livre de paie, déclarations et versements périodiques des cotisations et des impôts retenus à la Caisse de sécurité sociale, à l''IPRES, aux institutions de prévoyance maladie et à l''administration fiscale. À la sortie : certificat de travail, solde de tout compte, attestations.

Insistez sur la confidentialité : un dossier du personnel contient des données personnelles. Accès limité, armoire fermée ou logiciel protégé par des droits d''accès.

## 15:00 – 27:00 · L''ordre de calcul : l''escalier

Je projette l''escalier. Marche 1, le salaire de base. Marche 2, on ajoute les éléments soumis : primes, heures supplémentaires, indemnités imposables, avantages en nature ; on obtient le brut. Marche 3, on retire les cotisations salariales, dans la limite des plafonds. Marche 4, on retire la retenue fiscale, impôt sur le revenu et TRIMF, selon le barème et la situation familiale. On obtient le net. Marche 5, on retire les acomptes : c''est le net à payer. Enfin, on remonte de l''autre côté : brut plus charges patronales égale coût employeur.

Le plafond, maintenant. Retraite salariale 5 %, plafond 400 000 FCFA, taux fictifs. Brut de 335 000 : 335 000 × 5 % = 16 750. Brut de 500 000 : on plafonne, 400 000 × 5 % = 20 000, et non 25 000. Question au public : brut de 400 000 exactement ? 20 000, le plafond est atteint mais pas dépassé.

## 27:00 – 42:00 · Exercice corrigé : le bulletin d''Aïssatou

Aïssatou, comptable non cadre chez Saloum Emballages : base 300 000, ancienneté 15 000, heures supplémentaires 20 000, acompte 50 000. Taux fictifs : retraite 5 % salarié et 7,5 % employeur, plafond 400 000 ; maladie 3 % et 3 % ; prestations familiales 6 % employeur ; accidents du travail 3 % employeur ; contribution forfaitaire 3 %. Retenue fiscale selon barème : 18 000.

Remplissons le tableau. Brut : 335 000. Retraite salariale : 16 750. Maladie salariale : 10 050. Total salarial : 26 800. Retenue fiscale : 18 000. Net : 335 000 − 26 800 − 18 000 = 290 200. Net à payer : 240 200.

Côté employeur : retraite 25 125 ; maladie 10 050 ; prestations familiales 20 100 ; accidents du travail 10 050 ; contribution forfaitaire 10 050 ; total 75 375. Coût employeur : 410 375.

Contrôle : brut − total des retenues salariales et fiscales = 335 000 − 44 800 = 290 200. C''est bien le net. Faites toujours ce contrôle en fin de bulletin : il prend trente secondes et sauve des points.

Présentation conseillée sur votre copie : un tableau à cinq colonnes, rubrique, base, taux salarial, montant salarial, taux et montant patronal. Une ligne par cotisation. Sous le tableau, les totaux, puis le net, l''acompte et le net à payer. Si l''énoncé ne fournit pas un taux, n''en inventez pas : signalez-le et raisonnez sur le mécanisme.

## 42:00 – 47:00 · Quiz de mi-parcours

- Question 1 : le salaire net est-il calculé avant ou après la retenue fiscale ?
- Question 2 : brut 600 000, retraite 5 % plafonnée à 400 000 : cotisation ?
- Question 3 : les prestations familiales sont-elles retenues sur le salaire dans notre exemple ?
- Question 4 : que vaut le coût employeur ?

Réponses : 1) après, le net tient compte de la retenue fiscale ; 2) 20 000 FCFA ; 3) non, ce sont des charges patronales ; 4) brut + charges patronales.

## 47:00 – 1:00:00 · Les écritures comptables de la paie

Passons à la comptabilité, SYSCOHADA révisé. Première écriture : constatation des salaires. Au débit, le brut au compte 661 Rémunérations directes versées au personnel national : 335 000. Au crédit, ce que l''entreprise doit à chacun : 432 Caisses de retraite 16 750 ; 433 Autres organismes sociaux 10 050 ; 447 État, impôts retenus à la source 18 000 ; 421 Personnel, avances et acomptes 50 000, qui solde l''acompte déjà versé ; 422 Personnel, rémunérations dues 240 200. Total : 335 000 de chaque côté.

Deuxième écriture : charges patronales. Débit 664 Charges sociales 65 325 ; débit 641 Impôts et taxes directs 10 050 pour la contribution forfaitaire. Crédit 431 Sécurité sociale 30 150 ; 432 Caisses de retraite 25 125 ; 433 Autres organismes sociaux 10 050 ; 442 État, autres impôts et taxes 10 050. Total : 75 375 de chaque côté.

Troisième étape, au paiement : débit 422, crédit compte de trésorerie, pour 240 200. Puis, lors des versements aux organismes et à l''État, on solde les comptes 431, 432, 433, 442 et 447 par la trésorerie.

Erreur classique : débiter 661 du net au lieu du brut. Retenez : la charge de personnel, c''est le brut ; les retenues ne sont qu''une répartition de ce brut entre plusieurs créanciers.

## 1:00:00 – 1:12:00 · Le cas du cadre

Moussa, cadre, brut 950 000. Taux fictifs : retraite générale 5 % plafonnée à 400 000 ; retraite complémentaire cadre 2,4 % plafonnée à 1 200 000 ; maladie 3 %. Retenue fiscale : 120 000. À vous, quatre minutes.

Correction. Retraite générale : 400 000 × 5 % = 20 000. Retraite cadre : 950 000 est sous le plafond de 1 200 000, donc 950 000 × 2,4 % = 22 800. Maladie : 28 500. Total : 71 300. Net : 950 000 − 71 300 − 120 000 = 758 700.

Moussa se plaint de cotiser davantage. Réponse : le statut cadre l''affilie à un régime complémentaire qui lui ouvrira une pension complémentaire. Ce type de question de communication avec le salarié tombe souvent : expliquer clairement, sans jargon, et vérifier que les paramètres appliqués sont bien ceux en vigueur.

## 1:12:00 – 1:22:00 · Exercice d''entraînement rapide

Brut 520 000 ; retraite 5 % plafonnée à 400 000 ; maladie 3 % ; retenue fiscale 41 000 ; acompte 100 000. Patronal : retraite 7,5 % plafonnée ; maladie 3 % ; prestations familiales 6 % ; accidents du travail 3 % ; contribution forfaitaire 3 %.

Correction. Salarial : 20 000 + 15 600 = 35 600. Net : 443 400. Net à payer : 343 400. Patronal : 30 000 + 15 600 + 31 200 + 15 600 + 15 600 = 108 000. Coût employeur : 628 000. Écriture : débit 661 520 000 ; crédits 432 20 000, 433 15 600, 447 41 000, 421 100 000, 422 343 400. Contrôle : 20 000 + 15 600 + 41 000 + 100 000 + 343 400 = 520 000.

## 1:22:00 – 1:26:00 · Synthèse

Retenez l''escalier, les plafonds, le contrôle brut − retenues = net, le débit du brut en 661 et la répartition au crédit. Et surtout, gardez le réflexe de prudence : dans la vie professionnelle, les taux et barèmes se vérifient dans les textes en vigueur, ils ne s''apprennent pas par cœur une fois pour toutes.

## 1:26:00 – 1:30:00 · Évaluation finale

- Question 1 : brut 300 000, cotisations salariales 24 000, retenue fiscale 15 000. Net ?
- Question 2 : avec un acompte de 40 000, net à payer ?
- Question 3 : quel compte enregistre le brut ?
- Question 4 : charges patronales 70 000. Coût employeur ?
- Question 5 : citez deux documents de fin de contrat.

Réponses : 1) 261 000 FCFA ; 2) 221 000 FCFA ; 3) le compte 661 ; 4) 370 000 FCFA ; 5) certificat de travail et solde de tout compte. À la prochaine séance.', 'video', 90, false, 70
from public.courses c where c.slug = 'lic-rh-l2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Gestion de la paie et administration du personnel');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Formation et gestion des compétences', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : étudiants de Licence 2 en ressources humaines.
- Objectifs : définir la compétence, construire un référentiel et une matrice de compétences, analyser les besoins de formation, élaborer et chiffrer un plan de formation, calculer les indicateurs et le retour sur investissement, évaluer une formation selon Kirkpatrick.
- Matériel : diaporama (schéma savoir, savoir-faire, savoir-être ; matrice de compétences ; cycle de l''ingénierie ; tableau du plan ; pyramide de Kirkpatrick), tableau blanc, calculatrice.
- Prérequis : leçon « Formation et gestion des compétences : l''essentiel pour l''examen ».

## Déroulé minuté

## 00:00 – 05:00 · Ouverture

Bonjour à tous. Une entreprise qui ne forme pas ses salariés vieillit avec ses machines. Mais une entreprise qui forme au hasard gaspille son argent. Aujourd''hui, nous allons apprendre à former juste : identifier les vrais besoins, construire un plan, le chiffrer, et prouver qu''il sert à quelque chose. Les entreprises citées sont fictives.

## 05:00 – 15:00 · Qu''est-ce qu''une compétence ?

Une compétence, c''est la capacité à mobiliser, dans une situation de travail, des savoirs, des savoir-faire et des savoir-être pour obtenir un résultat. Je projette les trois cercles qui se recoupent. Au centre, la compétence. Prenons l''exemple d''une opératrice de conditionnement chez Atlantic Pêche, à Mbour. Savoir : les règles d''hygiène et la chaîne du froid. Savoir-faire : régler la machine de mise sous vide. Savoir-être : rigueur et vigilance. Seule la combinaison des trois produit un emballage conforme.

Trois caractéristiques à citer en copie : la compétence est contextualisée, elle se voit dans l''action ; elle est évolutive ; elle est évaluable. On distingue aussi compétences techniques, propres à un métier, et transversales, comme la communication ou l''usage du numérique.

## 15:00 – 27:00 · Référentiel et matrice de compétences

Le référentiel dit ce qui est requis pour un emploi, avec un niveau : 1 notions, 2 application avec aide, 3 maîtrise autonome, 4 expertise. La matrice dit ce que chaque salarié détient. Je projette une matrice de l''atelier : cinq opératrices en lignes, quatre compétences en colonnes. Colonne « réglage de la mise sous vide » : une seule opératrice au niveau 3, les autres au niveau 1. Que concluez-vous ? C''est une compétence critique : si cette opératrice est malade, la production s''arrête. Priorité de formation : faire monter deux autres opératrices au niveau 3, et l''opératrice experte au niveau 4 pour qu''elle puisse transmettre.

La matrice sert donc à trois choses : repérer les écarts, identifier les compétences rares, organiser la polyvalence et le remplacement.

## 27:00 – 40:00 · L''analyse des besoins de formation

Un besoin de formation est un écart entre compétences requises et détenues qu''une formation peut réduire. La deuxième partie de la phrase est essentielle. Prenons le cas de l''agence de transfert d''argent de Touba : les erreurs de saisie augmentent depuis le nouveau logiciel, la directrice veut former tout le monde. Avant, il faut diagnostiquer. Les erreurs viennent-elles de tous les agents ou de quelques-uns ? D''une opération précise ? D''un écran mal conçu ? D''une surcharge aux heures de pointe ? Si c''est un problème de logiciel ou d''organisation, la formation ne servira à rien.

Les sources de besoins : la stratégie, comme une nouvelle ligne ou un nouveau marché ; les entretiens annuels et professionnels ; les indicateurs de dysfonctionnement, accidents, rebuts, réclamations ; les obligations de sécurité et d''hygiène.

Question au public : un vendeur atteint ses objectifs mais est souvent en retard. Faut-il le former ? Réponse attendue : probablement pas, le problème relève du management et du dialogue, pas d''un manque de compétence.

## 40:00 – 45:00 · Quiz de mi-parcours

- Question 1 : citez les trois composantes d''une compétence.
- Question 2 : que signifie le niveau 4 dans notre échelle ?
- Question 3 : un écart de compétences se règle-t-il toujours par la formation ?
- Question 4 : citez deux sources de besoins de formation.

Réponses : 1) savoirs, savoir-faire, savoir-être ; 2) l''expertise, capable de former les autres ; 3) non, il peut venir de l''organisation, du matériel ou de la motivation ; 4) la stratégie et les entretiens annuels, par exemple.

## 45:00 – 55:00 · Le plan de formation et l''ingénierie

Le plan de formation rassemble les actions de l''année : objectif, public, durée, modalité, prestataire, coût, calendrier, priorité. Il est arbitré par la direction et présenté aux représentants du personnel selon les règles applicables. Pour le financement, le Fonds de financement de la formation professionnelle et technique peut, selon ses dispositifs et conditions, contribuer à certaines actions ; renseignez-vous sur les modalités en vigueur.

L''ingénierie suit un cycle : analyser, concevoir, réaliser, évaluer, ajuster. Concevoir, c''est d''abord écrire des objectifs pédagogiques avec un verbe d''action observable. Mauvais objectif : « sensibiliser à l''hygiène ». Bon objectif : « À l''issue de la formation, l''opérateur sera capable d''appliquer les cinq étapes du lavage des mains et du nettoyage du poste, sans oubli, lors d''un contrôle inopiné ».

## 55:00 – 1:10:00 · Budget et indicateurs : exercices corrigés

Exercice projeté. Atlantic Pêche, 150 salariés, masse salariale 900 000 000 FCFA. Action A : 40 marins, 14 heures, 2 800 000 FCFA. Action B : 30 opératrices, 21 heures, 3 150 000 FCFA. Action C : 10 chefs d''équipe, 35 heures, 4 200 000 FCFA. Calculez coût total, heures-stagiaires, coût par heure-stagiaire, taux d''accès et effort de formation. Cinq minutes.

Correction. Coût total : 10 150 000 FCFA. Heures-stagiaires : 560 + 630 + 350 = 1 540. Coût par heure-stagiaire : A et B, 5 000 FCFA ; C, 12 000 FCFA, ce qui est normal pour une formation de management plus spécialisée. Taux d''accès : 80 / 150, environ 53,3 %. Effort de formation : 10 150 000 / 900 000 000, environ 1,13 %. Attention : le taux d''accès suppose que chaque salarié ne suit qu''une action. Si un même salarié suivait deux actions, il ne faudrait le compter qu''une fois.

Retour sur investissement de l''action B : les pertes passent de 12 000 000 à 7 000 000 FCFA par an. Gain : 5 000 000. ROI = (5 000 000 − 3 150 000) / 3 150 000, environ 58,7 %. Commentaire indispensable : le gain doit être attribuable à la formation ; s''il y a eu en même temps un nouveau fournisseur d''emballages, la prudence s''impose.

Exercice rapide : 18 heures, 12 personnes, 1 728 000 FCFA. Coût par heure-stagiaire : 1 728 000 / 216 = 8 000 FCFA.

## 1:10:00 – 1:20:00 · Évaluer une formation : Kirkpatrick

Je projette la pyramide à quatre niveaux. Niveau 1, réaction : questionnaire de satisfaction à chaud. Niveau 2, apprentissage : test ou mise en situation en fin de formation. Niveau 3, comportement : quelques semaines plus tard, le manager observe-t-il l''application au poste ? Niveau 4, résultats : les indicateurs de l''entreprise s''améliorent-ils ?

Application à la formation maintenance de Casamance Fruits : niveau 1, questionnaire ; niveau 2, diagnostic d''une panne simulée ; niveau 3, revue des fiches d''intervention après six semaines ; niveau 4, taux d''arrêt de la ligne et durée moyenne de réparation sur plusieurs mois. Beaucoup d''entreprises s''arrêtent au niveau 1 : c''est insuffisant, la satisfaction ne prouve pas l''efficacité.

Pour réussir le niveau 3, impliquez le manager dès le départ. Avant la formation, il explique au salarié pourquoi il y va et ce qu''il attend ; après, il lui confie rapidement des tâches où il peut appliquer ce qu''il a appris, et fait un point au bout de quelques semaines. Sans ce relais, une grande partie des acquis se perd : le salarié revient dans une organisation qui n''a pas changé et reprend ses anciennes habitudes. C''est un argument fort à placer dans une question de réflexion sur l''efficacité de la formation.

## 1:20:00 – 1:26:00 · Synthèse et méthode pour le cas d''examen

Pour un cas de formation : 1) diagnostiquer l''écart et vérifier qu''il relève de la formation ; 2) formuler des objectifs pédagogiques observables ; 3) choisir modalités et public ; 4) chiffrer le coût et les indicateurs ; 5) prévoir l''évaluation sur plusieurs niveaux. Un plan présenté en tableau, avec une colonne priorité, impressionne toujours favorablement le correcteur.

Exemple de ligne de plan : action « maintenance de la nouvelle ligne » ; public, 15 techniciens ; objectif, diagnostiquer et réparer les pannes courantes en moins de 30 minutes ; modalité, formation pratique sur site par le fournisseur de la ligne ; durée, 24 heures ; coût, 2 880 000 FCFA ; période, avant le démarrage de la production ; priorité, haute. Chaque colonne répond à une question que se pose la direction.

## 1:26:00 – 1:30:00 · Évaluation finale

- Question 1 : définissez la compétence.
- Question 2 : 240 salariés, 96 formés. Taux d''accès ?
- Question 3 : budget 15 000 000 FCFA, masse salariale 1 200 000 000 FCFA. Effort de formation ?
- Question 4 : coût 2 000 000 FCFA, gain annuel 2 600 000 FCFA. ROI ?
- Question 5 : quel niveau de Kirkpatrick mesure l''application au poste ?

Réponses : 1) la capacité à mobiliser savoirs, savoir-faire et savoir-être en situation de travail pour obtenir un résultat ; 2) 40 % ; 3) 1,25 % ; 4) 30 % ; 5) le niveau 3, comportement. Merci et bonnes révisions.', 'video', 90, false, 80
from public.courses c where c.slug = 'lic-rh-l2'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Formation et gestion des compétences');

-- Cours : Ressources humaines Licence 3 : réussir ses examens
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'lic-rh-l3', (select id from public.levels where name = 'Licence 3'), null, 'Ressources humaines', 'Ressources humaines Licence 3 : réussir ses examens', 'Préparation aux partiels et examens semestriels de la Licence 3 en gestion des ressources humaines (système LMD, contexte Sénégal et UEMOA). Le cours couvre la GPEC et le pilotage RH (tableaux de bord, indicateurs), les relations sociales et le dialogue social, la rémunération globale et le système d''information RH (SIRH). Fiches, exercices chiffrés corrigés, sujet type et trois cours vidéo de 1h30. Prérequis : les acquis des Licences 1 et 2 RH (droit du travail, recrutement, paie, formation).', true, 303
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Réussir ses examens de Licence 3 en ressources humaines', '## Objectifs de la leçon

- Comprendre les enjeux de la Licence 3, année de diplôme et d''orientation.
- Identifier les trois matières clés de l''année et le niveau d''analyse attendu.
- Adopter une méthode de révision orientée vers l''analyse, le chiffrage et la recommandation.
- Planifier six semaines de révision et maîtriser les épreuves de synthèse.

## 1. La Licence 3 dans le système LMD

La Licence 3 correspond aux semestres 5 et 6 et conclut le premier cycle du LMD. Sa validation, avec l''ensemble des crédits de la Licence, permet d''obtenir le diplôme et de candidater en Master ou d''entrer dans la vie professionnelle. Les UE de L3 sont plus intégratrices : elles demandent de mobiliser les acquis de L1 (droit du travail, comportement organisationnel) et de L2 (recrutement, paie, formation) pour traiter des problèmes de pilotage. Beaucoup d''établissements y ajoutent un stage avec rapport et soutenance, ou un mémoire de fin de cycle. Crédits, coefficients, compensations et conditions de délivrance du diplôme sont fixés par le règlement des études de votre établissement : lisez-le attentivement.

## 2. Les matières clés de la Licence 3 RH

- GPEC et pilotage RH : démarche de gestion prévisionnelle des emplois et des compétences, pyramide des âges, projection des effectifs, analyse des écarts, plans d''action ; tableaux de bord sociaux et indicateurs (rotation, absentéisme, structure des effectifs, masse salariale).
- Relations sociales et dialogue social : acteurs (représentants du personnel, syndicats, organisations d''employeurs, État), négociation collective, information et consultation, prévention et règlement des conflits collectifs, dans un contexte sénégalais marqué par la réforme du Code du travail (projet de loi n°15/2026), à aborder avec prudence.
- Rémunération globale et SIRH : composantes de la rémunération, équité interne et externe, politique salariale, pilotage de la masse salariale (effets niveau, masse et report) ; système d''information RH : modules, projet, protection des données.

## 3. Ce qui change dans les attentes des correcteurs

En L1, on vérifie que vous connaissez les notions. En L2, que vous savez appliquer des techniques. En L3, on attend que vous sachiez diagnostiquer, chiffrer et recommander. Une bonne copie de L3 :

- Part des données du cas et calcule les bons indicateurs.
- Interprète les chiffres (« le taux de rotation de 18 % est élevé pour des emplois qualifiés »), au lieu de les laisser sans commentaire.
- Propose des actions hiérarchisées, chiffrées si possible, avec leurs limites et risques.
- Montre une conscience du contexte : PME ou grande entreprise, secteur, climat social, cadre juridique en évolution.

## 4. Méthode de révision

Construisez trois outils.

Le formulaire d''indicateurs : sur une page, toutes les formules (taux de rotation, absentéisme, âge moyen, effet niveau, effet masse, effet report, compa-ratio, coût d''une hausse de salaire), avec un exemple chiffré pour chacune.

Les schémas de démarche : la GPEC en cinq étapes, la procédure de négociation, la conduite d''un projet SIRH. Vous devez pouvoir les redessiner de mémoire.

La banque d''arguments : pour chaque grand thème, trois arguments pour, trois arguments contre, un exemple africain fictif mais réaliste. Ils nourrissent les questions de réflexion et les recommandations.

## 5. Les types d''épreuves en L3

- L''étude de cas de synthèse : un dossier d''entreprise de plusieurs pages (annexes chiffrées, organigramme, extraits de procès-verbaux) et des questions qui croisent les matières. Lisez d''abord les questions, puis les annexes en notant les données utiles.
- L''exercice chiffré : projection d''effectifs, tableau de bord, coût d''une politique salariale.
- La note de synthèse ou la note de recommandation à la direction : en-tête, objet, contexte, analyse, recommandations, conclusion ; style clair et neutre.
- La dissertation : par exemple « Le dialogue social est-il un frein ou un levier de performance ? ».
- La soutenance de stage ou de projet : structurer, respecter le temps, préparer les questions.

## 6. Plan de révision sur 6 semaines

- Semaine 1 : GPEC. Démarche, pyramide des âges, projection des ressources, écarts, plans d''action. Deux cas chiffrés.
- Semaine 2 : Pilotage RH. Tableau de bord social, indicateurs, interprétation, alertes. Construction d''un tableau de bord complet.
- Semaine 3 : Relations sociales. Acteurs, instances, négociation, conflits collectifs. Une note de recommandation.
- Semaine 4 : Rémunération globale. Composantes, équité, masse salariale (effets niveau, masse, report), coût des mesures salariales. Quatre exercices.
- Semaine 5 : SIRH. Modules, projet, protection des données, indicateurs. Une dissertation. Révision des formulaires.
- Semaine 6 : Sujet type complet (leçon 5) en 4 heures, correction, reprise des points faibles.

## Points clés

- En L3 : diagnostiquer, chiffrer, recommander.
- Trois matières : GPEC et pilotage, relations sociales, rémunération globale et SIRH.
- Un formulaire d''indicateurs et des schémas de démarche sont vos meilleurs outils.
- Les recommandations doivent être hiérarchisées et réalistes.

## Exercices pratiques

- Exercice 1. Expliquez en quoi les attentes d''un correcteur de L3 diffèrent de celles de L1.
- Exercice 2. Une entreprise compte 200 salariés en moyenne sur l''année ; elle a enregistré 30 départs et 34 arrivées. Calculez le taux de rotation selon la formule (départs + arrivées) / 2 / effectif moyen × 100.
- Exercice 3. Rédigez l''en-tête et le plan d''une note à la directrice générale sur la hausse de l''absentéisme.
- Exercice 4. Une hausse générale de 3 % est appliquée à une masse salariale annuelle de 600 000 000 FCFA dès le 1er janvier. Quel est son coût annuel, hors charges patronales ?
- Exercice 5 (cas pratique). Khadija prépare sa L3 et doit rendre son rapport de stage en semaine 4. Adaptez le plan de 6 semaines.

## Corrigé

Exercice 1. En L1, on évalue la connaissance des notions et des règles de base ; en L3, on évalue la capacité à analyser un dossier complexe, à calculer et interpréter des indicateurs, et à formuler des recommandations argumentées et hiérarchisées, en mobilisant plusieurs matières.

Exercice 2. Taux de rotation = ((30 + 34) / 2) / 200 × 100 = 32 / 200 × 100 = 16 %.

Exercice 3. En-tête : de (service RH), à (directrice générale), date, objet : « Hausse de l''absentéisme : analyse et propositions ». Plan : 1. Constat chiffré (évolution du taux, services et motifs concernés) ; 2. Causes probables ; 3. Coûts estimés ; 4. Recommandations hiérarchisées ; 5. Indicateurs de suivi.

Exercice 4. Coût = 600 000 000 × 3 % = 18 000 000 FCFA par an, hors charges patronales.

Exercice 5. Semaines 1 à 3 : une heure par jour sur le programme (GPEC, pilotage, relations sociales) et le reste sur le rapport. Semaine 4 : priorité au rapport, avec seulement une relecture quotidienne du formulaire d''indicateurs. Semaine 5 : rémunération globale et SIRH en intensif. Semaine 6 : sujet type et révisions. Le stage peut nourrir les révisions : un tableau de bord ou un accord observé pendant le stage, anonymisé, fournit des exemples précieux.', 'texte', 45, true, 10
from public.courses c where c.slug = 'lic-rh-l3'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Réussir ses examens de Licence 3 en ressources humaines');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'GPEC et pilotage RH : l''essentiel pour l''examen', '## Objectifs de la leçon

- Maîtriser la démarche de GPEC en cinq étapes.
- Analyser une pyramide des âges et projeter les ressources d''un emploi.
- Mesurer les écarts quantitatifs et qualitatifs et construire un plan d''action.
- Concevoir un tableau de bord social et calculer ses principaux indicateurs.

## Fiche 1 : définition et enjeux de la GPEC

La gestion prévisionnelle des emplois et des compétences (GPEC) est une démarche d''anticipation qui vise à adapter, à moyen terme (souvent trois à cinq ans), les effectifs et les compétences de l''organisation aux besoins découlant de sa stratégie et de son environnement, en associant les salariés à l''évolution de leur parcours.

Elle répond à des situations concrètes (départs massifs à la retraite, nouvelle technologie, réorganisation) et a une double dimension : quantitative et qualitative.

## Fiche 2 : la démarche en cinq étapes

Schéma décrit en texte : deux colonnes qui convergent vers une zone d''écart, puis une flèche vers les plans d''action.

- Étape 1 : analyser l''existant, c''est-à-dire les ressources actuelles (effectifs par emploi, âge, ancienneté, compétences).
- Étape 2 : projeter les ressources à l''horizon choisi, en tenant compte des départs prévisibles (retraites, départs volontaires, promotions) sans action nouvelle.
- Étape 3 : estimer les besoins futurs à partir de la stratégie (nouvelles activités, gains de productivité, nouveaux métiers).
- Étape 4 : mesurer les écarts quantitatifs (sureffectif ou sous-effectif) et qualitatifs (compétences manquantes ou obsolètes).
- Étape 5 : définir les plans d''action : recrutement, formation, mobilité interne, reconversion, alternance, sous-traitance, gestion des fins de carrière.

## Fiche 3 : la pyramide des âges

La pyramide des âges représente les effectifs par tranche d''âge, souvent en séparant hommes et femmes. Sa forme est un signal : une base large et un sommet étroit indiquent une population jeune ; une forme en champignon (sommet large) annonce des départs massifs à la retraite et un risque de perte de savoir-faire ; une forme en losange traduit un ventre central important et un risque de blocage des carrières.

Exemple chiffré : Sahel Énergie Solaire, entreprise fictive de 250 salariés à Dakar. Tranches : 20 à 29 ans : 50 ; 30 à 39 ans : 90 ; 40 à 49 ans : 70 ; 50 à 59 ans : 40.

- Âge moyen approché (avec les centres de classe 25, 35, 45, 55) = (50 × 25 + 90 × 35 + 70 × 45 + 40 × 55) / 250 = 9 750 / 250 = 39 ans.
- Part des 50 ans et plus = 40 / 250 × 100 = 16 %.

## Fiche 4 : projection des ressources et écarts

Emploi « technicien photovoltaïque » chez Sahel Énergie Solaire : 40 techniciens aujourd''hui. À trois ans : 8 départs à la retraite prévus, environ 2 départs volontaires par an soit 6, et 2 promotions prévues vers des postes de chef d''équipe.

- Ressources projetées = 40 − 8 − 6 − 2 = 24 techniciens.
- Besoins à trois ans (deux nouvelles centrales) = 50 techniciens.
- Écart quantitatif = 24 − 50 = −26 : déficit de 26 techniciens.

Écart qualitatif : la nouvelle technologie de stockage par batteries exige que 30 techniciens maîtrisent cette compétence ; seuls 10 la maîtrisent aujourd''hui, et 2 d''entre eux partent à la retraite. Parmi les 24 restants, 8 la maîtrisent ; il faut donc former au moins 30 − 8 = 22 personnes, recrues comprises.

Plan d''action possible : recruter 16 techniciens (dont des jeunes diplômés de lycées techniques et d''instituts), reconvertir 10 électriciens internes par une formation qualifiante, organiser le tutorat des futurs retraités pour transmettre leur savoir-faire, et former au stockage par batteries les techniciens existants et les recrues.

## Fiche 5 : le tableau de bord social

Un tableau de bord social est un outil de pilotage synthétique, souvent mensuel, qui présente peu d''indicateurs RH, comparés à des objectifs et assortis de seuils d''alerte (à distinguer du bilan social, annuel et exhaustif).

Présentation conseillée : une ligne par indicateur, avec les colonnes valeur du mois, objectif, écart, tendance (flèche) et alerte (vert, orange, rouge).

Principaux indicateurs et formules :

- Taux d''absentéisme = heures d''absence / heures théoriques de travail × 100.
- Taux de rotation = ((départs + arrivées) / 2) / effectif moyen × 100.
- Taux de départ = départs / effectif moyen × 100.
- Taux de féminisation = effectif féminin / effectif total × 100.
- Taux de fréquence des accidents du travail = nombre d''accidents avec arrêt × 1 000 000 / heures travaillées.
- Taux de gravité = journées perdues × 1 000 / heures travaillées.

Exemple chiffré, mois de mars chez Sahel Énergie Solaire : 250 salariés × 170 heures théoriques = 42 500 heures ; 2 125 heures d''absence. Taux d''absentéisme = 2 125 / 42 500 × 100 = 5 %. Sur l''année précédente : 6 accidents avec arrêt, 90 journées perdues, 420 000 heures travaillées. Taux de fréquence = 6 × 1 000 000 / 420 000 ≈ 14,29. Taux de gravité = 90 × 1 000 / 420 000 ≈ 0,21.

Un absentéisme de 5 % contre un objectif de 3,5 % déclenche une alerte et une analyse par service et par motif.

## Points clés

- GPEC = existant, projection, besoins, écarts, plans d''action.
- Ressources projetées = effectif actuel − départs prévisibles (retraites, départs volontaires, promotions).
- Écarts quantitatifs et qualitatifs.
- Tableau de bord : peu d''indicateurs, objectifs, seuils d''alerte, interprétation.

## Exercices pratiques

- Exercice 1. Que révèle une pyramide des âges en forme de champignon ? Quelles actions de GPEC proposer ?
- Exercice 2. Tranches 20 à 29 ans : 30 ; 30 à 39 : 40 ; 40 à 49 : 20 ; 50 à 59 : 10. Calculez l''âge moyen approché et la part des 50 ans et plus.
- Exercice 3. Emploi « comptable » : 15 personnes ; à trois ans, 3 retraites, 4 départs volontaires, 1 promotion. Besoins : 12. Calculez l''écart et commentez.
- Exercice 4. Effectif moyen 320, 48 départs et 40 arrivées dans l''année. Calculez le taux de rotation et le taux de départ.
- Exercice 5. 4 accidents avec arrêt, 60 journées perdues, 500 000 heures travaillées. Calculez les taux de fréquence et de gravité.
- Exercice 6 (cas pratique). Une banque fictive de Dakar ferme 10 agences sur 40 en trois ans au profit du numérique ; 60 guichetiers sont concernés et le service clientèle à distance a besoin de 35 conseillers. Proposez une démarche de GPEC.

## Corrigé

Exercice 1. Une forme en champignon révèle une population vieillissante : départs massifs à venir et risque de perte de savoir-faire. Actions : recrutements anticipés, tutorat et transmission des savoirs, documentation des procédures, aménagement des fins de carrière.

Exercice 2. Âge moyen = (30 × 25 + 40 × 35 + 20 × 45 + 10 × 55) / 100 = (750 + 1 400 + 900 + 550) / 100 = 36 ans. Part des 50 ans et plus = 10 %.

Exercice 3. Ressources = 15 − 3 − 4 − 1 = 7. Écart = 7 − 12 = −5 : déficit de 5 comptables. Mais 4 départs volontaires sur 15 en trois ans traduisent une fidélisation insuffisante : agir sur la rétention peut réduire le besoin de recrutement.

Exercice 4. Rotation = ((48 + 40) / 2) / 320 × 100 = 44 / 320 × 100 = 13,75 %. Taux de départ = 48 / 320 × 100 = 15 %.

Exercice 5. Taux de fréquence = 4 × 1 000 000 / 500 000 = 8. Taux de gravité = 60 × 1 000 / 500 000 = 0,12.

Exercice 6. 1) Existant : profils des 60 guichetiers (âge, compétences, mobilité). 2) Projection : retraites et départs naturels sur trois ans. 3) Besoins : 35 conseillers à distance, compétences en relation client à distance, outils numériques, conseil. 4) Écarts : sureffectif de guichetiers, compétences numériques à développer. 5) Actions : reconversion prioritaire des guichetiers volontaires vers les 35 postes de conseillers par une formation qualifiante, mobilité vers les agences maintenues, gestion des fins de carrière, et en dernier recours mesures d''accompagnement des départs, dans le respect des procédures légales et en concertation avec les représentants du personnel.', 'texte', 60, false, 20
from public.courses c where c.slug = 'lic-rh-l3'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'GPEC et pilotage RH : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Relations sociales et dialogue social : l''essentiel pour l''examen', '## Objectifs de la leçon

- Identifier les acteurs et les niveaux du dialogue social au Sénégal et dans l''espace UEMOA.
- Distinguer information, consultation et négociation collective.
- Préparer et conduire une négociation, chiffrer des scénarios.
- Analyser un conflit collectif et les modes de règlement.

## Avertissement

Le droit des relations collectives sénégalais repose sur le Code du travail de 1997, aujourd''hui en cours de réforme (projet de loi n°15/2026). Les règles précises (conditions d''élection des délégués, représentativité, préavis de grève, procédures de règlement) doivent être vérifiées dans les textes en vigueur. Cette leçon expose les mécanismes ; les montants des exemples sont fictifs.

## Fiche 1 : définitions

Les relations sociales désignent l''ensemble des rapports, individuels et collectifs, entre employeurs, salariés et leurs représentants. Le dialogue social, au sens de l''Organisation internationale du travail, comprend toutes les formes de négociation, de consultation et d''échange d''informations entre représentants des gouvernements, des employeurs et des travailleurs sur des questions d''intérêt commun.

Trois intensités à distinguer :

- L''information : l''employeur communique des données aux représentants (situation économique, projets).
- La consultation : l''employeur recueille l''avis des représentants avant de décider ; il reste maître de la décision.
- La négociation : les parties recherchent un accord qui les engage, par exemple une convention ou un accord collectif.

## Fiche 2 : les acteurs et les niveaux

- Dans l''entreprise : l''employeur et la direction des ressources humaines ; les délégués du personnel, élus par les salariés, qui présentent les réclamations individuelles et collectives et sont informés et consultés sur certaines questions ; les sections ou délégués syndicaux ; le comité d''hygiène et de sécurité lorsqu''il existe.
- Au niveau de la branche et au niveau national : les syndicats de travailleurs et leurs centrales, les organisations d''employeurs, qui négocient les conventions collectives (convention interprofessionnelle, conventions de branche).
- L''État : il fixe le cadre légal, intervient par l''inspection du travail (contrôle, conciliation), et anime le dialogue tripartite. Le Sénégal s''est doté d''institutions et d''instruments dédiés, comme le Haut Conseil du dialogue social et une Charte nationale sur le dialogue social.
- Au niveau régional, l''UEMOA et la CEDEAO promeuvent l''harmonisation des politiques sociales, en termes généraux.

## Fiche 3 : la négociation collective

Une négociation se prépare en quatre temps :

- 1. Diagnostic : demandes des représentants, situation économique, comparaisons externes, coûts.
- 2. Mandat : objectifs de la direction, marge de manœuvre, point de rupture.
- 3. Conduite : calendrier, ordre du jour, échanges de propositions, recherche de contreparties, comptes rendus.
- 4. Conclusion et suivi : signature d''un accord écrit, dépôt et publicité selon les règles, communication aux salariés, comité de suivi.

Deux logiques de négociation : distributive (partager un montant fixe, gagnant-perdant) et intégrative (élargir les options, gagnant-gagnant, par exemple échanger une hausse de salaire contre un engagement sur la productivité ou la formation).

## Fiche 4 : chiffrer les scénarios salariaux

Les syndicats de Thiès Ciment Préfa, entreprise fictive de 300 salariés, demandent une revalorisation. Masse salariale brute annuelle : 1 080 000 000 FCFA, soit un salaire moyen mensuel de 300 000 FCFA. Taux de charges patronales fictif : 22 %.

- Scénario A, hausse générale de 4 % au 1er janvier : coût brut annuel = 1 080 000 000 × 4 % = 43 200 000 FCFA ; coût chargé = 43 200 000 × 1,22 = 52 704 000 FCFA.
- Scénario B, hausse uniforme de 12 000 FCFA par mois et par salarié : coût brut annuel = 12 000 × 12 × 300 = 43 200 000 FCFA, même coût, mais effet redistributif : +6 % pour un salaire de 200 000 FCFA, +2 % pour un salaire de 600 000 FCFA.
- Scénario C, hausse de 4 % au 1er juillet seulement : coût brut sur l''année = 43 200 000 × 6 / 12 = 21 600 000 FCFA ; mais l''année suivante, la hausse pèse en année pleine.

Ces calculs permettent de construire des propositions équivalentes en coût mais différentes en effets, ce qui facilite un accord.

## Fiche 5 : les conflits collectifs

Un conflit collectif oppose un groupe de salariés à l''employeur sur un intérêt collectif. La grève est la cessation concertée et collective du travail en vue d''appuyer des revendications professionnelles ; elle est garantie par la Constitution mais encadrée par la loi (conditions de déclenchement, notamment un préavis, service minimum dans certains secteurs). La grève licite suspend le contrat de travail : en principe, le salaire n''est pas dû pour les heures non travaillées. Les formes illicites (occupation violente, entrave à la liberté du travail) peuvent entraîner des sanctions.

Modes de règlement : conciliation (souvent devant l''inspection du travail), médiation (un tiers propose une solution), arbitrage (un tiers tranche). La prévention reste le meilleur outil : réunions régulières avec les délégués, traitement rapide des réclamations, transparence sur la situation de l''entreprise.

Indicateurs de climat social : nombre de réclamations, journées perdues pour grève, taux d''absentéisme, taux de départ, résultats d''enquêtes internes. Exemple : 120 salariés grévistes pendant 2 jours, soit 240 journées perdues ; ramené à l''effectif de 300 salariés, cela fait 0,8 journée par salarié.

## Points clés

- Information, consultation, négociation : trois intensités différentes.
- Acteurs à trois niveaux : entreprise, branche ou national, État.
- Négocier, c''est préparer, chiffrer, chercher des contreparties.
- Prévenir les conflits coûte moins cher que les régler.

## Exercices pratiques

- Exercice 1. Distinguez consultation et négociation.
- Exercice 2. Masse salariale annuelle de 720 000 000 FCFA pour 200 salariés. Calculez le coût brut d''une hausse générale de 5 % et celui d''une hausse uniforme de 15 000 FCFA par mois.
- Exercice 3. Avec un taux de charges patronales fictif de 22 %, calculez le coût chargé de la hausse de 5 %.
- Exercice 4. Pour un salarié à 150 000 FCFA et un autre à 450 000 FCFA, quelle hausse en pourcentage représente une hausse uniforme de 15 000 FCFA ?
- Exercice 5. Distinguez conciliation, médiation et arbitrage.
- Exercice 6 (cas pratique). Chez Thiès Ciment Préfa, les délégués menacent d''une grève : ils dénoncent des heures supplémentaires non payées et des équipements de protection usés. La direction veut « attendre que ça se calme ». Rédigez une recommandation.

## Corrigé

Exercice 1. La consultation consiste à recueillir l''avis des représentants avant une décision que l''employeur prend seul ; la négociation vise un accord qui engage les deux parties.

Exercice 2. Hausse de 5 % : 720 000 000 × 5 % = 36 000 000 FCFA. Hausse uniforme : 15 000 × 12 × 200 = 36 000 000 FCFA. Les deux coûtent autant (le salaire moyen est de 300 000 FCFA).

Exercice 3. 36 000 000 × 1,22 = 43 920 000 FCFA.

Exercice 4. 15 000 / 150 000 = 10 % ; 15 000 / 450 000 ≈ 3,3 %. La hausse uniforme favorise les bas salaires.

Exercice 5. Conciliation : les parties sont aidées à trouver elles-mêmes un accord. Médiation : un médiateur formule une recommandation que les parties acceptent ou non. Arbitrage : un arbitre rend une décision qui s''impose aux parties, selon les règles applicables.

Exercice 6. Attendre est risqué : les revendications portent sur des obligations légales (paiement des heures supplémentaires, sécurité). Recommandations : 1) recevoir les délégués sans délai et acter les points par un compte rendu ; 2) vérifier les heures supplémentaires et régulariser les sommes dues ; 3) remplacer les équipements de protection en priorité et associer le comité d''hygiène et de sécurité s''il existe ; 4) instaurer une réunion mensuelle avec les délégués et un suivi des réclamations ; 5) communiquer aux salariés les mesures prises. Le coût de ces mesures est sans commune mesure avec celui d''une grève et d''un éventuel contentieux.', 'texte', 60, false, 30
from public.courses c where c.slug = 'lic-rh-l3'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Relations sociales et dialogue social : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Rémunération globale et SIRH : l''essentiel pour l''examen', '## Objectifs de la leçon

- Décrire les composantes de la rémunération globale et les principes d''une politique de rémunération.
- Utiliser les outils de l''équité interne et externe (classification, fourchettes, compa-ratio).
- Calculer les effets niveau, masse et report d''une mesure salariale.
- Présenter un SIRH, conduire son projet et en évaluer la rentabilité, dans le respect de la protection des données.

## Fiche 1 : la rémunération globale

La rémunération globale est l''ensemble des contreparties, monétaires ou non, que le salarié reçoit en échange de son travail. Elle se représente souvent en cercles concentriques, décrits ici en texte :

- Au centre, le salaire fixe : salaire de base et compléments liés au poste ou à l''ancienneté.
- Deuxième cercle, le variable individuel : primes de rendement, commissions, bonus sur objectifs.
- Troisième cercle, le variable collectif : primes d''équipe, participation aux résultats ou intéressement selon les dispositifs de l''entreprise.
- Quatrième cercle, les périphériques : avantages en nature (logement, véhicule, téléphone), avantages sociaux (couverture santé complémentaire, prévoyance, transport, restauration), gratifications prévues par l''entreprise.

Exemple chiffré : un ingénieur de Baobab Telecom, entreprise fictive de Dakar, perçoit 350 000 FCFA de salaire fixe mensuel, une prime annuelle sur objectifs de 300 000 FCFA, une gratification de fin d''année de 350 000 FCFA prévue par l''entreprise, une couverture santé dont la part employeur vaut 15 000 FCFA par mois et un transport d''entreprise valorisé à 10 000 FCFA par mois.

- Fixe annuel = 350 000 × 12 = 4 200 000 FCFA.
- Rémunération globale annuelle = 4 200 000 + 300 000 + 350 000 + 15 000 × 12 + 10 000 × 12 = 5 150 000 FCFA.
- Part du fixe = 4 200 000 / 5 150 000 × 100 ≈ 81,6 %.

## Fiche 2 : les principes d''une politique de rémunération

Une politique de rémunération recherche trois équilibres :

- L''équité interne : des postes de même valeur sont rémunérés de manière cohérente. Outils : classification conventionnelle (catégories), pesée ou évaluation des postes, fourchettes de salaire par niveau.
- L''équité externe (compétitivité) : les salaires sont comparés au marché grâce à des enquêtes de rémunération, pour attirer et retenir les talents.
- L''équité individuelle : la rémunération reconnaît la performance et la progression des compétences.

S''ajoutent le respect du droit (salaire minimum, minima conventionnels, égalité de rémunération femmes-hommes) et la maîtrise de la masse salariale.

Le compa-ratio situe un salaire dans sa fourchette : compa-ratio = salaire réel / milieu de fourchette × 100. Exemple : fourchette du niveau « ingénieur confirmé » de 400 000 à 600 000 FCFA, milieu 500 000 FCFA. Un salaire de 450 000 FCFA donne un compa-ratio de 90 % : le salarié est en dessous du point de référence, ce qui peut justifier une augmentation individuelle s''il est performant.

## Fiche 3 : les effets niveau, masse et report

Ces trois effets mesurent l''impact d''une augmentation dans le temps (à effectif constant).

- Effet niveau : variation du salaire entre le début et la fin de l''année (de décembre N−1 à décembre N).
- Effet masse : variation de la masse salariale de l''année N par rapport à l''année N−1.
- Effet report : part de l''augmentation de l''année N qui pèsera sur l''année N+1 du seul fait de la date d''application.

Exemple : base 100 en N−1 (salaires stables toute l''année) ; hausse de 4 % au 1er juillet N.

- Effet niveau = 104 / 100 − 1 = 4 %.
- Masse N = (6 × 100 + 6 × 104) / 12 = 102 ; effet masse = 102 / 100 − 1 = 2 %.
- Effet report sur N+1 = 104 / 102 − 1 ≈ 1,96 %.

Vérification : 1,02 × 1,0196 ≈ 1,04. Une hausse tardive coûte peu en N mais engage fortement N+1.

## Fiche 4 : le SIRH

Le système d''information des ressources humaines (SIRH) est l''ensemble des outils, données et procédures qui collectent, traitent, stockent et diffusent l''information RH.

Modules usuels :

- Administration du personnel (dossiers, contrats, registre).
- Paie et déclarations sociales.
- Gestion des temps et des absences.
- Gestion des talents : recrutement, formation, entretiens, compétences, carrières.
- Libre-service salariés et managers (bulletins dématérialisés, congés).
- Tableaux de bord.

Conduite du projet : cahier des charges, choix de la solution et du prestataire, paramétrage et reprise des données, tests (paie en double sur plusieurs mois), formation, déploiement. Risques classiques : données de mauvaise qualité, résistance au changement, connexion internet insuffisante.

Protection des données : un SIRH traite des données personnelles, parfois sensibles (santé, situation familiale). Au Sénégal, ces traitements relèvent de la loi de 2008 sur la protection des données à caractère personnel et du contrôle de la Commission de protection des données personnelles (CDP) ; vérifiez les formalités applicables. Principes : finalité déterminée, données limitées au nécessaire, sécurité, droits d''accès restreints, information des salariés.

Rentabilité, exemple chiffré : Baobab Telecom paie 9 000 000 FCFA d''implantation et 3 000 000 FCFA d''abonnement annuel. Gains annuels attendus : 60 heures de travail administratif économisées par mois, valorisées à 6 000 FCFA l''heure, soit 4 320 000 FCFA ; erreurs de paie évitées : 2 400 000 FCFA ; impression et archivage : 780 000 FCFA. Gains = 7 500 000 FCFA. Gain net annuel = 7 500 000 − 3 000 000 = 4 500 000 FCFA. Délai de récupération = 9 000 000 / 4 500 000 = 2 ans.

## Points clés

- Rémunération globale = fixe + variable individuel + variable collectif + périphériques.
- Trois équités : interne, externe, individuelle ; compa-ratio = salaire / milieu de fourchette.
- Hausse en cours d''année : effet masse réduit, effet report important.
- SIRH : un projet à piloter, des données à protéger.

## Exercices pratiques

- Exercice 1. Classez dans les cercles de la rémunération globale : commission sur ventes, logement de fonction, salaire de base, prime d''équipe.
- Exercice 2. Fourchette de 300 000 à 500 000 FCFA. Calculez le compa-ratio d''un salaire de 440 000 FCFA et interprétez.
- Exercice 3. Hausse de 3 % au 1er avril N, salaires stables en N−1. Calculez les effets niveau, masse et report.
- Exercice 4. Une commerciale perçoit 280 000 FCFA de fixe mensuel, 960 000 FCFA de commissions annuelles et une couverture santé valorisée à 12 000 FCFA par mois. Calculez sa rémunération globale annuelle et la part du variable.
- Exercice 5. Un SIRH coûte 6 000 000 FCFA d''implantation et 2 000 000 FCFA par an ; il génère 5 000 000 FCFA de gains annuels. Délai de récupération ?
- Exercice 6 (cas pratique). Une PME fictive de Saint-Louis, 80 salariés, gère sa paie sur tableur et ses congés sur papier. Les erreurs se multiplient. Le gérant hésite à investir dans un SIRH. Conseillez-le.

## Corrigé

Exercice 1. Salaire de base : fixe. Commission : variable individuel. Prime d''équipe : variable collectif. Logement de fonction : périphérique (avantage en nature).

Exercice 2. Milieu = 400 000. Compa-ratio = 440 000 / 400 000 × 100 = 110 % : salaire au-dessus du point de référence, justifié pour un salarié très performant ; sinon, modérer les hausses futures.

Exercice 3. Effet niveau = 3 %. Masse N = (3 × 100 + 9 × 103) / 12 = 102,25 ; effet masse = 2,25 %. Effet report = 103 / 102,25 − 1 ≈ 0,73 %.

Exercice 4. Fixe = 280 000 × 12 = 3 360 000 ; santé = 144 000 ; total = 3 360 000 + 960 000 + 144 000 = 4 464 000 FCFA. Part du variable = 960 000 / 4 464 000 × 100 ≈ 21,5 %.

Exercice 5. Gain net annuel = 5 000 000 − 2 000 000 = 3 000 000 FCFA. Délai = 6 000 000 / 3 000 000 = 2 ans.

Exercice 6. Diagnostic : volume et coût des erreurs, temps passé, risques juridiques. Solution proportionnée : un logiciel de paie et de temps en service en ligne plutôt qu''un SIRH complet. Démarche : cahier des charges simple, comparaison d''offres, nettoyage des données, paie en double pendant deux mois, formation, information des salariés et vérification des formalités auprès de la CDP. Chiffrer les gains pour décider.', 'texte', 60, false, 40
from public.courses c where c.slug = 'lic-rh-l3'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Rémunération globale et SIRH : l''essentiel pour l''examen');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Sujet type d''examen de Licence 3 RH (entraînement, corrigé détaillé)', '## Présentation du sujet

Étude de cas de synthèse de Licence 3 RH. Sujet d''entraînement, non officiel. Durée conseillée : 4 heures. Barème indicatif, non officiel : 20 points. Calculatrice autorisée. Les montants et le taux de charges patronales sont fictifs pour l''exemple.

Contexte : Huilerie Moderne du Saloum, entreprise fictive de Kaolack, transforme l''arachide en huile et en tourteaux. L''effectif est passé de 380 salariés au 1er janvier N à 420 au 31 décembre N, avec 52 départs et 92 arrivées. La masse salariale brute annuelle est de 1 440 000 000 FCFA. L''entreprise prévoit une nouvelle ligne de pressage dans trois ans. Les délégués du personnel réclament une hausse générale de 6 % et dénoncent une surcharge de travail. La direction envisage aussi de remplacer ses tableurs par un SIRH.

## Dossier 1 : GPEC et pilotage RH (7 points)

Annexe 1. Heures théoriques de l''année : 800 000 ; heures d''absence : 36 000. Accidents du travail avec arrêt : 10 ; journées perdues : 150 ; heures travaillées : 764 000.

Annexe 2. Emploi « conducteur de presse » : 30 salariés aujourd''hui. À trois ans : 9 départs à la retraite, environ 1 départ volontaire par an, 2 promotions prévues. Besoin avec la nouvelle ligne : 36 conducteurs.

- 1.1 Calculez l''effectif moyen, le taux de rotation, le taux de départ, le taux d''absentéisme, les taux de fréquence et de gravité. (3 points)
- 1.2 Projetez les ressources de l''emploi « conducteur de presse », calculez l''écart et proposez un plan d''action. (3 points)
- 1.3 Proposez la structure d''un tableau de bord social mensuel (cinq indicateurs). (1 point)

## Dossier 2 : Relations sociales et dialogue social (7 points)

Taux de charges patronales fictif : 22 %. Trois scénarios sont étudiés : A, hausse générale de 6 % au 1er janvier N+1 ; B, hausse générale de 4 % au 1er juillet N+1 ; C, hausse uniforme de 10 000 FCFA par mois et par salarié au 1er janvier N+1 (sur la base de 400 salariés en moyenne).

- 2.1 Calculez le coût brut et le coût chargé de chaque scénario sur l''année N+1. (3 points)
- 2.2 Rédigez une note de recommandation à la direction pour préparer la négociation. (4 points)

## Dossier 3 : Rémunération globale et SIRH (6 points)

- 3.1 Pour le scénario B, calculez les effets niveau, masse et report (salaires stables en N). (2 points)
- 3.2 Un technicien gagne 270 000 FCFA ; la fourchette de son niveau va de 250 000 à 350 000 FCFA. Calculez et interprétez son compa-ratio. (1 point)
- 3.3 Quels modules du SIRH déployer en priorité et quelles précautions prendre pour les données personnelles ? (3 points)

## Corrigé détaillé

1.1 Effectif moyen = (380 + 420) / 2 = 400. Rotation = ((52 + 92) / 2) / 400 × 100 = 72 / 400 × 100 = 18 %. Taux de départ = 52 / 400 × 100 = 13 %. Absentéisme = 36 000 / 800 000 × 100 = 4,5 %. Taux de fréquence = 10 × 1 000 000 / 764 000 ≈ 13,09. Taux de gravité = 150 × 1 000 / 764 000 ≈ 0,20. Interprétation : rotation élevée, liée surtout aux nombreuses arrivées (croissance) mais aussi à 13 % de départs, à analyser ; absentéisme et accidents à rapprocher de la surcharge dénoncée par les délégués.

1.2 Ressources à trois ans = 30 − 9 − 3 − 2 = 16. Écart = 16 − 36 = −20 conducteurs. Plan : recruter des jeunes issus de formations techniques et organiser leur montée en compétences par le tutorat des conducteurs proches de la retraite (transmission du savoir-faire) ; promouvoir ou reconvertir des opérateurs internes motivés ; former tous les conducteurs à la nouvelle ligne avec le fournisseur ; échelonner les recrutements sur trois ans ; analyser les départs volontaires pour améliorer la fidélisation. Barème : 1 point calcul, 2 points plan argumenté.

1.3 Tableau de bord : effectif fin de mois, taux d''absentéisme, départs du mois, heures supplémentaires, accidents avec arrêt, avec pour chacun la valeur du mois, l''objectif, l''écart, la tendance et un code couleur d''alerte. On accepte aussi la masse salariale comparée au budget.

2.1 Scénario A : 1 440 000 000 × 6 % = 86 400 000 FCFA brut ; chargé = 86 400 000 × 1,22 = 105 408 000 FCFA. Scénario B : coût en année pleine 1 440 000 000 × 4 % = 57 600 000, sur six mois = 28 800 000 FCFA brut ; chargé = 35 136 000 FCFA. Scénario C : 10 000 × 12 × 400 = 48 000 000 FCFA brut ; chargé = 58 560 000 FCFA. Rappel : le scénario B coûtera 57 600 000 FCFA brut en année pleine dès N+2.

2.2 Note. En-tête : de la direction des ressources humaines à la direction générale ; objet : préparation de la négociation salariale. Contexte : croissance de l''effectif, revendication de 6 %, plainte de surcharge, absentéisme de 4,5 % et accidents à surveiller. Analyse : le scénario A répond pleinement à la demande mais coûte plus de 105 millions FCFA chargés ; le C coûte nettement moins et favorise les bas salaires (+5 % à 200 000 FCFA, +2 % à 500 000 FCFA) ; le B est le moins coûteux en N+1 mais reporte la charge. Recommandations : 1) ouvrir la négociation rapidement avec un calendrier ; 2) proposer une combinaison, par exemple une hausse uniforme proche du scénario C, complétée par des mesures sur la charge de travail (recrutements prévus par la GPEC, encadrement des heures supplémentaires) ; 3) se fixer un mandat et un point de rupture chiffrés ; 4) prévoir un accord écrit et un comité de suivi. Barème : forme 1 point, analyse 1,5 point, recommandations 1,5 point.

3.1 Effet niveau = 4 %. Masse N+1 = (6 × 100 + 6 × 104) / 12 = 102, effet masse = 2 %. Effet report sur N+2 = 104 / 102 − 1 ≈ 1,96 %.

3.2 Milieu = 300 000. Compa-ratio = 270 000 / 300 000 × 100 = 90 % : salaire sous le point de référence ; une augmentation individuelle est justifiée si ses performances sont bonnes.

3.3 Priorités : paie et administration du personnel (fiabilité, obligations légales), gestion des temps et absences (suivi de l''absentéisme et des heures supplémentaires, en lien avec la surcharge), puis tableaux de bord. La gestion des talents pourra suivre. Précautions : finalités définies, données limitées au nécessaire, droits d''accès par profil, sauvegardes et sécurité, information des salariés, vérification des formalités auprès de la Commission de protection des données personnelles, clauses de confidentialité avec le prestataire.

## Exercices pratiques

- Exercice 1. Effectif moyen 250, 20 départs, 30 arrivées : taux de rotation ?
- Exercice 2. Hausse de 2 % au 1er octobre, salaires stables auparavant : effet masse de l''année ?
- Exercice 3. Différence entre information et consultation ?
- Exercice 4. Fourchette 200 000 à 300 000 FCFA, salaire 275 000 FCFA : compa-ratio ?
- Exercice 5. Citez deux risques d''un projet SIRH.

## Corrigé

Exercice 1. ((20 + 30) / 2) / 250 × 100 = 25 / 250 × 100 = 10 %.

Exercice 2. Masse = (9 × 100 + 3 × 102) / 12 = 100,5 : effet masse = 0,5 %.

Exercice 3. L''information transmet des données aux représentants ; la consultation recueille leur avis avant la décision, que l''employeur prend ensuite.

Exercice 4. Milieu = 250 000 ; 275 000 / 250 000 × 100 = 110 %.

Exercice 5. Données reprises de mauvaise qualité et résistance des utilisateurs au changement (ou connexion insuffisante, dépassement du budget).', 'texte', 60, false, 50
from public.courses c where c.slug = 'lic-rh-l3'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Sujet type d''examen de Licence 3 RH (entraînement, corrigé détaillé)');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : GPEC et pilotage RH', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : étudiants de Licence 3 en ressources humaines et en management.
- Objectifs : conduire une démarche de GPEC en cinq étapes, lire une pyramide des âges, projeter les ressources d''un emploi et mesurer les écarts, construire un tableau de bord social et interpréter ses indicateurs.
- Matériel : diaporama (schéma de la démarche, trois formes de pyramides, tableau de projection, maquette de tableau de bord avec feux tricolores), tableau blanc, calculatrice, tableur facultatif.
- Prérequis : leçon « GPEC et pilotage RH : l''essentiel pour l''examen » ; indicateurs de base vus en L1 et L2.

## Déroulé minuté

## 00:00 – 05:00 · Ouverture : gouverner, c''est prévoir

Bonjour à toutes et à tous. Imaginez une entreprise d''énergie solaire qui gagne deux contrats de centrales et découvre, six mois avant leur mise en service, qu''il lui manque vingt techniciens qualifiés et que ses meilleurs experts partent à la retraite. Ce scénario n''a rien d''imaginaire. La GPEC sert précisément à l''éviter. Aujourd''hui, nous allons dérouler la démarche complète, calculs compris, puis apprendre à piloter avec un tableau de bord. Toutes les entreprises citées sont fictives.

## 05:00 – 15:00 · Définition et démarche en cinq étapes

La GPEC est une démarche d''anticipation qui adapte, à moyen terme, effectifs et compétences aux besoins issus de la stratégie, en associant les salariés à l''évolution de leur parcours. Je projette le schéma : à gauche, les ressources, actuelles puis projetées ; à droite, les besoins futurs ; au centre, les écarts ; en bas, les plans d''action.

Les cinq étapes : analyser l''existant ; projeter les ressources sans action nouvelle ; estimer les besoins ; mesurer les écarts quantitatifs et qualitatifs ; définir les plans d''action. Retenez la phrase clé de l''étape 2 : « sans action nouvelle ». On projette ce que deviendra l''effectif si l''on ne fait rien, pour mesurer ce qu''il faudra faire.

## 15:00 – 27:00 · Lire une pyramide des âges

Trois formes à reconnaître. La pyramide classique, base large : population jeune, enjeu de fidélisation et de développement des carrières. Le champignon, sommet large : vieillissement, départs massifs à venir, risque de perte de savoir-faire. Le losange, ventre important : risque d''embouteillage des promotions et de démotivation.

Exercice projeté. Sahel Énergie Solaire : 20 à 29 ans, 50 ; 30 à 39 ans, 90 ; 40 à 49 ans, 70 ; 50 à 59 ans, 40. Calculez l''âge moyen avec les centres de classe et la part des 50 ans et plus. Correction : (50 × 25 + 90 × 35 + 70 × 45 + 40 × 55) / 250 = 9 750 / 250 = 39 ans ; part des 50 ans et plus : 16 %. Interprétation : une forme plutôt en losange, avec un ventre de trentenaires ; risque de frustration si les postes de chef d''équipe sont peu nombreux. Action possible : carrières horizontales, expertise reconnue, mobilité vers les nouveaux sites.

## 27:00 – 42:00 · Projeter les ressources et mesurer les écarts

Emploi « technicien photovoltaïque » : 40 aujourd''hui. Horizon trois ans : 8 retraites, environ 2 départs volontaires par an, 2 promotions. Ressources projetées : 40 − 8 − 6 − 2 = 24. Besoins : 50. Écart : −26.

Attention aux pièges. Premier piège : oublier les promotions, qui font sortir des personnes de l''emploi même si elles restent dans l''entreprise. Deuxième piège : oublier que les recrutements de remplacement ne sont pas comptés dans la projection, puisqu''on projette sans action nouvelle. Troisième piège : s''arrêter au quantitatif.

Passons au qualitatif. La nouvelle technologie de stockage exige 30 techniciens qualifiés. Dix la maîtrisent, dont deux partent à la retraite : il en reste huit. Il faut donc qualifier au moins 22 personnes, en comptant les recrues. Le plan d''action combine : recruter 16 techniciens, reconvertir 10 électriciens internes, organiser le tutorat des futurs retraités, former au stockage. Vérifiez la cohérence : 24 + 16 + 10 = 50, le besoin est couvert.

## 42:00 – 47:00 · Quiz de mi-parcours

- Question 1 : que signifie « projeter sans action nouvelle » ?
- Question 2 : quelle forme de pyramide annonce des départs massifs à la retraite ?
- Question 3 : 20 salariés, 4 retraites, 3 départs volontaires, 1 promotion à trois ans ; ressources projetées ?
- Question 4 : citez deux types de plans d''action.

Réponses : 1) estimer l''effectif futur en ne tenant compte que des sorties prévisibles, sans recrutement ni formation ; 2) le champignon ; 3) 20 − 4 − 3 − 1 = 12 ; 4) recrutement et formation, ou mobilité interne, reconversion, tutorat.

## 47:00 – 1:00:00 · Étude de cas : la banque qui se numérise

Une banque fictive de Dakar ferme 10 agences sur 40 en trois ans. 60 guichetiers sont concernés ; le service clientèle à distance a besoin de 35 conseillers. Déroulons la démarche avec vous. Existant : âge, compétences, souhaits de mobilité des 60 guichetiers. Projection : supposons 8 départs à la retraite et 5 départs volontaires sur trois ans ; il reste 47 guichetiers concernés. Besoins : 35 conseillers à distance, et quelques postes dans les agences maintenues, disons 7. Écart : 47 − 42 = 5 personnes en sureffectif. Plans d''action : reconversion des volontaires vers la relation client à distance par une formation qualifiante, mobilité vers les agences maintenues, gestion des fins de carrière, et pour le solde, des mesures d''accompagnement négociées, dans le respect des procédures légales et en concertation avec les représentants du personnel.

Ce cas montre la dimension sociale de la GPEC : bien menée, elle transforme un plan de suppressions d''emplois en plan de reconversion.

Un mot sur la mise en œuvre. La GPEC ne se décrète pas depuis le bureau du DRH. Elle suppose d''impliquer la direction générale, qui fournit les hypothèses stratégiques, les managers, qui connaissent les compétences réelles de leurs équipes, et les représentants du personnel, qui doivent être informés et, selon les règles applicables, consultés. Elle suppose aussi des outils : référentiel des emplois, entretiens professionnels, matrice de compétences. Dans une copie, mentionner ces conditions de réussite montre que vous ne réduisez pas la GPEC à un calcul. Enfin, la GPEC est un exercice révisé chaque année : les hypothèses changent, les projections aussi.

## 1:00:00 – 1:15:00 · Le tableau de bord social

Je projette une maquette. Une ligne par indicateur ; colonnes : valeur du mois, objectif, écart, tendance, alerte en vert, orange ou rouge. Règle d''or : peu d''indicateurs, six à dix, choisis en fonction des priorités.

Les formules. Absentéisme : heures d''absence sur heures théoriques. Rotation : moyenne des départs et des arrivées sur l''effectif moyen. Taux de départ. Taux de féminisation. Taux de fréquence des accidents : accidents avec arrêt × 1 000 000 / heures travaillées. Taux de gravité : journées perdues × 1 000 / heures travaillées.

Exercice. Mars : 250 salariés × 170 heures = 42 500 heures théoriques, 2 125 heures d''absence. Taux : 5 %. Objectif : 3,5 %. Alerte rouge. Année précédente : 6 accidents, 90 journées perdues, 420 000 heures. Taux de fréquence : environ 14,29. Taux de gravité : environ 0,21.

Deuxième exercice : effectif moyen 320, 48 départs, 40 arrivées. Rotation : 44 / 320, soit 13,75 % ; taux de départ : 15 %. Interprétation : il y a plus de départs que d''arrivées, l''effectif diminue ; il faut savoir si c''est voulu.

## 1:15:00 – 1:23:00 · Interpréter et agir

Un indicateur sans interprétation ne vaut rien. Devant un absentéisme de 5 %, la démarche est : ventiler par service, par motif, par tranche d''âge ; comparer avec les mois précédents ; formuler des hypothèses, par exemple une surcharge de travail dans un service ou un management difficile ; vérifier par des entretiens ; agir ; suivre l''effet. Dans votre copie, écrivez toujours une phrase d''interprétation après chaque calcul. C''est ce qui distingue une copie de L3.

## 1:23:00 – 1:27:00 · Synthèse

La GPEC part de la stratégie, projette les ressources sans action nouvelle, mesure les écarts quantitatifs et qualitatifs, et y répond par une combinaison d''actions. Le tableau de bord rend ce pilotage visible chaque mois. Les deux outils se nourrissent : le tableau de bord signale les dérives, la GPEC les anticipe.

## 1:27:00 – 1:30:00 · Évaluation finale

- Question 1 : citez les cinq étapes de la GPEC.
- Question 2 : 15 comptables, 3 retraites, 4 départs volontaires, 1 promotion ; besoin de 12. Écart ?
- Question 3 : 4 accidents avec arrêt, 500 000 heures travaillées. Taux de fréquence ?
- Question 4 : 60 journées perdues pour ces mêmes heures. Taux de gravité ?
- Question 5 : quelle différence entre tableau de bord social et bilan social ?

Réponses : 1) existant, projection, besoins, écarts, plans d''action ; 2) ressources 7, écart −5 ; 3) 8 ; 4) 0,12 ; 5) le tableau de bord est un outil de pilotage fréquent et resserré, le bilan social un document annuel et plus exhaustif. Merci, et entraînez-vous avec le sujet type.', 'video', 90, false, 60
from public.courses c where c.slug = 'lic-rh-l3'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : GPEC et pilotage RH');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Relations sociales et dialogue social', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : étudiants de Licence 3 en ressources humaines, droit social et management.
- Objectifs : distinguer information, consultation et négociation ; identifier les acteurs du dialogue social ; préparer une négociation et chiffrer des scénarios salariaux ; analyser un conflit collectif et ses modes de règlement ; rédiger une note de recommandation.
- Matériel : diaporama (carte des acteurs à trois niveaux, échelle d''intensité du dialogue, grille de préparation de négociation, tableau des scénarios), tableau blanc, calculatrice.
- Prérequis : leçon « Relations sociales et dialogue social : l''essentiel pour l''examen » ; bases du droit du travail de L1.
- Avertissement : le Code du travail sénégalais est en cours de réforme (projet de loi n°15/2026). Les règles précises se vérifient dans les textes en vigueur ; le taux de charges utilisé est fictif.

## Déroulé minuté

## 00:00 – 05:00 · Ouverture

Bonjour. On présente souvent les relations sociales comme un champ de bataille entre direction et syndicats. C''est une vision pauvre. Les entreprises qui réussissent sont souvent celles où les désaccords se traitent tôt, autour d''une table, avec des chiffres partagés. Aujourd''hui, nous allons apprendre à préparer ce dialogue comme un professionnel des RH : connaître les acteurs, chiffrer, négocier, prévenir les conflits.

## 05:00 – 15:00 · Trois intensités du dialogue

Je projette une échelle à trois marches. Première marche, l''information : l''employeur communique des données, par exemple la situation économique ou un projet de réorganisation. Deuxième marche, la consultation : l''employeur demande l''avis des représentants avant de décider, mais décide seul. Troisième marche, la négociation : les deux parties cherchent un accord qui les engage.

Question au public : la direction présente aux délégués le planning des congés et recueille leurs remarques avant de l''arrêter. Quelle marche ? La consultation. Et si elle signe avec les syndicats un accord sur les primes ? La négociation.

Au sens de l''Organisation internationale du travail, le dialogue social englobe toutes ces formes d''échange entre gouvernements, employeurs et travailleurs.

## 15:00 – 27:00 · La carte des acteurs

Trois niveaux. Dans l''entreprise : la direction et la DRH ; les délégués du personnel, élus, qui portent les réclamations et sont informés et consultés ; les syndicats ; le comité d''hygiène et de sécurité lorsqu''il existe. Au niveau de la branche et au niveau national : syndicats et centrales syndicales, organisations d''employeurs, qui négocient les conventions collectives, interprofessionnelle et de branche. L''État : il fixe les règles, contrôle et concilie par l''inspection du travail, anime le dialogue tripartite. Le Sénégal dispose notamment d''un Haut Conseil du dialogue social et d''une Charte nationale sur le dialogue social. Au niveau régional, l''UEMOA et la CEDEAO encouragent l''harmonisation des politiques sociales.

Conseil d''examen : dans une copie, ne vous contentez pas de lister les acteurs ; dites qui fait quoi dans la situation du cas.

## 27:00 – 40:00 · Préparer et conduire une négociation

Grille de préparation en quatre temps. Diagnostic : que demandent les représentants ? Quelle est la situation économique ? Que pratiquent les concurrents ? Combien coûte chaque option ? Mandat : quel est l''objectif de la direction, sa marge de manœuvre, son point de rupture ? Conduite : calendrier, ordre du jour, propositions et contre-propositions, comptes rendus validés. Conclusion : accord écrit, formalités de dépôt et de publicité selon les règles applicables, communication aux salariés, comité de suivi.

Deux logiques. Distributive : on partage un gâteau de taille fixe, chacun cherche la plus grosse part. Intégrative : on agrandit le gâteau en ajoutant des sujets, par exemple une hausse de salaire contre un engagement sur la formation, la polyvalence ou la réduction des accidents. La logique intégrative produit des accords plus durables.

## 40:00 – 45:00 · Quiz de mi-parcours

- Question 1 : quelle différence entre consultation et négociation ?
- Question 2 : qui négocie une convention collective de branche ?
- Question 3 : qu''est-ce que le point de rupture dans un mandat ?
- Question 4 : citez un exemple de négociation intégrative.

Réponses : 1) la consultation recueille un avis, la négociation vise un accord qui engage ; 2) les syndicats de travailleurs et les organisations d''employeurs de la branche ; 3) la limite au-delà de laquelle la direction préfère ne pas conclure ; 4) une hausse de salaire échangée contre un plan de formation et un engagement de polyvalence.

## 45:00 – 1:02:00 · Chiffrer les scénarios : exercices corrigés

Thiès Ciment Préfa, entreprise fictive : 300 salariés, masse salariale annuelle de 1 080 000 000 FCFA, salaire moyen mensuel de 300 000 FCFA, charges patronales fictives de 22 %.

Scénario A, 4 % au 1er janvier : 43 200 000 FCFA brut, 52 704 000 FCFA chargé. Scénario B, 12 000 FCFA uniformes par mois : 12 000 × 12 × 300 = 43 200 000 FCFA, même coût. Mais effet différent : +6 % pour un salaire de 200 000 FCFA, +2 % pour un salaire de 600 000 FCFA. Scénario C, 4 % au 1er juillet : 21 600 000 FCFA brut sur l''année, mais coût d''année pleine l''année suivante.

À vous : masse salariale de 720 000 000 FCFA, 200 salariés. Hausse de 5 % et hausse uniforme de 15 000 FCFA. Correction : 36 000 000 FCFA dans les deux cas ; coût chargé 43 920 000 FCFA. La hausse uniforme donne 10 % à un salaire de 150 000 FCFA et environ 3,3 % à un salaire de 450 000 FCFA.

Pourquoi ces calculs sont-ils décisifs ? Parce qu''ils permettent de proposer plusieurs options de coût égal mais d''effets différents. Une hausse uniforme peut satisfaire les bas salaires, une hausse en pourcentage préserve la hiérarchie des salaires. Le négociateur qui arrive avec ce tableau garde la main.

## 1:02:00 – 1:15:00 · Les conflits collectifs

La grève est la cessation concertée et collective du travail pour appuyer des revendications professionnelles. Garantie par la Constitution, elle est encadrée par la loi : conditions de déclenchement, notamment un préavis, service minimum dans certains secteurs. Vérifiez toujours les règles dans les textes en vigueur, surtout dans le contexte de la réforme. La grève licite suspend le contrat : le salaire n''est en principe pas dû pour les heures non travaillées. Les comportements illicites, violences ou entrave à la liberté du travail, peuvent être sanctionnés.

Trois modes de règlement : la conciliation, où les parties sont aidées à trouver elles-mêmes un accord, souvent devant l''inspection du travail ; la médiation, où un tiers propose une solution ; l''arbitrage, où un tiers tranche.

Indicateurs du climat social : réclamations, journées perdues pour grève, absentéisme, départs, enquêtes internes. Exemple : 120 grévistes pendant 2 jours, soit 240 journées perdues, 0,8 journée par salarié pour un effectif de 300.

## 1:15:00 – 1:24:00 · Corrigé commenté : la note de recommandation

Cas : les délégués de Thiès Ciment Préfa menacent d''une grève pour des heures supplémentaires impayées et des équipements de protection usés. La direction veut attendre. Rédigeons la note ensemble. En-tête : de la DRH à la direction générale, date, objet. Constat : revendications fondées sur des obligations légales, risque de grève et de contentieux. Analyse : attendre aggrave le risque et dégrade la confiance. Recommandations hiérarchisées : recevoir les délégués sans délai ; vérifier et régulariser les heures supplémentaires dues ; remplacer les équipements de protection ; instaurer une réunion mensuelle et un suivi des réclamations ; communiquer aux salariés. Conclusion : le coût de ces mesures est faible comparé à celui d''un conflit.

Remarquez le style : phrases courtes, neutres, chiffrées quand c''est possible, et des recommandations qui commencent par un verbe d''action.

Dernier conseil de forme : une note ne dépasse pas, en principe, deux pages. Le décideur doit pouvoir lire la conclusion en trente secondes. Commencez donc, si l''énoncé le permet, par un court résumé de deux lignes qui annonce la recommandation principale, puis développez. Évitez les jugements sur les personnes, du type « les délégués sont de mauvaise foi » : ils affaiblissent la crédibilité de la note et peuvent envenimer le conflit si elle circule. Restez sur les faits, les règles et les coûts.

## 1:24:00 – 1:30:00 · Synthèse et évaluation finale

Retenez : trois intensités, trois niveaux d''acteurs, une préparation en quatre temps, des scénarios chiffrés, la prévention avant le conflit.

- Question 1 : masse salariale de 900 000 000 FCFA, hausse de 3 %. Coût brut ?
- Question 2 : avec 22 % de charges fictives, coût chargé ?
- Question 3 : 250 salariés, hausse uniforme de 10 000 FCFA par mois. Coût brut annuel ?
- Question 4 : quel mode de règlement aboutit à une décision qui s''impose aux parties ?
- Question 5 : citez deux indicateurs de climat social.

Réponses : 1) 27 000 000 FCFA ; 2) 32 940 000 FCFA ; 3) 10 000 × 12 × 250 = 30 000 000 FCFA ; 4) l''arbitrage, selon les règles applicables ; 5) l''absentéisme et les journées perdues pour grève. Merci à tous.', 'video', 90, false, 70
from public.courses c where c.slug = 'lic-rh-l3'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Relations sociales et dialogue social');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : Rémunération globale et SIRH', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : étudiants de Licence 3 en ressources humaines, gestion et systèmes d''information.
- Objectifs : décrire la rémunération globale et la chiffrer, appliquer les principes d''équité interne et externe, calculer le compa-ratio, les effets niveau, masse et report, présenter un SIRH, conduire son projet et évaluer sa rentabilité dans le respect de la protection des données.
- Matériel : diaporama (cercles de la rémunération globale, fourchette salariale, chronologie des effets, carte des modules du SIRH, étapes du projet), tableau blanc, calculatrice.
- Prérequis : leçon « Rémunération globale et SIRH : l''essentiel pour l''examen » ; paie de L2.

## Déroulé minuté

## 00:00 – 05:00 · Ouverture

Bonjour. Demandez à un salarié combien il gagne : il vous donnera son net mensuel. Demandez à son employeur combien il lui coûte : vous obtiendrez un chiffre bien plus élevé. Entre les deux, il y a la rémunération globale, les charges, les avantages. Aujourd''hui, nous allons apprendre à raisonner comme un responsable de la rémunération : chiffrer, comparer, anticiper. Puis nous verrons comment un SIRH aide à piloter tout cela. Entreprises fictives, montants fictifs.

## 05:00 – 17:00 · Les cercles de la rémunération globale

Je projette quatre cercles. Au centre, le fixe : salaire de base et compléments liés au poste ou à l''ancienneté. Ensuite, le variable individuel : primes sur objectifs, commissions. Puis le variable collectif : primes d''équipe, participation aux résultats selon les dispositifs de l''entreprise. Enfin, les périphériques : avantages en nature comme le logement ou le véhicule, avantages sociaux comme la couverture santé ou le transport, gratifications prévues par l''entreprise.

Exercice : ingénieur de Baobab Telecom, fixe 350 000 FCFA par mois, prime sur objectifs 300 000 FCFA par an, gratification de fin d''année 350 000 FCFA, couverture santé 15 000 FCFA par mois, transport 10 000 FCFA par mois. Calculez. Correction : 4 200 000 + 300 000 + 350 000 + 180 000 + 120 000 = 5 150 000 FCFA ; part du fixe environ 81,6 %. Message : présenter ce total au salarié, par exemple dans un bilan individuel, renforce la perception de ce que l''entreprise lui consacre.

## 17:00 – 30:00 · Les trois équités et le compa-ratio

Équité interne : à poste de même valeur, salaire cohérent. Outils : classification conventionnelle, évaluation des postes, fourchettes par niveau. Équité externe : être compétitif face au marché, grâce aux enquêtes de rémunération. Équité individuelle : reconnaître la performance. Sans oublier le droit : salaire minimum, minima conventionnels, égalité de rémunération entre femmes et hommes pour un travail de valeur égale.

Le compa-ratio, maintenant. Formule : salaire réel divisé par le milieu de la fourchette, fois 100. Fourchette de 400 000 à 600 000 FCFA, milieu 500 000. Salaire de 450 000 : 90 %. Salaire de 550 000 : 110 %. Comment l''utiliser ? Une politique classique accorde des augmentations plus fortes aux bons performeurs situés sous 100 %, et plus modérées à ceux qui sont déjà au-dessus. On rapproche ainsi progressivement chacun de sa juste place.

Question au public : un salarié moyen performant a un compa-ratio de 120 %. Que faire ? Réponse : ne pas le baisser, ce serait illégal et démotivant, mais modérer ses augmentations futures, ou lui proposer une évolution vers un poste de niveau supérieur.

## 30:00 – 44:00 · Effets niveau, masse et report

Chronologie projetée. Base 100 en N−1, stable. Hausse de 4 % au 1er juillet N. Effet niveau : de décembre à décembre, 4 %. Effet masse : la masse de N vaut (6 × 100 + 6 × 104) / 12 = 102, soit 2 %. Effet report : l''année N+1 démarre au niveau 104 alors que la masse de N était à 102, donc 104 / 102 − 1, environ 1,96 %, d''augmentation acquise pour N+1 avant toute nouvelle mesure.

À vous : 3 % au 1er avril. Correction : effet niveau 3 % ; masse (3 × 100 + 9 × 103) / 12 = 102,25, effet masse 2,25 % ; effet report 103 / 102,25 − 1, environ 0,73 %. Plus la hausse est précoce, plus l''effet masse est fort et l''effet report faible.

Pourquoi c''est stratégique ? Un directeur financier qui retarde les hausses au 1er octobre semble économiser, mais il charge l''année suivante. En négociation, ces effets permettent de construire des propositions intelligentes : une hausse en deux temps, par exemple, étale le coût.

## 44:00 – 49:00 · Quiz de mi-parcours

- Question 1 : citez les quatre cercles de la rémunération globale.
- Question 2 : fourchette de 300 000 à 500 000, salaire de 440 000. Compa-ratio ?
- Question 3 : hausse de 2 % au 1er octobre, salaires stables auparavant. Effet masse ?
- Question 4 : qu''est-ce que l''équité externe ?

Réponses : 1) fixe, variable individuel, variable collectif, périphériques ; 2) 110 % ; 3) (9 × 100 + 3 × 102) / 12 = 100,5, soit 0,5 % ; 4) la compétitivité des salaires par rapport au marché.

## 49:00 – 1:02:00 · Le SIRH : modules et architecture

Un SIRH, c''est l''ensemble des outils, des données et des procédures qui collectent, traitent, stockent et diffusent l''information RH. Je projette la carte des modules : administration du personnel ; paie et déclarations ; temps et absences ; gestion des talents, avec recrutement, formation, entretiens, compétences ; libre-service pour salariés et managers ; tableaux de bord. Au centre, une base de données unique : c''est le principal intérêt, une information saisie une fois et utilisée partout.

Deux options techniques : un logiciel installé sur les serveurs de l''entreprise, ou un service en ligne par abonnement. Le second limite l''investissement initial mais dépend de la qualité de la connexion, point à vérifier sur tous les sites, notamment hors des grandes villes.

## 1:02:00 – 1:15:00 · Conduire le projet et mesurer sa rentabilité

Les étapes : cahier des charges ; choix de la solution et du prestataire ; paramétrage et reprise des données ; tests, notamment une paie en double pendant plusieurs mois ; formation ; déploiement ; amélioration continue. Les risques : données reprises de mauvaise qualité, résistance au changement, connexion insuffisante, dépassement du budget.

Rentabilité, exercice corrigé. Baobab Telecom : implantation 9 000 000 FCFA, abonnement 3 000 000 FCFA par an. Gains : 60 heures par mois économisées à 6 000 FCFA, soit 4 320 000 FCFA par an ; erreurs de paie évitées 2 400 000 FCFA ; impression et archivage 780 000 FCFA. Total des gains : 7 500 000 FCFA. Gain net annuel : 4 500 000 FCFA. Délai de récupération : 2 ans.

Exercice rapide : implantation 6 000 000, abonnement 2 000 000, gains 5 000 000. Délai : 6 000 000 / 3 000 000 = 2 ans. Prudence : les gains de temps ne sont réels que si le temps libéré est réaffecté à des tâches utiles.

Protection des données : un SIRH contient des données personnelles, parfois sensibles. Au Sénégal, la loi de 2008 sur la protection des données à caractère personnel et la Commission de protection des données personnelles encadrent ces traitements ; vérifiez les formalités applicables. Principes : finalité définie, données limitées au nécessaire, sécurité, accès par profil, information des salariés, confidentialité imposée au prestataire.

## 1:15:00 – 1:24:00 · Cas de synthèse commenté

Une PME fictive de Saint-Louis, 80 salariés, paie sur tableur, congés sur papier, erreurs fréquentes. Recommandation : une solution proportionnée, paie et temps en service en ligne, plutôt qu''un SIRH complet ; cahier des charges simple ; comparaison de deux ou trois offres ; nettoyage des données ; paie en double deux mois ; formation ; information des salariés et formalités auprès de la Commission. Ensuite seulement, enrichir avec la gestion des talents. Montrez au correcteur que vous savez adapter l''ambition aux moyens.

Ajoutez un volet conduite du changement : désigner un référent interne, présenter le projet aux salariés en expliquant ce qui change pour eux (bulletins dématérialisés, demandes de congés en ligne), prévoir une assistance pendant les premières semaines et recueillir les difficultés. Un SIRH techniquement parfait mais mal accepté par les utilisateurs échoue. Proposez enfin deux ou trois indicateurs de réussite : nombre d''erreurs de paie, délai de traitement d''une demande de congé, taux d''utilisation du libre-service.

## 1:24:00 – 1:30:00 · Synthèse et évaluation finale

- Question 1 : fixe 280 000 FCFA par mois, commissions 960 000 FCFA par an, santé 12 000 FCFA par mois. Rémunération globale annuelle ?
- Question 2 : quelle est la part du variable ?
- Question 3 : hausse de 4 % au 1er juillet ; effet report ?
- Question 4 : citez trois modules d''un SIRH.
- Question 5 : citez deux principes de protection des données.

Réponses : 1) 3 360 000 + 960 000 + 144 000 = 4 464 000 FCFA ; 2) environ 21,5 % ; 3) environ 1,96 % ; 4) paie, temps et absences, gestion des talents ; 5) finalité déterminée et accès restreints. Merci et bonne préparation de vos examens.', 'video', 90, false, 80
from public.courses c where c.slug = 'lic-rh-l3'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : Rémunération globale et SIRH');
