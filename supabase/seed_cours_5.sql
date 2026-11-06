-- Fichier généré par tools/generate-seed.mjs — ne pas modifier à la main.
-- Cours (partie 5/5). À exécuter après seed.sql.

-- Cours : Espagnol LV2 : réussir l'épreuve du BFEM
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'bfem-espagnol', (select id from public.levels where name = '3e'), null, 'Espagnol (LV2)', 'Espagnol LV2 : réussir l''épreuve du BFEM', 'Ce cours d''examen prépare l''épreuve d''espagnol LV2 du BFEM : méthode de compréhension écrite, vocabulaire thématique (famille, école, ville, santé, environnement), grammaire essentielle (ser et estar, présent, prétérit, futur, gustar, impératif, comparatifs) et expression écrite. Les explications sont en français et les exemples en espagnol. Prérequis : les bases d''espagnol acquises de la 4e à la 3e.', true, 108
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Comprendre l''épreuve et méthode de travail', '## Objectifs de la leçon

- Savoir ce qu''on attend de toi à l''épreuve d''espagnol LV2 du BFEM.
- Connaître les types d''exercices et une méthode pour chacun.
- Éviter les erreurs les plus fréquentes.
- Organiser tes révisions sur 8 semaines.

## Comment se présente l''épreuve

L''épreuve d''espagnol LV2 s''appuie en général sur un texte court en espagnol (récit, dialogue, lettre, article simple) suivi de questions. On y trouve habituellement trois grandes familles d''exercices : la compréhension du texte, des exercices de langue (grammaire, conjugaison, vocabulaire) et une petite expression écrite. La durée, le coefficient et le barème dépendent des textes officiels en vigueur : renseigne-toi auprès de tes professeurs.

Les consignes sont souvent rédigées en espagnol. Il faut donc les comprendre parfaitement :
- Lee el texto : lis le texte.
- Contesta a las preguntas : réponds aux questions.
- Di si es verdadero o falso y justifica : dis si c''est vrai ou faux et justifie.
- Busca en el texto : cherche dans le texte.
- Completa con : complète avec.
- Conjuga los verbos en presente / en pretérito / en futuro : conjugue les verbes au présent, au prétérit, au futur.
- Traduce al francés : traduis en français.
- Redacta / Escribe unas líneas : rédige quelques lignes.

## Méthode pour la compréhension écrite

- Lis d''abord le titre, la source et les questions : ils annoncent le sujet.
- Lis le texte une première fois en entier sans t''arrêter aux mots inconnus.
- Repère qui parle, où, quand, ce qui se passe (¿quién?, ¿dónde?, ¿cuándo?, ¿qué?).
- Relis en cherchant la réponse à chaque question et souligne la phrase du texte qui la justifie.
- Réponds par une phrase complète en espagnol, en reprenant les mots de la question.

Exemple. Question : ¿Dónde vive Moussa? Réponse attendue : Moussa vive en Saint-Louis, con sus padres. Une réponse d''un seul mot (« Saint-Louis ») rapporte moins de points.

## Les mots interrogatifs à reconnaître

Ils portent toujours un accent écrit :
- ¿Quién? / ¿Quiénes? : qui ?
- ¿Qué? : que, quoi, quel ?
- ¿Dónde? / ¿Adónde? : où ? / vers où ?
- ¿Cuándo? : quand ?
- ¿Cómo? : comment ?
- ¿Por qué? : pourquoi ? (réponse : porque, parce que)
- ¿Cuánto? / ¿Cuántos? : combien ?
- ¿Cuál? : lequel, quel ?

Bien les identifier permet de savoir exactement quelle information chercher dans le texte.

## Méthode pour « vrai ou faux »

On écrit « Verdadero » ou « Falso » puis on recopie entre guillemets la courte phrase du texte qui prouve la réponse. Sans justification, la réponse ne vaut presque rien.

## Méthode pour l''expression écrite

- Lis bien le sujet : à qui écris-tu, sur quoi, combien de lignes ?
- Fais un petit plan au brouillon : introduction, deux ou trois idées, conclusion.
- Utilise des phrases simples et correctes plutôt que des phrases longues et fausses.
- Emploie des mots de liaison : primero (d''abord), luego (ensuite), además (de plus), pero (mais), porque (parce que), por eso (c''est pourquoi), por fin (enfin).
- Relis en vérifiant les accords, les accents et les terminaisons des verbes.

## Les erreurs fréquentes

- Oublier les accents écrits : está (il est) n''est pas esta (cette) ; habló (il a parlé) n''est pas hablo (je parle).
- Oublier les signes d''ouverture ¿ et ¡ : ¿Cómo estás? ¡Qué bonito!
- Confondre ser et estar.
- Calquer le français : « je suis 15 ans » se dit tengo quince años (avoir).
- Écrire un mot français à la place d''un mot espagnol (faux amis) : embarazada veut dire « enceinte », pas « embarrassée » ; constipado signifie « enrhumé ».
- Répondre en français alors qu''on demande une réponse en espagnol.

## Plan de révision sur 8 semaines

- Semaine 1 : consignes de l''épreuve, présent de l''indicatif, ser et estar.
- Semaine 2 : vocabulaire de la famille et de l''école ; compréhension de textes courts.
- Semaine 3 : gustar et verbes du même type, comparatifs et superlatifs.
- Semaine 4 : vocabulaire de la ville, de la santé et de l''environnement.
- Semaine 5 : prétérit (passé simple espagnol), réguliers et irréguliers.
- Semaine 6 : futur et impératif ; expression écrite (lettre, description, récit).
- Semaine 7 : sujets d''entraînement complets en temps limité.
- Semaine 8 : révision des tableaux de conjugaison et du cahier d''erreurs.

Chaque jour, apprends dix mots nouveaux avec une phrase d''exemple, lis un petit texte à voix haute et conjugue deux verbes à tous les temps étudiés.

## Exercices pratiques

Exercice 1 : Traduire les consignes : Contesta a las preguntas. Busca en el texto. Conjuga en futuro.

Exercice 2 : Ajouter les signes et accents manquants : Como te llamas? Que calor!

Exercice 3 : Répondre par une phrase complète : ¿Dónde vive Awa? (Elle vit à Ziguinchor.)

Exercice 4 : Corriger l''erreur : « Yo soy quince años. »

Exercice 5 : Texte : « Fatou se levanta a las seis. Después, va al colegio en autobús. » Vrai ou faux, justifier : Fatou va al colegio a pie.

Exercice 6 : Relier les idées avec un mot de liaison : Me gusta el colegio. Las clases son interesantes.

## Corrigé

Exercice 1 : Réponds aux questions. Cherche dans le texte. Conjugue au futur.

Exercice 2 : ¿Cómo te llamas? ¡Qué calor!

Exercice 3 : Awa vive en Ziguinchor.

Exercice 4 : Yo tengo quince años.

Exercice 5 : Falso : « va al colegio en autobús ».

Exercice 6 : Me gusta el colegio porque las clases son interesantes.', 'texte', 50, true, 10
from public.courses c where c.slug = 'bfem-espagnol'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Comprendre l''épreuve et méthode de travail');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Vocabulaire thématique et compréhension écrite', '## Objectifs de la leçon

- Réviser le vocabulaire des cinq grands thèmes du collège.
- S''entraîner à comprendre un texte et à justifier ses réponses.

## Fiche 1 : la famille (la familia)

- el padre, la madre, los padres (les parents) ; el hijo, la hija ; el hermano, la hermana.
- el abuelo, la abuela ; el tío, la tía ; el primo, la prima ; el sobrino (le neveu).
- el marido / el esposo, la mujer / la esposa ; casado (marié), soltero (célibataire).
- mayor (aîné, plus âgé), menor (cadet) : mi hermano mayor.

Phrases utiles : Somos seis en mi familia. Tengo dos hermanos y una hermana. Mi abuela vive con nosotros.

## Fiche 2 : l''école (el colegio)

- el alumno, la alumna ; el profesor, la profesora ; el director.
- la clase, el aula (la salle), la pizarra (le tableau), el cuaderno, el libro, el bolígrafo, la regla.
- la asignatura (la matière) : las matemáticas, la historia, las ciencias, el francés, el inglés, el español.
- el recreo (la récréation), los deberes (les devoirs), el examen, aprobar (réussir un examen), suspender (échouer).

## Fiche 3 : la ville (la ciudad)

- la calle (la rue), la plaza, el barrio (le quartier), el mercado, la tienda, el hospital, la mezquita, la iglesia, el ayuntamiento (la mairie).
- el coche, el autobús, el taxi, la moto ; el tráfico, el atasco (l''embouteillage), el ruido.
- Expressions de lieu : cerca de (près de), lejos de (loin de), al lado de (à côté de), enfrente de (en face de), a la derecha, a la izquierda, todo recto (tout droit).

## Fiche 4 : la santé (la salud)

- el médico, la enfermera, el hospital, la farmacia, el medicamento.
- estar enfermo (être malade), tener fiebre (avoir de la fièvre), tener tos (tousser), me duele la cabeza (j''ai mal à la tête), me duelen los dientes.
- el paludismo (le paludisme), el mosquito, la mosquitera (la moustiquaire), lavarse las manos, el agua potable, hacer deporte.

Attention : doler fonctionne comme gustar. Me duele la cabeza (un seul élément), me duelen los ojos (plusieurs).

## Fiche 5 : l''environnement (el medio ambiente)

- la naturaleza, el árbol, el bosque, el río, el mar, la playa, la lluvia, la sequía (la sécheresse), el calor.
- la basura (les ordures), el plástico, la contaminación, reciclar, proteger, plantar árboles, ahorrar agua.
- Expressions : hay que + infinitif (il faut) ; no hay que (il ne faut pas) ; es importante + infinitif.

Exemple : Hay que proteger los árboles. No hay que tirar las bolsas de plástico en la calle.

## Texte d''entraînement

« Me llamo Khady y tengo catorce años. Vivo en Thiès con mis padres y mis dos hermanos. Mi padre es mecánico y mi madre vende telas en el mercado. Todos los días voy al colegio en bicicleta, porque está a dos kilómetros de mi casa. Mi asignatura preferida es la biología, porque quiero ser médica. El sábado pasado, mis compañeros y yo limpiamos el patio del colegio y plantamos diez árboles. Fue un día muy bonito. El año próximo, quiero organizar otra jornada de limpieza en mi barrio. »

Questions et méthode :
- Qui parle ? Khady, une élève de 14 ans.
- Où ? À Thiès.
- Quand ? Le présent (sa vie), le passé (el sábado pasado), le futur (el año próximo).
- Thème : l''école, la famille, l''environnement.

Note grammaticale du texte : limpiamos et plantamos sont ici au prétérit (« nous avons nettoyé », « nous avons planté »), car ils suivent el sábado pasado. Au présent, la forme serait la même : c''est le contexte qui indique le temps.

## Exercices pratiques

Exercice 1 : Traduire : el abuelo, la pizarra, el mercado, la fiebre, la basura, la sequía.

Exercice 2 : Donner le mot espagnol : la tante, le cahier, la rue, la pharmacie, l''arbre.

Exercice 3 : Compléter avec duele ou duelen : Me … la garganta. Le … los pies.

Exercice 4 : Questions sur le texte. ¿Cuántos años tiene Khady? ¿Qué hace su madre? ¿Cómo va al colegio?

Exercice 5 : Vrai ou faux, justifier avec le texte : a) Khady va al colegio en autobús. b) Khady quiere ser médica. c) Los alumnos plantaron veinte árboles.

Exercice 6 : Relever dans le texte trois verbes au présent, deux verbes au prétérit et une expression du futur.

Exercice 7 : Écrire trois phrases avec « hay que » pour protéger l''environnement de ton quartier.

Exercice 8 : Traduire en français : « Mi asignatura preferida es la biología, porque quiero ser médica. »

## Corrigé

Exercice 1 : le grand-père, le tableau, le marché, la fièvre, les ordures, la sécheresse.

Exercice 2 : la tía, el cuaderno, la calle, la farmacia, el árbol.

Exercice 3 : Me duele la garganta. Le duelen los pies.

Exercice 4 : Khady tiene catorce años. Su madre vende telas en el mercado. Va al colegio en bicicleta.

Exercice 5 : a) Falso : « voy al colegio en bicicleta ». b) Verdadero : « quiero ser médica ». c) Falso : « plantamos diez árboles ».

Exercice 6 : Présent : me llamo, tengo, vivo (aussi es, vende, voy, está, quiero). Prétérit : limpiamos, plantamos (et fue). Futur : quiero organizar otra jornada (el año próximo).

Exercice 7 : Exemples : Hay que reciclar el plástico. Hay que plantar árboles en el barrio. No hay que tirar basura en la calle.

Exercice 8 : Ma matière préférée est la biologie, parce que je veux être médecin.', 'texte', 55, false, 20
from public.courses c where c.slug = 'bfem-espagnol'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Vocabulaire thématique et compréhension écrite');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Grammaire 1 : ser et estar, présent, gustar, comparatifs', '## Objectifs de la leçon

- Choisir correctement entre ser et estar.
- Conjuguer le présent régulier et les principaux irréguliers.
- Employer gustar et les comparatifs.

## Fiche 1 : ser et estar

Les deux verbes se traduisent par « être », mais ne s''emploient pas dans les mêmes cas.

- ser : soy, eres, es, somos, sois, son.
- estar : estoy, estás, está, estamos, estáis, están.

On emploie ser pour :
- l''identité et la nationalité : Soy Mamadou. Somos senegaleses.
- la profession : Mi madre es enfermera.
- les caractéristiques durables : La casa es grande. Mi hermano es alto.
- l''heure et la date : Son las ocho. Hoy es lunes.
- la matière et l''origine : La mesa es de madera. Soy de Kolda.

On emploie estar pour :
- la localisation : Dakar está en la costa. El libro está en la mesa.
- un état passager : Estoy cansado. La sopa está caliente. Hoy estoy enfermo.
- la forme progressive estar + gérondif : Estoy estudiando (je suis en train d''étudier).

Le gérondif se forme avec -ando pour les verbes en -ar (hablando) et -iendo pour les verbes en -er et -ir (comiendo, viviendo).

Attention au changement de sens : Es aburrido (il est ennuyeux) ; está aburrido (il s''ennuie).

## Fiche 2 : le présent de l''indicatif

Verbes réguliers :
- hablar : hablo, hablas, habla, hablamos, habláis, hablan.
- comer : como, comes, come, comemos, coméis, comen.
- vivir : vivo, vives, vive, vivimos, vivís, viven.

Verbes à diphtongue (e devient ie, o devient ue, sauf aux formes nosotros et vosotros) :
- querer : quiero, quieres, quiere, queremos, queréis, quieren.
- poder : puedo, puedes, puede, podemos, podéis, pueden.
- dormir : duermo, duermes, duerme, dormimos, dormís, duermen.

Verbes en e qui devient i : pedir : pido, pides, pide, pedimos, pedís, piden.

Irréguliers à la première personne : tengo (tener), hago (hacer), salgo (salir), pongo (poner), conozco (conocer), sé (saber), doy (dar), veo (ver).

Très irréguliers :
- tener : tengo, tienes, tiene, tenemos, tenéis, tienen.
- ir : voy, vas, va, vamos, vais, van.

Les verbes pronominaux : levantarse : me levanto, te levantas, se levanta, nos levantamos, os levantáis, se levantan.

## Fiche 3 : gustar et les verbes du même type

Gustar signifie « plaire ». Ce qui plaît est le sujet, placé souvent après le verbe ; la personne est exprimée par un pronom.

- me gusta, te gusta, le gusta, nos gusta, os gusta, les gusta + un nom singulier ou un infinitif.
- me gustan, te gustan… + un nom pluriel.

