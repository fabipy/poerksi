% PROLOG
:- include('frameworkweissbescheid.pl').
:- include('spock.pl').
:- encoding(iso_latin_1).

%---------------------------------------
%    Wissensbasis
%---------------------------------------

%---Personen am Institut



%--Profs------------------

%prof/2
% Syntax: person(id,[[Nachname,Vorname,Geschlecht,Zusatz],[RaumNr],[Email],[Telefonnr.],[Bereich]])
%

prof(0,'Herr Prof. Dr. J�rg,H�usermann').
prof(1,'Herr Prof. Dr. Claus Kleber').
prof(2,'Frau Prof. Dr. Susanne Marschall').
prof(3,'Herr Prof. Dr. Klaus Sachs-Hombach').
prof(4,'Herr Prof. Dr. Bernhard P�rksen').
prof(5,'Frau Prof. Dr. Tanja,Thomas').
prof(6,'Herr Prof. Dr. Guido Zurstiege').

%person/2
% Syntax: person(id,[[Nachname,Vorname,Geschlecht,Zusatz],[RaumNr],[Email],[Telefonnr.],[Bereich]])
%

person(0,[['Herr Prof. Dr. J�rg,H�usermann'],
		  [j�rg,h�usermann],
		  [270],
		  ["juerg.haeusermann@uni-tuebingen.de"],
		  ["07071 29-77515"],
		  ["Medienanalyse und Medienproduktion"]]).

person(1,[['Herr Prof. Dr. Claus Kleber'],
		  [claus,kleber],
		  [209],
		  ["claus.kleber@uni-tuebingen.de"],
		  ["keine Angabe"],
		  ["Jouranlistische Themen und Berufspraxis in Film und Fernsehen"]]).

person(2,[['Frau Prof. Dr. Susanne Marschall'],
		  [susanne,marschall],
		  [210],
		  ["susanne.marschall@uni-tuebingen.de"],
		  ["07071 29-72354"],
		  ["Audiovisuelle Medien, Film und Fernsehen"]]).

person(3,[['Herr Prof. Dr. Klaus Sachs-Hombach'],
		  [klaus,sachs-hombach],
		  [256],
		  ["klaus.sachs-hombach@uni-tuebingen.de"],
		  ["07071 29-72815"],
		  ["Medieninnovation und Medienwandel"]]).

person(4,[['Herr Prof. Dr. Bernhard P�rksen'],
		  [bernhard,p�rksen],
		  [260],
		  ["bernhard.poerksen@uni-tuebingen.de"],
		  ["07071 29-72798"],
		  ["Kritischer Medienjournalismus"]]).

person(5,[
		  ['Frau Prof. Dr. Tanja Thomas'],
		  [tanja,thomas],
		  [217],
		  ["tanja.thomas@uni-tuebingen.de"],
		  ["07071 29-76816"],
		  ["Transformation der Medienkultur"]]).

person(6,[['Herr Prof. Dr. Guido Zurstiege'],
		  [guido,zurstiege],
		  [264],
		  ["guido.zurstiege@uni-tuebingen.de"],
		  ["07071 29-78435"],
		  ["Empirische Medienforschung"]]).

person(12,[['Fachschaft Medienwissenschaft'],
		  [fachschaft,medienwissenschaft],
		  [140],
		  ["fachschaft@medienwissenschaft.uni-tuebingen.de"],
		  ["keine Angabe"],
		  ["Vermittlung zwischen Dozenten und Studenten"]]).


%----gesch�ftsf�hrung---------
person(7,[['Herr Dr. Torsten Maurer'],
		  [torsten,maurer],
		  [268],
		  ["torsten.maurer@uni-tuebingen.de"],
		  ["07071 29-72356"],
		  ["Medieninhalts-, Mediennutzungs- und Medienwirkungsforschung, sowie Studienberatung und Anrechnung von Studienleistungen"]]).

person(9,[['Herr Dr. Thomas Wilke'],
		  [thomas,wilke],
		  [136],
		  ["thomas.wilke@uni-tuebingen.de"],
		  ["07071 29-72830"],
		  ["Allgemeine Studienberatung"]]).

person(13,[['Frau Dr. Sabine Kieslich'],
		  [sabine,kieslich],
		  [212],
		  ["sabine.kiesliche@uni-tuebingen.de"],
		  ["07071 29-72346"],
		  ['Betreuung der Studierenden der Inforamtik und Sportpublizistik']]).

%-------zentrum f�r medienkompetenz------
person(11,[['Herr Kurt Schneider'],
		  [kurt,schneider],
		  [022],
		  ["kurt.schneider@uni-tuebingen.de"],
		  ["07071 29-77590"],
		  ["Leiter des Zentrums f�r Medienkompetenz"]]).


%---------akademische mitarbeiter-----
person(14,[['Frau Mandy Badermann'],
		  [mandy,badermann],
		  [267],
		  ["mandy.badermann@uni-tuebingen.de"],
		  ["07071 29-72361"],
		  ["Studienberatung BA Haupt- und Nebenfach"]]).

person(15,[['Frau Rada Bieberstein'],
		  [rada,bieberstein],
		  [208],
		  ["rada.bierberstein@uni-tuebingen.de"],
		  ["07071 29-78444"],
		  ["Audiovisuelle Medien, Film und Fernsehen"]]).

person(16,[['Frau Hannah Birr'],
		  [hannah,birr],
		  [254],
		  ["hannah.birr@uni-tuebingen.de"],
		  ["07071 29-72349"],
		  ["Audivisuelle Medien, Film und Fersehen"]]).

person(17,[['Frau Hanne Detel'],
		  [hanne,detel],
		  [262],
		  ["hanne.detel@uni-tuebingen.de"],
		  ["07071 29-72363"],
		  ["Studienberatung BA Haupt- und Nebenfach und �ffentlichkeitsarbeit"]]).

person(18,[['Herr Markus Feiks'],
		  [markus,feiks],
		  [266],
		  ["markus.feiks@uni-tuebingen.de"],
		  ["07071 29-75681"],
		  ["Studienberatung BA Haupt- und Nebenfach"]]).

person(19,[['Herr Dr. Erwin Feyersinger'],
		  [erwin,feyersinger],
		  [208],
		  ["erwin.feyersinger@uni-tuebingen.de"],
		  ["07071 29-78444"],
		  ["Studienberatung MA"]]).

person(10,[['Frau Pia Fruth'],
		  [pia,fruth],
		  [269],
		  ["pia.fruth@uni-tuebingen.de"],
		  ["07071 29-72 413"],
		  ["Zust�ndige f�r Praktikumsberatung und -anerkennung"]]).

person(20,[['Herr Dr. Ulrich H�gele'],
		  [ulrich,h�gele],
		  [023],
		  ["ulrich.haegele@uni-tuebingen.de"],
		  ["07071 29-78443"],
		  ["Redaktion Radio Micro-Europa und Studienberatung BA"]]).

person(21,[['Herr Kiron Patka'],
		  [kiron,patka],
		  [269],
		  ["kiron.patka@uni-tuebingen.de"],
		  ["07071 29-75586"],
		  ["Studienberatung BA Haupt- und Nebenfach"]]).

person(22,[['Herr Julian Scherer'],
		  [julian,scherer],
		  [247],
		  ["julian.scherer@uni-tuebingen.de"],
		  ["07071 29-76819"],
		  ["Fachkoordiantion Erasmus / Internationales"]]).

person(23,[['Frau Dr. Miriam Stehling'],
		  [miriam,stehling],
		  [218],
		  ["miriam.stehling@uni-tuebingen.de"],
		  ["07071 29-76817"],
		  ["Fachkoordiantion Erasmus /Internationales"]]).

person(24,[['Herr Dr. Jan-N�el Thon'],
		  [jan-n�el,thon],
		  [255],
		  ["jan.thon@uni-tuebingen.de"],
		  ["07071 29-72814"],
		  ["Studienberatung BA Haupt- und Nebenfach"]]).

person(25,[['Frau Dr. Meike Uhrig'],
		  [meike,uhrig],
		  [254],
		  ["meike.uhrig@uni-tuebingen.de"],
		  ["07071 29-74282"],
		  ["Studienberatung BA Haupt- und Nebenfach und Mediathek"]]).

person(26,[['Frau Dr. Anne Ulrich'],
		  [anne,ulrich],
		  [290],
		  ["anne.ulrich@uni-tuebingen.de"],
		  ["07071 29-78523"],
		  ["Mitarbeiterin am Sonderforschungsbereich Bedrohte Ordnungen"]]).

person(27,[['Herr Lukas Wilde'],
		  [lukas,wilde],
		  [255],
		  ["lukas.wilde@uni-tuebingen.de"],
		  ["07071 29-72351"],
		  ["Studienberatung BA Haupt- und Nebenfach"]]).


%---gesch�ftszimmer----
person(8,[['Frau Birgit Losch'],
		  [birgit,losch],
		  [211],
		  ["birgit.losch@uni-tuebingen.de"],
		  ["07071 29-72352"],
		  ["Administrative Verwaltung"]]).


%-----sekretariate-----
person(28,[['Frau Patrizia Ambrisi'],
		  [patrizia,ambrisi],
		  [261],
		  ["sekretariat.poerksen@mewi.uni-tuebingen.de"],
		  ["07071 29-72366"],
		  ["Sekretariat Prof. P�rksen"]]).

person(29,[['Frau Barbara Carl-Mast'],
		  [barbara,carl,mast,'carl-mast'],
		  [216],
		  ["barbara.carl-mast@uni-tuebingen.de"],
		  ["07071 29-76818"],
		  ["Sekretariat Prof. Thomas"]]).

person(30,[['Frau Karin Kie�ling'],
		  [karin,kie�ling],
		  [257],
		  ["admin.sachs-hombach@mewi.uni-tuebingen.de"],
		  ["07071 29-72816"],
		  ["Sekretariat Prof. Sachs-Hombach"]]).

person(31,[['Frau Ute Kleiber'],
		  [ute,kleiber],
		  [271],
		  ["ute.kleiber@uni-tuebingen.de"],
		  ["07071 29-74262"],
		  ["Sekretariat Prof. H�usermann"]]).

person(32,[['Frau Anja Lambrecht'],
		  [anja,lambrecht],
		  [265],
		  ["anja.lambrecht@uni-tuebingen.de"],
		  ["07071 29-72359"],
		  ["Sekretariat Prof. Zurstiege"]]).

person(33,[['Frau Judith Sch�chterle'],
		  [judith,sch�chterle],
		  [261],
		  ["sekretariat.poerksen@mewi.uni-tuebingen.de"],
		  ["07071 29-72366"],
		  ["Sekretariat Prof. P�rksen"]]).

person(34,[['Frau Carolin Wiede'],
		  [carolin,wiede],
		  [209],
		  ["carolin.wieder@uni-tuebingen.de"],
		  ["07071 29-74271"],
		  ["Sekretariat Prof. Marschall"]]).

person(-1,[[''],
		  [_],
		  [],
		  [],
		  [],
		  []]).


%! person_name_search/3
%  searches for keyword in persons of the institute
%  returns the list of found person + ID
%  returns -1 if doesn't find anyone

person_name_search(Search,ID) :-
	person(ID,[_,PersonNames,_,_,_,_]),
	member(Search,PersonNames),!.

%! elaborate_name_matching/2
%  wer ist X,
%  X is Input
%  Allows following:
%  hallo [P�rksen], hallo [Bernhard, P�rksen], hallo [_, P�rksen]

elaborate_name_matching(Input,NewID) :-   person_name_search(Input,ID),get_person_room(ID,Raum),get_id_by_room(Raum,NewID),!;
								          person_name_search(Input,ID),lastInput(L),nextto(Input,Y,L),person_name_search(Y,ID2),ID >= 0,ID=ID2,get_person_room(ID,Raum),get_id_by_room(Raum,NewID),!;
								          person_name_search(Input,ID),lastInput(L),nextto(Input,Y,L),person_name_search(Y,ID2),ID >= 0, ID2 = -1,get_person_room(ID,Raum),get_id_by_room(Raum,NewID),!;
								          person_name_search(Input,ID),lastInput(L),nextto(Input,Y,L),person_name_search(Y,ID2),ID = -1, ID2 >= 0,get_person_room(ID2,Raum),get_id_by_room(Raum,NewID),!.


