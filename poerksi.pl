include('frameworkpoerksi.pl').

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
ansprechp:- bagof(Name,ansprechpartner(Name,_,_,_),X), write(X).

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
name("Gast").

%Vorlesungsinformationen/3 (Vorlesungsname, Semesterbelegung,
%Profilzugehörigkeit)

%-------------------------------------------------
%    Eingabemöglichkeiten zur Profilbestimmung
%-------------------------------------------------

%read_name/1
%noch nicht vollständig, name(X) noch einfügen und mit Dialogsystem kompatibel // FL 23.06.16
read_name(X) :-
	write("hi was geht, wie heißt du denn?"),
	read(X).


%-------------------------------------------------
%    Ein- und Ausgabe
%-------------------------------------------------

% Smalltalk
match([hallo],['Hallo',X]) :- read_name(X).
match([ich,heiße,X],['Schön dich kennenzulernen',X,'Ein herzliches Willkommen unter uns Medienwissenschaftlern!']) :- name("Gast"),retract(name(_)), assert(name(X)).
match([ich,heiße,N],['Dann heißt du jetzt eben:',L]) :- assertz(name(N)), findall(B,name(B),L).
match([wie,heiße,ich],['Ich kenne deinen Namen leider noch nicht. Wie heißt du denn?']) :- name("Gast").
match([wie,heiße,ich],['Wie, du kennst deinen eigenen Namen nicht? Ich kann dir helfen. Du heißt:',L]) :- findall(N,name(N),L).
%Anfrage: Wie ist mein Name..
match([wie, geht, es, dir],['Mir geht es sehr gut. Schließlich bin ich ja ein angesehener Professor, der sich in den unterschiedlichsten Medienbereichen bestens auskennt.']).
match([was,geht],['Normalerweise ist mir so ein Sprachgebrauch nicht geläufig aber mir geht es sehr gut. Und was geht bei Ihnen?']).
match([do,you,speak,english],['Yes, I do. Jedoch möchte ich meine Gehirnkapazität mit der höchst möglichen Aktivität nutzen, daher bleibe ich lieber bei meiner Muttersprache. Das geht einfach schneller und ich kann dir mehr von meinem Wissen weiter geben.']).
%Anfrage: was kann man später damit machen?
%Anfrage: wer bist du? %easter egg

%Info zur Bib
match([wann, ist, die, X ,geöffnet],['Die',X ,hat, folgende,'Öffnungszeiten: ',Y]):- bib(X,Y).

%Info zu Ansprechpartnern
match([info,ansprechpartner],[mewi,hat,folgende,ansprechpartner,':',ansprechp]).

%Informationen zu Vorlesungen und Seminaren
match([wie,viele,ects,punkte,bekommt,man, für,die,X],['Die', X, gibt, Y]):-
	vorlesung(_,X,Y);seminar(_,X,Y);lehrredaktion(_,X,Y).
match([wie,viele,ects,punkte,bekommt,man, für,die,Z],['Die', Z, gibt, Y]):-
	vorlesung(Z,_,Y); seminar(Z,_,Y);lehrredaktion(Z,_,Y).

%allgemeine Informationen
match([was,_,ct],['c.t. ist die Abkürzung für lateinisch „cum tempore“, was im deutschen „mit Zeit“ bedeutet.
10 Uhr c.t. bedeutet somit die Veranstaltung beginnt 15 Minuten später, also um 10:15 Uhr.']).
match([was,_,st],['s.t. ist die Abkürzung für lateinisch „sine tempore“, was im deutschen „ohne Zeit“ bedeutet.
10 Uhr s.t. bedeutet somit die Veranstaltung beginnt um 10:00 Uhr']).

%ausweichende Antworten
match(_,X) :- Answers = [['Ich bin zwar Professor, doch damit bin ich leider überfragt.'],['Erzählen Sie mehr.'],['Haben Sie vielleicht noch andere Fragen?'],['Sie wollen ja ganz schön viel wissen.'],['Vielleicht haben Sie ja noch dringlichere Fragen.']], random_permutation(Answers,Random_Answers), Random_Answers = [X|_].
% last resort (if user's input can't be matched otherwise)