Exemples : Me gusta el fútbol. Me gustan los mangos. Nos gusta bailar. A Fatou le gusta leer. A mis padres les gusta el thieboudienne.

Pour insister : A mí me gusta… ; A ti te gusta…
Pour la négation : No me gusta el ruido.
Même fonctionnement : encantar (adorer), doler (faire mal), interesar (intéresser) : Me encanta la música. Me interesan las ciencias.

## Fiche 4 : comparatifs et superlatifs

- Supériorité : más + adjectif + que : Dakar es más grande que Kaolack.
- Infériorité : menos + adjectif + que : El autobús es menos rápido que el avión.
- Égalité : tan + adjectif + como : Aminata es tan alta como su hermana.
- Égalité avec un nom : tanto, tanta, tantos, tantas + nom + como : Tengo tantos libros como tú.

Comparatifs irréguliers : mejor (meilleur), peor (pire), mayor (plus âgé ou plus grand), menor (plus jeune).
Exemple : Mi hermano es mayor que yo.

Superlatif relatif : el / la más + adjectif + de : Es el alumno más trabajador de la clase.
Superlatif absolu : -ísimo : grande devient grandísimo ; bonito devient bonitísimo ; rico devient riquísimo.

## Points clés

- ser : identité, caractère, heure ; estar : lieu, état, action en cours.
- gusta + singulier ou infinitif, gustan + pluriel.
- más / menos … que, tan … como.

## Exercices pratiques

Exercice 1 : Compléter avec ser ou estar au présent : Mi padre … profesor. Saint-Louis … en el norte de Senegal. Hoy (yo) … cansada. … las diez.

Exercice 2 : Conjuguer au présent : (nosotros) comer ; (ella) vivir ; (yo) tener ; (tú) poder ; (ellos) dormir ; (yo) hacer.

Exercice 3 : Compléter avec gusta ou gustan : Me … las frutas. A Ibrahima le … jugar al baloncesto. Nos … el verano.

Exercice 4 : Traduire : Mes parents aiment le cinéma. J''ai mal aux dents.

Exercice 5 : Comparer avec l''élément indiqué : la bicicleta / la moto (rápida, −). Mi hermana / mi prima (alta, =).

Exercice 6 : Mettre à la forme progressive : Leo un libro. Los niños juegan en la calle.

Exercice 7 : Écrire quatre phrases pour te présenter en utilisant ser, estar, tener et gustar.

## Corrigé

Exercice 1 : Mi padre es profesor. Saint-Louis está en el norte de Senegal. Hoy estoy cansada. Son las diez.

Exercice 2 : comemos ; vive ; tengo ; puedes ; duermen ; hago.

Exercice 3 : Me gustan las frutas. A Ibrahima le gusta jugar al baloncesto. Nos gusta el verano.

Exercice 4 : A mis padres les gusta el cine. Me duelen los dientes.

Exercice 5 : La bicicleta es menos rápida que la moto. Mi hermana es tan alta como mi prima.

Exercice 6 : Estoy leyendo un libro (leer donne leyendo, avec y). Los niños están jugando en la calle.

Exercice 7 : Exemple : Me llamo Ousmane y soy senegalés. Tengo quince años. Hoy estoy contento porque es sábado. Me gusta mucho el fútbol y me gustan las matemáticas.', 'texte', 55, false, 30
from public.courses c where c.slug = 'bfem-espagnol'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Grammaire 1 : ser et estar, présent, gustar, comparatifs');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Grammaire 2 : prétérit, futur, impératif et expression écrite', '## Objectifs de la leçon

- Conjuguer le prétérit (pretérito indefinido) et le futur.
- Former l''impératif affirmatif et négatif.
- Rédiger une lettre, une description ou un petit récit.

## Fiche 1 : le prétérit

Le prétérit exprime une action passée et terminée, souvent avec ayer, el año pasado, la semana pasada, en 1960, hace dos días. Il se traduit par le passé composé ou le passé simple français.

Verbes réguliers :
- hablar : hablé, hablaste, habló, hablamos, hablasteis, hablaron.
- comer : comí, comiste, comió, comimos, comisteis, comieron.
- vivir : viví, viviste, vivió, vivimos, vivisteis, vivieron.

Les accents écrits sont obligatoires sur la 1re et la 3e personne du singulier : hablé, habló.

Irréguliers essentiels :
- ser et ir (mêmes formes) : fui, fuiste, fue, fuimos, fuisteis, fueron.
- tener : tuve, tuviste, tuvo, tuvimos, tuvisteis, tuvieron.
- estar : estuve, estuviste, estuvo, estuvimos, estuvisteis, estuvieron.
- hacer : hice, hiciste, hizo, hicimos, hicisteis, hicieron.
- poder : pude ; poner : puse ; venir : vine ; querer : quise ; decir : dije (dijeron) ; dar : di, diste, dio.

Ces prétérits irréguliers ne portent pas d''accent écrit : tuve, hizo, fue.

Exemples : Ayer fui al mercado con mi madre. El año pasado, mi equipo ganó el campeonato. Senegal fue independiente en 1960.

## Fiche 2 : le futur

On ajoute à l''infinitif les terminaisons -é, -ás, -á, -emos, -éis, -án (les mêmes pour tous les verbes).
- hablar : hablaré, hablarás, hablará, hablaremos, hablaréis, hablarán.

Irréguliers (le radical change, les terminaisons restent) :
- tener : tendré ; salir : saldré ; venir : vendré ; poner : pondré ; poder : podré ; saber : sabré ; querer : querré ; hacer : haré ; decir : diré.

Futur proche : ir a + infinitif : Voy a estudiar esta tarde (je vais étudier cet après-midi).

Exemples : Mañana lloverá en Ziguinchor. El año próximo, iré al liceo. De mayor, seré ingeniera.

## Fiche 3 : l''impératif

Affirmatif :
- tú : forme de la 3e personne du présent : habla, come, vive.
- vosotros : infinitif avec -d à la place du -r : hablad, comed, vivid.
- usted / ustedes : on emploie les formes du subjonctif présent : hable / hablen, coma / coman, viva / vivan.

Impératifs irréguliers à la 2e personne du singulier : ten (tener), ven (venir), haz (hacer), di (decir), sal (salir), pon (poner), ve (ir), sé (ser).

Négatif : no + subjonctif présent. No hables. No comas. No vengas tarde. No hagáis ruido.

Pronoms : ils se placent après l''impératif affirmatif, attachés au verbe : Siéntate (assieds-toi), Levántate, Dímelo. Ils se placent avant le verbe à la forme négative : No te sientes.

Exemples de consignes de santé : Lávate las manos. Duerme bajo una mosquitera. No bebas agua sucia.

## Fiche 4 : l''expression écrite

La lettre amicale :
- Lieu et date : Kaolack, 12 de mayo de 2026.
- Formule d''appel : Querido Pablo / Querida Ana :
- Introduction : ¿Qué tal? Espero que estés bien.
- Corps : deux ou trois paragraphes (ta vie, un événement passé, tes projets).
- Formule finale : Un abrazo muy fuerte, Hasta pronto, Escríbeme pronto.
- Signature : Tu amigo, Cheikh.

La description (une personne, une ville) : présent, ser et estar, adjectifs, hay (il y a), comparatifs.

Le récit : prétérit, mots de liaison (primero, luego, después, por fin), expressions de temps (ayer, el domingo pasado).

Exemple de court récit : « El domingo pasado, fui a la playa de Yoff con mis primos. Primero, nadamos en el mar. Luego, comimos pescado a la parrilla. Por fin, volvimos a casa en autobús. Fue un día estupendo. »

Vérifie avant de rendre : temps cohérents, accords nom-adjectif (una casa bonita, unos árboles altos), accents, ponctuation espagnole.

## Exercices pratiques

Exercice 1 : Conjuguer au prétérit : (yo) comprar ; (ella) salir ; (nosotros) hablar ; (ellos) beber.

Exercice 2 : Conjuguer au prétérit : (yo) hacer ; (él) tener ; (ellos) ir ; (tú) estar.

Exercice 3 : Mettre au futur : Estudio mucho. Tenemos vacaciones. Hace calor. Salgo con mis amigos.

Exercice 4 : Mettre à l''impératif (tú), puis à la forme négative : cerrar la puerta (cierra) ; hablar en clase ; venir aquí.

Exercice 5 : Donner trois conseils à un camarade malade, à l''impératif (tú).

Exercice 6 : Mettre le texte au prétérit en commençant par « Ayer » : Me levanto a las siete. Voy al colegio. Tengo un examen de español.

Exercice 7 : Écrire une lettre de 8 à 10 lignes à un ami espagnol pour raconter ta dernière fête de fin d''année au collège et lui dire ce que tu feras pendant les vacances.

## Corrigé

Exercice 1 : compré ; salió ; hablamos ; bebieron.

Exercice 2 : hice ; tuvo ; fueron ; estuviste.

Exercice 3 : Estudiaré mucho. Tendremos vacaciones. Hará calor. Saldré con mis amigos.

Exercice 4 : Cierra la puerta / No cierres la puerta. Habla en clase / No hables en clase. Ven aquí / No vengas aquí.

Exercice 5 : Exemples : Toma tus medicamentos. Bebe mucha agua. Descansa y no vayas al colegio hoy.

Exercice 6 : Ayer me levanté a las siete. Fui al colegio. Tuve un examen de español.

Exercice 7 : Modèle : « Dakar, 20 de junio de 2026. Querido Javier: ¿Qué tal? Yo estoy muy bien. El viernes pasado, celebramos la fiesta de fin de curso en mi colegio. Mis compañeros bailaron y yo canté una canción en español. Comimos arroz con pollo y bebimos zumo de bissap. Fue un día muy alegre. Durante las vacaciones, iré a Saint-Louis a casa de mis abuelos. Visitaré la ciudad y ayudaré a mi abuelo en su tienda. ¿Y tú? ¿Qué harás este verano? Escríbeme pronto. Un abrazo, tu amiga Mariama. »', 'texte', 60, false, 40
from public.courses c where c.slug = 'bfem-espagnol'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Grammaire 2 : prétérit, futur, impératif et expression écrite');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Sujet type d''examen : sujet d''entraînement corrigé', '## Présentation

Voici un sujet d''entraînement conçu pour ce cours, sur le modèle des épreuves d''espagnol LV2 du BFEM. Ce n''est pas un sujet officiel. Traite-le en temps limité, sans dictionnaire, puis compare avec le corrigé. La répartition des points sur 20 est indicative ; le barème réel relève des textes officiels en vigueur et des correcteurs.

## Texte

« Un día en el hospital

Me llamo Babacar y vivo en Kolda con mi familia. El mes pasado, mi hermana pequeña, Ndèye, tuvo fiebre y dolor de cabeza durante tres días. Mi madre estaba muy preocupada. Por eso, la llevamos al hospital del barrio. Allí, una enfermera muy amable nos recibió. El médico examinó a Ndèye y dijo: “Tiene paludismo. Tiene que tomar estos medicamentos y descansar.” Después, nos explicó: “En la estación de lluvias, hay muchos mosquitos. Dormid siempre bajo una mosquitera y no dejéis agua sucia cerca de la casa.”

Ahora Ndèye está bien y va otra vez al colegio. Desde aquel día, en mi familia todos dormimos bajo una mosquitera. Más tarde, quiero ser médico para ayudar a la gente de mi región. »

Vocabulaire : preocupada : inquiète ; descansar : se reposer ; la gente : les gens.

## Questions

I. Compréhension (8 points)
- 1. ¿Dónde vive Babacar? (1 point)
- 2. ¿Qué tuvo Ndèye? (1 point)
- 3. ¿Quién recibió a la familia en el hospital? (1 point)
- 4. Verdadero o falso, justifica: a) Ndèye estuvo enferma una semana. b) El médico dio consejos a la familia. (2 points)
- 5. ¿Qué profesión quiere tener Babacar y por qué? (1,5 point)
- 6. Traduce al francés : « Ahora Ndèye está bien y va otra vez al colegio. » (1,5 point)

II. Langue (6 points)
- 1. Relève deux verbes au prétérit et donne leur infinitif. (1 point)
- 2. Conjugue au présent : Mi madre (estar) preocupada. Los mosquitos (ser) peligrosos. (1 point)
- 3. Mets au futur : Tomo los medicamentos. Vamos al hospital. (1 point)
- 4. Transforme à l''impératif (tú), puis à la forme négative : dormir bajo una mosquitera. (1 point)
- 5. Complète avec gusta ou gustan : A Ndèye le … el colegio. Me … las ciencias. (1 point)
- 6. Compare : la ciudad de Kolda / la ciudad de Dakar (pequeña, +). (1 point)

III. Expression écrite (6 points)
Tu as été malade et tu as manqué l''école. Écris 8 à 10 lignes à ton correspondant espagnol pour raconter ce qui s''est passé et ce que tu fais maintenant pour rester en bonne santé.

## Corrigé détaillé

I. Compréhension
- 1. Babacar vive en Kolda con su familia.
- 2. Ndèye tuvo fiebre y dolor de cabeza ; tuvo paludismo.
- 3. Una enfermera muy amable recibió a la familia.
- 4. a) Falso : « tuvo fiebre y dolor de cabeza durante tres días ». b) Verdadero : « nos explicó: … Dormid siempre bajo una mosquitera ».
- 5. Babacar quiere ser médico para ayudar a la gente de su región.
- 6. Maintenant Ndèye va bien et va de nouveau à l''école.

II. Langue
- 1. Par exemple : tuvo (tener), llevamos (llevar), recibió (recibir), examinó (examinar), dijo (decir), explicó (explicar).
- 2. Mi madre está preocupada. Los mosquitos son peligrosos.
- 3. Tomaré los medicamentos. Iremos al hospital.
- 4. Duerme bajo una mosquitera. No duermas sin mosquitera. (La forme négative de « duerme » est « no duermas ».)
- 5. A Ndèye le gusta el colegio. Me gustan las ciencias.
- 6. La ciudad de Kolda es más pequeña que la ciudad de Dakar.

III. Expression écrite : modèle
« Kolda, 3 de marzo de 2026. Querida Lucía: ¿Qué tal estás? La semana pasada estuve enfermo. Tuve fiebre y me dolía mucho la cabeza. Mi padre me llevó al médico y el médico me dio medicamentos. No fui al colegio durante cuatro días. Ahora estoy mejor. Para estar sano, duermo bajo una mosquitera, me lavo las manos antes de comer y bebo agua potable. También hago deporte con mis amigos. ¿Y tú? ¿Cómo estás? Escríbeme pronto. Un abrazo, Moussa. »

## Conseils de notation

- En compréhension, une réponse complète et justifiée par le texte vaut plus qu''un simple mot.
- En langue, chaque accent oublié peut coûter des points : hablo n''est pas habló.
- En expression écrite, les correcteurs regardent généralement : le respect de la consigne (destinataire, sujet, longueur), la correction de la langue, la richesse du vocabulaire et l''organisation. Un texte simple mais sans erreurs est préférable à un texte ambitieux plein de fautes.
- Ne recopie pas des phrases entières du texte dans ta rédaction : reformule.

## Exercices pratiques

Exercice 1 : Relever dans le texte une phrase à l''impératif et dire à qui elle s''adresse.

Exercice 2 : Mettre au prétérit : El médico examina a la niña.

Exercice 3 : Pourquoi écrit-on « está bien » et non « es bien » ?

Exercice 4 : Traduire : Il faut dormir sous une moustiquaire.

Exercice 5 : Écrire deux conseils à un ami à l''impératif négatif.

## Corrigé

Exercice 1 : « Dormid siempre bajo una mosquitera » : impératif à la 2e personne du pluriel (vosotros), le médecin s''adresse à toute la famille.

Exercice 2 : El médico examinó a la niña.

