% PROLOG
:- include('read.pl'). % uses file read.pl
:- encoding(iso_latin_1).

:- dynamic lastInput/1.
lastInput('No Last Input Yet').
:- dynamic lastAnswer/1.
lastAnswer(['No Last Answer Yet.']).

:- dynamic poerksi/1.
poerksi('Dr.Pörksi:  ').

% start / exit the chatbot
pörksi :- ansi_format([bg(yellow)], 'Hallo ich bin Dr. Pörksi. Gerne dürfen Sie mir so viele Fragen stellen, wie Sie nur möchten und ich werde versuchen diese zu beantworten. Denn für Fragen hinsichtlich der Universität oder der zu belegenden Vorlesungen stehe ich Ihnen gerne zur Seite. Aber auch allgemeinen Anliegen bezüglich des Studienalltags nehme ich mich gerne an.'
, []),nl,prompt(_,'User:       '), read_sentence(Input), pörksi(Input),!. %mit Prompt |: durch > ersetzt bei der Eingabeaufforderung
% Programm beendet sich nach 'tschüss' (halt)
pörksi([tschüss]) :- writeln('Dr.Pörksi: Ich hoffe ich konnte Ihnen helfen. Viel Spaß beim studieren! Und Sie wissen ja, falls Sie Fragen haben, wo man mich findet.').


% User-Input (after program is started)

% Detect if new Input is same as last Input
pörksi(Input) :-
  lastInput(Input),
  write('Dr.Pörksi: Jetzt fangen Sie aber an sich zu wiederholen. Vielleicht gibt es ja noch etwas dass Sie wissen möchten?'),
  retractall(lastAnswer(_)),assert(lastAnswer(['Jetzt fangen Sie aber an sich zu wiederholen. Vielleicht gibt es ja noch etwas dass Sie wissen möchten?'])),
  nl,read_sentence(Input1),!,pörksi(Input1).

% positive answers on questions
pörksi(Input) :-
  poerksi(Z),write(Z),
  retract(poerksi(_)),assert(poerksi('')),
  findall(E,lastAnswer(E),List),last(List,X),atomics_to_string(X,' ',L),split_string(L,'?','',QMark),last(QMark,Last), %check if last answer was a question 1/2
  Last = "", %check if last answer was a question 2/2
  (Input = [sehr,gut|_];Input = [gut|_];Input = [toll|_];Input = [spitze|_];Input = [super|_];Input = [schön|_];
  Input = [klasse|_];Input = [genau|_];Input = [stimmt|_];Input = [ja|_];Input = [na,gut|_];Input = [okay|_];Input = [haha|_];
  Input = [witzig|_];Input = [sehr,witzig|_];Input = [juhu|_];Input = [richtig|_]),
  retract(lastInput(_)),assert(lastInput(Input)),
  retractall(lastAnswer(_)),assert(lastAnswer(['Forgotten Last Answer.'])),
  Answers =
  ['Wunderbar.',
  'Sehr schön.',
  'Toll.',
  'Haha!',
  ':)'],
  random_permutation(Answers,Random_Answers), Random_Answers = [Random|_],
  write(Random),
  retract(poerksi(_)),assert(poerksi('Dr.Pörksi: ')),
  nl,
  read_sentence(Input1),!,
  pörksi(Input1).

% negative answers on questions
pörksi(Input) :-
  findall(E,lastAnswer(E),List),last(List,X),atomics_to_string(X,' ',L),split_string(L,'?','',QMark),last(QMark,Last), %check if last answer was a question 1/2
  Last = "", %check if last answer was a question 2/2
  (Input = [nein|_];Input = [lüge|_];Input = [stimmt,nicht|_];Input = [egal|_];Input = [vergiss,es|_];Input = [quatsch|_];
  Input = [ne|_];Input = [nee|_];Input = [als,ob|_];Input = [ja,achwas|_];Input = [blabla|_];Input = [bla|_];Input = [nix|_];
  Input = [nichts|_];Input = [nö|_];Input = [nöö|_];Input = [aha|_];Input = [nööö|_];
  Input = [soso|_];Input = [nöööö|_]),
  retract(lastInput(_)),assert(lastInput(Input)),
  retractall(lastAnswer(_)),assert(lastAnswer(['Forgotten Last Answer.'])),
  Answers =
  ['Aha',
  'Hmm..',
  'Soso..',
  'Wie auch immer...'],
  random_permutation(Answers,Random_Answers), Random_Answers = [Random|_],
  write(Random),
  retract(poerksi(_)),assert(poerksi('Dr.Pörksi: ')),
  nl,
  read_sentence(Input1),!,
  pörksi(Input1).

% regular match
pörksi(Input) :-
  retractall(lastAnswer(_)),
  retract(lastInput(_)),assert(lastInput(Input)),
  ntuples(Input,_,0).

ntuples([],_,_) :-
	\+ lastAnswer(_),
	Answers =
		   [['Wussten Sie, dass es mich erst seit Juni 2016 gibt? Es kommt mir so vor als wäre es gestern gewesen.'],
		   ['Erzählen Sie mehr.'],
		   ['Haben Sie vielleicht noch andere Fragen?'],
		   ['Es ist schön sich mit jemanden zu unterhalten.'],
		   ['Vielleicht haben Sie ja noch ein dringlicheres Anliegen?'],
		   ['Vielleicht haben Sie ja noch ein wichtigeres Anliegen?'],
		   ['An Ihrer Ausdrucksweise müssen Sie noch etwas feilen. Versuchen Sie es doch ein wenig studentischer.'];
		   ['Ja das ist eine gute Anfrage. Aber bevor ich mich dieser annehmen möchte, können wir ja ein Spielchen spielen. Sie starten es mit der Eingabe
 SPIELEN']],
	random_permutation(Answers,Random_Answers),
	Random_Answers = [[X]|_],
	write(X),
	assert(lastAnswer([X])),fail.

ntuples([],_,_) :-
	retract(poerksi(_)),assert(poerksi('Dr.Pörksi: ')),
	nl,
	read_sentence(Input1),!,
    pörksi(Input1).

ntuples(List,OtherList,Pos) :-
	length(List,Length),
	nth0(Pos,List,Element),
	append(OtherList,[Element],NewList),
	match(NewList,Output),
	reply(Output),
	assertz(lastAnswer(Output)),
	retractall(lastAnswer([])),
	NewPos is Pos + 1,
	NewPos =< Length,
	ntuples(List,NewList,NewPos),!.

ntuples(List,_,_) :-
	List = [_|T],
	ntuples(T,[],0).

% Output after User-Input
reply([Head|Tail]) :- write(user_output,Head), write(user_output,' '),
	               reply(Tail).
reply([]).
