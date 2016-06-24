% PROLOG

:- include('frameworkpoerksi.pl').

%--------------------
%    Wissensbasis
%--------------------

%Personen am Institut

%anprechpartner/4 (Name, Kontakt, Raum, Zuständigkeitsbereich)
ansprechpartner('Prof. Dr. Jürg Häusermann','juerg.hausermann@uni-tuebingen.de','Raum 270','Medienanalyse und Medienproduktion').
ansprechpartner('Prof. Dr. Claus Kleber','claus.kleber@uni-tuebingen.de','Raum 209','Jouranlistische Themen und Berufspraxis in Film und Fernsehen').
ansprechpartner('Prof. Dr. Susanne Marschall','susanne.marschall@uni-tuebingen.de','Raum 210','Audiovisuelle Medien, Film und Fernsehen').
ansprechpartner('Prof. Dr. Klaus Sachs-Hombach','klaus.sachs-hornbach@uni-tuebingen.de','Raum 256','Medieninnovation und Medienwandel').
ansprechpartner('Prof. Dr. Bernhard Pörksen','bernhard.poerksen@uni-tuebingen.de','Raum 260','Kritischer Medienjournalismus').
ansprechpartner('Prof. Dr. Tanja Thomas','tanja.thomas@uni-tuebingen.de','Raum 217','Transformation der Medienkultur').
ansprechpartner('Prof. Dr. Guido Zurstiege','guido.zurstiege@uni-tuebingen.de','Raum 264','Empirische Medienforschung').
ansprechpartner('Dr. Torsten Maurer','torsten.maurer@uni-tuebingen.de','Raum 268','Medieninhalts-, Mediennutzungs- und Medienwirkungsforschung, sowie Studienberatung und Anrechnung von Studienleistungen').
ansprechpartner('Birgit Losch','birgit.losch@uni-tuebingen.de','Raum 211','Administrative Verwaltung').
ansprechpartner('Dr. Thomas Wilke','thomas.wilke@uni-tuebingen.de','Raum 136','Allgemeine Studienberatung').
ansprechpartner('Pia Fruth','pia.fruth@uni-tuebingen.de','Raum 269','Zuständige für Praktikumsberatung und -anerkennung').
ansprechpartner('Kurt Schneider','kurt.schneider@uni-tuebingen.de','Raum 022','Leiter des Zentrums für Medienkompetenz').
ansprechpartner('Fachschaft Medienwissenschaft','fachschaft@medienwissenschaft.uni-tuebingen.de','Raum 140','Vermittlung zwischen Dozenten und Studenten').

%ansprechp/0 
% Gibt Liste von Ansprechpartnern aus
ansprechp :- setof(Name,ansprechpartner(Name,_,_,_),X), write(X).

%Basisstudium

%vorlesung/3 (Titel,Modulbezeichnung,ECTS)
vorlesung('Einfuehrung in die Medienwissenschaft I','G1','8 ECTS').
vorlesung('Einfuehrung in die Medienwissenschaft II','G2','8 ECTS').
vorlesung('Forschung und Praxisfelder','G3','4 ECTS').
vorlesung('Einfuehrung in die Methoden der Medienforschung','F1','8 ECTS').

%seminar/3 (Titel,Modulbezeichnung,ECTS)
seminar('Einfuehrung in Theorien der Medienforschung','F2','8 ECTS').

%lehrredaktion/3 (Titel,Modulbezeichnung,ECTS)
lehrredaktion('L1: Print & Onlinemedien','L1','6 ECTS').
lehrredaktion('L2: Hoerfunk','L2','6 ECTS').
lehrredaktion('L3: Hypermediasysteme','L3','6 ECTS').
lehrredaktion('L4: Film und Fernsehen','L4','6 ECTS').
lehrredaktion('L5: Schreibtraining','L5','6 ECTS').

%veranstaltung/3 (Name,Modul,ECTS)
veranstaltung(Name,Modul,Etcspunkte) :- vorlesung(Name,Modul,Etcspunkte); seminar(Name,Modul,Etcspunkte);lehrredaktion(Name,Modul,Etcspunkte).

%Orte

%bib/2 (Bibliothek,Öffnungszeiten)
bib('Brechtbaubibliothek','Mo-Do 8.00-20.45   Fr 8.00-18.45   Sa 10.00-17.45   So 12.00-17.45').
bib('Uni-Bibliothek','Mo-Fr 8.00-24.00	 Sa 10.00-22.00   So 10.00-22.00').

%Dynamische Variablen

:- dynamic name/1.
name('Gast').

%Vorlesungsinformationen/3 (Vorlesungsname, Semesterbelegung,
%Profilzugehörigkeit)

%-------------------------------------------------
%    Eingabemöglichkeiten zur Profilbestimmung
%-------------------------------------------------