Exercice 3 : Parce qu''il s''agit d''un état passager (la santé), on emploie estar.

Exercice 4 : Hay que dormir bajo una mosquitera.

Exercice 5 : No bebas agua sucia. No dejes agua cerca de la casa.', 'texte', 60, false, 50
from public.courses c where c.slug = 'bfem-espagnol'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Sujet type d''examen : sujet d''entraînement corrigé');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : révision intensive « veille d''examen » en espagnol', '## Fiche du cours vidéo

- Durée : 1h30.
- Thème : séance de révision intensive de la veille de l''épreuve d''espagnol LV2.
- Objectifs : revoir les points de grammaire les plus évalués, réactiver le vocabulaire, corriger des exercices types, préparer l''expression écrite et la gestion du temps.
- Matériel : tableau ou diaporama, cahier, tableaux de conjugaison.
- Prérequis : leçons 1 à 5 de ce cours.

## Déroulé minuté

## 00:00 – 05:00 · Bienvenida : accueil et objectifs

« ¡Hola a todos! Bonsoir. Demain, c''est l''épreuve d''espagnol. Ce soir, nous allons faire une révision efficace, sans stress. Je parlerai surtout en français, avec beaucoup d''exemples en espagnol. Ayez un cahier et un stylo. Quand je dis « pausa », vous arrêtez la vidéo et vous cherchez seuls. »

« Avant de commencer, un mot sur l''état d''esprit. La veille d''un examen, on a souvent l''impression de ne rien savoir. C''est normal, et c''est faux. Vous avez étudié l''espagnol pendant plusieurs années : vous connaissez déjà beaucoup de choses. Ce soir, on range ces connaissances dans de bonnes cases, pour pouvoir les retrouver vite demain. »

Visuel : plan de la séance : consignes, ser et estar, temps verbaux, gustar et comparatifs, quiz, compréhension, expression écrite, évaluation finale.

## 05:00 – 15:00 · Les consignes de l''examen

« Première chose : il faut comprendre les consignes. Contesta a las preguntas : réponds aux questions. Verdadero o falso, justifica con el texto : vrai ou faux, justifie avec le texte. Busca en el texto : cherche dans le texte. Conjuga en pretérito : conjugue au prétérit. Traduce al francés. Redacta unas líneas. Beaucoup d''élèves perdent des points parce qu''ils font autre chose que ce qui est demandé. »

« Rappel : pour un vrai ou faux, on écrit le mot, puis on cite entre guillemets la phrase courte du texte. »

« Deuxième rappel : les mots interrogatifs. Quién, qué, dónde, cuándo, cómo, por qué, cuántos. Ils portent tous un accent. Quand la question commence par ¿Por qué?, votre réponse commence par Porque, en un seul mot et sans accent. Quand la question demande ¿Cuántos años tiene?, la réponse utilise tener : Tiene quince años. Reprenez toujours les mots de la question pour construire une phrase complète. »

« Pausa. Répondez à cette question sur vous-mêmes, par une phrase complète : ¿Dónde vives y con quién? Correction possible : Vivo en Pikine con mis padres y mis hermanos. »

## 15:00 – 30:00 · Ser, estar et le présent

« Ser : soy, eres, es, somos, sois, son. Estar : estoy, estás, está, estamos, estáis, están. Ser pour ce qui définit : identité, nationalité, profession, caractère, heure. Estar pour le lieu et l''état passager. Exemples au tableau : Soy senegalés. Mi tía es comerciante. Son las nueve. Mais : Touba está en la región de Diourbel. Hoy estoy nervioso porque mañana tengo el examen. »

« Pausa. Complétez : Mi colegio … grande. Mi colegio … cerca del mercado. »

« Correction : Mi colegio es grande, c''est une caractéristique. Mi colegio está cerca del mercado, c''est une localisation. »

« Révision rapide du présent : hablo, hablas, habla, hablamos, habláis, hablan. Pensez aux diphtongues : quiero, puedo, duermo. Et aux premières personnes irrégulières : tengo, hago, salgo, pongo, conozco. »

## 30:00 – 42:00 · Prétérit, futur, impératif

« Le prétérit raconte une action terminée : hablé, habló ; comí, comió ; viví, vivió. N''oubliez jamais l''accent. Les irréguliers : fui, tuve, estuve, hice, hizo, dije. Le futur : infinitif plus é, ás, á, emos, éis, án : estudiaré, comeré. Irréguliers : tendré, haré, saldré, vendré, podré. L''impératif : habla, come, vive ; ven, ten, haz, di, sal, pon. À la forme négative : no hables, no comas, no vengas. »

« Pausa. Mettez au prétérit : Hoy voy al colegio y tengo clase de español. »

« Correction : Ayer fui al colegio y tuve clase de español. Fui, tuve : prétérits irréguliers sans accent. »

« Encore une pausa. Mettez au futur : Mañana (yo, hacer) los deberes y (nosotros, salir) al parque. Correction : Mañana haré los deberes y saldremos al parque. Haré vient de hacer, saldremos de salir : radical irrégulier, terminaisons régulières. Dernier piège : n''oubliez pas l''accent du futur sauf à la forme nosotros : haré, harás, hará, haremos, haréis, harán. »

## 42:00 – 50:00 · Gustar et comparatifs

« Gustar : ce qui plaît est le sujet. Me gusta el arroz. Me gustan los plátanos. A mi hermano le gusta dibujar. Comparatifs : más … que, menos … que, tan … como. Dakar es más grande que Thiès. Mejor, peor, mayor, menor. Superlatif : el más simpático de la clase ; grandísimo. »

## 50:00 – 58:00 · Pause interactive : quiz

« Pausa après chaque question. »

- Pregunta 1 : Traduire « j''ai quatorze ans ». Respuesta : Tengo catorce años.
- Pregunta 2 : Prétérit de « hacer » à la 3e personne du singulier ? Respuesta : hizo.
- Pregunta 3 : Compléter : Me … los deportes. Respuesta : gustan.
- Pregunta 4 : Futur de « tener », 1re personne du singulier ? Respuesta : tendré.
- Pregunta 5 : Ser ou estar : Mi abuelo … en el hospital. Respuesta : está.
- Pregunta 6 : Impératif (tú) de « venir » ? Respuesta : ven.

« Cinq ou six bonnes réponses : excellent. Moins de quatre : relisez ce soir les tableaux de conjugaison, calmement. »

## 58:00 – 1:08:00 · Compréhension écrite commentée

Visuel : un court texte. « Me llamo Aliou. Vivo en Mbour, cerca del mar. Mi padre es pescador. Cada mañana sale en su piragua. El año pasado, el mar estuvo muy agitado y mi padre no pudo pescar durante dos semanas. Hoy, en mi barrio, los jóvenes limpian la playa todos los sábados. »

« Lisons ensemble. Qui ? Aliou. Où ? À Mbour. Que fait son père ? Il est pêcheur. Question : ¿Por qué el padre no pudo pescar? Réponse complète : Porque el mar estuvo muy agitado. Vrai ou faux : Los jóvenes limpian la playa cada domingo. Faux : « todos los sábados ». Remarquez les temps : présent pour l''habitude, prétérit pour l''événement de l''année passée : estuvo, pudo. »

## 1:08:00 – 1:18:00 · Expression écrite et gestion du temps

« Pour la rédaction, gardez au moins un quart de votre temps. Faites un plan au brouillon : introduction, deux ou trois idées, conclusion. Utilisez des mots de liaison : primero, luego, además, pero, porque, por eso, por fin. Écrivez des phrases courtes et justes. Relisez les accents et les terminaisons. »

« Exemple d''introduction pour une lettre : Querida Elena: ¿Qué tal? Te escribo para contarte mis vacaciones. Exemple de conclusion : Escríbeme pronto. Un abrazo. »

« Pausa. Écrivez trois phrases sur ce sujet : « Describe tu barrio ». Puis comparez avec ce modèle : Vivo en un barrio tranquilo de Kaolack. Hay una mezquita, un mercado y una escuela. Mi casa está cerca del mercado. Me gusta mi barrio porque la gente es amable, pero hay mucha basura en las calles. Por eso, hay que organizar jornadas de limpieza. Remarquez : présent, hay, ser et estar bien choisis, gustar, un mot de liaison, une proposition avec hay que. C''est simple, correct et complet. »

« Gestion du temps : lisez tout le sujet d''abord, commencez par la compréhension, puis la langue, puis la rédaction. Ne restez pas bloqués sur un mot inconnu : le contexte suffit souvent. Gardez cinq minutes pour la relecture : signes ¿ ¡, accents, accords. »

## 1:18:00 – 1:26:00 · Évaluation finale

« Cinq questions. Pausa, puis correction. »

- 1. Conjuguer « vivir » au présent, 1re personne du pluriel. Respuesta : vivimos.
- 2. Mettre au prétérit : Ella habla con el profesor. Respuesta : Ella habló con el profesor.
- 3. Traduire : Nous irons à Dakar. Respuesta : Iremos a Dakar.
- 4. Comparer : Senegal / Gambia (grande, +). Respuesta : Senegal es más grande que Gambia.
- 5. Impératif négatif (tú) de « tirar la basura en la calle ». Respuesta : No tires la basura en la calle.

« Correction commentée : à la question 2, l''accent sur habló est indispensable, sinon c''est « je parle ». À la question 5, tirar donne tires au subjonctif : la voyelle a devient e. »

« Comptez vos points. Si vous avez eu une erreur à la question 3, revoyez le futur irrégulier : ir donne iré, irás, irá, iremos, iréis, irán, sur la base de l''infinitif complet. Si vous avez hésité à la question 4, rappelez-vous la structure fixe : más, adjectif, que. Et l''adjectif s''accorde : Senegal es más grande, la ciudad es más pequeña. Ce sont exactement ces petits détails qui font la différence entre une copie moyenne et une bonne copie. »

## 1:26:00 – 1:30:00 · Síntesis : synthèse et encouragements

« Récapitulons : ser pour définir, estar pour situer et décrire un état ; le prétérit avec ses accents ; le futur sur l''infinitif ; gustar qui s''accorde avec ce qui plaît ; des réponses complètes et justifiées ; une rédaction simple, organisée et relue. Ce soir, préparez vos affaires et dormez bien. Mañana, ¡mucha suerte a todos! Vous êtes prêts. »

Visuel final : fiche récapitulative des conjugaisons.', 'video', 90, false, 60
from public.courses c where c.slug = 'bfem-espagnol'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : révision intensive « veille d''examen » en espagnol');

-- Cours : Géolocalisation et télématique des véhicules
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'formation-gps-avance', (select id from public.levels where name = 'Formation professionnelle'), 'gps', 'Géolocalisation et télématique', 'Géolocalisation et télématique des véhicules', 'Cette formation explique le fonctionnement du GPS (satellites, temps, trilatération), les traceurs et la télématique embarquée, le géofencing et les alertes, l''analyse des trajets et du comportement de conduite, ainsi que la protection des données personnelles des conducteurs. Elle s''adresse aux gestionnaires de flotte, responsables sécurité, exploitants de transport et techniciens qui déploient ou exploitent une solution de géolocalisation. Prérequis : calculs de base, notion de vitesse (distance / temps) et racine carrée.', true, 110
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Comment fonctionne le GPS : satellites, temps et trilatération', '## Objectifs de la leçon

- Expliquer comment un récepteur GPS calcule sa position.
- Comprendre le rôle du temps et de la vitesse de la lumière.
- Résoudre un exemple simple de trilatération et connaître les sources d''erreur.

## Le système GPS

Le GPS (Global Positioning System) est le système de positionnement par satellites des États-Unis. Il appartient à la famille des GNSS (systèmes mondiaux de navigation par satellites), avec GLONASS (Russie), Galileo (Union européenne) et BeiDou (Chine). Les récepteurs modernes utilisent souvent plusieurs constellations à la fois, ce qui améliore la précision.

Le GPS comprend trois segments :

- Le segment spatial : une constellation d''au moins 24 satellites opérationnels (en pratique davantage), répartis sur six plans orbitaux, à environ 20 200 km d''altitude. Chacun fait le tour de la Terre en un peu moins de 12 heures.
- Le segment de contrôle : des stations au sol qui suivent les satellites, corrigent leurs orbites et synchronisent leurs horloges.
- Le segment utilisateur : tous les récepteurs, qui ne font qu''écouter. Un récepteur GPS n''émet rien vers les satellites.

## Le principe : mesurer des distances avec le temps

Chaque satellite porte des horloges atomiques très précises. Il diffuse en permanence un signal contenant l''heure exacte d''émission et sa position sur son orbite (les éphémérides). Le récepteur note l''heure de réception. La différence entre les deux est le temps de trajet du signal. Comme le signal voyage à la vitesse de la lumière, environ 300 000 km/s, on obtient la distance :

distance = vitesse de la lumière × temps de trajet.

Exemple : un satellite situé à 20 200 km à la verticale du récepteur envoie un signal qui met 20 200 / 300 000 ≈ 0,0673 s, soit environ 67 millisecondes, pour arriver.

Cette méthode exige une précision extrême sur le temps : une erreur d''une microseconde (un millionième de seconde) produit une erreur de 300 000 km/s × 0,000001 s = 0,3 km, soit 300 m.

## La trilatération

Connaître sa distance à un satellite place le récepteur quelque part sur une sphère centrée sur ce satellite. Avec deux satellites, on est sur l''intersection de deux sphères (un cercle). Avec trois, on obtient deux points, dont un seul est plausible (l''autre est loin dans l''espace). C''est la trilatération : déterminer une position à partir de distances, sans mesurer d''angles.

Mais l''horloge du récepteur est une simple horloge à quartz, beaucoup moins précise que celles des satellites. Son décalage est une inconnue de plus. On a donc quatre inconnues : les trois coordonnées de position et le décalage d''horloge. Il faut au moins quatre satellites pour résoudre le problème. Les distances mesurées avant correction de l''horloge s''appellent des pseudo-distances.

## Exemple en deux dimensions

Pour comprendre le calcul, simplifions en plan. Trois balises sont placées en A(0 ; 0), B(10 ; 0) et C(0 ; 10), en kilomètres. Un récepteur mesure : distance à A = 5 km, à B = √65 km, à C = √45 km. Où est-il ?

Les équations des cercles sont :

- x² + y² = 25
- (x - 10)² + y² = 65
- x² + (y - 10)² = 45

En soustrayant la première de la deuxième : (x - 10)² - x² = 40, soit -20x + 100 = 40, donc x = 3.

En soustrayant la première de la troisième : (y - 10)² - y² = 20, soit -20y + 100 = 20, donc y = 4.

Vérification : 3² + 4² = 9 + 16 = 25. Le récepteur est en (3 ; 4). Le GPS fait le même type de calcul en trois dimensions, avec le décalage d''horloge en plus.

## Les coordonnées

Le GPS donne une position en latitude, longitude et altitude, dans le système de référence WGS 84. La latitude va de 0° à l''équateur à 90° aux pôles (positive au nord) ; la longitude va de 0° au méridien de Greenwich à 180° (négative à l''ouest). Dakar se trouve vers 14,7° de latitude nord et 17,4° de longitude ouest, soit environ (14,7 ; -17,4) en degrés décimaux.

Un degré de latitude correspond à environ 111 km. Un degré de longitude vaut environ 111 × cos(latitude) km : à la latitude de Dakar, cos(14,7°) ≈ 0,967, donc environ 107 km.

## Les sources d''erreur

- La traversée de l''ionosphère et de la troposphère ralentit le signal.
- Les trajets multiples : le signal rebondit sur les immeubles avant d''arriver, ce qui allonge la distance mesurée.
- Les masques : tunnels, parkings souterrains, rues étroites entre immeubles, végétation dense.
- La géométrie des satellites : des satellites regroupés dans une même région du ciel donnent une position moins précise que des satellites bien répartis.