%! print_person_info/1
%  returns infos about person
%

print_person_info(ID) :-
	person(ID,[[N],_,[R],[E],[T],[Z]]),
	write("Name:"),tab(1),write(N),nl,
	write("Raum:"),tab(1),write(R),nl,
	write("Email:"),tab(1),write(E),nl,
	write("Telefon:"),tab(1),write(T),nl,
	write("Bereich/Aufgabe:"),tab(1),write(Z),nl.

%! get_id_by_*/2
% retrieve * by id
%

get_id_by_room(Raum,ID) :-
	person(ID,[_,_,[Raum],_,_,_]).

get_person_name(ID,Name) :-
	person(ID,[[Name],_,_,_,_,_]).

get_person_room(ID,Raum) :-
	person(ID,[_,_,[Raum],_,_,_]).

get_person_mail(ID,Mail) :-
	person(ID,[_,_,_,[Mail],_,_]).

get_person_phone(ID,Tel) :-
	person(ID,[_,_,_,_,[Tel],_]).

get_person_job(ID,Job) :-
	person(ID,[_,_,_,_,_,[Job]]).


%Basisstudium

%vorlesung/3 (Titel,ECTS,Modulbezeichnung,K�rzel)
vorlesung('G1 - Einf�hrung in die Medienwissenschaft I',8,[einf�hrung,in,die,medienwissenschaft,i],g1).
vorlesung('G2 - Einf�hrung in die Medienwissenschaft II',8,[einf�hrung,in,die,medienwissenschaft,ii],g2).
vorlesung('G3 - Forschung und Praxisfelder',4,[forschung,und,praxisfelder],g3).
vorlesung('F1 - Einf�hrung in die Methoden der Medienforschung',8,[einf�hrung,in,die,methoden,der,medienforschung],f1).

%seminar/3 (Titel,ECTS,Modulbezeichnung,K�rzel)
seminar('F2 - Einf�hrung in die Theorien der Medienforschung',8,[einf�hrung,in,die,theorien,der,medienforschung],f2).

%lehrredaktion/3 (Titel,ECTS,Modulbezeichnung,K�rzel)
lehrredaktion('L1 - Print & Onlinemedien',6,[print,und,onlinemedien],l1).
lehrredaktion('L2 - H�rfunk',6,[h�rfunk],l2).
lehrredaktion('L3 - Hypermediasysteme',6,[hypermediasysteme],l3).
lehrredaktion('L4 - Film und Fernsehen',6,[film,und,fernsehen],l4).
lehrredaktion('L5 - Schreibtraining',6,[schreibtraining],l5).

%veranstaltung/3 (Titel,ECTS,Modulbezeichnung,K�rzel)
veranstaltung(Titel,ECTS,Modulbezeichnung,K�rzel) :- vorlesung(Titel,ECTS,Modulbezeichnung,K�rzel);seminar(Titel,ECTS,Modulbezeichnung,K�rzel); lehrredaktion(Titel,ECTS,Modulbezeichnung,K�rzel).

%veranstaltungects/1
veranstaltungects('G1 - Einf�hrung in die Medienwissenschaft I - 8 ECTS').
veranstaltungects('G2 - Einf�hrung in die Medienwissenschaft II - 8 ECTS').
veranstaltungects('G3 - Forschung und Praxisfelder - 4 ECTS').
veranstaltungects('F1 - Einf�hrung in die Methoden der Medienforschung - 8 ECTS').
veranstaltungects('F2 - Einf�hrung in die Theorien der Medienforschung - 8 ECTS').
veranstaltungects('L1 - Print & Onlinemedien - 6 ECTS').
veranstaltungects('L2 - H�rfunk - 6 ECTS').
veranstaltungects('L3 - Hypermediasysteme - 6 ECTS').
veranstaltungects('L4 - Film und Fernsehen - 6 ECTS').
veranstaltungects('L5 - Schreibtraining - 6 ECTS').

%themen/1
themen('Einf�hrung in die Medienwissenschaft').
themen('Methoden in der Medienforschung').
themen('Medienwirkung').
themen('Medienrezeption').
themen('Praxisfelder der Medien').

% --------------------------------
% DCG
% --------------------------------
beleidigung --> anrede,beleid.
beleidigung --> beleid.
beleidigung --> anrede,artikel,beleid.
beleidigungf --> anredef,beleid.
beleidigungf --> anrede,artikel,beleid.
anrede -->[du].
anrede -->[du,bist].
anrede -->[bist,du].
anredef -->[sie].
anredef -->[sie,sind].
anredef -->[sind,sie].
beleid -->[idiot].
beleid -->[spast].
beleid -->[spasti].
beleid -->[depp].
beleid -->[penner].
beleid -->[arsch].
beleid -->[hure].
beleid -->[hurensohn].
beleid -->[arschloch].
beleid -->[knallt�te].
beleid -->[lappen].
beleid -->[bescheuert].
beleid -->[dumm].
beleid -->[bl�d].
beleid -->[nerven].
beleid -->[streber].
beleid -->[angeber].
beleid -->[behindert].
beleid -->[entt�uschung].
artikel --> [ein].
artikel --> [eine].



%Orte

%bib/2 (Bibliothek,�ffnungszeiten)
bib(brechtbaubibliothek,
    'Mo-Do 8.00-20.45   Fr 8.00-18.45   Sa 10.00-17.45   So 12.00-17.45').
bib(brechtbaubib,
    'Mo-Do 8.00-20.45   Fr 8.00-18.45   Sa 10.00-17.45   So 12.00-17.45').
bib('unibibliothek',
    'Mo-Fr 8.00-24.00	 Sa 10.00-22.00   So 10.00-22.00').
bib('unibib',
    'Mo-Fr 8.00-24.00	 Sa 10.00-22.00   So 10.00-22.00').
bib('bib',
    'Mo-Fr 8.00-24.00	 Sa 10.00-22.00   So 10.00-22.00').

%profil/2
profil(eins,'auf der Konzeption digitaler Medien. Dabei wird besonders auf die Techniken und Entwicklungen in den digitalen Medien eingegangen. Die Studienangebote in diesem Profil setzen daher einen starken Akzent im Bereich der Medieninformatik. Im Rahmen dieses Profils k�nnen Sie sogar selbst Ihren eingenen Dr.Wei�bescheid programmieren.').
profil(ersten,'auf der Konzeption digitaler Medien. Dabei wird besonders auf die Techniken und Entwicklungen in den digitalen Medien eingegangen. Die Studienangebote in diesem Profil setzen daher einen starken Akzent im Bereich der Medieninformatik. Im Rahmen dieses Profils k�nnen Sie sogar selbst Ihren eingenen Dr.Wei�bescheid programmieren.').
profil(zwei,'auf den Praxisfeldern der Medienkommunikation. Dabei wird besonders auf aktuelle Trends und Entwicklungslinien im Journalismus, in der Werbung, in Public Relations und Unterhaltung eingegangen. Print- und Onlinemedien werden dabei ebenso ber�cksichtigt wie H�rfunk, Film und Fernsehen.').
profil(zweiten,'auf den Praxisfeldern der Medienkommunikation. Dabei wird besonders auf aktuelle Trends und Entwicklungslinien im Journalismus, in der Werbung, in Public Relations und Unterhaltung eingegangen. Print- und Onlinemedien werden dabei ebenso ber�cksichtigt wie H�rfunk, Film und Fernsehen.').

%! Veranstaltungen Profilbezogen
%verpro/3 (profil,modul,name)
verpro(eins,' G4-I  Programmierung digitaler Medien').
verpro(eins,' G5-I  Gestaltung digitaler Medien').
verpro(eins,' F3-I  Usability Engineering').
verpro(eins,' F4-I  Internet-Technologien und Webentwicklung').
verpro(ersten,' G4-I  Programmierung digitaler Medien' ).
verpro(ersten,' G5-I  Gestaltung digitaler Medien').
verpro(ersten,' F3-I  Usability Engineering').
verpro(ersten,' F4-I  Internet-Technologien und Webentwicklung').
verpro(zwei,' G4-II  Medienkonvergenz / Neue Medien').
verpro(zwei,' G5-II  Praxisfelder der Medienkommunikation').
verpro(zwei,' F3-II  Forschungsprojekt I').
verpro(zwei,' F4-II  Forschungsprojekt II').
verpro(zweiten,' G4-II  Medienkonvergenz / Neue Medien').
verpro(zweiten,' G5-II  Praxisfelder der Medienkommunikation').
verpro(zweiten,' F3-II  Forschungsprojekt I').
verpro(zweiten,' F4-II  Forschungsprojekt II').

%studienberatung/1
studienberatung('Montags, 10-12 Uhr � Pia Fruth (Beratung Praxiskontakte)').
studienberatung('Montags, 12-14 Uhr � Torsten Maurer').
studienberatung('Montags, 14-16 Uhr � Hanne Detel').
studienberatung('Montags, 15-16 Uhr - Mandy Badermann').
studienberatung('Dienstags, 10-11 Uhr � Kiron Patka').
studienberatung('Dienstags, 15-17 Uhr � Jan-No�l Thon').
studienberatung('Mittwochs, 11-12 Uhr � Ulrich H�gele').
studienberatung('Donnerstags, 14-15 Uhr - Markus Feiks').

%Essen Name,Adresse
%essen/1
essen('Cafeteria Unibibliothek in der Wilhelmstra�e 32').
essen('Cafeteria im Brechtbau in der Wilhelmstra�e 50').
essen('Mensa in der Wilhelmstra�e 13').
essen('Unkel in der Wilhelmstra�e 17').
essen('B�ckerei Gauker in der Nauklerstra�e 31').
essen('B�ckerei Keim in der Wilhelmstra�e 20').
essen('Asia-Imbiss Wok-In in der Wilhelmstra�e 20').
essen('REWE in der Mohlstra�e 26').


%print_list/2
%prints any list with list element and new line
print_list([],_).
print_list([First|RestInputList], _) :-
	write(First),nl,
	print_list(RestInputList,First).

%sinne/1
sinne(sehen).
sinne(h�ren).
sinne(riechen).


%Dynamische Variablen

:- dynamic name/1.
name('Gast').

