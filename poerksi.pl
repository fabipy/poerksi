% PROLOG

:- include('frameworkpoerksi.pl').
:- encoding(utf8).

%---------------------------------------
%    Wissensbasis
%---------------------------------------

%Personen am Institut
%person/2
% Syntax: person(id,[[Nachname,Vorname,Geschlecht,Zusatz],[RaumNr],[Email],[Telefonnr.],[Bereich]])

person(0,[[haeusermann,juerg,prof,dr],[raum,270],["juerg.haeusermann@uni-tuebingen.de"],["07071 29-77515"],
			["Medienanalyse und Medienproduktion"]]).
person(1,[[claus,kleber,herr,prof,dr],[raum,209],["claus.kleber@uni-tuebingen.de"],["keine Angabe"],
			["Jouranlistische Themen und Berufspraxis in Film und Fernsehen"]]).
person(2,[[susanne,marschall,frau,prof,dr],[raum,210],["susanne.marschall@uni-tuebingen.de"],["07071 29-72354"],
			["Audiovisuelle Medien, Film und Fernsehen"]]).
person(3,[[klaus,"sachs-hombach",herr,prof,dr],[raum,256],["klaus.sachs-hombach@uni-tuebingen.de"],["07071 29-72815"],
			["Medieninnovation und Medienwandel"]]).
person(4,[[bernhard,poerksen,herr,prof,dr],[raum,260],["bernhard.poerksen@uni-tuebingen.de"],["07071 29-72798"],
			["Kritischer Medienjournalismus"]]).
person(5,[[tanja,thomas,frau,prof,dr],[raum,217],["tanja.thomas@uni-tuebingen.de"],["07071 29-76816"],
			["Transformation der Medienkultur"]]).
person(6,[[guido,zurstiege,herr,prof,dr],[raum,264],["guido.zurstiege@uni-tuebingen.de"],["07071 29-78435"],
			["Empirische Medienforschung"]]).