En ciel dégagé, un récepteur civil courant atteint une précision de quelques mètres.

## Points clés

- Le GPS calcule des distances à partir du temps de trajet des signaux.
- Il faut au moins quatre satellites : trois coordonnées et le décalage d''horloge.
- Une microseconde d''erreur représente 300 m.
- Bâtiments, tunnels et atmosphère dégradent la précision.

## Exercices

- Exercice 1 : quelle distance correspond à un temps de trajet de 0,07 s ?
- Exercice 2 : quelle erreur de position produit une erreur d''horloge de 10 nanosecondes (0,00000001 s) ?
- Exercice 3 : pourquoi faut-il quatre satellites et non trois ?
- Exercice 4 : balises A(0 ; 0) et B(8 ; 0) ; distances mesurées 5 km à A et 5 km à B. Trouvez les deux positions possibles.
- Exercice 5 : deux points ont la même longitude et des latitudes de 14,70° et 14,75°. Quelle distance les sépare ?

## Corrigé

Exercice 1 : 300 000 × 0,07 = 21 000 km.

Exercice 2 : 300 000 000 m/s × 0,00000001 s = 3 m.

Exercice 3 : parce que l''horloge du récepteur n''est pas synchronisée avec celles des satellites : son décalage est une quatrième inconnue qui s''ajoute aux trois coordonnées.

Exercice 4 : x² + y² = 25 et (x - 8)² + y² = 25. En soustrayant : -16x + 64 = 0, donc x = 4. Puis y² = 25 - 16 = 9, donc y = 3 ou y = -3. Positions possibles : (4 ; 3) et (4 ; -3). Une troisième balise permettrait de trancher.

Exercice 5 : écart de 0,05° de latitude ; 0,05 × 111 = 5,55 km.', 'texte', 50, true, 10
from public.courses c where c.slug = 'formation-gps-avance'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Comment fonctionne le GPS : satellites, temps et trilatération');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Traceurs et télématique embarquée', '## Objectifs de la leçon

- Décrire les composants d''une solution de télématique embarquée.
- Choisir un traceur et une offre adaptés aux besoins.
- Estimer les volumes de données et le retour sur investissement.

## De la géolocalisation à la télématique

Un récepteur GPS seul calcule une position mais ne la transmet à personne. Un traceur ajoute un moyen de communication (généralement un modem mobile avec une carte SIM) pour envoyer cette position à un serveur. La télématique combine la géolocalisation avec d''autres données du véhicule (contact moteur, régime, consommation, température, portes) sur une plateforme de suivi.

## Les composants d''une solution

- Le boîtier embarqué : récepteur GNSS, modem cellulaire, carte SIM, mémoire, accéléromètre, batterie de secours.
- Les antennes : GNSS et cellulaire, intégrées ou déportées.
- Les entrées et sorties : fil de contact (détection moteur allumé), boutons d''alerte, capteurs de porte, sortie pour couper le démarreur à l''arrêt en cas de vol, selon les règles de sécurité.
- Les capteurs optionnels : sonde de niveau de carburant, sonde de température pour le transport frigorifique, lecteur d''identification du conducteur.
- La connexion au réseau du véhicule : prise de diagnostic OBD ou bus CAN, qui donnent accès au kilométrage réel, au régime moteur, à la consommation ou aux codes défaut, selon les véhicules.
- La plateforme : serveur et application web ou mobile qui affichent les cartes, les historiques, les alertes et les rapports.

## Le fonctionnement

Le boîtier calcule régulièrement sa position et l''enregistre avec l''heure, la vitesse, le cap et l''état des entrées. Il envoie ces données selon des règles paramétrables : par exemple toutes les 30 secondes en roulant, toutes les 30 minutes à l''arrêt, et immédiatement en cas d''événement (allumage, coupure d''alimentation, choc). Quand le réseau mobile est absent, en zone rurale par exemple, le boîtier stocke les positions et les envoie dès que la couverture revient.

## Estimer les volumes de données

Exemple : un véhicule roule 10 heures par jour avec une position toutes les 30 secondes. Nombre de positions : 10 × 3 600 / 30 = 1 200 par jour. Si chaque message pèse environ 100 octets (valeur d''ordre de grandeur, elle varie selon le protocole), le volume quotidien est 1 200 × 100 = 120 000 octets, soit environ 120 ko par jour, et environ 3,6 Mo pour 30 jours. Ce calcul aide à choisir le forfait de données de la carte SIM.

Plus la fréquence est élevée, plus le tracé est précis et plus le volume de données augmente. Une fréquence trop faible rend l''analyse des trajets et des vitesses peu fiable.

## Choisir un traceur et un prestataire

Avant de choisir, on écrit les besoins : sécurité contre le vol, suivi des tournées, contrôle du carburant, preuve de passage chez les clients, suivi de la température, analyse de conduite. Puis on compare les offres sur des critères écrits :

- Précision et fiabilité du boîtier, résistance à la chaleur, à la poussière et aux vibrations.
- Fonctionnement en cas de coupure (batterie de secours) et alerte en cas d''arrachement.
- Couverture des réseaux mobiles sur les itinéraires réels.
- Qualité de la plateforme : cartes à jour, rapports, alertes, application mobile, export des données.
- Installation par des techniciens qualifiés, sans perturber l''électricité du véhicule ni la garantie.
- Service après-vente, délais d''intervention, présence locale.
- Coût total : boîtiers, installation, abonnement mensuel, cartes SIM.
- Hébergement, sécurité et confidentialité des données.

## Calculer le retour sur investissement

Exemple pour une flotte de 30 véhicules. Les prix sont des montants d''exemple, à remplacer par des devis réels.

- Boîtiers et installation : 30 × 120 000 = 3 600 000 FCFA, payés la première année.
- Abonnements : 30 × 8 000 × 12 = 2 880 000 FCFA par an.
- Coût de la première année : 6 480 000 FCFA ; années suivantes : 2 880 000 FCFA.

Gains attendus, estimés à partir d''un projet pilote : réduction de 8 % d''une dépense carburant de 60 000 000 FCFA par an, soit 4 800 000 FCFA, grâce à la fin des trajets non autorisés et à la réduction du ralenti ; baisse des sinistres et de la maintenance estimée à 1 500 000 FCFA. Total : 6 300 000 FCFA par an.

La première année est presque à l''équilibre (6 300 000 - 6 480 000 = -180 000 FCFA) ; les années suivantes, le gain net est 6 300 000 - 2 880 000 = 3 420 000 FCFA par an. Ces gains supposent que quelqu''un exploite les données et agisse.

## Exemple : un transporteur frigorifique à Dakar

Un transporteur de produits de la mer équipe ses 12 camions frigorifiques de traceurs avec sondes de température. Le client exige la preuve que la chaîne du froid est respectée. La plateforme envoie une alerte si la température dépasse le seuil fixé pendant plus de 10 minutes, et produit un rapport de température par livraison. Le transporteur gagne un contrat avec un exportateur grâce à cette traçabilité.

## Points clés

- Traceur = récepteur GNSS + modem de communication + plateforme.
- La télématique ajoute les données du véhicule et des capteurs.
- La fréquence d''envoi fixe la précision et le volume de données.
- Le retour sur investissement dépend de l''exploitation réelle des données.

## Exercices

- Exercice 1 : citez cinq composants d''une solution de télématique.
- Exercice 2 : un véhicule roule 8 heures par jour avec une position toutes les 20 secondes. Combien de positions par jour ?
- Exercice 3 : avec 120 octets par message, quel volume mensuel (30 jours) pour l''exercice 2 ?
- Exercice 4 : 20 véhicules, boîtier et installation 150 000 FCFA, abonnement 7 500 FCFA par mois. Calculez le coût de la première année et des années suivantes.

## Corrigé

Exercice 1 : récepteur GNSS, modem et carte SIM, antennes, accéléromètre, batterie de secours, capteurs (carburant, température), plateforme de suivi.

Exercice 2 : 8 × 3 600 / 20 = 1 440 positions.

Exercice 3 : 1 440 × 120 = 172 800 octets par jour ; × 30 = 5 184 000 octets, soit environ 5,2 Mo par mois.

Exercice 4 : équipement 20 × 150 000 = 3 000 000 FCFA ; abonnements 20 × 7 500 × 12 = 1 800 000 FCFA par an ; première année 4 800 000 FCFA ; années suivantes 1 800 000 FCFA.', 'texte', 50, false, 20
from public.courses c where c.slug = 'formation-gps-avance'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Traceurs et télématique embarquée');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Géofencing, zones et alertes', '## Objectifs de la leçon

- Définir le géofencing et ses usages.
- Paramétrer des zones et des règles d''alerte pertinentes.
- Calculer si un véhicule est dans une zone et limiter les fausses alertes.

## Qu''est-ce que le géofencing ?

Le géofencing (ou barrière virtuelle, géorepérage) consiste à dessiner sur la carte des zones géographiques et à associer des règles aux mouvements des véhicules par rapport à ces zones. Quand un véhicule entre dans une zone, en sort, y reste trop longtemps ou y dépasse une vitesse, la plateforme déclenche une alerte ou enregistre un événement.

## Les types de zones

- Le cercle : défini par un centre (latitude, longitude) et un rayon. Simple, adapté à un dépôt, un client, une station-service.
- Le polygone : défini par une liste de sommets. Adapté à une zone de forme irrégulière : un quartier, un port, une zone industrielle.
- Le corridor : une bande de largeur fixée autour d''un itinéraire, par exemple la route nationale entre Dakar et Kaolack.

## Les usages courants

- Sécurité : alerte si un véhicule quitte le dépôt la nuit ou le week-end.
- Exploitation : enregistrement automatique des heures d''arrivée et de départ chez les clients, preuve de passage.
- Conformité : alerte si un camion sort de son corridor autorisé ou entre dans une zone interdite (centre-ville aux heures de pointe, zone à risque).
- Vitesse : limite plus basse dans une zone scolaire ou un site industriel.
- Carburant : rapprochement entre les pleins déclarés et la présence effective du véhicule à la station.
- Facturation : temps passé sur un chantier pour refacturer un client.

## Paramétrer une règle

Une règle se décrit en cinq éléments :

- La zone concernée.
- L''événement : entrée, sortie, présence prolongée, vitesse dépassée.
- Les conditions : jours, heures, véhicules ou groupes concernés.
- Les destinataires : qui reçoit l''alerte, par quel canal (application, SMS, courriel).
- L''action attendue : appeler le chauffeur, prévenir la sécurité, simple enregistrement.

Exemple : "Si un véhicule du groupe Livraisons sort de la zone Dépôt Rufisque entre 21 h et 5 h, envoyer une notification au chef de poste de sécurité, qui appelle le chauffeur et, sans réponse, la gendarmerie selon la procédure."

## Calculer la position par rapport à un cercle

Pour de petites distances, on peut assimiler la surface terrestre à un plan. On convertit les écarts de coordonnées en mètres :

- écart nord-sud (m) ≈ écart de latitude (degrés) × 111 000
- écart est-ouest (m) ≈ écart de longitude (degrés) × 111 000 × cos(latitude)

puis on applique le théorème de Pythagore : distance = √(écart nord-sud² + écart est-ouest²).

Exemple : la zone Dépôt a pour centre (14,7000 ; -17,4500) et un rayon de 500 m. Un véhicule est signalé en (14,7030 ; -17,4470). Écart de latitude 0,0030°, soit 0,0030 × 111 000 = 333 m. Écart de longitude 0,0030°, soit 0,0030 × 111 000 × 0,967 ≈ 322 m. Distance = √(333² + 322²) = √(110 889 + 103 684) = √214 573 ≈ 463 m. Le véhicule est à l''intérieur du cercle, près du bord.

## Éviter les fausses alertes

Une position GPS n''est jamais parfaite : à l''arrêt, elle "dérive" de quelques mètres, et davantage entre des immeubles. Un véhicule garé au bord de la zone peut sembler entrer et sortir plusieurs fois. Trop d''alertes inutiles produisent la lassitude : les opérateurs finissent par ne plus les lire, et la vraie alerte passe inaperçue. Les bonnes pratiques :

- Prévoir une marge : rayon un peu plus grand que la zone réelle.
- Ajouter une temporisation : alerter seulement si la sortie dure plus de 2 ou 3 minutes.
- Combiner les conditions : sortie de zone et moteur allumé et vitesse supérieure à 10 km/h.
- Limiter les destinataires et hiérarchiser : alerte critique immédiate, alerte mineure dans un rapport quotidien.
- Revoir chaque mois les règles qui génèrent le plus d''alertes sans suite.

## La procédure de traitement

Chaque alerte critique doit avoir une procédure écrite : qui la reçoit, en combien de temps on réagit, qui on appelle, comment on clôture l''alerte en notant la cause (fausse alerte, sortie autorisée, incident réel). Ce registre permet de mesurer le temps de réaction et d''améliorer les règles.

## Points clés

- Le géofencing associe des zones (cercle, polygone, corridor) à des règles.
- Une règle comprend zone, événement, conditions, destinataires et action.
- La distance à un centre se calcule avec la conversion en mètres et Pythagore.
- Marges, temporisations et conditions combinées limitent les fausses alertes.

## Exercices

- Exercice 1 : citez quatre usages du géofencing dans une entreprise de livraison.
- Exercice 2 : zone de centre (14,7000 ; -17,4500) et rayon 600 m. Un véhicule est en (14,7060 ; -17,4520). Est-il dans la zone ? (cos 14,7° ≈ 0,967)
- Exercice 3 : rédigez une règle complète pour surveiller l''arrivée d''un camion chez un client.
- Exercice 4 : une règle génère 40 alertes par jour, dont 38 fausses. Proposez trois corrections.

## Corrigé

Exercice 1 : alerte de sortie du dépôt la nuit, preuve d''arrivée chez les clients, respect d''un corridor, limitation de vitesse sur site, contrôle des pleins à la station.

Exercice 2 : écart nord-sud 0,0060 × 111 000 = 666 m ; écart est-ouest 0,0020 × 111 000 × 0,967 ≈ 215 m. Distance = √(666² + 215²) = √(443 556 + 46 225) = √489 781 ≈ 700 m. 700 m est supérieur à 600 m : le véhicule est hors de la zone.

Exercice 3 : zone : cercle de 200 m autour de l''entrepôt du client ; événement : entrée puis sortie ; conditions : véhicules du groupe Livraisons, jours ouvrés ; destinataires : service clients, par rapport et notification ; action : enregistrer l''heure d''arrivée et de départ et informer le client de la livraison.

Exercice 4 : ajouter une temporisation de quelques minutes ; agrandir légèrement la zone ; combiner avec moteur allumé et vitesse minimale ; restreindre les horaires ou les véhicules concernés.', 'texte', 50, false, 30
from public.courses c where c.slug = 'formation-gps-avance'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Géofencing, zones et alertes');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Analyser les trajets et le comportement de conduite', '## Objectifs de la leçon

- Exploiter les historiques de trajets pour mieux organiser l''activité.
- Mesurer le comportement de conduite avec des indicateurs objectifs.
- Construire un score de conduite et un plan d''accompagnement.

## Ce que racontent les données

Chaque position enregistrée comporte une heure, des coordonnées, une vitesse et souvent l''état du moteur. Mises bout à bout, ces données reconstituent les trajets : départ, itinéraire, arrêts, durée, kilomètres. L''accéléromètre du boîtier ajoute des événements de conduite : freinages brusques, accélérations brusques, virages serrés, chocs.

## Les indicateurs de trajet

- Kilomètres parcourus par véhicule et par jour.
- Temps de conduite et temps d''arrêt.
- Temps de ralenti : moteur allumé, véhicule à l''arrêt.
- Nombre d''arrêts et durée moyenne chez les clients.
- Trajets hors horaires de service.
- Écart entre l''itinéraire prévu et l''itinéraire réel.