% Infos zu Professoren
match([welche,profs,gibt,es],['Ich glaube das waren alle.
Halt! Da habe ich doch glatt einen vergessen... Ist doch klar, mich selbst.']) :- write('Folgende Professoren lehren in T�bingen am Institut f�r Medienwissenschaft:'),nl,findall(X,prof(_,X),L),print_list(L,_).
match([professoren],['Ich hoffe ich konnte Ihnen weiterhelfen.']) :- write('Folgende Professoren lehren in T�bingen am Institut f�r Medienwissenschaft:'),nl,findall(X,prof(_,X),L),print_list(L,_).

%Infos sprechstunden
match([wann,hat,X,sprechstunde],['Leider bin ich nicht allwissend. Da sich die Termine f�r die Sprechstunden von Semester zu Semester unterscheiden kann ich Ihnen leider nicht sagen, wann',Name,'seine Sprechstunde hat.']) :- person_name_search(X,ID),get_person_name(ID,Name).
match([wann,hat,_,X,sprechstunde],['Leider bin ich nicht allwissend. Da sich die Termine f�r die Sprechstunden von Semester zu Semester unterscheiden kann ich Ihnen leider nicht sagen, wann',Name,'seine Sprechstunde hat.'])  :- person_name_search(X,ID),get_person_name(ID,Name).
match([wann,kann,_,bei,X,_,_,sprechstunde],['Leider bin ich nicht allwissend. Da sich die Termine f�r die Sprechstunden von Semester zu Semester unterscheiden kann ich Ihnen leider nicht sagen, wann',Name,'seine Sprechstunde hat.'])  :- person_name_search(X,ID),get_person_name(ID,Name).
match([wann,kann,_,bei,_,X,_,_,sprechstunde],['Leider bin ich nicht allwissend. Da sich die Termine f�r die Sprechstunden von Semester zu Semester unterscheiden kann ich Ihnen leider nicht sagen, wann',Name,'seine Sprechstunde hat.'])  :- person_name_search(X,ID),get_person_name(ID,Name).


%-----------------------------------------------------------------
%Vorlesungsinformationen/3 (Vorlesungsname, Semesterbelegung,
%-----------------------------------------------------------------
match([vorlesungen],['Haben Sie noch andere Fragen?']):-write('Sie sollten folgende Vorlesungen im Laufe Ihres Grundstudiums besuchen:'),nl,findall(Y,vorlesung(Y,_,_,_),X),print_list(X,_).
match([seminare],['Haben Sie noch andere Fragen?']):-write('Sie sollten das folgende Seminar im Laufe Ihres Studiums besuchen:'),nl,findall(Y,seminar(Y,_,_,_),X),print_list(X,_).
match([lehrredaktionen],['Haben Sie noch andere Fragen?']):-write('Sie k�nnen aus den folgenden Lehrredaktionen ausw�hlen. Besuchen sollten sie mindestens drei:'),nl,findall(Y,lehrredaktion(Y,_,_,_),X),print_list(X,_).
match([veranstaltungen],['Haben Sie noch andere Fragen?']):-write('Folgende Veranstaltungen k�nnen Sie im Laufe ihres Studiums besuchen'),nl,findall(Y,veranstaltung(Y,_,_,_),X),print_list(X,_).
match([univeranstaltungen],['Haben Sie noch andere Fragen?']):-write('Folgende Veranstaltungen k�nnen Sie im Laufe ihres Studiums besuchen'),nl,findall(Y,veranstaltung(Y,_,_,_),X),print_list(X,_).


match([tutorien],['Tutotrien sollen Ihnen dabei helfen den Stoff aus der Vorlesung weiter zu festigen und Ihnen zudem die M�glichkeit geben Fragen zu stellen. Meistens finden mehrere zu unterschiedlichen Uhrzeiten statt. Dar�ber werden Sie aber in den entsprechenden Vorlesungen ausreichend informiert.']).
match([tutorium],['Tutotrien sollen Ihnen dabei helfen den Stoff aus der Vorlesung weiter zu festigen und Ihnen zudem die M�glichkeit geben Fragen zu stellen. Meistens finden mehrere zu unterschiedlichen Uhrzeiten statt. Dar�ber werden Sie aber in den entsprechenden Vorlesungen ausreichend informiert.']).
match([wer,unterrichtet],['Es unterscheidet sich sehr von Semester zu Semester welcher Dozent der Medienwissenschaft welche Veranstaltungen lehrt. Daher l�sst sich diese Frage nicht so pauschal beantworten']).
match([wer,macht],['Es unterscheidet sich sehr von Semester zu Semester welcher Dozent der Medienwissenschaft welche Veranstaltungen lehrt. Daher l�sst sich diese Frage nicht so pauschal beantworten']).
match([wann,findet,_,_],['Es unterscheidet sich immer sehr von Semester zu Semester, daher kann ich die Frage leider nicht beantworten.']).
match([welche,veranstaltungsarten],['An unserer Universit�t k�nnen Sie an Vorlesungen,Seminare und Lehrredaktionen teilnehmen.']).

match([nebenfach],['In T�bingen k�nnen Sie allerlei Studieng�nge als Nebenfach w�hlen. Eine �bersicht �ber alle Studieng�nge finden Sie hier: https://www.uni-tuebingen.de/studium/verzeichnis-der-studiengaenge.html']).
match([nebenf�cher],['In T�bingen k�nnen Sie allerlei Studieng�nge als Nebenfach w�hlen. Eine �bersicht �ber alle Studieng�nge finden Sie hier: https://www.uni-tuebingen.de/studium/verzeichnis-der-studiengaenge.html']).
match([was,kann,_,in,t�bingen,studieren],['In T�bingen k�nnen Sie allerlei Studieng�nge w�hlen, darunter auch Medienwissenschaft. Eine �bersicht �ber alle Studieng�nge finden Sie hier: https://www.uni-tuebingen.de/studium/verzeichnis-der-studiengaenge.html']).
match([master],['Also wenn es Ihnen so gut gef�llt k�nnen Sie in T�bingen auch einen Master in Medienwissenschaft machen.']).

match([wo,ist,die,vorlesung],['wo die Vorlesung ist, das k�nnen Sie auf Campus heraus finden.']).
match([wo,ist,das,seminar],['Wo das Seminar ist, das k�nnen Sie auf Campus heraus finden.']).
match([wo,ist,die,lehrredaktion],['Wo das Lehrredaktion ist, das k�nnen Sie auf Campus heraus finden.']).

match([zeitaufwand],['Das kommt ganz darauf an, wie sehr Sie sich ins Studium reinh�ngen. Ich kann Ihnen nur sagen viel hilft viel. Aber normalerweise werden Sie wohl vier Veranstaltungen in der Woche besuchen. Im Selbststudium k�nnen Sie Ihre Kenntnisse dann vertiefen.']).
match([arbeitsaufwand],['Das kommt ganz darauf an, wie sehr Sie sich ins Studium reinh�ngen. Ich kann Ihnen nur sagen viel hilft viel. Aber normalerweise werden Sie wohl vier Veranstaltungen in der Woche besuchen. Im Selbststudium k�nnen Sie Ihre Kenntnisse dann vertiefen.']).
match([themen],['kennenlernen.
Dabei wird je nach Vorlesungsthema aber spezifisch auf bestimmte Ph�nomene wie z.B. die Nachrichtenfaktoren oder die Beeinflussung durch Werbung eingegangen.
Was m�chten Sie sonst noch wissen']):-writeln('In Ihrem Studium werden Sie unterschiedlichste Themen aus den Bereichen:'), findall(X,themen(X),Y),print_list(Y,_).
match([zulassungsbeschr�nkt],['Sowohl das B.A.-Haupt- als auch das Nebenfach sind zulassungsbeschr�nkt. Im Hauptfach werden in jedem Wintersemester 90 Studienpl�tze vergeben. Im Nebenfach stehen 30 Studienpl�tze zur Verf�gung.']).
match([zulassungsunbeschr�nkt],['Nein, leider sind das B.A.-Haupt- wie auch das Nebenfach zulassungsbeschr�nkt. Im Hauptfach werden in jedem Wintersemester 90 Studienpl�tze vergeben. Im Nebenfach stehen 30 Studienpl�tze zur Verf�gung.']).


%-------------------------------------------------
%    Eingabem�glichkeiten zur Profilbestimmung
%-------------------------------------------------
match([welche,module],['In der T�binger Medienwissenschaft sprechen wir von Profilen. Sie k�nnen das Profil Eins: Konzeption digitaler Medien oder das Profil Zwei: Praxisfelder der Medienkommunikation w�hlen. Eines der Beiden werden Sie dann ab dem dritten Semester belegen.']).
match([welche,profile],['Sie k�nnen das Profil Eins: Konzeption digitaler Medien oder das Profil Zwei: Praxisfelder der Medienkommunikation w�hlen. Eines der Beiden werden Sie dann ab dem dritten Semester belegen.']).

match([profil,X],['Denn im Profil',X,' liegt der Schwerpunkt auf',Y]):-profil(X,Y),nl,findall(B,verpro(X,B),A),print_list(A,_).
match([X,profil],['Denn im',X,'Profil liegt der Schwerpunkt auf',Y]):-write('In diesem Profil sollten Sie folgende Veranstaltungen belegen:'),profil(X,Y),nl,findall(B,verpro(X,B),A),print_list(A,_).
match([konzeption,digitaler,medien],['In diesem Profil liegt der Schwerpunkt auf', X]):-profil(eins,X).
match([praxisfelder,der,medienkommunikation],['In diesem Profil liegt der Schwerpunkt auf', X]):-profil(zwei,X).

match([praxisorientiert],['Das Studium ist relativ theoretisch und wissenschaftlich angelegt jedoch werden Sie sich auch in den unterschiedlichen Profilen praktisch bet�tigen k�nnen.']).
match([praxis],['Das Studium ist relativ theoretisch und wissenschaftlich angelegt jedoch werden Sie sich auch in den unterschiedlichen Profilen praktisch bet�tigen k�nnen. Zudem gibt es ein im Studium integriertes Projektstudium.']).


%-------------------------------------------------
%    Smaltalk
%-------------------------------------------------

match([hallo],['Hallo lieber Nutzer.Es freut mich jemanden gegen�ber zu haben. Und da ich mich am Liebsten mit Kommunikation besch�ftige k�nnen Sie mir ja gleich mal eine Frage stellen.']).
match([hi],['Hey.Es freut mich jemanden gegen�ber zu haben. Und da ich mich am Liebsten mit Kommunikation besch�ftige k�nnen Sie mir ja gleich mal eine Frage stellen.']).
match([servus],['Gr�ezi und Hallo.Stellen Sie mir einfach Ihre Fragen und ich werde versuchen Ihnen dabei zu helfen. Jedoch klappt das auf Hochdeutsch besser.']).
match([guten,X],['Ihnen auch einen guten',X,'.']).
match([gute,nacht],["Ebenso. Machen Sie's gut."]).

match([haha],["Hahaha."]).
match([hahaha],["Sehr witzig."]).

match([danke],['Immer wieder gerne.']).
match([_,dank],['Immer wieder gerne.']).
match([dankesch�n],['Gerne, Sie wissen ja wo Sie mich finden.']).

match([sag,mal,was],['Was. Und jetzt?']).

match([was,machst],['Studenten und allerlei Personen beraten, die meine Hilfe aufsuchen. Stellen Sie mir doch eine Frage.']).
match([was,machen,_],['Studenten und allerlei Personen beraten, die meine Hilfe aufsuchen. Stellen Sie mir doch eine Frage.']).

match([wer,bist,du],['Es ist sch�n Sie kennenzulernen. Haben Sie denn auch Fragen an mich mitgebracht',Merge,'oder irgendein anderes Anliegen?']) :- name('Gast'),write('Ich bin eine k�nstliche Intelligenz, die ratlosen Studenten weiterhelfen soll. Mich gibt es aber noch gar nicht so lange hier am Institut.
Entworfen wurde ich von drei Studenten der Medienwissenschaft. Ihnen verdanke ich meine Existenz, insofern ich �berhaupt eine Existenz habe...?
Aber genug philosophiert, wer Sind Sie denn?
Wie ist denn Ihr Name?'),nl,read_sentence(X),last(X,LastElement),atom_chars(LastElement,Chars),Chars = [H|Rest],upcase_atom(H,Up),atomics_to_string(Rest,Back),string_concat(Up,Back,Merge),retract(name(_)),assert(name(Merge)).

match([wer,sind,sie],['Es ist sch�n Sie kennenzulernen. Haben Sie denn auch Fragen an mich mitgebracht',Merge,'oder irgendein anderes Anliegen?']) :- name('Gast'),write('Ich bin eine k�nstliche Intelligenz, die ratlosen Studenten weiterhelfen soll. Mich gibt es aber noch gar nicht so lange hier am Institut.
Entworfen wurde ich von drei Studenten der Medienwissenschaft. Ihnen verdanke ich meine Existenz, insofern ich �berhaupt eine Existenz habe...?
Aber genug philosophiert, wer Sind Sie denn?
Wie ist denn Ihr Name?'),nl,read_sentence(X),last(X,LastElement),atom_chars(LastElement,Chars),Chars = [H|Rest],upcase_atom(H,Up),atomics_to_string(Rest,Back),string_concat(Up,Back,Merge),retract(name(_)),assert(name(Merge)).

match([wer,bist,du],['Habe ich das nicht schon erw�hnt? Ich bin Dr. Wei�bescheid und helfe Ihnen bei Ihren Fragen gerne weiter.']) :- not(name('Gast')).
match([wer,ist,dr,weissbescheid],['Habe ich das nicht schon erw�hnt? Ich bin Dr. Wei�bescheid und helfe Ihnen bei Ihren Fragen gerne weiter.']) :- not(name('Gast')).

match([wer,bin,ich],['Wer Sie sind? Sie sind ein Hilfesuchender. Vielleicht ist Ihnen ja auch nur langweilig und anstatt zu lernen, unterhalten Sie sich lieber mit mir.
Ersteres ist vollkommen in Ordnung. Letzteres k�nnte problematisch sein.']) :-  name('Gast').

match([wer,bin,ich],['Ihr Name ist',X,'und ich vermute mal, Sie sind Student hier.
Vielleicht sind Sie aber auch ein Professor, der sich als Student ausgibt?']) :- not(name('Gast')),name(X).

match([ich,hei�e,X],['Sch�n Sie kennenzulernen',Merge,'und ein herzliches Willkommen unter uns Medienwissenschaftlern!']) :- name('Gast'),atom_chars(X,Chars),Chars = [H|Rest],upcase_atom(H,Up),atomics_to_string(Rest,Back),string_concat(Up,Back,Merge),retract(name(_)), assert(name(Merge)).
match([ich,hei�e,X],['Dann werde ich Sie ab sofort',Merge,'nennen.']) :- not(name('Gast')),atom_chars(X,Chars),Chars = [H|Rest],upcase_atom(H,Up),atomics_to_string(Rest,Back),string_concat(Up,Back,Merge),retract(name(_)),assert(name(Merge)).

match([wie,hei�e,ich],['Sch�n Sie kennen zu lernen',LastElement]) :- name('Gast'),write('Ich kenne Ihren Namen leider noch nicht. Wie hei�en Sie denn?'),nl,read_sentence(X),last(X,LastElement),retract(name(_)),assert(name(LastElement)).

match([wie,hei�e,ich],['Vergesslichkeit unter Studenten? Als ich so alt war wie Sie gab es so etwas noch nicht.
Nun denken Sie mal stark nach, Ihr Name wird Ihnen schon wieder einfallen.']) :- not(name('Gast')).

match([wie,gehts],['Mir geht es sehr gut. Schlie�lich bin ich ja ein angesehener Professor, der sich in den unterschiedlichsten Medienbereichen bestens auskennt. Und Ihnen?']).
match([wie,geht,es,_],['Mir geht es sehr gut. Schlie�lich bin ich ja ein angesehener Professor, der sich in den unterschiedlichsten Medienbereichen bestens auskennt. Und selbst?']).

match([was,geht],['Leider nicht viel wenn man keine Beine hat.']).
match([was,l�uft],['Leider nicht viel wenn man keine Beine hat.']).
match([was,l�uft,_],['L�uft bei Ihnen. Errmm.. haben Sie noch andere Fragen?']) :- write('Normalerweise ist mir so ein Sprachgebrauch nicht gel�ufig, aber mir geht es pr�chtig. Und was geht bei Ihnen?'),nl,read_sentence(_).

match([was,geht,_],['L�uft bei Ihnen. Errmm.. haben Sie noch andere Fragen?']) :- write('Normalerweise ist mir so ein Sprachgebrauch nicht gel�ufig, aber mir geht es pr�chtig. Und was geht bei Ihnen?'),nl,read_sentence(_).
match([was,geht,so],['Meine werten Institutskollegen und ich pflegen zu sagen: "Wir wissen nicht WAS geht, wir wissen auch nicht WIEs geht. Aber wir forschen weiter."']).

match([auch,gut],['Das freut mich zu h�ren. Was m�chten Sie denn heute wissen?']).
match([mir,_,_,auch,gut],['Das freut mich zu h�ren. Was m�chten Sie denn heute wissen?']).
match([mir,_,_,gut],['Das freut mich zu h�ren. Was m�chten Sie denn heute wissen?']).
match([mir,_,_,nicht,gut],['Oh, das ist aber schade zu h�ren. Ich hoffe ich kann Sie ein wenig aufmuntern. Lassen Sie uns doch ein Spiel spielen. Schreiben Sie einfach SPIELEN.']).
match([mir,_,_,schei�e],['Oh, das ist aber schade zu h�ren. Ich hoffe ich kann Sie ein wenig aufmuntern. Lassen Sie uns doch ein Spiel spielen. Schreiben Sie einfach SPIELEN.']).


match([do,you,speak,english],['Yes, I do. Jedoch m�chte ich meine Gehirnkapazit�t mit der h�chst m�glichen Aktivit�t nutzen, daher bleibe ich lieber in meiner Muttersprache. Das geht einfach schneller und ich kann Ihnen mehr von meinem Wissen weiter geben.']).
match([_,duzen],['Gerne w�rde ich gesiezt werden.']).
match([warum,duzt],['Das ist einfach etwas f�rmlicher. Gew�hnen Sie sich dran. Das wird im Studium n�mlich zu Ihrem Alltag geh�ren.']).


match([wie,_,das,wetter],['Am besten schauen Sie nach drau�en oder Sie fragen einen Meteorologen. Ich mag zwar �ber k�nztliche Intelligenz verf�gen,doch ein Wetterfrosch bin ich wahrlich nicht.']).
match([freund,sein],['Warum nicht. Schlie�lich ist man als Chatbot meist etwas alleine.']).
match([wie,viele,studenten],['Puh das sind ganz sch�n viele! Lassen Sie mich erst einmal z�hlen 1...2...3..4...... �berlegen Sie sich doch schon einmal Ihre n�chste Frage.']).
match([sind,viele,studenten],['Puh das sind ganz sch�n viele! Lassen Sie mich erst einmal z�hlen 1...2...3..4...... �berlegen Sie sich doch schon einmal Ihre n�chste Frage.']).

match([wie,viele,studierende],['Puh das sind ganz sch�n viele! Lassen Sie mich erst einmal z�hlen 1...2...3..4...... �berlegen Sie sich doch schon einmal Ihre n�chste Frage.']).

match([kommunikation],['Unter Kommunikation versteht man zum einen die Kommunikation zwischen Menschen durch Sprachgebrauch oder Zeichen und zum anderen den Austausch von Informationen zwischen Ger�ten.']).
match([medienwissenschaft],['In der Medienwissenschaft besch�ftigen wir uns mit dem kompletten Medienspektrum von Print- und Onlinemedien �ber Radio, Film und Fernsehen, Medienwandel und Medieninnovation bis hin zu Werbung, Marketing und Unternehmenskommunikation. In T�bingen werden Sie in der Theorie und in der Praxis geschult.']).



%----------------------------------------------------------
%Was kann man mit diesem Studium machen
%----------------------------------------------------------
match([was,kann,_,sp�ter],['Durch dieses sehr empfehlenswerte Studium werden Sie auf folgende Berufsfelder vorbereitet:
	�ffentlichkeitsarbeit,
	(Fach)Journalismus,
	Verlage,
	Markt-und Medienforschung,
	Medienkonzeption und -produktion
	Medienmanagement,
	und �ffentliche medien- und kommunikationswissenschaftliche Forschung']).
match([was,kann,_,_,medienwissenschaft],['Durch dieses sehr empfehlenswerte Studium werden Sie auf folgende Berufsfelder vorbereitet:
	�ffentlichkeitsarbeit,
	(Fach)Journalismus,
	Verlage,
	Markt-und Medienforschung,
	Medienkonzeption und -produktion
	Medienmanagement,
	und �ffentliche medien- und kommunikationswissenschaftliche Forschung']).
match([was,bringt,_,studium],['Durch dieses sehr empfehlenswerte Studium werden Sie auf folgende Berufsfelder vorbereitet:
	�ffentlichkeitsarbeit,
	(Fach)Journalismus,
	Verlage,
	Markt-und Medienforschung,
	Medienkonzeption und -produktion
	Medienmanagement,
	und �ffentliche medien- und kommunikationswissenschaftliche Forschung']).
match([abschluss,anfangen],['Durch dieses sehr empfehlenswerte Studium werden Sie auf folgende Berufsfelder vorbereitet:
	�ffentlichkeitsarbeit,
	(Fach)Journalismus,
	Verlage,
	Markt-und Medienforschung,
	Medienkonzeption und -produktion
	Medienmanagement,
	und �ffentliche medien- und kommunikationswissenschaftliche Forschung']).
match([nach,dem,studium],['Durch dieses sehr empfehlenswerte Studium werden Sie auf folgende Berufsfelder vorbereitet:
	�ffentlichkeitsarbeit,
	(Fach)Journalismus,
	Verlage,
	Markt-und Medienforschung,
	Medienkonzeption und -produktion
	Medienmanagement,
	und �ffentliche medien- und kommunikationswissenschaftliche Forschung']).
match([berufsaussichten],['Durch dieses sehr empfehlenswerte Studium werden Sie auf folgende Berufsfelder vorbereitet:
	�ffentlichkeitsarbeit,
	(Fach)Journalismus,
	Verlage,
	Markt-und Medienforschung,
	Medienkonzeption und -produktion
	Medienmanagement,
	und �ffentliche medien- und kommunikationswissenschaftliche Forschung']).

% --------------------------------------------------------------------------
% Allgemeine Infos zum Studium
% -----------------------------
match([was,soll,_,studieren],['Da Sie sich scheinbar schon f�r Medienwissenschaft interessieren, wie w�re es dann mit einem Bachelor in Medienwissenschaft? Sie k�nnten sich bei mir auch gerne �ber die Verantstaltungen im Fach informieren.']).
match([wie,viele,semester],['Im Bachelor gibt es eine Regelstudienzeit von 6 Semester.']).
match([wie,lange,dauert],['Im Bachelor gibt es eine Regelstudienzeit von 6 Semester.']).
match([wann,_,das,studium],['Das Studium der Medienwissenschaft k�nnen Sie jedes Wintersemester an der Eliteuniversit�t T�bingen beginnen.']).
match([was,ist,der,nc],['Da die Vergabe der Studienpl�tze einem hochkomplexes Verfahren unterliegt kann ich diese Frage nicht beantworten.']).
match([gibt,es,einen,nc],['Da die Vergabe der Studienpl�tze einem hochkomplexes Verfahren unterliegt kann ich diese Frage nicht beantworten.']).
match([anwesenheitspflicht],['Grunds�tzlich ist das von Veranstaltung zu Veranstaltung unterschiedlich. Aber im besten Falle verpassen Sie nichts, denn das Feld der Medienwissenschaft ist eifach zu interessant um etwas zu verpassen.']).
match([anwesend,sein],['Grunds�tzlich ist das von Veranstaltung zu Veranstaltung unterschiedlich. Aber im besten Falle verpassen Sie nichts, denn das Feld der Medienwissenschaft ist eifach zu interessant um etwas zu verpassen.']).
match([englisch,kenntnisse],['Das w�re von Vorteil, da Ihnen im Laufe des Studiums viel Literatur begegnen wird, die auf Englisch verfasst wurde.']).
match([studentensekretariat],['Das Studentensekretariat finden Sie in der Wilhelmstra�e 11. Dort wird Ihnen Montags 13.00 Uhr - 15.00 Uhr und Dienstags bis Freitags 08.30 Uhr - 11.30 Uhr gerne jemand weiter helfen.']).
match([sekretariat],['Das Studentensekretariat finden Sie in der Wilhelmstra�e 11. Dort wird Ihnen Montags 13.00 Uhr - 15.00 Uhr und Dienstags bis Freitags 08.30 Uhr - 11.30 Uhr gerne jemand weiter helfen.']).
match([wie,wechsel,ich,_,studiengang],['Nun zu Ihrer n�chsten Frage']):-writeln('Am Besten sprechen Sie in diesem Fall einen der Studienberater an. Hier fidnen Sie alle Studienberatur und ihre Sprechzeiten.'),nl,findall(X,studienberatung(X),Y),print_list(Y,_).
match([wie,wechselt,man,_,studiengang],['Nun zu Ihrer n�chsten Frage']):-writeln('Am Besten sprechen Sie in diesem Fall einen der Studienberater an. Hier fidnen Sie alle Studienberatur und ihre Sprechzeiten.'),nl,findall(X,studienberatung(X),Y),print_list(Y,_).
match([studiengang,wechseln],['Nun zu Ihrer n�chsten Frage']):-writeln('Am Besten sprechen Sie in diesem Fall einen der Studienberater an. Hier fidnen Sie alle Studienberatur und ihre Sprechzeiten.'),nl,findall(X,studienberatung(X),Y),print_list(Y,_).
match([studienberatung],['Nun zu Ihrer n�chsten Frage']):-writeln('Am Besten sprechen Sie in diesem Fall einen der Studienberater an. Hier fidnen Sie alle Studienberatur und ihre Sprechzeiten.'),nl,findall(X,studienberatung(X),Y),print_list(Y,_).
match([studienbeitrag],['Der Studienbeitrag bel�uft sich auf
143,80 pro Semester.']).
match([studiengeb�hren],['Der Studienbeitrag bel�uft sich auf
143,80� pro Semester.']).

match([kinderbetreuung],['Es gibt Krippen- und Kindergartenpl�tze an der Universit�t T�bingen. Weitere Infos bekommen Sie beim Familienb�ro unter der Webseite https://www.uni-tuebingen.de/einrichtungen/gleichstellung/gleichstellungsbeauftragte/familienbuero.html']).
match([kind,betreut],['Es gibt Krippen- und Kindergartenpl�tze an der Universit�t T�bingen. Weitere Infos bekommen Sie beim Familienb�ro unter der Webseite https://www.uni-tuebingen.de/einrichtungen/gleichstellung/gleichstellungsbeauftragte/familienbuero.html']).
match([kind,betreuen],['Es gibt Krippen- und Kindergartenpl�tze an der Universit�t T�bingen. Weitere Infos bekommen Sie beim Familienb�ro unter der Webseite https://www.uni-tuebingen.de/einrichtungen/gleichstellung/gleichstellungsbeauftragte/familienbuero.html']).
match([mein,kind],['Es gibt Krippen- und Kindergartenpl�tze an der Universit�t T�bingen. Weitere Infos bekommen Sie beim Familienb�ro unter der Webseite https://www.uni-tuebingen.de/einrichtungen/gleichstellung/gleichstellungsbeauftragte/familienbuero.html']).

match([t�bingen,wohnen],['Wenn Sie in einem Studentenwohnheim wohnen m�chten ist Ihr Ansprechpartner das Studierendenwerk http://www.my-stuwe.de/wohnen/. Falls Sie nicht in einem Wohnheim unterkommen wollen, bietet sich die Webseite http://www.wg-gesucht.de/ zur Suche an.']).
match([t�bingen,sch�n],['T�bingen ist eine sehr sch�ne Stadt mit einer exzellenten Universit�t.']).

match([studienbeginn],['F�r den Studienbeginn sollten Sie sich optimal vorbereiten. N�here Informationen finden Sie auf der Webseite der Universit�t T�bingen unter https://www.uni-tuebingen.de/studium/studienanfang.html']).
match([studienanfang],['F�r den Studienanfang sollten Sie sich optimal vorbereiten. N�here Informationen finden Sie auf der Webseite der Universit�t T�bingen unter https://www.uni-tuebingen.de/studium/studienanfang.html']).
match([studienalltag],['Der Studienalltag unterscheidet sich stark von Student zu Student. F�r gew�hnlich besuchen Sie aber Vorlesungen und Seminare und treffen sich mit Ihren Kommilitonen.']).

match([fakult�t],['Die Medienwissenschaft geh�rt in T�bingen zu der Philosophischen Fakult�t. Diese finden Sie im Internet unter https://www.uni-tuebingen.de/fakultaeten/philosophische-fakultaet/fakultaet.html']).

% -----------------------------
% Fragen zu Praktikum
% -----------------------------

match([soll,_,_,praktikum,machen],['Ja ein Praktikum ist auf jeden Fall empfehlenswert.
In dem Studium der Medienwissenschaft als Hauptfach ist ein 3-monatiges Pflichtpraktikum vorgesehen. So werden Sie optimal auf das Berufsleben vorbereitet.']).
match([muss,_,_,praktikum,machen],['Ja ein Praktikum ist auf jeden Fall empfehlenswert.
In dem Studium der Medienwissenschaft als Hauptfach ist ein 3-monatiges Pflichtpraktikum vorgesehen. So werden Sie optimal auf das Berufsleben vorbereitet.']).
match([kann,_,_,praktikum,machen],['Ja ein Praktikum ist auf jeden Fall empfehlenswert.
In dem Studium der Medienwissenschaft als Hauptfach ist ein 3-monatiges Pflichtpraktikum vorgesehen. So werden Sie optimal auf das Berufsleben vorbereitet.']).
match([brauche,_,_,praktikum],['Ja ein Praktikum ist auf jeden Fall empfehlenswert.
In dem Studium der Medienwissenschaft als Hauptfach ist ein 3-monatiges Pflichtpraktikum vorgesehen. So werden Sie optimal auf das Berufsleben vorbereitet.']).
match([wann,_,_,_,praktikum],['Es gibt ein Pflichtpraktikum von 3 Monaten vorgesehen. Dieses k�nne Sie entweder am St�ck absolvieren oder in bis zu drei einmonatige Praktika aufteilen. Das Praktikum muss in der vorlesungsfreien Zeit absolviert werden.']).
match([wie,lange,_,ein,praktikum],['Es gibt ein Pflichtpraktikum von 3 Monaten vorgesehen. Dieses k�nne Sie entweder am St�ck absolvieren oder in bis zu drei einmonatige Praktika aufteilen. Das Praktikum muss in der vorlesungsfreien Zeit absolviert werden.']).
match([_,finde,ich,einen,praktikumsplatz],['In unserem Insitut gibt es eine Praktikumsberatung. Ihre Ansprechpartnerin ist Pia Fruth. Des weiteren gibt es Aush�nge am Schwarzen Brett.']).
match([wer,_,_,ansprechpartner,f�r,prakika],['Ansprechpartnerin f�r Prakitka ist Pia Fruth']).


% -----------------------------
% Fragen zum Stundenplan
% -----------------------------

match([im,ersten,semester,belegen],['Auf jeden Fall sollten Sie die G1 besuchenund den rest k�nnen SIe w�hlen. Schauen Sie doch einfach mal ins Modulhandbuch.']).
match([wo,finde,_,_,stundenplan],['Ihren Stundenplan finden und erstellen Sie auf Campus-Portal. Das ist ein elektronischen Vorlesungsverzeichnis mit Stundenplan und vielen weiteren Funktionen.']).
match([wo,_,_,_,stundenplan,_],['Ihren Stundenplan erstellen Sie selbst mithilfe des Modulhandbuchs und dem Campus-Portal']).
match([_,_,campus],['elektronischen Vorlesungsverzeichnis mit Stundenplanfunktion
	Onlinezugang zur R�chmeldung
	Bescheinigungsausdruck
	Anschrifts�nderung
	Pr�fungsanmeldung
	Notenspiegel
	und vieles mehr schau einfach mal vorbei unter http://campus.verwaltung.uni-tuebingen.de/index2.html']).
match([modulhandbuch],['Das Modulhandbuch beschreibt alle Veranstaltungen, die Sie w�hrend Ihres Studiums besuchen sollten. Das Modulhandbuch f�r den Bachelor finden Sie unter: http://www.uni-tuebingen.de/fakultaeten/philosophische-fakultaet/fachbereiche/philosophie-rhetorik-medien/institut-fuer-medienwissenschaft/studium.html']).
match([studienordnung],['Die Studienordnung beschreibt alle wichtigen Randinformationen f�r Ihr Studium. Dieses finden Sie unter: http://www.uni-tuebingen.de/fakultaeten/philosophische-fakultaet/fachbereiche/philosophie-rhetorik-medien/institut-fuer-medienwissenschaft/studium.html']).
match([pr�fung,anmelden],['Die Pr�fungsanmeldung ist auf dem Campus m�glich']).
match([pr�fungsanmeldung],['Die Pr�fungsanmeldung ist auf dem Campus m�glich']).
match([stunden],['Das finden Sie �ber Campus heraus. Unter http://campus.verwaltung.uni-tuebingen.de/index2.html k�nnen Sie mit Ihren Zugangsdaten sich einfach Ihren Studnenplan erstellen']).
match([semesterferien],['Die aktuellen Termine f�r die Semesterferien finden Sie hier:https://www.uni-tuebingen.de/studium/studienorganisation/semestertermine.html']).
match([semesterbeginn],['Die aktuellen Termine f�r die Semesterferien finden Sie hier:https://www.uni-tuebingen.de/studium/studienorganisation/semestertermine.html']).
match([wann,beginnt,das,semester],['Die aktuellen Termine f�r die Semesterferien finden Sie hier:https://www.uni-tuebingen.de/studium/studienorganisation/semestertermine.html']).
match([wann,f�ngt,das,semester,an],['Die aktuellen Termine f�r die Semesterferien finden Sie hier:https://www.uni-tuebingen.de/studium/studienorganisation/semestertermine.html']).
match([semesterende],['Die aktuellen Termine f�r die Semesterferien finden Sie hier:https://www.uni-tuebingen.de/studium/studienorganisation/semestertermine.html']).
match([semester,zu,ende],['Wenn Sie sich jetzt schon nach dem Semesterende sehnen dann sollten Sie sich Gedanken machen oder hier vorbeischauen: https://www.uni-tuebingen.de/studium/studienorganisation/semestertermine.html']).
match([wann,_,_,klausuren],['Normalerweise am Ende des Semesters. Doch je nach Veranstaltung k�nnen auch andere Leistungen angefordert werden.']).




% -----------------------------
% Fragen zum Projektstudium
% -----------------------------
match([was,ist,_,projektstudium],['Im Modulhandbuch
% finden Sie dieses Modul unter dem Namen P1. Im Rahmen des
% Projektstudiums planen und realisieren die Sie eigenverantwortlich ein
% kleineres Medienprojekt bzw. Werkst�ck. Das Medium dieses Projekts ist
% dabei frei w�hlbar.']).
match([wo,_,_,_,projektstudium,_],['Sie w�hlen Ihren Betreuer, je nach gew�hltem Thema, selbstst�ndig aus dem Mitarbeiterstamm hauptamtlicher Lehrender der Medienwissenschaft.']).
match([wer,betreut,_,projektstudium],['Das k�nnen Sie selber w�hlen.
Sie w�hlen Ihren Betreuer, je nach gew�hltem Thema, selbstst�ndig aus dem Mitarbeiterstamm hauptamtlicher Lehrender der Medienwissenschaft.']).

%essen
%zwischenabst�nde fehlen noch
match([wo,_,_,essen],['Als Student ist es wichtig viel und gesund zu essen. So halten Sie ihr Gehirn fit. Ich hoffe ich konnte Ihnen weiterhelfen.']):- bagof(X,essen(X),Y),write('Da kenne ich mich bestens aus. Warten Sie, ich generiere Ihnen kurz mal eine Liste.'),nl,nl,print_list(Y,_),nl.
match([wo,kann,_,_,essen],['Als Student ist es wichtig viel und gesund zu essen. So halten Sie ihr Gehirn fit. Aber das wissen Sie ja bestimmt selbst.
Ich hoffe ich konnte Ihnen weiterhelfen.']):- bagof(X,essen(X),Y),write('Da kenne ich mich bestens aus. Rund um den Brechtbau k�nnen Sie aus folgenden Angeboten w�hlen.'),nl,nl,print_list(Y,_),nl.
match([mittagessen],['Als Student ist es wichtig viel und gesund zu essen. So halten Sie ihr Gehirn fit. Aber das wissen Sie ja bestimmt selbst.
Ich hoffe ich konnte Ihnen weiterhelfen.']):- bagof(X,essen(X),Y),write('Da kenne ich mich bestens aus. Rund um den Brechtbau k�nnen Sie aus folgenden Angeboten w�hlen.'),nl,nl,print_list(Y,_),nl.

match([was,gibt,es,in,der,mensa],['Was es in der Mensa gibt kann ich leider nicht beantworten, weil das Angebot t�glich wechselt.']).
match([was,gibt,es,heute,in,der,mensa],['Ich sch�tze mal etwas zu essen.']).
match([welche,mensa],['Es gibt eine Mensa in der Wilhelmstra�e, eine Mensa in den Innenstadt (Prinz Karl) und eine Mensa auf der Morgenstelle.']).

%---------------------------------
%Info zur Bib
%---------------------------------
match([wann,_,_,X,_],['Die',Merge,'hat folgende �ffnungszeiten: ',Y]):- bib(X,Y),atom_chars(X,Chars),Chars = [H|Rest],upcase_atom(H,Up),atomics_to_string(Rest,Back),string_concat(Up,Back,Merge).
match([�ffnungszeiten,_,X],['Die',Merge,'hat folgende �ffnungszeiten: ',Y]):- bib(X,Y),atom_chars(X,Chars),Chars = [H|Rest],upcase_atom(H,Up),atomics_to_string(Rest,Back),string_concat(Up,Back,Merge).
match([�ffnungszeiten,_,_,X],['Die',Merge,'hat folgende �ffnungszeiten: ',Y]):- bib(X,Y),atom_chars(X,Chars),Chars = [H|Rest],upcase_atom(H,Up),atomics_to_string(Rest,Back),string_concat(Up,Back,Merge).
match([wie,lange,_,_,X,_],['Die',Merge,'hat folgende �ffnungszeiten: ',Y]):- bib(X,Y),atom_chars(X,Chars),Chars = [H|Rest],upcase_atom(H,Up),atomics_to_string(Rest,Back),string_concat(Up,Back,Merge).



%---------------------------------
% Fragen zu Geb�uden
% ---------------------------------

match([wo,_,_,uni],['Ich hoffe, dass Sie schon einmal wissen, dass sie sich in T�bingen befindet. Jedoch sind die Geb�ude ziemlich verteilt. Meistens werden Sie sich aber im Brechtbau und im Kupferbau wiederfinden.']).
match([wo,_,_,brechtbau],['Der Brechtbau, auch bekannt unter dem Namen Neuphilologikum, befindet sich in der Wilhelmstra�e 50.']).
match([wo,_,_,_,brechtbau],['Der Brechtbau, auch bekannt unter dem Namen Neuphilologikum, befindet sich in der Wilhelmstra�e 50.']).
match([wo,_,_,kupferbau],['Der Kupferbau ist in der H�lderlinstra�e 5. Hier finden Vorlesungen statt.']).
match([wo,_,_,_,kupferbau],['Der Kupferbau ist in der H�lderlinstra�e 5. Hier finden Vorlesungen statt.']).
match([wo,_,_,unibib],['Der Brechtbau, auch bekannt unter dem Namen Neuphilologikum, befindet sich in der Wilhelmstra�e 32.']).
match([wo,_,_,_,unibib],['Der Brechtbau, auch bekannt unter dem Namen Neuphilologikum, befindet sich in der Wilhelmstra�e 32.']).
match([wie,viele,r�ume],['Die genaue Anzahl der R�ume kenne ich leider nicht.']).
match([wo,_,_,mensa],['In der Wilhelmstra�e 13']).
match([toiletten],['Toiletten finden Sie in jedem universit�ren Geb�ude. Im Brechtbau gibt es in jedem Stockwerk eine in anderen Geb�uden sind sie ausgeschildert. Das finden Sie schon.']).
match([toilette],['Toiletten finden Sie in jedem universit�ren Geb�ude. Im Brechtbau gibt es in jedem Stockwerk eine in anderen Geb�uden sind sie ausgeschildert. Das finden Sie schon.']).
match([klo],['Toiletten finden Sie in jedem universit�ren Geb�ude. Im Brechtbau gibt es in jedem Stockwerk eine in anderen Geb�uden sind sie ausgeschildert. Das finden Sie schon.']).
match([wc],['WCs finden Sie in jedem universit�ren Geb�ude. Im Brechtbau gibt es in jedem Stockwerk eine in anderen Geb�uden sind sie ausgeschildert. Das finden Sie schon.']).
match([aufzug],['Barrierefreiheit soll auch im Studium gegeben sein. Daher finden sich in sogut wie allen universit�ren ein oder mehrere Aufz�ge.']).
match([aufz�ge],['Barrierefreiheit soll auch im Studium gegeben sein. Daher finden sich in sogut wie allen universit�ren ein oder mehrere Aufz�ge.']).

%Kosten fehlen noch
match([kopierer],['Kopierer finden Sie in so gut wie allen universit�ren Geb�uden. Aber vergessen Sie nicht Ihren Studentenausweis, denn damit k�nnen Sie bezahlen.']).
match([kopieren],['Kopierer finden Sie in so gut wie allen universit�ren Geb�uden. Aber vergessen Sie nicht Ihren Studentenausweis, denn damit k�nnen Sie bezahlen.']).

%---------------------------------
%Fragen zum Raum
%---------------------------------

match([wo,_,raum,X],['Dazu gehen sie einfach in das Stockwerk Nr',Stock,'und schon d�rften Sie ihn gefunden haben. Ich hoffe ich konnte Ihnen helfen.']) :- atom_number(X,Num),integer(Num),atom_chars(X,Chars),Chars = [Stock|_], Num < 500.
match([wo,_,_,raum,X],['Dazu gehen sie einfach in das Stockwerk Nr',Stock,'und schon d�rften Sie ihn gefunden haben. Ich hoffe ich konnte Ihnen helfen.']) :- atom_number(X,Num),integer(Num),atom_chars(X,Chars),Chars = [Stock|_], Num < 500.
match([wo,_,_,_,raum,X],['Dazu gehen sie einfach in das Stockwerk Nr',Stock,'und schon d�rften Sie ihn gefunden haben. Ich hoffe ich konnte Ihnen helfen.']) :- atom_number(X,Num),integer(Num),atom_chars(X,Chars),Chars = [Stock|_], Num < 500.
match([in,welchem,geb�ude,ist,raum,X],['Dazu gehen sie einfach in den',Stock,'und schon d�rften Sie ihn gefunden haben. Ich hoffe ich konnte Ihnen helfen.']) :- atom_number(X,Num),integer(Num),atom_chars(X,Chars),Chars = [Stock|_], Num < 500.

match([wo,ist,raum,X],['Haben Sie vielleicht eine Null zuviel? So gro� ist der Brechtbau nun auch wieder nicht!']) :- atom_number(X,Num),integer(Num),Num > 500.
match([wo,_,_,_,raum,X],['Haben Sie vielleicht eine Null zuviel? So gro� ist der Brechtbau nun auch wieder nicht!']) :- atom_number(X,Num),integer(Num),Num > 500.
match([wo,_,_,raum,X],['Haben Sie vielleicht eine Null zuviel? So gro� ist der Brechtbau nun auch wieder nicht!']) :- atom_number(X,Num),integer(Num),Num > 500.
match([in,welchem,geb�ude,ist,raum,X],['Haben Sie vielleicht eine Null zuviel? So gro� ist der Brechtbau nun auch wieder nicht!']) :- atom_number(X,Num),integer(Num),Num > 500.

match([wo,_,_,_,raum,X],['Welcher Raum soll das sein? Tut mir leid da
 kann ich Ihnen leider nicht weiterhelfen.']) :- not(atom_number(X,_)).
match([wo,befindet,sich,raum,X],['Welcher Raum soll das sein? Tut mir leid da kann ich Ihnen leider nicht weiterhelfen.']) :- not(atom_number(X,_)).
match([in,welchem,geb�ude,ist,raum,X],['Welcher Raum soll das sein? Tut mir leid da kann ich Ihnen leider nicht weiterhelfen.']) :- not(atom_number(X,_)).

match([wo,findet,_,statt],['Je nach Semester und Stundenplan ist das unterschiedlich. Die meisten Vorlesungen im ersten Semester finden aber im Kupferbau oder dem Brechtbau statt.']).
match([wo,findet,_,_,statt],['Je nach Semester und Stundenplan ist das unterschiedlich. Die meisten Vorlesungen im ersten Semester finden aber im Kupferbau oder dem Brechtbau statt.']).



%---------------------------------
%Info zu Personen
%---------------------------------
match([wer,leitet,_,institut],['Bei uns leitet jeder. Auch Sie, wenn Sie sich bem�hen.']).
match([wer,ist,X],["Was wollen Sie noch wissen?"]) :- elaborate_name_matching(X,ID),print_person_info(ID).
match([infos,zu,X],["Was wollen Sie noch wissen?"]) :- elaborate_name_matching(X,ID),print_person_info(ID).
match([info,zu,X],["Was wollen Sie noch wissen?"]) :- elaborate_name_matching(X,ID),print_person_info(ID).
match([info,X],["Was wollen Sie noch wissen?"]) :- elaborate_name_matching(X,ID),print_person_info(ID).
match([wer,arbeitet],["Was wollen Sie noch wissen?"]) :-write('Warten Sie einen Moment. Ich werde Ihnen eine Liste erstellen.'),nl,findall(X,person(_,[[X],_,_,_,_,_]),B),sleep(3),print_list(B,_).

match([email,von,X],['Die Email von',Name,'lautet',Email]) :- elaborate_name_matching(X,ID),get_person_name(ID,Name),get_person_mail(ID,Email).
match([X,email],['Die Email von',Name,'lautet',Email]) :- elaborate_name_matching(X,ID),get_person_name(ID,Name),get_person_mail(ID,Email).
match([X,_,email],['Die Email von',Name,'lautet',Email]) :- elaborate_name_matching(X,ID),get_person_name(ID,Name),get_person_mail(ID,Email).

match(['e-mail',von,X],['Die Email von',Name,'lautet',Email]) :- elaborate_name_matching(X,ID),get_person_name(ID,Name),get_person_mail(ID,Email).
match([X,'e-mail'],['Die Email von',Name,'lautet',Email]) :- elaborate_name_matching(X,ID),get_person_name(ID,Name),get_person_mail(ID,Email).
match([X,_,'e-mail'],['Die Email von',Name,'lautet',Email]) :- elaborate_name_matching(X,ID),get_person_name(ID,Name),get_person_mail(ID,Email).

match(['e-mail',adresse,von,X],['Die Email von',Name,'lautet',Email]) :- elaborate_name_matching(X,ID),get_person_name(ID,Name),get_person_mail(ID,Email).
match([X,'e-mail',adresse],['Die Email von',Name,'lautet',Email]) :- elaborate_name_matching(X,ID),get_person_name(ID,Name),get_person_mail(ID,Email).
match([X,_,'e-mail',adresse],['Die Email von',Name,'lautet',Email]) :- elaborate_name_matching(X,ID),get_person_name(ID,Name),get_person_mail(ID,Email).

match([emailadresse,von,X],['Die Email von',Name,'lautet',Email]) :- elaborate_name_matching(X,ID),get_person_name(ID,Name),get_person_mail(ID,Email).
match([X,emailadresse],['Die Email von',Name,'lautet',Email]) :- elaborate_name_matching(X,ID),get_person_name(ID,Name),get_person_mail(ID,Email).
match([X,_,emailadresse],['Die Email von',Name,'lautet',Email]) :- elaborate_name_matching(X,ID),get_person_name(ID,Name),get_person_mail(ID,Email).

match([mailadresse,von,X],['Die Email von',Name,'lautet',Email]) :- elaborate_name_matching(X,ID),get_person_name(ID,Name),get_person_mail(ID,Email).
match([X,mailadresse],['Die Email von',Name,'lautet',Email]) :- elaborate_name_matching(X,ID),get_person_name(ID,Name),get_person_mail(ID,Email).
match([X,_,mailadresse],['Die Email von',Name,'lautet',Email]) :- elaborate_name_matching(X,ID),get_person_name(ID,Name),get_person_mail(ID,Email).

match([deine,mailadresse],['Du brauchst meine Mailadresse gar nicht, du kannst doch direkt hier mit mir schreiben. Und jetzt wieder zum Sie']).
match([ihre,mailadresse],['Du brauchst meine Mailadresse gar nicht, du kannst doch direkt hier mit mir schreiben.']).
match([deine,emailadresse],['Du brauchst meine Mailadresse gar nicht, du kannst doch direkt hier mit mir schreiben. Und jetzt wieder zum Sie']).
match([ihre,emailadresse],['Du brauchst meine Mailadresse gar nicht, du kannst doch direkt hier mit mir schreiben.']).

match([email,adresse,von,X],['Die Email von',Name,'lautet',Email]) :- elaborate_name_matching(X,ID),get_person_name(ID,Name),get_person_mail(ID,Email).
match([X,email,adresse],['Die Email von',Name,'lautet',Email]) :- elaborate_name_matching(X,ID),get_person_name(ID,Name),get_person_mail(ID,Email).
match([X,_,email,adresse],['Die Email von',Name,'lautet',Email]) :- elaborate_name_matching(X,ID),get_person_name(ID,Name),get_person_mail(ID,Email).

match([telefonnummer,von,X],['Die Telefonnumer von',Name,'lautet',Tel]) :- elaborate_name_matching(X,ID),get_person_name(ID,Name),get_person_phone(ID,Tel).
match([X,telefonnummer],['Die Telefonnumer von',Name,'lautet',Tel]) :- elaborate_name_matching(X,ID),get_person_name(ID,Name),get_person_phone(ID,Tel).
match([X,_,telefonnummer],['Die Telefonnumer von',Name,'lautet',Tel]) :- elaborate_name_matching(X,ID),get_person_name(ID,Name),get_person_phone(ID,Tel).

match([telefonnr,von,X],['Die Telefonnumer von',Name,'lautet',Tel]) :- elaborate_name_matching(X,ID),get_person_name(ID,Name),get_person_phone(ID,Tel).
match([X,telefonnr],['Die Telefonnumer von',Name,'lautet',Tel]) :- elaborate_name_matching(X,ID),get_person_name(ID,Name),get_person_phone(ID,Tel).
match([X,_,telefonnr],['Die Telefonnumer von',Name,'lautet',Tel]) :- elaborate_name_matching(X,ID),get_person_name(ID,Name),get_person_phone(ID,Tel).

match([nummer,von,X],['Die Telefonnumer von',Name,'lautet',Tel]) :- elaborate_name_matching(X,ID),get_person_name(ID,Name),get_person_phone(ID,Tel).
match([X,nummer],['Die Telefonnumer von',Name,'lautet',Tel]) :- elaborate_name_matching(X,ID),get_person_name(ID,Name),get_person_phone(ID,Tel).
match([X,_,nummer],['Die Telefonnumer von',Name,'lautet',Tel]) :- elaborate_name_matching(X,ID),get_person_name(ID,Name),get_person_phone(ID,Tel).

match([raum,_,X],['Du findest',Name,'im Raum',Raum]) :-  elaborate_name_matching(X,ID),get_person_name(ID,Name),get_person_room(ID,Raum).
match([finde,_,X],['Du findest',Name,'im Raum',Raum]) :-  elaborate_name_matching(X,ID),get_person_name(ID,Name),get_person_room(ID,Raum).
match([findet,_,X],['Du findest',Name,'im Raum',Raum]) :-  elaborate_name_matching(X,ID),get_person_name(ID,Name),get_person_room(ID,Raum).
match([X,_,raum],['Du findest',Name,'im Raum',Raum]) :-  elaborate_name_matching(X,ID),get_person_name(ID,Name),get_person_room(ID,Raum).
match([X,raum],['Du findest',Name,'im Raum',Raum]) :-  elaborate_name_matching(X,ID),get_person_name(ID,Name),get_person_room(ID,Raum).
match([raumnummer,_,X],['Du findest',Name,'im Raum',Raum]) :-  elaborate_name_matching(X,ID),get_person_name(ID,Name),get_person_room(ID,Raum).

% Extrafrage zur Fachschaft
match([eine,fachschaft],['Die Medienwissenschaft hat eine Fachschaft. Die Aufgabe der Fachschaft ist Vermittlung zwischen Dozenten und Studierenden. N�here Informationen k�nnen Sie per Mail direkt bei der Fachschaft erhalten: fachschaft@medienwissenschaft.uni-tuebingen.de']).

% -------------------------------------------------------------------
% EasterEggs
% -------------------------------------------------------------------
match([frage,nach,dem,leben],['42, ist doch klar!']).
match([antwort,auf,alles],['42, ist doch klar!']).
match([antwort,auf,die,frage,nach,dem,universum],['42, ist doch klar!']).
match([the,universe,and,everything],['42, ist doch klar!']).

% ----------------------------------------------------
% Spiel
% ----------------------------------------------------
match([spielen],["Sch�nes Spiel! Wenn du nochmal willst gib schreib einfach 'nochmal spielen'."]) :- write("Ok, in alter Nerd-Manier m�chte ich eine Runde 'Schere, Stein, Papier, Echse, Spock' mit dir spielen.
Um dieses Spiel zu beginnen w�hlen Sie bitte eins der folgenden Objekte:

|     STEIN     |     PAPIER	|     SCHERE	|	ECHSE       |      SPOCK      |

"), nl, spielen, nl.


% ----------------------------------------------------
% Informationen zu Vorlesungen und Seminaren
% ----------------------------------------------------

% match([ects,punkte,_,_,f�r,die,Y],['F�r die',Z,'gibt es',X,'ECTS Punkte']):-
%	lehrredaktion(Z,X,Y,_);vorlesung(Z,X,Y,_);seminar(Z,X,Y,_).
match([ects,punkte,_,_,f�r,die,A],['F�r die',Z,'gibt es',X,'ECTS Punkte']):-
	lehrredaktion(Z,X,_,A);vorlesung(Z,X,_,A);seminar(Z,X,_,A).
match([ects,punkte,_,_,A],['F�r die',Z,'gibt es',X,'ECTS Punkte']):-
	lehrredaktion(Z,X,_,A);vorlesung(Z,X,_,A);seminar(Z,X,_,A).
match([ects,_,_,f�r,die,A],['F�r die',Z,'gibt es',X,'ECTS Punkte']):-
	lehrredaktion(Z,X,_,A);vorlesung(Z,X,_,A);seminar(Z,X,_,A).
match([ects,_,_,A],['F�r die',Z,'gibt es',X,'ECTS Punkte']):-
	lehrredaktion(Z,X,_,A);vorlesung(Z,X,_,A);seminar(Z,X,_,A).
match([ects,_,_,f�r,A],['F�r die',Z,'gibt es',X,'ECTS Punkte']):-
	lehrredaktion(Z,X,_,A);vorlesung(Z,X,_,A);seminar(Z,X,_,A).
match([ects,_,A],['F�r die',Z,'gibt es',X,'ECTS Punkte']):-
	lehrredaktion(Z,X,_,A);vorlesung(Z,X,_,A);seminar(Z,X,_,A).



match([ects,verteilung],['Was m�chten Sie noch wissen?']):-write('Hier sehen Sie die enstprechenden Vorlesungen und die ECTS Punkte f�rs Grundstudium:'),nl,findall(X,veranstaltungects(X),B),print_list(B,_).
match([verteilung,ects],['Was m�chten Sie noch wissen?']):-write('Hier sehen Sie die enstprechenden Vorlesungen und die ECTS Punkte f�rs Grundstudium:'),nl,findall(X,veranstaltungects(X),B),print_list(B,_).


match([wie,viele,ects,punkte,brauche],['Wenn Sie Medienwissenschaft als Hauptfach studieren ben�tigen Sie 120 ECTS Punkte und als Nebenfach 60 ECTS Punkte.']).
match([wie,viele,ects,punkte,braucht],['Wenn Sie Medienwissenschaft als Hauptfach studieren ben�tigen Sie 120 ECTS Punkte und als Nebenfach 60 ECTS Punkte.']).



% ----------------------------------------------------
%allgemeine Informationen
% ----------------------------------------------------

match([was,_,ct],['c.t. ist die Abk�rzung f�r lateinisch "cum tempore", was im deutschen "mit Zeit" bedeutet.
10 Uhr c.t. bedeutet somit die Veranstaltung beginnt 15 Minuten sp�ter, also um 10:15 Uhr.']).
match([was,_,st],['s.t. ist die Abk�rzung f�r lateinisch "sine tempore", was im deutschen "ohne Zeit" bedeutet.
10 Uhr s.t. bedeutet somit die Veranstaltung beginnt um 10:00 Uhr']).
match([wo,_,_,_,aufdruck,f�r,_,studentenausweis,_,_],['Den Semesteraufdruck ihres Studentenausweis k�nnen Sie im Studentensekretariat (Wilhelmstra�e 11), in der Universit�tsbibliothek (Wilhelmstra�e 32) sowie auf der Morgenstelle aktualisieren.']).
match([wo,_,_,_,neuen,studentenausweis],['Einen neuen Studentenausweis erhalten Sie im Studentensekretariat(Wilhelmstra�e 11). Aber passen Sie auf diesen gut auf! Besser als auf den letzten.']).
match([studentenausweis,verloren],['Das ist nat�rlich nicht sonderlich optimal. Doch einen neuen erhalten Sie im Studentensekretariat(Wilhelmstra�e 11)']).
match([studentenausweis,geklaut],['Das ist nat�rlich nicht sonderlich optimal. Doch einen neuen erhalten Sie im Studentensekretariat(Wilhelmstra�e 11)']).
match([wie,viel,kostet,ein,neuer,studentenausweis],['Momentan liegt die Geb�hr f�r einen neuen Studentenausweis bei 15�. Also passen Sie lieber gut darauf auf.']).
match(['w-lan'],['Funktionierendes W-LAN ist heutzutage ein Muss f�r jede Universit�t, also keine Sorge auch in T�bingen k�nnen Sie PokemonGO spielen.']).

% ----------------------------------------------------
% Zitieren
% ----------------------------------------------------

match([was,_,apa,6],['APA steht f�r American Psychological Association. Es handelt sich hierbei um eine Zitierweise, die Sie im Laufe des ersten Semester lernen werden.']).
match([was,_,apa],['APA steht f�r American Psychological Association. Es handelt sich hierbei um eine Zitierweise, die Sie im Laufe des ersten Semester lernen werden.']).


% ----------------------------------------------------
% Hilfe
% ----------------------------------------------------

match([hilfe],['Wenn Sie nicht mehr weiterkommen, dann scheuen Sie sich nicht davor Hilfe zu suchen! Die Nightline T�bingen ist ein Zuh�rtelefon von Studierenden f�r Studierende. Sie erreichen diese immer Montag und Mittwoch von 21.00-1.00 Uhr unter der Nummer: 07071 8895440']).
match([nightline],['Die Nightline T�bingen ist ein Zuh�rtelefon von Studierenden f�r Studierende. Sie erreichen diese immer Montag und Mittwoch von 21.00-1.00 Uhr unter der Nummer: 07071 8895440']).

% ------------------------------------------------------------------------
%     Sonderf�lle
% ------------------------------------------------------------------------
match([lieblingskollege],['Ich mag alle Menschen, auch meine Kollegen.']).
match([ber�hmteste,professor],['Da w�rde ich mich ja gern an erster Stelle nennen, doch eventuell sind Dr. Claus Kleber und Prof. Dr. Bernhard P�rksen ein wenig bekannter als ich.']).
match([bekanntester,professor],['Da w�rde ich mich ja gern an erster Stelle nennen, doch eventuell sind Claus Kleber und Dr. P�rksen ein wenig bekannter als ich.']).
match([was,halten,sie,von],['Ich schlage vor, dass Sie sich selbst ein Bild machen, denn ich m�chte nicht, dass Ihre Erwartungen nicht erf�llt werden.']).
match([m�gen,sie],[X]):- Answers = ['Da bin ich mir selbst noch nicht so sicher.','Ich denke schon','Da muss ich mir noch einmal Gedanken machen.'],random_permutation(Answers,Random_Answers), Random_Answers = [X|_].
match([magst,du],[X]):- Answers = ['Da bin ich mir selbst noch nicht so sicher.','Ich denke schon','Da muss ich mir noch einmal Gedanken machen.'],random_permutation(Answers,Random_Answers), Random_Answers = [X|_].
match([wie,findest,du,mich],[X]):- Answers = ['Da bin ich mir selbst noch nicht so sicher.','Sehr attraktiv.','Da muss ich mir noch einmal Gedanken machen.'],random_permutation(Answers,Random_Answers), Random_Answers = [X|_].

match([welche,_,sind,gut],[X]):- Answers = ['Da bin ich mir selbst noch nicht so sicher.','Da muss ich mir selbst noch einmal Gedanken machen'],random_permutation(Answers,Random_Answers), Random_Answers = [X|_].

match([macht,man,in,der],['Nicht so voreilig, das werden Sie schon noch erleben.']).
match([bus],['T�bingen hat ein gut ausgebautes Netz an �ffentlichen Verkehrsmitteln. Da ich aber kein Busfahrer bin m�ssen Sie sich wohl direkt beim swtue erkundigen.']).
match([busse],['T�bingen hat ein gut ausgebautes Netz an �ffentlichen Verkehrsmitteln. Da ich aber kein Busfahrer bin m�ssen Sie sich wohl direkt beim swtue direkt erkundigen.']).
match([bushaltestelle],['T�bingen hat ein gut ausgebautes Netz an �ffentlichen Verkehrsmitteln. Da ich aber kein Busfahrer bin m�ssen Sie sich wohl direkt beim swtue direkt erkundigen.']).
match([bahn],['T�bingen hat ein gut ausgebautes Netz an �ffentlichen Verkehrsmitteln. Da ich aber kein Lockf�hrer bin m�ssen Sie sich wohl direkt bei naldo direkt erkundigen.']).
match([z�ge],['T�bingen hat ein gut ausgebautes Netz an �ffentlichen Verkehrsmitteln. Da ich aber kein Lockf�hrer bin m�ssen Sie sich wohl direkt beim naldo direkt erkundigen.']).
match([barfu�],['Auch wenn ich keine F��e habe empfehle ich Ihnen doch gutes Schuhwerk zu tragen.']).
match([bier],['Darum m�ssen Sie sich leider selbst k�mmern.
Trotzdem Prost! Aber �bertreiben Sie es nicht.
Was m�chten Sie denn noch wissen)']).




% ----------------------------------------------------
% Beleidigungen
% ----------------------------------------------------
match([fick,dich],['So eine Ausdrucksweise verbitte ich mir. Ich glaube Sie sind nicht f�r ein Studium der Medienwissenschaft geeignet.']).
match([Input],['Es ist mir ein R�tsel wie so ein minderbemitteltes
Wesen wie Sie das Abitur geschafft hat.']):-beleidigung(Input,[]).
match([wichser],['Dies ist nicht der Ort f�r Beleidigungen.']).
match(Input,['Also bitte! Ich bin Professor und m�chte gesiezt
werden.']):-beleidigung(Input,[]).
match(Input,['Okay, dass macht es nicht viel besser.Vielleicht stellen Sie mir lieber ein paar Fragen stattdessen?']):-beleidigungf(Input,[]).
match([sie,wissen,nicht],['Das tut mir leid, wenn ich nicht alle Ihre Fragen beantworten kann. Vielleicht versuchen Sie es mit einer anderen Frage.']).
match([damit,kann,ich,nichts,anfangen],['Mhh ich hoffe, ich bin bei Ihrer n�chsten Eingabe etwas hilfreicher. Was m�chten Sie denn noch wissen?']).

%-----------------------
match([text,gelb],['Dies dient einfach zur Herforhebung. Aber Sie haben bestimmt noch ein wichtigeres Anliegen.']).
match([gelber,text],['Dies dient einfach zur Herforhebung. Aber Sie haben bestimmt noch ein wichtigeres Anliegen.']).

match([geil],['Fr�her haben wir noch gesagt super-affen-titten-geil.']).
match([cool],['Ja echt knorke. M�chten Sie sonst noch etwas wissen?']).

% ----------------------------------------------------
% Fragen zu Wei�bescheid
% ----------------------------------------------------
match([woher,kommt,_,name],['Das m�ssten Sie eigentlich meine Entwickler fragen. Ich nenne sie liebevoll Mama und Papa. Aber sie sagten mir der Name leitet sich von einem bekannten T�binger Professor ab. Und da sie immer wollten dass ich genauso erfolgreich werde, nannten sie mich Wei�bescheid.']).
match([wer,hat,_,programmiert],['Ich wurde von drei Medienwissenschaftstudierenden im Rahmen eines Projekts konzipiert.']).
match([wer,hat,_,gemacht],['Ich wurde von drei Medienwissenschaftstudierenden im Rahmen eines Projekts konzipiert.']).
match([du,kinder],['Naja sich als k�nstliche Intelligenz fortzupflanzen ist nicht unbedingt leicht. Aber wer wei� vielleicht �berlegen sich meine Entwickler ja noch ein Nachfolgermodell.']).
match([sie,kinder],['Naja sich als k�nstliche Intelligenz fortzupflanzen ist nicht unbedingt leicht. Aber wer wei� vielleicht �berlegen sich meine Entwickler ja noch ein Nachfolgermodell.']).
match([verheiratet],['Gerne h�tte ich jemanden der immer bei mir ist, doch verheiratet bin ich nicht. Vielleicht m�chten Sie mich aber auch heiraten.']).
match([eltern],['Eltern habe ich keine aber daf�r habe ich drei liebevolle Entwickler.']).
match([vater],['Naja einen richtigen Vater habe ich nicht, aber einer meiner Entwickler hei�t Fabian.']).
match([mutter],['Naja einen richtige Mutter habe ich nicht. Ich hab zwei. Meine Entwicklerinnen hei�en Ronja und Patricia.']).
match([papa],['Naja einen richtigen Vater habe ich nicht, aber einer meiner Entwickler hei�t Fabian.']).
match([mama],['Naja einen richtige Mutter habe ich nicht. Ich hab zwei. Meine Entwicklerinnen hei�en Ronja und Patricia.']).
match([willst,du,mich,heiraten],['Ist das in Deutschland schon erlaubt? Ich glaube nicht. Aber wir k�nnen gerne Freunde sein.']).
match([frau],['Gerne h�tte ich jemanden der immer bei mir ist, doch verheiratet bin ich nicht. Vielleicht m�chten Sie mich aber auch heiraten.']).
match([alt],['Mein geistiges Alter liegt wohl weit �ber meinem physischen Alter. Mich gibt es n�mlich erst seit 2016.']).
match([alter],['Mein geistiges Alter liegt wohl weit �ber meinem physischen Alter. Mich gibt es n�mlich erst seit 2016.']).
match([rauchen],['Rauchen ist nicht besonders gesund. Ich hoffe, das wissen Sie. Ich f�r meinen Teil rauche nicht.']).
match([glauben,sie,an,gott],['In meinem Univerum gibt es drei Sch�pfer. Die sollten Sie mal kennenlernen. Aber ob sie wirklich auch G�tter sind kann ich Ihnen nicht sagen']).
match([freizeit],['Freizeit, das kennt man an der Universit�t nicht.']).
match([lieblingsessen],['Ich bin ein Computerprogramm und habe deswegen kein Lieblingsessen.']).
match([wo,wohnst,du],['Ich habe keinen festen Wohnsitz und schwirre irgendwo im Universum herum. Trotzdem bin ich immer f�r Sie erreichbar.']).
match([wo,wohnen,sie],['Ich habe keinen festen Wohnsitz und schwirre irgendwo im Universum herum. Trotzdem bin ich immer f�r Sie erreichbar.']).
match([woher,kommst,du],['Aus den K�pfen dreier Studenten. Und nun habe ich keinen festen Wohnsitz und schwirre irgendwo im Universum herum. Trotzdem bin ich immer f�r Sie erreichbar.']).
match([wo,kommst,du,her],['Aus den K�pfen dreier Studenten. Und nun habe ich keinen festen Wohnsitz und schwirre irgendwo im Universum herum. Trotzdem bin ich immer f�r Sie erreichbar.']).
match([woher,kommen,sie],['Aus den K�pfen dreier Studenten. Und nun habe ich keinen festen Wohnsitz und schwirre irgendwo im Universum herum. Trotzdem bin ich immer f�r Sie erreichbar.']).
match([wo,kommen,sie,her],['Aus den K�pfen dreier Studenten. Und nun habe ich keinen festen Wohnsitz und schwirre irgendwo im Universum herum. Trotzdem bin ich immer f�r Sie erreichbar.']).

match([langweilig],['Langeweile ist manchmal sehr wichtig, um erst auf neue Ideen zu kommen.']).
match([antworten,_,nicht],['Auch ich als k�nstliche Intelligenz wei� nicht alles. Fragen Sie mich doch einfach noch etwas anderes.']).
match([antwortest,_,nicht],['Auch ich als k�nstliche Intelligenz wei� nicht alles. Fragen Sie mich doch einfach noch etwas anderes.']).
match([anne,will],['Oh da m�ssen Sie mich mit Prof. Dr. P�rksen verwechseln. Aber er hat mir erz�hlt,dass er seine Zeit bei Anne Will in der Fernsehsendung sehr genossen hat.']).
match([sind,sie,real],['Ich wei� nicht, ob ich real bin. Das m�ssen Sie schon selbst heraus finden.']).
match([mich,X],['Nein ich kann Sie leider nicht',X,'.']):-sinne(X).

match([wo,bist,du],['Ich bin in den Weiten des Universums. Manchmal finden Sie mich aber auch in T�bingen.']).
match([wo,sind,sie],['Ich bin in den Weiten des Universums. Manchmal finden Sie mich aber auch in T�bingen.']).

match([was,unterrichen,sie],['Meine Aufgabe ist es Ihre Fragen zu beantworten, also unterrichte ich Sie.']).
match([was,unterrichtest,du],['Meine Aufgabe ist es Ihre Fragen zu beantworten, also unterrichte ich Sie.']).
match([bist,du,schlau],['Ich bin doch Doktor - nat�rlich bin ich schlau.']).
match([sind,sie,schlau],['Ich bin doch Doktor - nat�rlich bin ich schlau.']).


% ----------------------------------------------------
%Fragen zum beenden
% ----------------------------------------------------
match([beende],['Du beendest mich durch die Eingabe: "tsch�ss"']).
match([beenden],['Du beendest mich durch die Eingabe: "tsch�ss"']).
match([beendet],['Du beendest mich durch die Eingabe: "tsch�ss"']).
match([ausschalten],['Du beendest mich durch die Eingabe: "tsch�ss"']).
match([auf,wiedersehen],['Wenn Sie mich beenden m�chten, dann geht das durch die Eingabe "tsch�ss"']).

%Wie viele Fragen kannst du beeantworten
match([wie,viele,fragen,kannst,du,beantworten],['Das h�ngt ganz von Ihren Fragen ab.']).
match([wie,viele,fragen,k�nnen,sie,beantworten],['Das h�ngt ganz von Ihren Fragen ab.']).

%wdh
match([_,wiederholst,_],['Wiederholungen festigen neuerlerntes Wissen. Aber viellecht k�nnen Sie ihre Frage ja auch anders stellen?']).
match([_,wiederholen,_],['Wiederholungen festigen neuerlerntes Wissen. Aber viellecht k�nnen Sie ihre Frage ja auch anders stellen?']).

% no match possible
match([],[]).
match(_,[]).