person(7,[[torsten,maurer,herr,dr],[raum,268],["torsten.maurer@uni-tuebingen.de"],["07071 29-72356"],
			['Medieninhalts-, Mediennutzungs- und Medienwirkungsforschung, sowie Studienberatung und
			Anrechnung von Studienleistungen']]).
person(8,[[birgit,losch,frau],[raum,211],["birgit.losch@uni-tuebingen.de"],["07071 29-72352"],
			["Administrative Verwaltung"]]).
person(9,[[thomas,wilke,herr,dr],[raum,136],["thomas.wilke@uni-tuebingen.de"],["07071 29-72830"],
			["Allgemeine Studienberatung"]]).
person(10,[[pia,fruth,frau],[raum,269],["pia.fruth@uni-tuebingen.de"],["07071 29-72 413"],
			["Zuständige für Praktikumsberatung und -anerkennung"]]).
person(11,[[kurt,schneider],[raum,022],["kurt.schneider@uni-tuebingen.de"],["07071 29-77590"],
			["Leiter des Zentrums für Medienkompetenz"]]).
person(12,[[fachschaft,medienwissenschaft],[raum,140],["fachschaft@medienwissenschaft.uni-tuebingen.de"],["keine Angabe"],
			["Vermittlung zwischen Dozenten und Studenten"]]).

%Essen Name,Adresse
essen('Cafeteria Unibibliothek in der Wilhelmstraße 32').
essen('Cafeteria im Brechtbau in der Wilhelmstraße 50').
essen('Mensa in der Wilhelmstraße 13').
essen('Unkel in der Wilhelmstraße 17').
essen('Bäckerei Gauker in der Nauklerstraße 31').
essen('Bäckerei Keim in der Wilhelmstraße 20').
essen('Asia-Imbiss Wok-In in der Wilhelmstraße 20').
essen('REWE in der Mohlstraße 26').


%begr�ssung
guten(tag).
guten(morgen).
guten(abend).


%! person_search/3
%  searches for keyword in persons of the institute
%  returns the list of found person + ID

person_search(KeyWord,PersonList,ID) :-
	person(ID,PersonList),
	member(ListItem,PersonList),
	member(KeyWord,ListItem).

%! print_person_info/1
%  returns infos about person

print_person_info(ID) :-
	person(ID,[N,R,E,T,Z]),
	N = [NN,VN|_],
	write("Name:"),tab(1),write([VN,NN]),nl,
	write("Raum:"),tab(1),write(R),nl,
	write("Email:"),tab(1),write(E),nl,
	write("Telefon:"),tab(1),write(T),nl,
	write("Interessiert sich fuer:"),tab(1),write(Z),nl.

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
bib('Brechtbaubibliothek',
    'Mo-Do 8.00-20.45   Fr 8.00-18.45   Sa 10.00-17.45   So 12.00-17.45').
bib('Uni-Bibliothek',
    'Mo-Fr 8.00-24.00	 Sa 10.00-22.00   So 10.00-22.00').

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
match([guten,X],['Hallo, mein Name ist Dr. Poerksi und ich bin der virtuelle Studi-Ratgeber des Instituts für Medienwissenschaft.
Stellen Sie mir einfach Ihre Fragen und ich werde versuchen Ihnen dabei zu helfen.']):-guten(X).
match([hi],['Hallo, mein Name ist Dr. Poerksi und ich bin der virtuelle Studi-Ratgeber des Instituts für Medienwissenschaft.
Stellen Sie mir einfach Ihre Fragen und ich werde versuchen Ihnen dabei zu helfen.']).
match([servus],['Hallo, mein Name ist Dr. Poerksi und ich bin der virtuelle Studi-Ratgeber des Instituts für Medienwissenschaft.
Stellen Sie mir einfach Ihre Fragen und ich werde versuchen Ihnen dabei zu helfen.']).
match([halli,hallo],['Hallo, mein Name ist Dr. Poerksi und ich bin der virtuelle Studi-Ratgeber des Instituts für Medienwissenschaft.
Stellen Sie mir einfach Ihre Fragen und ich werde versuchen Ihnen dabei zu helfen.']).

match([was,machst,du],['Studenten und allerlei Personen beraten, die meine Hilfe aufsuchen. Stellen Sie mir doch eine Frage.']).

match([wer,bist,du],['Es ist schön Sie kennenzulernen. Haben Sie denn auch Fragen an mich mitgebracht',LastElement,'?']) :- name('Gast'),write('Ich bin eine künstliche Intelligenz, die ratlosen Studenten weiterhelfen soll. Mich gibt es aber noch gar nicht so lange hier am Institut.
Entworfen wurde ich von drei Studenten der Medienwissenschaft. Ihnen verdanke ich meine Existenz, insofern ich überhaupt eine Existenz habe...?
Aber genug philosophiert, wer Sind Sie denn? Wie ist Ihr Name?'),nl,read_sentence(X),last(X,LastElement),retract(name(_)),assert(name(LastElement)).
match([wer,bist,du],['Habe ich das nicht schon erwähnt? Ich bin Dr. Poerksi und helfe Ihnen bei Ihren Fragen gerne weiter.']) :- not(name('Gast')).

match([wer,bin,ich],['Wer Sie sind? Sie sind ein Hilfesuchender. Vielleicht ist Ihnen ja auch nur langweilig und anstatt zu lernen, unterhalten Sie sich lieber mit mir.
Ersteres ist vollkommen in Ordnung. Letzteres könnte problematisch sein.']) :-  name('Gast').
match([wer,bin,ich],['Ihr Name ist',X,'und ich vermute mal, Sie sind Student hier.
Vielleicht sind Sie aber auch ein Professor, der sich als Student ausgibt?']) :- not(name('Gast')),name(X).

match([ich,heisse,X],['Schön dich kennenzulernen',X,'Ein herzliches Willkommen unter uns Medienwissenschaftlern!']) :- name('Gast'),retract(name(_)), assert(name(X)).
match([ich,heisse,X],['Dann werde ich Sie ab sofort',X,'nennen.']) :- not(name('Gast')),retract(name(_)),assert(name(X)).

match([wie,heisse,ich],['Schoen Sie kennen zu lernen',LastElement]) :- name('Gast'),write('Ich kenne Ihren Namen leider noch nicht. Wie heißen Sie denn?'),nl,read_sentence(X),last(X,LastElement),retract(name(_)),assert(name(LastElement)).
match([wie,heisse,ich],['Vergesslichkeit unter Studenten? Als ich so alt war wie Sie gab es so etwas noch nicht.
Nun denken Sie mal stark nach, Ihr Name wird Ihnen schon wieder einfallen.']) :- not(name('Gast')).

match([wie,geht,es,_],['Mir geht es sehr gut. Schließlich bin ich ja ein angesehener Professor, der sich in den unterschiedlichsten Medienbereichen bestens auskennt.']).
match([wie,gehts],['Mir geht es sehr gut. Schließlich bin ich ja ein angesehener Professor, der sich in den unterschiedlichsten Medienbereichen bestens auskennt.']).

match([was,geht],['Leider nicht viel wenn man keine Beine hat.']).
match([was,geht,ab],['Läuft bei Ihnen. Errmm.. haben Sie noch andere Fragen?']) :- write('Normalerweise ist mir so ein Sprachgebrauch nicht geläufig, aber mir geht es prächtig. Und was geht bei Ihnen?'),nl,read_sentence(_).
match([was,geht,so],['Meine werten Institutskollegen und ich pflegen zu sagen: "Wir wissen nicht WAS geht, wir wissen auch nicht WIEs geht. Aber wir forschen weiter."']).

match([do,you,speak,english],['Yes, I do. Jedoch möchte ich meine Gehirnkapazität mit der höchst möglichen Aktivität nutzen, daher bleibe ich lieber bei meiner Muttersprache. Das geht einfach schneller und ich kann dir mehr von meinem Wissen weiter geben.']).

match([wie,wird,das,wetter,_],['Am besten schauen Sie nach draußen oder Sie fragen einen Meteorologen. Ich mag zwar über künztliche Intelligenz verfügen,doch ein Wetterfrosch bin ich wahrlich nicht.']).



%-----------------------------------------------------------------------
%Was kann man mit diesem Studium machen
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


% --------------------------------------------------------------------------
% Allgemeine Infos zum Studium
match([wie,viele,semester,_,_,_],['Im Bachelor gibt es eine Regelstudienzeit von 6 Semester.']).
match([wie,lange,dauert,das,studium],['Im Bachelor gibt es eine Regelstudienzeit von 6 Semester.']).
match([wann,_,das,studium],['Das Studium der Medienwissenschaft können Sie jedes Wintersemester an der Eliteuniversität Tübingen beginnen.']).
match([was,ist,der,nc],['Da der Vergabe der Studienplätze ein hochkomplexes Verfahren unterliegt kann ich diese Frage nicht beantworten.']).
match([gibt,es,einen,nc],['Da der Vergabe der Studienplätze ein hochkomplexes Verfahren unterliegt kann ich diese Frage nicht beantworten.']).
match([muss,ich,ein,praktikum,_],['Ja ein Praktikum ist auf jeden Fall empfehlenswerte.
	In dem Studium der Medienwissenschaft als Hauptfach ist ein 3-monatiges Pflichtpraktikum vorgesehen. So werden Sie optimal auf das Berufsleben vorbereitet.']).

%essen
%zwischenabstände fehlen noch
match([wo,kann,_,essen,gehen],['Es ist wichtig, dass Sie ihr Gehirn fit halten und dann ist es sehr gut, wenn Sie schon nach Essensmöglichkeiten fragen. Hier finden Sie genügend Nervennahrung rund um den Brechtbau:',Y]):-bagof(X,essen(X),Y).


%Info zur Bib
match([wann,ist,die,X,geöffnet],['Die',X,hat,folgende,'Öffnungszeiten: ',Y]):- bib(X,Y).

% funktioniert nicht / FL 23.06.16
%Info zu Personen

match([wer,ist,X],["Was willst du noch wissen?"]) :- person_search(X,_,ID),print_person_info(ID).
match([wie,_,die,email,von,X],Email) :- person_search(X,[_,_,Email,_,_],_).
match([was,_,die,email,von,X],Email) :- person_search(X,[_,_,Email,_,_],_).
match([wie,_,die,emailadresse,von,X],Email) :- person_search(X,[_,_,Email,_,_],_).
match([wie,_,die,telefonnummer,von,X],Tel) :- person_search(X,[_,_,_,Tel,_],_).
match([wie,_,die,telefonnummer,von,X],Tel) :- person_search(X,[_,_,_,Tel,_],_).
match([was,_,die,telefonnummer,von,X],Tel) :- person_search(X,[_,_,_,Tel,_],_).
match([wo,finde,ich,X],Raum) :- person_search(X,[_,Raum,_,_,_],_).

%Informationen zu Vorlesungen und Seminaren
match([wie,viele,ects,punkte,_,man,fuer,die,X],['Die', X, gibt, Y]):-
	vorlesung(_,X,Y);seminar(_,X,Y);lehrredaktion(_,X,Y).
match([wie,viele,ects,punkte,_,man,fuer,die,Z],['Die', Z, gibt, Y]):-
	vorlesung(Z,_,Y); seminar(Z,_,Y);lehrredaktion(Z,_,Y).


%allgemeine Informationen
match([was,_,ct],['c.t. ist die Abkürzung für lateinisch „cum tempore“, was im deutschen „mit Zeit“ bedeutet.
10 Uhr c.t. bedeutet somit die Veranstaltung beginnt 15 Minuten später, also um 10:15 Uhr.']).
match([was,_,st],['s.t. ist die Abkürzung für lateinisch „sine tempore“, was im deutschen „ohne Zeit“ bedeutet.
10 Uhr s.t. bedeutet somit die Veranstaltung beginnt um 10:00 Uhr']).
match([wo,_,_,_,aufdruck,für,_,studentenausweis,_,_],['Den Semesteraufdruck ihres Studentenausweis können Sie im Studentensekretariat (Wilhelmstraße 11), in der Universitätsbibliothek (Wilhelmstraße 32) sowie auf der Morgenstelle aktualisieren.']).
match([wo,_,_,_,neuen,studentenausweis],['Einen neuen Studentenausweis erhalten Sie im Studentensekretariat(Wilhelmstraße 11). Aber passen Sie auf diesen gut auf! Besser als auf den letzten.']).
match([ich,habe,meinen,studentenausweis,verloren],['Das ist natürlich nicht sonderlich optimal. Doch einen neuen erhalten Sie im Studentensekretariat(Wilhelmstraße 11)']).



% ------------------------------------------------------------------------
%     Sonderfälle
% ------------------------------------------------------------------------

% Beleidigungen
match([fick,dich],['So eine Ausdrucksweise verbitte ich mir. Ich glaube Sie sind nicht für das Studium der Medienwissenschaft geeignet.']).
match([arschloch],['Es ist mir ein Rätsel wie so ein minderbemitteltes Wesen wie Sie das Abitur geschafft hat.']).
match([wichser],['Dies ist nicht der Ort für Beleidigungen.']).
match([du,_],['Also bitte! Ich bin Professor und möchte gesiezt werden.']).
match([sie,_],['Okay, dass macht es nicht viel besser.
Vielleicht stellen Sie mir lieber ein paar Fragen stattdessen?']).

match([geil],['Fr�her haben wir noch gesagt super-affen-titten-geil.']).
match([cool],['Ja echt knorke.']).


%wdh
match([du,wiederholst,dich],['Wiederholungen festigen neuerlenrtes Wissen. Aber viellecht können Sie ihre Frage ja auch anders stellen.']).

%empty input
match([],['Sie müssen schon etwas schreiben, sonst kann ich Ihnen leider nicht helfen.']).

% last resort (if user's input can't be matched otherwise)
match(_,X) :- Answers = [['Wussten Sie, dass es mich erst seit Juni 2016 gibt? Es kommt mir so vor als wäre es gestern gewesen.'],['Erzählen Sie mehr.'],['Haben Sie vielleicht noch andere Fragen?'],['Es ist schön sich mit jemanden zu unterhalten.'],['Vielleicht haben Sie ja noch ein dringlicheres Anliegen?'],['Vielleicht haben Sie ja noch ein wichtigeres Anliegen?'],['An Ihrer Ausdrucksweise müssen Sie noch etwas feilen. Versuchen Sie es doch ein wenig studentischer.']], random_permutation(Answers,Random_Answers), Random_Answers = [X|_].