Exemple de calcul de vitesse moyenne entre deux positions : un camion est relevé à 10 h 00 puis à 10 h 04 et a parcouru 5 km entre les deux. Vitesse moyenne = 5 km / (4/60) h = 5 × 15 = 75 km/h.

## Optimiser l''organisation

L''analyse des trajets permet de réorganiser les tournées : regrouper les clients proches, éviter les axes saturés aux heures de pointe à Dakar, réduire les kilomètres à vide. Elle permet aussi de vérifier les temps passés chez les clients et de mieux les facturer, ou de détecter un véhicule sous-utilisé qui pourrait être réaffecté.

## Le coût du ralenti

Un moteur qui tourne à l''arrêt consomme du carburant sans produire de déplacement, par exemple pour garder la climatisation pendant une attente. Cette consommation dépend du moteur ; on la mesure sur ses propres véhicules. Prenons une hypothèse de 1 litre par heure et un prix fictif de 800 FCFA le litre. Pour 30 véhicules avec 1 heure de ralenti par jour sur 22 jours : 30 × 1 × 22 × 1 = 660 litres par mois, soit 660 × 800 = 528 000 FCFA par mois, plus de 6 300 000 FCFA par an. Diviser le ralenti par deux économise donc plus de 3 000 000 FCFA par an dans cet exemple.

## Les indicateurs de comportement

- Excès de vitesse : nombre, durée et ampleur des dépassements de la limite fixée (limite légale de la route ou limite interne de l''entreprise).
- Freinages brusques : décélération supérieure à un seuil paramétré.
- Accélérations brusques.
- Virages serrés.
- Conduite de nuit ou durée de conduite sans pause.

Pour comparer des conducteurs qui ne roulent pas autant, on rapporte les événements à la distance : nombre d''événements pour 100 km.

Exemple : le conducteur A a 12 freinages brusques sur 800 km, soit 12 / 800 × 100 = 1,5 pour 100 km. Le conducteur B en a 30 sur 1 200 km, soit 2,5 pour 100 km. Malgré plus de kilomètres, B a une conduite plus brusque.

## Construire un score de conduite

Un score simple part de 100 points et retire des points par événement pour 100 km, avec des poids choisis par l''entreprise. Exemple de barème interne : moins 4 points par freinage brusque pour 100 km, moins 3 par accélération brusque pour 100 km, moins 6 par excès de vitesse pour 100 km.

Conducteur B : 2,5 freinages, 1,0 accélération et 0,5 excès pour 100 km. Score = 100 - 4 × 2,5 - 3 × 1,0 - 6 × 0,5 = 100 - 10 - 3 - 3 = 84.

Les seuils et poids doivent être expliqués aux conducteurs et stables dans le temps, sinon le score perd sa crédibilité. Il faut aussi tenir compte du contexte : un chauffeur de pistes rurales aura plus d''événements qu''un chauffeur sur autoroute.

## Accompagner plutôt que punir

L''objectif est de réduire les accidents et les coûts, pas de sanctionner à tout prix. Une démarche efficace :

- Présenter le dispositif et le barème aux conducteurs avant le démarrage.
- Partager chaque mois le score individuel avec le conducteur, en entretien.
- Identifier avec lui les situations à risque (itinéraire, horaires, fatigue).
- Proposer une formation à la conduite défensive et économique.
- Reconnaître les progrès et les meilleurs conducteurs.
- Réserver les sanctions aux manquements graves et répétés, dans le respect du règlement intérieur et du droit du travail.

## Exemple : une société de transport de personnel à Thiès

Une société qui transporte des ouvriers vers des chantiers équipe ses 15 minibus. Le premier mois, la moyenne est de 3,2 freinages brusques pour 100 km et 20 % des trajets comportent un excès de vitesse. Après trois mois d''entretiens mensuels, d''une formation et d''une prime collective liée au score, la moyenne descend à 1,4 freinage pour 100 km et la consommation baisse de 7 %.

## Points clés

- Les données de trajet reconstituent l''activité : kilomètres, arrêts, ralenti, horaires.
- Les événements de conduite se comparent pour 100 km.
- Un score repose sur un barème connu, stable et adapté au contexte.
- L''accompagnement des conducteurs produit plus de résultats que la sanction seule.

## Exercices

- Exercice 1 : un véhicule parcourt 3 km en 6 minutes. Quelle est sa vitesse moyenne ?
- Exercice 2 : un conducteur a 18 freinages brusques sur 1 500 km. Combien pour 100 km ?
- Exercice 3 : avec le barème de la leçon, calculez le score d''un conducteur ayant 1,2 freinage, 0,8 accélération et 1,5 excès pour 100 km.
- Exercice 4 : 20 véhicules, 1,5 heure de ralenti par jour, 22 jours, 1 L/h, 800 FCFA le litre (prix fictif). Calculez le coût mensuel du ralenti.

## Corrigé

Exercice 1 : 6 minutes = 0,1 h ; vitesse = 3 / 0,1 = 30 km/h.

Exercice 2 : 18 / 1 500 × 100 = 1,2 freinage pour 100 km.

Exercice 3 : 100 - 4 × 1,2 - 3 × 0,8 - 6 × 1,5 = 100 - 4,8 - 2,4 - 9 = 83,8.

Exercice 4 : 20 × 1,5 × 22 × 1 = 660 litres ; 660 × 800 = 528 000 FCFA par mois.', 'texte', 50, false, 40
from public.courses c where c.slug = 'formation-gps-avance'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Analyser les trajets et le comportement de conduite');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Protéger les données personnelles des conducteurs', '## Objectifs de la leçon

- Comprendre pourquoi les données de géolocalisation sont des données personnelles.
- Appliquer les grands principes de protection des données à un projet de géolocalisation.
- Rédiger les règles d''information et d''usage pour les conducteurs.

## La géolocalisation touche à la vie privée

Une position GPS associée à un véhicule conduit par une personne identifiable est une donnée à caractère personnel. Elle révèle beaucoup : lieux fréquentés, horaires, habitudes, domicile, et parfois des informations sensibles (lieu de culte, établissement de santé). L''employeur a des raisons légitimes de géolocaliser ses véhicules, mais il ne peut pas en faire un outil de surveillance permanente et sans limite de ses salariés.

## Le cadre juridique

Au Sénégal, la protection des données personnelles est encadrée par la loi de 2008 sur la protection des données à caractère personnel, dont l''application est contrôlée par la Commission de protection des données personnelles (CDP). Selon les traitements, des formalités préalables (déclaration ou demande d''autorisation) doivent être accomplies auprès de la CDP avant la mise en œuvre. Au niveau régional et continental, la CEDEAO et l''Union africaine ont également adopté des textes sur la protection des données personnelles. Le cadre juridique évolue : avant tout projet, il faut vérifier les textes en vigueur et les recommandations de la CDP, et faire valider le dispositif par un juriste.

Ce cours présente les principes généraux communs à ces textes, sans remplacer la lecture des règles officielles.

## Les grands principes appliqués à la géolocalisation

La finalité : on définit à l''avance et par écrit pourquoi on géolocalise. Exemples de finalités légitimes : sécurité des véhicules et des personnes, organisation des tournées, suivi du temps de transport pour la facturation, preuve de livraison, maîtrise des coûts. Les données ne doivent pas être détournées vers une autre finalité.

La proportionnalité : on ne collecte que ce qui est nécessaire à la finalité. Si le but est la sécurité contre le vol, il n''est pas utile d''analyser chaque minute de la pause déjeuner. La fréquence de relevé, les données collectées et les personnes qui y accèdent doivent être adaptées.

La transparence et l''information : les conducteurs sont informés avant la mise en service, par écrit : finalités, données collectées, durée de conservation, destinataires, droits et contact. Les représentants du personnel sont consultés selon le droit applicable. Un dispositif caché est à proscrire.

La durée de conservation limitée : les données sont conservées le temps nécessaire à la finalité, puis supprimées ou anonymisées. Cette durée est fixée par écrit et justifiée ; il faut vérifier les recommandations de la CDP.

La sécurité : accès réservé à des personnes habilitées, mots de passe individuels, traçabilité des consultations, contrat avec le prestataire qui précise ses obligations de sécurité et le lieu d''hébergement.

Les droits des personnes : le conducteur peut demander à accéder aux données qui le concernent, à les faire rectifier si elles sont inexactes, et s''opposer dans les cas prévus par la loi.

## Les bonnes pratiques spécifiques

- Vie privée : si l''usage privé du véhicule est autorisé (soirs, week-ends), prévoir la possibilité de désactiver la géolocalisation pendant ces périodes, ou de ne pas exploiter ces données.
- Pas de surveillance continue des personnes : on suit l''activité des véhicules pour les finalités prévues, pas les faits et gestes des conducteurs.
- Pas de géolocalisation pour contrôler en permanence la vitesse dans le but unique de sanctionner, sans cadre défini ; le suivi de la conduite doit être prévu, expliqué et proportionné.
- Profils d''accès : le chef d''exploitation voit les positions en temps réel ; la direction voit des rapports agrégés ; les ressources humaines n''accèdent aux données individuelles que dans les cas prévus.
- Registre : documenter le traitement (finalités, données, durées, accès, mesures de sécurité).

## Exemple : la charte de géolocalisation d''une entreprise de distribution

Une entreprise de distribution de Ziguinchor déploie des traceurs sur 25 véhicules. Elle rédige une charte annexée à la politique conducteurs : finalités (sécurité contre le vol, optimisation des tournées, preuve de livraison) ; données collectées (position, vitesse, contact moteur, événements de conduite) ; pas de collecte en dehors des heures de service grâce à un bouton vie privée pour les cinq véhicules à usage mixte ; durée de conservation définie et justifiée ; accès limité au responsable de flotte et au chef d''exploitation ; droits des conducteurs et contact. Elle accomplit les formalités auprès de la CDP, présente la charte aux délégués du personnel et la fait signer par chaque conducteur pour attester qu''il en a pris connaissance.

## Points clés

- Les positions d''un véhicule conduit par une personne identifiable sont des données personnelles.
- Au Sénégal, la loi de 2008 et la CDP encadrent ces traitements ; vérifier les textes en vigueur.
- Finalité, proportionnalité, information, durée limitée, sécurité et droits des personnes sont les principes clés.
- Une charte écrite, des accès limités et le respect de la vie privée hors service rendent le dispositif acceptable.

## Exercices

- Exercice 1 : pourquoi une position GPS de véhicule est-elle une donnée personnelle ?
- Exercice 2 : citez trois finalités légitimes de la géolocalisation d''une flotte.
- Exercice 3 : un directeur veut consulter chaque soir où se trouvent les véhicules de fonction à usage privé, "pour voir". Qu''en pensez-vous ?
- Exercice 4 : citez six informations à donner aux conducteurs avant la mise en service.
- Exercice 5 : proposez trois mesures de sécurité pour protéger les données de géolocalisation.

## Corrigé

Exercice 1 : parce qu''elle est associée à un véhicule conduit par une personne identifiable (registre d''affectation, badge) et révèle ses déplacements, ses horaires et ses habitudes.

Exercice 2 : sécurité contre le vol, organisation et optimisation des tournées, preuve de livraison ou facturation du temps de transport, maîtrise des coûts de carburant.

Exercice 3 : cette consultation n''a pas de finalité légitime définie et porte sur la vie privée en dehors des heures de service : elle est disproportionnée. Il faut prévoir la désactivation ou la non-exploitation des données pendant l''usage privé.

Exercice 4 : finalités, données collectées, durée de conservation, destinataires, droits d''accès et de rectification, personne à contacter, existence des périodes de désactivation.

Exercice 5 : comptes individuels avec mots de passe solides, profils d''accès limités selon les fonctions, traçabilité des consultations, contrat de sécurité avec le prestataire, suppression des données à l''expiration de la durée de conservation.', 'texte', 50, false, 50
from public.courses c where c.slug = 'formation-gps-avance'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Protéger les données personnelles des conducteurs');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : déployer et exploiter la géolocalisation d''une flotte', '## Fiche du cours vidéo

- Durée : 1h30.
- Public : gestionnaires de flotte, responsables sécurité, exploitants de transport, techniciens télématiques.
- Objectifs : expliquer le fonctionnement du GPS, choisir et paramétrer une solution de télématique, créer des zones et des alertes efficaces, analyser trajets et conduite, respecter la protection des données des conducteurs.
- Matériel : diaporama, carte projetée d''une plateforme de suivi (démonstration), tableau blanc, calculatrice.
- Prérequis : notions de vitesse, racine carrée ; lecture des leçons du module conseillée.

## Déroulé minuté

## 00:00 – 05:00 · Introduction et cas fil rouge

Bonjour à toutes et à tous. Pendant cette séance, nous accompagnons la société fictive Baobab Express, qui livre des colis et des produits frais entre Dakar, Thiès, Mbour et Kaolack avec 30 véhicules. Elle a subi deux vols de véhicules l''an dernier, ses dépenses de carburant augmentent et ses clients demandent des preuves de livraison. La direction a décidé d''installer une solution de géolocalisation. Notre rôle : la concevoir de bout en bout, de la compréhension du GPS jusqu''à la charte de protection des données.

Question d''ouverture : selon vous, un traceur GPS envoie-t-il des signaux vers les satellites ? Gardez votre réponse, nous la vérifions tout de suite.

## 05:00 – 20:00 · Comment fonctionne le GPS

La réponse est non : le récepteur GPS ne fait qu''écouter. Visuel : la constellation, avec des satellites à environ 20 200 km d''altitude répartis sur six plans orbitaux. Chaque satellite porte des horloges atomiques et diffuse l''heure exacte d''émission et sa position. Le récepteur mesure le temps de trajet et le multiplie par la vitesse de la lumière, environ 300 000 km par seconde.

Calcul au tableau : un temps de trajet de 0,0673 seconde donne 300 000 fois 0,0673, soit environ 20 190 km. Et si l''horloge se trompe d''une seule microseconde ? 300 000 km/s fois un millionième de seconde, soit 300 mètres d''erreur. Voilà pourquoi le temps est au cœur du GPS.

Visuel : trois sphères qui se coupent. Avec une distance, on est sur une sphère ; avec deux, sur un cercle ; avec trois, sur deux points. Mais l''horloge du récepteur n''est pas parfaite : son décalage est une quatrième inconnue. Il faut donc au moins quatre satellites.

Exemple en plan : balises A(0 ; 0), B(10 ; 0), C(0 ; 10) et distances 5, √65 et √45 kilomètres. En soustrayant les équations des cercles, on trouve x = 3, puis y = 4. Nous vérifions : 9 plus 16 égale 25. Enfin, je vous rappelle les sources d''erreur : atmosphère, rebonds sur les immeubles, tunnels et parkings souterrains, mauvaise répartition des satellites dans le ciel. En ciel dégagé, un récepteur civil courant est précis à quelques mètres.

## 20:00 – 33:00 · Traceurs et télématique pour Baobab Express

Passons à la solution. Visuel : schéma du boîtier avec récepteur GNSS multi-constellations, modem et carte SIM, accéléromètre, batterie de secours, entrée contact moteur, sonde de température pour les véhicules frigorifiques, connexion au réseau du véhicule.

Paramétrage : une position toutes les 30 secondes en roulant, toutes les 30 minutes à l''arrêt, envoi immédiat en cas d''allumage, de choc ou de coupure d''alimentation. Calculons le volume : 10 heures de route font 36 000 secondes, divisées par 30, soit 1 200 positions par jour. À environ 100 octets par message, cela fait 120 ko par jour et environ 3,6 Mo par mois. Un petit forfait de données suffit.