%-------------------------------------------------
%    Ein- und Ausgabe
%-------------------------------------------------

% Smalltalk
match([hallo],['Ich bin Dr. Poerksi Ihr virtueller Assistent. Haben Sie eine Frage?']).
match([guten,tag],['Hallo, mein Name ist Dr. Poerksi und ich bin der virtuelle Studi-Ratgeber des Instituts für Medienwissenschaft.
Stellen Sie mir einfach Ihre Fragen und ich werde versuchen Ihnen dabei zu helfen.']).
match([hi],['Hallo, mein Name ist Dr. Poerksi und ich bin der virtuelle Studi-Ratgeber des Instituts für Medienwissenschaft.
Stellen Sie mir einfach Ihre Fragen und ich werde versuchen Ihnen dabei zu helfen.']).
match([servus],['Hallo, mein Name ist Dr. Poerksi und ich bin der virtuelle Studi-Ratgeber des Instituts für Medienwissenschaft.
Stellen Sie mir einfach Ihre Fragen und ich werde versuchen Ihnen dabei zu helfen.']).

match([was,machst,du],['Studenten und allerlei Personen beraten, die meine Hilfe aufsuchen. Stellen Sie mir doch eine Frage.']).

match([wer,bist,du],['Es ist schön Sie kennenzulernen. Haben Sie denn auch Fragen an mich mitgebracht',LastElement,'?']) :- name('Gast'),write('Ich bin eine künstliche Intelligenz, die ratlosen Studenten weiterhelfen soll. Mich gibt es aber noch gar nicht so lange hier am Institut.
Entworfen wurde ich von drei Studenten der Medienwissenschaft. Ihnen verdanke ich meine Existenz, insofern ich überhaupt eine Existenz habe...?
Aber genug philosophiert, wer bist du? Wie ist dein Name?'),nl,read_sentence(X),last(X,LastElement),retract(name(_)),assert(name(LastElement)).
match([wer,bist,du],['Habe ich das nicht schon erwähnt? Ich bin Dr. Poerksi und helfe Ihnen bei Ihren Fragen gerne weiter.']) :- not(name('Gast')).

match([wer,bin,ich],['Wer Sie sind? Sie sind ein Hilfesuchender. Vielleicht ist Ihnen ja auch nur langweilig und anstatt zu lernen, unterhalten Sie sich lieber mit mir. 
Ersteres ist vollkommen in Ordnung. Letzteres könnte problematisch sein.']) :-  name('Gast').
match([wer,bin,ich],['Ihr Name ist',X,'und ich vermute mal, Sie sind Student hier. 
Vielleicht sind Sie aber auch ein Professor, der sich als Student ausgibt?']) :- not(name('Gast')),name(X).

match([ich,heisse,X],['Schön dich kennenzulernen',X,'Ein herzliches Willkommen unter uns Medienwissenschaftlern!']) :- name('Gast'),retract(name(_)), assert(name(X)).
match([ich,heisse,N],['Dann werde ich Sie ab sofort',N,'nennen.']) :- not(name('Gast')),retract(name(_)),assert(name(N)).

match([wie,heisse,ich],['Schoen Sie kennen zu lernen',LastElement]) :- name('Gast'),write('Ich kenne Ihren Namen leider noch nicht. Wie heißen Sie denn?'),nl,read_sentence(X),last(X,LastElement),retract(name(_)),assert(name(LastElement)).
match([wie,heisse,ich],['Vergesslichkeit unter Studenten? Als ich so alt war wie Sie gab es so etwas noch nicht. 
Nun denken Sie mal stark nach, Ihr Name wird Ihnen schon wieder einfallen.']) :- not(name('Gast')).
%Anfrage: Wie ist mein Name..

match([wie, geht, es, _],['Mir geht es sehr gut. Schließlich bin ich ja ein angesehener Professor, der sich in den unterschiedlichsten Medienbereichen bestens auskennt.']).
match([wie, gehts],['Mir geht es sehr gut. Schließlich bin ich ja ein angesehener Professor, der sich in den unterschiedlichsten Medienbereichen bestens auskennt.']).

match([was,geht],['Leider nicht viel wenn man keine Beine hat.']).
match([was,geht,ab],['Läuft bei Ihnen. Errmm.. haben Sie noch andere Fragen?']) :- write('Normalerweise ist mir so ein Sprachgebrauch nicht geläufig, aber mir geht es prächtig. Und was geht bei Ihnen?'),nl,read_sentence(_).
match([was,geht,so],['Meine werten Institutskollegen und ich pflegen zu sagen: "Wir wissen nicht WAS geht, wir wissen auch nicht WIEs geht. Aber wir forschen weiter."']).

match([do,you,speak,english],['Yes, I do. Jedoch möchte ich meine Gehirnkapazität mit der höchst möglichen Aktivität nutzen, daher bleibe ich lieber bei meiner Muttersprache. Das geht einfach schneller und ich kann dir mehr von meinem Wissen weiter geben.']).
%Anfrage: wer ist dein Lieblingsprof .. ?

match([was,kann,_,spaeter,damit,machen],['Durch dieses sehr empfehlenswerte Studium werden Sie auf folgende Berufsfelder vorbereitet:
	Öffentlichkeitsarbeit,
	(Fach)Journalismus,
	Verlage,
	Markt-und Medienforschung,
	Medienkonzeption und -produktion
	Medienmanagement,
	und öffentliche medien- und kommunikationswissenschaftliche Forschung']).
match([was,bringt,das,studium],['Durch dieses sehr empfehlenswerte Studium werden Sie auf folgende Berufsfelder vorbereitet:
	Öffentlichkeitsarbeit,
	(Fach)Journalismus,
	Verlage,
	Markt-und Medienforschung,
	Medienkonzeption und -produktion
	Medienmanagement,
	und öffentliche medien- und kommunikationswissenschaftliche Forschung']).
match([welche,_,habe,_,nach,dem,studium],['Durch dieses sehr empfehlenswerte Studium werden Sie auf folgende Berufsfelder vorbereitet:
	Öffentlichkeitsarbeit,
	(Fach)Journalismus,
	Verlage,
	Markt-und Medienforschung,
	Medienkonzeption und -produktion
	Medienmanagement,
	und öffentliche medien- und kommunikationswissenschaftliche Forschung']).

%Allgemeine Infos zum Studium
match([wie,viele,semester,_,_,_],['Im Bachelor gibt es eine Regelstudienzeit von 6 Semester.']).
match([wie,lange,dauert,das,studium],['Im Bachelor gibt es eine Regelstudienzeit von 6 Semester.']).
match([wann,_,das,studium],['Das Studium der Medienwissenschaft können Sie jedes Wintersemester an der Eliteuniversität Tübingen beginnen.']).
match([was,ist,der,nc],['Da der Vergabe der Studienplätze ein hochkomplexes Verfahren unterliegt kann ich diese Frage nicht beantworten.']).

%Info zur Bib
match([wann,ist,die,X,geoeffnet],['Die',X,hat,folgende,'Öffnungszeiten: ',Y]):- bib(X,Y).

% funktioniert nicht / FL 23.06.16
%Info zu Ansprechpartnern
match([info,ansprechpartner],[mewi,hat,folgende,ansprechpartner,':',ansprechp]).

%Informationen zu Vorlesungen und Seminaren
%vielleicht eine Antwort -> die <Eingabe> gibt es gar nicht bei MeWi, bei Fehleingabe

match([wie,viele,ects,punkte,bekommt,man,fuer,die,X],['Die', X, gibt, Y]):-
	vorlesung(_,X,Y);seminar(_,X,Y);lehrredaktion(_,X,Y).
match([wie,viele,ects,punkte,bekommt,man,fuer,die,Z],['Die', Z, gibt, Y]):-
	vorlesung(Z,_,Y); seminar(Z,_,Y);lehrredaktion(Z,_,Y).

%allgemeine Informationen
match([was,_,ct],['c.t. ist die Abkürzung für lateinisch „cum tempore“, was im deutschen „mit Zeit“ bedeutet.
10 Uhr c.t. bedeutet somit die Veranstaltung beginnt 15 Minuten später, also um 10:15 Uhr.']).
match([was,_,st],['s.t. ist die Abkürzung für lateinisch „sine tempore“, was im deutschen „ohne Zeit“ bedeutet.
10 Uhr s.t. bedeutet somit die Veranstaltung beginnt um 10:00 Uhr']).

%Beleidigungen
match([fick,dich],['So eine Ausdrucksweise verbitte ich mir. Ich glaube Sie sind nicht für das Studium der Medienwissenschaft geeignet.']).
match([arschloch],['Es ist mir ein Rätsel wie so ein minderbemitteltes Wesen wie Sie das Abitur geschafft hat.']).
match([wichser],['Dies ist nicht der Ort für Beleidigungen.']).
match([du,_],['So lange kennen wir uns schon dass Sie mich duzen.']).

%empty input
match([],['Sie müssen schon etwas schreiben, sonst kann ich Ihnen leider nicht helfen.']).

% last resort (if user's input can't be matched otherwise)
match(_,X) :- Answers = [['Wussten Sie, dass es mich erst seit Juni 2016 gibt? Es kommt mir so vor als wäre es gestern gewesen.'],['Erzählen Sie mehr.'],['Haben Sie vielleicht noch andere Fragen?'],['Es ist schön sich mit jemanden zu unterhalten.'],['Vielleicht haben Sie ja noch ein dringlicheres Anliegen?']], random_permutation(Answers,Random_Answers), Random_Answers = [X|_].