Le budget, avec des montants d''exemple à confirmer par devis : 30 boîtiers installés à 120 000 FCFA, soit 3 600 000 FCFA, et un abonnement de 8 000 FCFA par mois et par véhicule, soit 2 880 000 FCFA par an. Les gains attendus, estimés sur un pilote de 5 véhicules : 8 % de carburant sur une dépense de 60 000 000 FCFA, soit 4 800 000 FCFA, et 1 500 000 FCFA de baisse des sinistres et de la maintenance. Question à la salle : à quelle condition ces gains seront-ils réels ? Réponse attendue : si quelqu''un est chargé d''exploiter les rapports et d''agir.

## 33:00 – 45:00 · Géofencing et alertes

Créons maintenant les zones de Baobab Express. Visuel : la carte de la plateforme avec le dépôt de Rufisque, les entrepôts des grands clients et le corridor de la route nationale vers Kaolack.

Première règle, la sécurité : si un véhicule sort de la zone Dépôt entre 21 h et 5 h, alerte immédiate au poste de sécurité, qui appelle le chauffeur puis suit la procédure. Deuxième règle, l''exploitation : entrée et sortie des zones clients enregistrées automatiquement pour la preuve de livraison. Troisième règle, la conformité : alerte si un camion sort du corridor autorisé de plus de 2 km.

Calculons une position. Centre du dépôt (14,7000 ; -17,4500), rayon 500 mètres. Le véhicule est signalé en (14,7030 ; -17,4470). Écart nord-sud : 0,003 fois 111 000, soit 333 mètres. Écart est-ouest : 0,003 fois 111 000 fois 0,967, soit environ 322 mètres. Distance : racine de 333 au carré plus 322 au carré, environ 463 mètres. Il est dans la zone, mais près du bord : attention aux fausses alertes. Nous ajoutons une temporisation de 3 minutes et la condition moteur allumé.

## 45:00 – 50:00 · Pause et quiz interactif

Pause active. Répondez dans le chat.

Question 1 : combien de satellites faut-il au minimum pour une position GPS en trois dimensions ? Réponse : quatre.

Question 2 : quelle erreur produit une erreur d''horloge de 2 microsecondes ? Réponse : 600 mètres.

Question 3 : quel type de zone choisir pour un itinéraire routier ? Réponse : un corridor.

Question 4 : 8 heures de route, une position toutes les 60 secondes : combien de positions ? Réponse : 480.

Question 5 : vrai ou faux, plus il y a d''alertes, mieux la flotte est protégée ? Réponse : faux, trop d''alertes inutiles créent la lassitude et la vraie alerte passe inaperçue.

## 50:00 – 1:04:00 · Analyser les trajets et la conduite

Trois mois ont passé. Visuel : le rapport mensuel de Baobab Express. Premier constat : le ralenti. Les véhicules tournent moteur allumé à l''arrêt en moyenne 1 heure par jour. Avec une hypothèse de 1 litre par heure et un prix fictif de 800 FCFA, pour 30 véhicules et 22 jours : 660 litres et 528 000 FCFA par mois.

Deuxième constat : la conduite. Calculons pour deux chauffeurs. Moussa : 12 freinages brusques sur 800 km, soit 1,5 pour 100 km. Awa : 9 sur 1 000 km, soit 0,9 pour 100 km. Appliquons le barème interne : moins 4 points par freinage, moins 3 par accélération et moins 6 par excès de vitesse, le tout pour 100 km. Moussa a aussi 1,0 accélération et 0,5 excès : score 100 moins 6 moins 3 moins 3, soit 88. Awa a 0,5 accélération et 0 excès : score 100 moins 3,6 moins 1,5, soit 94,9.

Troisième constat : un véhicule fait régulièrement un détour de 15 km sur la tournée de Mbour. L''analyse montre que l''itinéraire prévu passe par une route en travaux : il faut corriger le plan de tournée, pas sanctionner le chauffeur. Question : comment présenter ces résultats aux chauffeurs ? Réponse attendue : en entretien individuel, avec le barème connu, en cherchant les causes et en proposant une formation.

## 1:04:00 – 1:18:00 · Protéger les données des conducteurs

Nous arrivons à un point essentiel. Les positions des véhicules de Baobab Express, associées aux chauffeurs, sont des données personnelles. Au Sénégal, la loi de 2008 sur la protection des données à caractère personnel s''applique et la CDP contrôle sa mise en œuvre. Avant le déploiement, l''entreprise accomplit les formalités prévues auprès de la CDP et vérifie les textes en vigueur, car le cadre évolue.

Visuel : les six principes. Finalité : sécurité, tournées, preuve de livraison, maîtrise des coûts. Proportionnalité : pas plus de données que nécessaire. Information : chaque chauffeur reçoit une note écrite avant la mise en service, et les représentants du personnel sont consultés. Durée de conservation limitée et justifiée. Sécurité : comptes individuels, profils d''accès, traçabilité. Droits des personnes : accès et rectification.

Cas pratique : cinq véhicules de Baobab Express sont à usage mixte et les cadres les gardent le week-end. Que faire ? Installer un bouton vie privée ou ne pas exploiter les données hors service. Autre cas : le directeur commercial demande l''accès en temps réel à toutes les positions pour vérifier ses commerciaux. Question à la salle : est-ce proportionné ? Discutons-en : un accès aux rapports de visites clients répond à son besoin, sans suivi minute par minute.

## 1:18:00 – 1:30:00 · Synthèse et évaluation finale

Résumons. Le GPS mesure des temps de trajet pour en déduire des distances, et il faut quatre satellites. Le traceur ajoute la communication, la télématique ajoute les données du véhicule. Le géofencing transforme des zones en règles et en alertes, à condition de limiter les fausses alertes. L''analyse des trajets et de la conduite réduit les coûts et les risques, surtout si l''on accompagne les chauffeurs. Enfin, tout repose sur le respect des données personnelles : finalité, proportionnalité, information, durée limitée, sécurité, droits.

Évaluation finale.

Question 1 : pourquoi le GPS a-t-il besoin d''horloges atomiques ? Réponse : parce que la position se déduit du temps de trajet ; une microseconde d''erreur fait 300 mètres.

Question 2 : un véhicule parcourt 6 km en 5 minutes : vitesse moyenne ? Réponse : 6 divisé par 5/60, soit 72 km/h.

Question 3 : un point est à 400 mètres au nord et 300 mètres à l''est du centre d''une zone de rayon 450 mètres : est-il dedans ? Réponse : distance racine de 160 000 plus 90 000, soit 500 mètres : il est dehors.

Question 4 : 15 freinages brusques sur 1 000 km : combien pour 100 km ? Réponse : 1,5.

Question 5 : citez quatre principes de protection des données appliqués à la géolocalisation. Réponse : finalité, proportionnalité, information des conducteurs, durée de conservation limitée, sécurité, droits d''accès et de rectification.

Merci pour votre participation. Votre travail : rédiger les trois règles de géofencing et la note d''information aux conducteurs pour votre propre flotte.', 'video', 90, false, 60
from public.courses c where c.slug = 'formation-gps-avance'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : déployer et exploiter la géolocalisation d''une flotte');

-- Cours : Apprendre et enseigner en ligne efficacement
insert into public.courses (slug, level_id, module_id, subject, title, description, published, sort)
select 'formation-education-numerique', (select id from public.levels where name = 'Formation professionnelle'), 'education', 'Éducation et compétences numériques', 'Apprendre et enseigner en ligne efficacement', 'Cette formation donne aux étudiants, enseignants et formateurs les méthodes pour réussir l''apprentissage et l''enseignement en ligne : mémorisation par répétition espacée, prise de notes, organisation du travail, conception d''un cours en ligne de qualité, évaluation et sécurité numérique. Les exemples sont adaptés aux réalités de l''Afrique de l''Ouest, notamment au coût de la connexion et à l''usage du téléphone. Aucun prérequis n''est demandé, en dehors d''une pratique de base du téléphone ou de l''ordinateur.', true, 120
on conflict (slug) do nothing;
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Comment on apprend : mémoire, récupération active et répétition espacée', '## Objectifs de la leçon

- Comprendre comment la mémoire fonctionne et pourquoi on oublie.
- Utiliser la récupération active et la répétition espacée pour retenir durablement.
- Construire un plan de révision personnel adapté aux études ou à une formation professionnelle.

## Apprendre, c''est d''abord retenir et comprendre

Beaucoup d''élèves et d''étudiants relisent leurs cours plusieurs fois, surlignent, recopient, et sont surpris d''avoir tout oublié le jour de l''examen. Ce n''est pas un manque d''intelligence : c''est une mauvaise méthode. Les recherches en psychologie cognitive ont montré depuis longtemps que certaines stratégies sont beaucoup plus efficaces que d''autres. La bonne nouvelle : elles ne demandent ni matériel coûteux ni connexion permanente.

## Les notions clés

La mémoire de travail : c''est l''espace mental où l''on manipule les informations en ce moment. Elle est très limitée : on ne peut y garder que quelques éléments à la fois. Un cours trop dense, une vidéo trop rapide ou un environnement bruyant la saturent.

La mémoire à long terme : c''est le stockage durable. Pour qu''une information y entre et puisse en ressortir, il faut la relier à ce que l''on sait déjà et la réactiver régulièrement.

La courbe de l''oubli : le psychologue Hermann Ebbinghaus a montré, à la fin du XIXe siècle, que l''on oublie très vite après un premier apprentissage, puis plus lentement. Chaque révision bien placée ralentit l''oubli.

La récupération active : se tester, c''est-à-dire essayer de retrouver une information sans regarder ses notes, renforce la mémoire bien plus que relire. On parle d''« effet de test ».

La répétition espacée : répartir les révisions dans le temps, avec des intervalles croissants, est plus efficace que tout réviser la veille.

L''entrelacement : alterner des types d''exercices (par exemple des problèmes de pourcentages, de proportionnalité et d''équations) oblige le cerveau à choisir la bonne méthode, ce qui prépare mieux à l''examen.

## Méthode : les fiches question-réponse et les boîtes de révision

- Étape 1 : après chaque cours, transformez l''essentiel en questions. Au recto : « Qu''est-ce que la BCEAO ? » ; au verso : la réponse courte.
- Étape 2 : rangez les fiches dans des boîtes numérotées (système de Leitner). Boîte 1 : à revoir chaque jour ; boîte 2 : tous les 2 jours ; boîte 3 : tous les 4 jours ; boîte 4 : chaque semaine ; boîte 5 : avant l''examen.
- Étape 3 : quand vous répondez juste, la fiche avance d''une boîte ; quand vous vous trompez, elle revient en boîte 1.
- Étape 4 : chaque jour, ne révisez que les boîtes prévues. Dix à vingt minutes suffisent.

Ce système fonctionne sur papier (cartons découpés, enveloppes) ou sur téléphone avec une application de cartes de révision fonctionnant hors ligne, ce qui est précieux quand la connexion est chère ou instable.

## Autres techniques efficaces

- L''auto-explication : expliquer à voix haute, ou à un camarade, pourquoi une solution est juste.
- La pratique de rappel libre : sur une feuille blanche, écrire tout ce dont on se souvient d''un chapitre, puis comparer avec le cours.
- Le double codage : associer un texte à un schéma, une carte ou un tableau.
- Les exemples concrets : relier une notion abstraite à une situation connue (le prix du riz au marché pour l''inflation, le budget de la famille pour les pourcentages).

À l''inverse, le surlignage massif, la relecture passive et le « bachotage » de la dernière nuit donnent une impression de maîtrise mais produisent peu de mémorisation durable.

## Exemple : le plan de révision de Mariama

Mariama prépare un BTS en comptabilité à Dakar et a un examen dans six semaines. Elle a 8 chapitres. Son plan :

- Chaque soir, 20 minutes de fiches question-réponse selon ses boîtes.
- Chaque samedi, un rappel libre sur deux chapitres et une série d''exercices mélangés.
- Une semaine avant l''examen, un sujet blanc en conditions réelles.

En répartissant ainsi 20 minutes par jour sur 42 jours, elle consacre 840 minutes, soit 14 heures, aux révisions espacées, sans nuit blanche.

## Points clés

- On oublie vite, mais chaque révision espacée ralentit l''oubli.
- Se tester est plus efficace que relire.
- Espacer, alterner, expliquer et illustrer.
- Un petit temps quotidien vaut mieux qu''une longue séance de dernière minute.

## Exercices

- Exercice 1 : Expliquez la différence entre mémoire de travail et mémoire à long terme.
- Exercice 2 : Transformez ce passage en trois fiches question-réponse : « L''UEMOA regroupe huit États qui utilisent le franc CFA émis par la BCEAO, dont le siège est à Dakar. »
- Exercice 3 : Une fiche est en boîte 3. Vous vous trompez. Où va-t-elle ? Et si vous aviez répondu juste ?
- Exercice 4 : Un étudiant révise 30 minutes par jour pendant 5 semaines. Combien d''heures cela représente-t-il ?

## Corrigé

- Exercice 1 : La mémoire de travail traite les informations du moment ; elle est très limitée et se sature vite. La mémoire à long terme stocke durablement les connaissances ; on y fait entrer une information en la reliant à ce que l''on sait et en la réactivant.
- Exercice 2 : Par exemple : « Combien d''États compte l''UEMOA ? » : huit. « Quelle monnaie utilisent-ils ? » : le franc CFA. « Quelle institution l''émet et où est son siège ? » : la BCEAO, à Dakar.
- Exercice 3 : En cas d''erreur, elle revient en boîte 1. En cas de bonne réponse, elle passe en boîte 4.
- Exercice 4 : 5 semaines = 35 jours ; 35 × 30 = 1 050 minutes = 17 heures 30 minutes.', 'texte', 45, true, 10
from public.courses c where c.slug = 'formation-education-numerique'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Comment on apprend : mémoire, récupération active et répétition espacée');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Prendre des notes et organiser son travail d''étudiant', '## Objectifs de la leçon

- Prendre des notes utiles, en cours en présentiel comme devant une vidéo.
- Organiser son temps d''étude et son environnement de travail.
- Gérer la contrainte de la connexion et du matériel.

## Pourquoi prendre des notes

Prendre des notes n''est pas recopier. Une bonne prise de notes oblige à sélectionner, reformuler et organiser ; ce travail actif aide déjà à mémoriser. Les notes servent ensuite de matière première pour les fiches de révision vues à la leçon précédente.

## La méthode des notes en colonnes (méthode Cornell)

On divise la page en trois zones :

- Une grande colonne de droite : les notes prises pendant le cours, en phrases courtes, avec abréviations.
- Une colonne étroite à gauche : remplie après le cours, elle contient les mots-clés et les questions auxquelles répondent les notes.
- Une bande en bas de page : un résumé de la page en deux ou trois phrases.

Pour réviser, on cache la colonne de droite et on essaie de répondre aux questions de la colonne de gauche : c''est de la récupération active intégrée aux notes.

## Les autres formats

- La carte mentale : le sujet au centre, les idées principales en branches, les détails en sous-branches. Utile pour les sujets riches en relations (histoire, gestion, biologie).
- Le tableau comparatif : idéal pour comparer des notions (par exemple CDI et CDD, ou deux pays).
- Le plan hiérarchisé : titres, sous-titres, puces ; adapté aux cours très structurés.

## Abréviations et symboles utiles

- « + » pour « plus, en hausse » ; « − » pour « moins, en baisse ».
- « → » pour « entraîne, conduit à ».
- « ≠ » pour « différent de » ; « ≈ » pour « environ ».
- « ex. » pour exemple ; « cf. » pour se reporter à ; « qqch » pour quelque chose.

Créez votre propre code et gardez-le stable.

## Prendre des notes devant une vidéo

Le grand avantage du cours en ligne est la possibilité de faire pause. Utilisez-la : regardez une séquence de quelques minutes, mettez en pause, notez l''idée principale avec vos mots, puis reprenez. Notez aussi le minutage des passages importants (par exemple « 23:40 calcul du taux horaire ») pour y revenir sans tout revoir. Si la connexion est faible, réduisez la qualité de la vidéo ou téléchargez-la quand le réseau est meilleur, si la plateforme le permet.

## Organiser son temps

Les étudiants en ligne ont souvent plus de liberté, donc plus de risques de procrastination. Quelques règles :

- Un planning hebdomadaire fixe : les mêmes créneaux chaque semaine (par exemple lundi, mercredi et vendredi de 19 h à 21 h).
- Le travail par blocs chronométrés : 25 minutes de concentration, 5 minutes de pause, puis une pause plus longue après quatre blocs.
- La règle des deux minutes : si une tâche prend moins de deux minutes (répondre à un message du formateur, télécharger un document), faites-la tout de suite.
- La liste de tâches du jour : trois priorités maximum.
- Le bilan de fin de semaine : ce qui a été fait, ce qui reste, ce qu''il faut ajuster.

## Organiser son environnement

- Un lieu calme, même modeste : un coin de chambre, une bibliothèque de quartier, un espace numérique universitaire.
- Le téléphone en mode silencieux ou hors de portée pendant les blocs de travail.
- Des dossiers numériques bien nommés : « 2026_Compta_Chap3_Notes », plutôt que « document final 2 ».
- Une sauvegarde régulière des notes (nous y reviendrons à la leçon 5).

## Gérer le coût de la connexion

En Afrique de l''Ouest, les données mobiles représentent un budget. Stratégies :

- Télécharger les ressources via le wifi d''un campus, d''un centre de formation ou d''un espace public sûr.
- Privilégier les documents texte et PDF légers pour la révision.
- Utiliser les fonctions hors ligne des applications.
- Planifier les sessions en direct (classes virtuelles) et couper la vidéo de sa caméra quand elle n''est pas nécessaire pour économiser la bande passante.

## Exemple : la semaine d''Ousmane

Ousmane travaille comme agent commercial à Kaolack et suit une formation en ligne en gestion. Il dispose de 6 heures par semaine. Son organisation : mardi et jeudi soir, 1 h 30 chacun pour les vidéos et les notes en colonnes ; samedi matin, 2 h pour les exercices et la révision des fiches ; dimanche, 1 h pour le bilan et la préparation de la semaine. Total : 1,5 + 1,5 + 2 + 1 = 6 heures. Il télécharge les vidéos le samedi au centre de formation, où le wifi est gratuit.

## Points clés

- Prendre des notes, c''est sélectionner, reformuler et organiser.
- La méthode en colonnes intègre la révision active dans les notes.
- Un planning fixe et des blocs chronométrés limitent la procrastination.
- Anticiper la connexion fait partie de l''organisation.

## Exercices

- Exercice 1 : Décrivez les trois zones de la méthode des notes en colonnes et leur rôle.
- Exercice 2 : Quel format de notes choisiriez-vous pour comparer le salaire brut et le salaire net ? Justifiez.
- Exercice 3 : Une étudiante enchaîne 6 blocs de 25 minutes avec 5 minutes de pause entre chaque bloc et une pause de 20 minutes après le 4e bloc (à la place de la courte). Quelle est la durée totale de la séance, du début du premier bloc à la fin du sixième ?
- Exercice 4 : Proposez trois actions pour réduire le coût de la connexion.

## Corrigé

- Exercice 1 : Colonne de droite : notes prises pendant le cours. Colonne de gauche : mots-clés et questions ajoutés après le cours. Bande du bas : résumé en quelques phrases. La colonne de gauche sert à se tester.
- Exercice 2 : Un tableau comparatif, car il met en regard les deux notions ligne par ligne (définition, composantes, calcul, exemple).
- Exercice 3 : 6 blocs × 25 = 150 minutes. Il y a 5 pauses entre les 6 blocs : 4 courtes de 5 minutes (20 minutes) et 1 longue de 20 minutes, soit 40 minutes. Total : 190 minutes, soit 3 h 10.
- Exercice 4 : Télécharger via un wifi gratuit et sûr ; réduire la qualité vidéo ; utiliser les modes hors ligne ; couper la caméra en classe virtuelle ; préférer les documents légers.', 'texte', 45, false, 20
from public.courses c where c.slug = 'formation-education-numerique'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Prendre des notes et organiser son travail d''étudiant');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Créer un cours en ligne de qualité (pour les formateurs)', '## Objectifs de la leçon

- Concevoir un cours en ligne à partir d''objectifs d''apprentissage précis.
- Appliquer le principe d''alignement entre objectifs, activités et évaluations.
- Produire des contenus clairs, accessibles et adaptés aux contraintes de connexion.

## Le point de départ : les objectifs

Un formateur qui commence par « ce que je vais dire » produit souvent un cours trop long. Un bon cours commence par « ce que l''apprenant saura faire à la fin ». Un objectif d''apprentissage s''écrit avec un verbe d''action observable :

- À éviter : « comprendre la paie » (non observable).
- À préférer : « calculer le salaire net à partir d''un brut et d''une liste de retenues ».

La taxonomie de Bloom aide à choisir le niveau : se souvenir, comprendre, appliquer, analyser, évaluer, créer. Un cours professionnel doit dépasser le simple « se souvenir » et faire appliquer.

## L''alignement pédagogique

Le principe d''alignement (développé notamment par John Biggs) dit que trois éléments doivent correspondre :

- L''objectif : ce que l''apprenant doit savoir faire.
- L''activité : ce qu''il fait pour l''apprendre.
- L''évaluation : comment on vérifie qu''il sait le faire.

Exemple : si l''objectif est « calculer un net à payer », l''activité doit être un exercice de calcul guidé, et l''évaluation un calcul à réaliser, pas un QCM sur des définitions.

## Le modèle de conception en cinq phases

Le modèle ADDIE est un cadre classique :

- Analyse : qui sont les apprenants (niveau, équipement, temps disponible, langue) ? Quel est le besoin ?
- Design (conception) : objectifs, plan, choix des activités et des évaluations.
- Développement : production des textes, vidéos, exercices.
- Implémentation : mise en ligne, accompagnement, animation.
- Évaluation : retours des apprenants, résultats, améliorations.

## Concevoir les contenus

- Découper : des modules courts, des vidéos de quelques minutes centrées sur une idée, des leçons écrites structurées par intertitres.
- Limiter la charge cognitive : un concept à la fois, un vocabulaire défini, pas d''animations décoratives inutiles.
- Associer texte et image : un schéma commenté vaut mieux qu''un long paragraphe ; mais évitez de lire à l''écran un texte identique à celui de la diapositive.
- Contextualiser : des exemples tirés de la réalité des apprenants (une boutique à Thiès, une coopérative agricole en Casamance, un budget en FCFA).
- Faire agir : toutes les 10 à 15 minutes d''apprentissage, une question, un exercice ou une réflexion.

## Accessibilité et faible bande passante

- Proposer pour chaque vidéo une version texte ou un résumé, et des sous-titres.
- Compresser les vidéos et proposer une qualité basse.
- Fournir les documents en PDF légers téléchargeables.
- Vérifier la lisibilité sur téléphone, car beaucoup d''apprenants suivent les cours sur mobile.
- Utiliser des contrastes suffisants et des polices lisibles.

## L''animation : la présence du formateur

Un cours en ligne sans accompagnement connaît souvent de nombreux abandons. La présence du formateur se manifeste par un message d''accueil, un calendrier clair, un forum ou un groupe de discussion modéré, des réponses rapides aux questions, des retours personnalisés sur les travaux et, si possible, quelques classes virtuelles en direct.

## Méthode : la fiche de conception d''une séquence

- Titre de la séquence et public.
- Durée estimée de travail pour l''apprenant.
- Deux à quatre objectifs avec verbes d''action.
- Prérequis.
- Activités (lecture, vidéo, exercice, discussion), avec la durée de chacune.
- Évaluation alignée sur chaque objectif.
- Ressources et versions accessibles.

## Exemple

Une formatrice de Saint-Louis crée une séquence « Tenir le cahier de caisse d''une boutique ». Public : commerçants débutants, sur téléphone. Durée : 2 heures. Objectifs : enregistrer les entrées et sorties ; calculer le solde de caisse du jour ; détecter un écart. Activités : vidéo de 6 minutes avec un exemple de journée de vente, fiche PDF d''une page, exercice sur un cahier fictif de 10 opérations, échange sur le groupe de discussion. Évaluation : calculer le solde d''une nouvelle journée et expliquer un écart. Chaque objectif a son activité et son évaluation : la séquence est alignée.

## Points clés

- Commencer par les objectifs, formulés avec des verbes d''action.
- Aligner objectifs, activités et évaluations.
- Découper, contextualiser, faire agir.
- Penser mobile, bas débit et accessibilité.
- Accompagner les apprenants.

## Exercices

- Exercice 1 : Réécrivez l''objectif « connaître la TVA » sous une forme observable.
- Exercice 2 : Un formateur veut que les apprenants sachent rédiger un CV, mais l''évalue par un QCM. Qu''en pensez-vous ?
- Exercice 3 : Citez les cinq phases du modèle ADDIE.
- Exercice 4 : Proposez trois mesures pour rendre un cours accessible avec une connexion faible.

## Corrigé

- Exercice 1 : Par exemple : « calculer le montant de TVA et le prix toutes taxes comprises à partir d''un prix hors taxes et d''un taux donné ».
- Exercice 2 : L''évaluation n''est pas alignée : un QCM vérifie des connaissances, pas la capacité de rédiger. Il faut demander la rédaction d''un CV, évaluée avec une grille de critères.
- Exercice 3 : Analyse, Design (conception), Développement, Implémentation, Évaluation.
- Exercice 4 : Résumés texte des vidéos, vidéos compressées ou en basse qualité, documents PDF légers téléchargeables, contenus testés sur téléphone.', 'texte', 50, false, 30
from public.courses c where c.slug = 'formation-education-numerique'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Créer un cours en ligne de qualité (pour les formateurs)');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Évaluer les apprentissages en ligne', '## Objectifs de la leçon

- Distinguer les fonctions de l''évaluation : diagnostique, formative, sommative.
- Rédiger des questions à choix multiples et des grilles critériées de qualité.
- Limiter la fraude et garantir l''équité des évaluations en ligne.

## Les trois fonctions de l''évaluation

- L''évaluation diagnostique : au début d''un cours, elle mesure les acquis et les besoins. Elle permet d''adapter le parcours.
- L''évaluation formative : pendant l''apprentissage, elle aide l''apprenant à progresser grâce à un retour immédiat. Elle compte peu ou pas dans la note finale.
- L''évaluation sommative : à la fin, elle certifie le niveau atteint (examen, certificat).

Dans un cours en ligne, l''évaluation formative est la plus précieuse : quiz après chaque leçon, exercices corrigés automatiquement, retours du formateur. C''est aussi une application directe de l''effet de test vu en leçon 1.

## Rédiger de bonnes questions à choix multiples

Un QCM bien conçu peut évaluer bien plus que la mémoire. Règles :

- Une seule idée par question, formulée clairement, sans double négation.
- Une seule bonne réponse indiscutable (ou une consigne explicite si plusieurs).
- Des distracteurs plausibles, qui correspondent à des erreurs fréquentes.
- Des options de longueur comparable : la bonne réponse ne doit pas être la plus longue.
- Éviter « toutes les réponses ci-dessus » et les indices grammaticaux.
- Préférer des mises en situation : « Un salarié gagne 200 000 FCFA ; ses retenues sont de 30 000 FCFA ; quel est son net ? »

Exemple de question avec distracteurs fondés sur des erreurs courantes :

« Un article coûte 10 000 FCFA hors taxes. Avec un taux de TVA de 18 %, quel est le prix TTC ? »

- A. 10 018 FCFA (erreur : addition du taux comme un nombre).
- B. 11 800 FCFA (bonne réponse : 10 000 × 1,18).
- C. 8 200 FCFA (erreur : soustraction).
- D. 1 800 FCFA (erreur : calcul de la seule TVA).

## Les grilles critériées

Pour les productions complexes (rapport, projet, présentation), on utilise une grille avec des critères et des niveaux. Exemple pour un plan d''affaires :

- Critère 1 : clarté de l''offre (insuffisant, acceptable, bien, très bien).
- Critère 2 : étude de marché.
- Critère 3 : cohérence des chiffres.
- Critère 4 : qualité de la présentation.

Chaque niveau est décrit précisément (par exemple pour « cohérence des chiffres, très bien » : les prévisions de ventes, de charges et de trésorerie sont reliées et vérifiables). La grille est communiquée à l''avance : l''apprenant sait ce qui est attendu, le correcteur est plus juste, et deux correcteurs donnent des notes proches.

## L''évaluation par les pairs et l''auto-évaluation

Dans les cours à fort effectif, les apprenants peuvent évaluer les travaux de leurs camarades avec la grille. Cette pratique développe l''esprit critique et allège la charge du formateur, à condition de former les apprenants à la grille, de faire évaluer chaque travail par plusieurs pairs et de prévoir un recours. L''auto-évaluation, avant remise du travail, aide l''apprenant à se corriger.

## Intégrité et équité en ligne

La fraude est plus facile à distance. Plutôt que de multiplier les contrôles intrusifs, on privilégie la conception :

- Banques de questions et tirage aléatoire, ordre des réponses mélangé.
- Valeurs numériques différentes pour chaque apprenant dans les exercices de calcul.
- Questions d''application et de réflexion plutôt que de simple restitution.
- Travaux personnalisés : appliquer la méthode à sa propre entreprise ou à son quartier.
- Courte soutenance orale en visioconférence pour les évaluations certifiantes.

L''équité impose aussi de tenir compte des contraintes techniques : prévoir un délai raisonnable, autoriser la reprise en cas de coupure, éviter les épreuves en temps très limité qui pénalisent ceux qui ont une connexion lente.

## Exploiter les résultats

Les statistiques d''un quiz renseignent le formateur : une question ratée par la majorité signale soit une explication insuffisante, soit une question mal rédigée. On calcule par exemple le taux de réussite d''une question : nombre de bonnes réponses / nombre de répondants × 100.

## Points clés

- Diagnostique au début, formative pendant, sommative à la fin.
- Un bon QCM a des distracteurs fondés sur des erreurs réelles.
- Les grilles critériées rendent l''évaluation transparente et juste.
- L''intégrité se construit surtout par la conception des épreuves.

## Exercices

- Exercice 1 : Classez : quiz d''entrée de formation ; exercice corrigé après une vidéo ; examen final certifiant.
- Exercice 2 : Repérez deux défauts dans cette question : « Lequel n''est pas un élément qui ne figure pas sur le bulletin de paie ? A. Le net à payer B. Toutes les réponses ci-dessus ».
- Exercice 3 : 120 apprenants ont répondu à une question ; 78 ont trouvé la bonne réponse. Calculez le taux de réussite.
- Exercice 4 : Proposez deux moyens de limiter la fraude dans un exercice de calcul en ligne.

## Corrigé

- Exercice 1 : Quiz d''entrée : diagnostique. Exercice après la vidéo : formative. Examen final : sommative.
- Exercice 2 : Double négation qui rend la question incompréhensible ; option « toutes les réponses ci-dessus » ; une seule option réelle, donc pas de distracteurs.
- Exercice 3 : 78 / 120 × 100 = 65 %.
- Exercice 4 : Données numériques différentes pour chaque apprenant ; tirage aléatoire des questions ; demander la justification de la démarche ; courte vérification orale.', 'texte', 45, false, 40
from public.courses c where c.slug = 'formation-education-numerique'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Évaluer les apprentissages en ligne');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Outils numériques et bonnes pratiques de sécurité', '## Objectifs de la leçon

- Choisir des outils numériques adaptés à l''apprentissage et à l''enseignement.
- Protéger ses comptes, ses appareils et ses données.
- Reconnaître et éviter les arnaques en ligne les plus courantes.

## Choisir ses outils

Il n''est pas nécessaire d''avoir beaucoup d''outils ; il faut des outils fiables et maîtrisés. Les grandes catégories :

- La plateforme d''apprentissage : elle centralise cours, exercices, évaluations et suivi.
- La visioconférence : pour les classes virtuelles et le tutorat.
- La messagerie de groupe : pour l''entraide, à condition d''être modérée.
- La bureautique : traitement de texte, tableur, présentation ; des suites libres et gratuites existent.
- Les cartes de révision et la prise de notes numérique, de préférence avec mode hors ligne.
- Le stockage en ligne : pour sauvegarder et partager des fichiers.

Critères de choix : fonctionne-t-il sur téléphone et avec une connexion faible ? Est-il gratuit ou abordable ? Où sont stockées les données ? Est-il facile à utiliser pour tous ?

## Protéger ses comptes

Les comptes d''un étudiant ou d''un formateur (messagerie, plateforme de cours, réseaux sociaux, porte-monnaie électronique) sont des cibles. Bonnes pratiques :

- Des mots de passe longs : une phrase de passe de plusieurs mots est plus robuste et plus facile à retenir qu''un mot court compliqué. Exemple de principe : quatre mots sans lien, avec un chiffre et un signe.
- Un mot de passe différent pour chaque compte important : si un site est piraté, les autres comptes restent protégés.
- Un gestionnaire de mots de passe pour les retenir.
- La double authentification (un code reçu ou généré en plus du mot de passe) activée sur la messagerie et les comptes sensibles.
- Ne jamais communiquer un code reçu par SMS : aucun service sérieux ne vous le demandera.

## Protéger ses appareils

- Installer les mises à jour du système et des applications, qui corrigent des failles.
- Télécharger les applications uniquement depuis les magasins officiels.
- Verrouiller le téléphone par un code ou une empreinte.
- Se méfier des clés USB partagées au cybercafé et analyser les fichiers avec un antivirus.
- Sur un ordinateur partagé, se déconnecter de tous les comptes et ne pas enregistrer les mots de passe.

## Sauvegarder : la règle 3-2-1

- 3 copies de vos fichiers importants (mémoire, notes, travaux) ;
- sur 2 supports différents (par exemple ordinateur et clé USB) ;
- dont 1 copie hors du lieu habituel (stockage en ligne ou chez un proche).

Un étudiant dont l''ordinateur est volé la veille de la remise de son mémoire comprend vite l''intérêt de cette règle.

## Reconnaître les arnaques

L''hameçonnage consiste à vous faire cliquer sur un lien ou à vous faire donner des informations en se faisant passer pour une organisation de confiance. Signes d''alerte :

- Une urgence artificielle : « Votre compte sera bloqué dans 24 heures. »
- Une offre trop belle : bourse d''études à l''étranger contre « frais de dossier », gain à un concours auquel vous n''avez pas participé.
- Une adresse d''expéditeur ou un lien légèrement différent de l''officiel.
- Une demande de code secret, de mot de passe ou de transfert d''argent.

Arnaques fréquentes dans le contexte ouest-africain : faux transferts d''argent par téléphone (« je vous ai envoyé par erreur 50 000 FCFA, renvoyez-les »), fausses offres d''emploi demandant un paiement, faux diplômes ou fausses inscriptions universitaires. Réflexe : vérifier par un canal officiel (site de l''établissement, numéro connu, agence) avant toute action.

## Protéger les données des autres

Un formateur manipule des données d''apprenants : noms, notes, numéros de téléphone. Il doit les limiter au nécessaire, ne pas les publier dans un groupe ouvert, protéger les fichiers et respecter la législation nationale sur les données personnelles. En classe virtuelle, il faut demander l''accord avant d''enregistrer et préciser l''usage de l''enregistrement.

## La citoyenneté numérique

Respecter les autres dans les forums, citer ses sources, ne pas plagier, vérifier une information avant de la partager : ces comportements font partie des compétences numériques attendues d''un étudiant comme d''un professionnel.

## Points clés

- Peu d''outils, mais fiables, adaptés au mobile et au bas débit.
- Phrases de passe, mots de passe uniques, double authentification.
- Mises à jour, verrouillage, sauvegarde 3-2-1.
- Urgence, offre trop belle, demande de code : signes d''arnaque.

## Exercices

- Exercice 1 : Pourquoi faut-il un mot de passe différent pour chaque compte important ?
- Exercice 2 : Vous recevez : « Félicitations ! Vous avez obtenu une bourse au Canada. Envoyez 25 000 FCFA de frais de dossier sous 24 h. » Listez les signes d''alerte et la bonne réaction.
- Exercice 3 : Appliquez la règle 3-2-1 à votre mémoire de fin d''études.
- Exercice 4 : Citez trois critères pour choisir un outil numérique pour une classe en zone rurale.

## Corrigé

- Exercice 1 : Si un site est piraté et que le mot de passe fuit, les pirates l''essaient sur d''autres services. Avec des mots de passe uniques, seul le compte du site piraté est exposé.
- Exercice 2 : Signes : gain non sollicité, urgence (24 h), demande d''argent. Réaction : ne pas payer, ne pas cliquer, vérifier auprès de l''organisme officiel de bourses ou de l''ambassade, signaler le message.
- Exercice 3 : Une copie sur l''ordinateur, une sur une clé USB ou un disque externe, une dans un stockage en ligne ou chez un proche ; mise à jour après chaque séance de travail importante.
- Exercice 4 : Fonctionnement sur téléphone, consommation de données faible ou mode hors ligne, gratuité ou faible coût, simplicité d''utilisation, protection des données.', 'texte', 45, false, 50
from public.courses c where c.slug = 'formation-education-numerique'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Outils numériques et bonnes pratiques de sécurité');
insert into public.lessons (course_id, title, content, kind, duration_min, is_free, sort)
select c.id, 'Cours vidéo (1h30) : apprendre à apprendre et concevoir une séquence en ligne', '## Fiche du cours vidéo

- Durée : 1h30.
- Titre de la séance : apprendre à apprendre et concevoir une séquence en ligne.
- Objectifs : appliquer la récupération active et la répétition espacée ; prendre des notes en colonnes ; concevoir une séquence de cours alignée ; rédiger un bon QCM ; adopter les réflexes de sécurité numérique.
- Matériel : diaporama, tableau blanc ou tableau numérique, feuilles et stylos, téléphone ou ordinateur pour le quiz, fiche de conception de séquence à télécharger.
- Prérequis : aucun ; les leçons 1 à 5 sont recommandées.
- Public : étudiants, formateurs, enseignants et professionnels en formation continue.

## Déroulé minuté

## 00:00 – 05:00 · Accueil et défi de départ

Texte du formateur : « Bonjour et bienvenue. Cette séance a deux publics : celles et ceux qui apprennent, et celles et ceux qui enseignent. En réalité, nous sommes tous les deux à la fois. Je commence par un petit défi : prenez une feuille, et sans regarder vos notes, écrivez tout ce dont vous vous souvenez du dernier cours que vous avez suivi, il y a une semaine ou un mois. Vous avez deux minutes. »

« Alors ? Pour la plupart d''entre nous, la feuille est presque vide. Ce n''est pas grave : c''est normal. Aujourd''hui, nous allons comprendre pourquoi, et comment changer cela. »

Visuel : diapositive « Qu''avez-vous retenu ? » avec un minuteur.

## 05:00 – 15:00 · Comment fonctionne la mémoire

Texte du formateur : « Notre mémoire de travail est petite : elle ne garde que quelques éléments à la fois. Notre mémoire à long terme est immense, mais il faut savoir y ranger les informations et les en ressortir. Ebbinghaus a montré que l''on oublie très vite après avoir appris, puis plus lentement. Chaque révision bien placée remonte la courbe et la rend moins raide. »

Visuel : courbe de l''oubli, puis la même courbe avec des révisions successives qui la relèvent.

« Deux idées à retenir. Première idée : se tester est plus efficace que relire. Deuxième idée : espacer les révisions est plus efficace que tout concentrer la veille. »

Question : « Combien d''entre vous révisent principalement en relisant ? Qu''est-ce que vous pourriez changer dès demain ? »

## 15:00 – 27:00 · Atelier 1 : fiches et boîtes de révision

Texte du formateur : « Construisons ensemble un système de boîtes de révision. Je prends un extrait de cours : "L''UEMOA regroupe huit États qui partagent le franc CFA émis par la BCEAO, dont le siège est à Dakar." Transformons-le en questions. Première fiche : combien d''États dans l''UEMOA ? Deuxième : quelle monnaie ? Troisième : quelle banque centrale et où est son siège ? »

« Maintenant les boîtes. Boîte 1 : chaque jour. Boîte 2 : tous les deux jours. Boîte 3 : tous les quatre jours. Boîte 4 : chaque semaine. Boîte 5 : avant l''examen. Bonne réponse : la fiche avance. Erreur : retour en boîte 1. Vous pouvez faire cela avec des cartons et des enveloppes, ou avec une application de cartes de révision qui fonctionne hors ligne. »

Visuel : schéma des cinq boîtes avec des flèches.

Activité : chaque participant rédige trois fiches sur un sujet de son choix.

## 27:00 – 40:00 · Atelier 2 : les notes en colonnes

Texte du formateur : « Je vais vous montrer une vidéo de trois minutes sur le calcul d''un pourcentage. Préparez votre page : une grande colonne à droite pour les notes, une colonne étroite à gauche pour les questions, une bande en bas pour le résumé. Pendant la vidéo, n''écrivez qu''à droite, avec des abréviations. »

Après la vidéo : « Maintenant, remplissez la colonne de gauche : quelles questions vos notes permettent-elles de répondre ? Puis écrivez un résumé en deux phrases. Cachez la colonne de droite et répondez aux questions de gauche : vous venez de faire votre première révision active. »

Visuel : modèle de page en colonnes, puis un exemple rempli sur le calcul d''une hausse de 10 % sur un prix de 5 000 FCFA, qui donne 5 500 FCFA.

Question : « Qu''est-ce qui a été le plus difficile : écrire vite ou formuler les questions ? »

## 40:00 – 47:00 · Pause interactive et quiz

Texte du formateur : « Faisons une pause active avec un quiz de trois questions. Répondez dans le chat ou sur vos téléphones. »

- Question 1 : Qu''est-ce qui est le plus efficace pour retenir : relire trois fois ou se tester une fois ? Réponse : se tester.
- Question 2 : Une fiche en boîte 2 est ratée. Où va-t-elle ? Réponse : en boîte 1.
- Question 3 : Un étudiant révise 20 minutes par jour pendant 30 jours. Combien d''heures au total ? Réponse : 600 minutes, soit 10 heures.

« Ce quiz lui-même est un exemple d''évaluation formative : il vous aide à apprendre. Levez-vous, étirez-vous, nous reprenons dans deux minutes. »

## 47:00 – 1:00:00 · Atelier 3 : concevoir une séquence alignée

Texte du formateur : « Changeons de casquette. Vous êtes formateur. Vous devez créer une séquence de deux heures sur le thème "Tenir le cahier de caisse d''une boutique" pour des commerçants qui suivent le cours sur téléphone. Première question : que sauront-ils faire à la fin ? Pas "connaître la caisse", mais "enregistrer les entrées et sorties", "calculer le solde du jour", "repérer un écart". Ce sont des verbes d''action observables. »

« Deuxième question : quelle activité pour chaque objectif ? Une vidéo courte avec une journée de vente, un exercice sur un cahier fictif de dix opérations. Troisième question : comment évaluer ? En faisant calculer le solde d''une nouvelle journée. Objectif, activité, évaluation : c''est l''alignement. »

Visuel : fiche de conception de séquence à trois colonnes : objectifs, activités, évaluations.

Activité : par groupes de trois, les participants remplissent la fiche pour un sujet de leur métier.

Exemple chiffré à montrer : solde d''ouverture 25 000 FCFA, ventes 68 500 FCFA, achats payés en espèces 31 000 FCFA, solde théorique 25 000 + 68 500 − 31 000 = 62 500 FCFA. Si la caisse contient 61 500 FCFA, l''écart est de 1 000 FCFA à expliquer.

## 1:00:00 – 1:10:00 · Atelier 4 : rédiger un bon QCM

Texte du formateur : « Prenons une question : "Un article coûte 10 000 FCFA hors taxes, la TVA est de 18 %. Quel est le prix TTC ?" Bonne réponse : 11 800 FCFA. Les distracteurs doivent correspondre à des erreurs réelles : 10 018 si l''on ajoute 18 comme un nombre, 1 800 si l''on calcule seulement la TVA, 8 200 si l''on soustrait. Un distracteur absurde, comme 1 000 000, n''apprend rien. »

« Règles d''or : une idée par question, pas de double négation, des options de longueur comparable, pas de "toutes les réponses ci-dessus". Et pour limiter la fraude, changez les valeurs pour chaque apprenant. »

Activité : chaque groupe rédige une question avec trois distracteurs justifiés.

## 1:10:00 – 1:20:00 · Atelier 5 : la sécurité numérique

Texte du formateur : « Dernière compétence : protéger son travail et ses comptes. Je vous lis un message reçu par une étudiante : "Félicitations, vous avez gagné une bourse d''études. Envoyez 25 000 FCFA de frais de dossier avant ce soir." Quels sont les signaux d''alerte ? Un gain non sollicité, l''urgence, une demande d''argent. La bonne réaction : ne pas payer, vérifier auprès de l''organisme officiel. »

« Trois réflexes à adopter ce soir : activer la double authentification sur votre messagerie, utiliser une phrase de passe différente pour chaque compte important, et appliquer la règle 3-2-1 à vos travaux : trois copies, deux supports, une copie hors du lieu habituel. »

Visuel : capture d''écran fictive d''un message frauduleux annotée.

## 1:20:00 – 1:30:00 · Synthèse et évaluation finale

Texte du formateur : « Récapitulons. Pour apprendre : se tester, espacer, alterner, prendre des notes actives, organiser son temps. Pour enseigner : partir des objectifs, aligner activités et évaluations, penser mobile et bas débit, accompagner. Pour tous : sécuriser ses comptes et sauvegarder. Voici l''évaluation finale. »

- Question 1 : Citez deux techniques d''apprentissage dont l''efficacité est bien établie. Réponse : la récupération active (se tester) et la répétition espacée.
- Question 2 : Quelles sont les trois zones de la méthode des notes en colonnes ? Réponse : les notes à droite, les questions et mots-clés à gauche, le résumé en bas.
- Question 3 : Réécrivez l''objectif « connaître le cahier de caisse » de façon observable. Réponse : par exemple « calculer le solde de caisse d''une journée à partir des entrées et des sorties ».
- Question 4 : Dans l''exemple de la caisse, le solde théorique est de 62 500 FCFA et la caisse contient 61 500 FCFA. Quel est l''écart ? Réponse : un manque de 1 000 FCFA.
- Question 5 : Que signifie la règle 3-2-1 ? Réponse : trois copies des fichiers, sur deux supports différents, dont une hors du lieu habituel.

« Merci à toutes et à tous. Votre mission pour la semaine : créer dix fiches de révision et les réviser chaque jour selon les boîtes, ou, si vous êtes formateur, finaliser votre fiche de séquence alignée. »', 'video', 90, false, 60
from public.courses c where c.slug = 'formation-education-numerique'
  and not exists (select 1 from public.lessons x where x.course_id = c.id and x.title = 'Cours vidéo (1h30) : apprendre à apprendre et concevoir une séquence en ligne');
