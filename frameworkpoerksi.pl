% PROLOG
:- include('read.pl'). % uses file read.pl
:- encoding(iso_latin_1).

:- dynamic lastInput/1.
lastInput('No Last Input Yet').
:- dynamic lastAnswer/1.
lastAnswer(['No Last Answer Yet.']).

% start / exit the chatbot
pörksi :- ansi_format([bold,bg(cyan)], 'Hi ich bin Pörksi. Habe dieses Textfeature zufällig gefunden kommt aber mega fett --> ~w', [needsToBeChanged]),nl,prompt(_,'User:       '), read_sentence(Input), pörksi(Input),!. %mit Prompt |: durch > ersetzt bei der Eingabeaufforderung
% Programm beendet sich nach 'tschüss' (halt)
pörksi([tschüss]) :- writeln('Dr.Pörksi: Ich hoffe ich konnte dir helfen. Viel Spaß beim studieren! Und du weißt ja, falls du Fragen hast, wo man mich findet.').

   
% User-Input (after program is started)

% Detect if new Input is same as last Input
pörksi(Input) :-
  lastInput(Input),
  write('Dr.Pörksi: Jetzt fangen Sie aber an sich zu wiederholen. Vielleicht gibt es ja noch etwas dass Sie wissen möchten?'),
  nl,nl,read_sentence(Input1),!,pörksi(Input1).

% positive answers on questions
pörksi(Input) :-
  (Input = [sehr,gut|_];Input = [gut|_];Input = [toll|_];Input = [spitze|_];Input = [super|_];Input = [schön|_];
  Input = [klasse|_];Input = [genau|_];Input = [stimmt|_];Input = [ja|_];Input = [juhu|_];Input = [richtig|_]),
  lastAnswer(X),atomics_to_string(X,' ',L),split_string(L,'?','',QMark),last(QMark,Last), %check if last answer was a question 1/2
  Last = "", %check if last answer was a question 2/2
  retract(lastInput(_)),assert(lastInput(Input)),
  retract(lastAnswer(_)),assert(lastAnswer(['Forget Last Answer.'])),
  Answers = ['Wunderbar.',
  'Sehr schön.',
  'Toll.',
  'Finde ich klasse.',
  'Okay :)'],
  random_permutation(Answers,Random_Answers), Random_Answers = [Random|_],
  write('Dr.Pörksi: '),write(Random),
  nl,nl,
  read_sentence(Input1),!,
  pörksi(Input1).
  
% negative answers on questions
pörksi(Input) :-
  (Input = [nein|_];Input = [lüge|_];Input = [stimmt,nicht|_];Input = [egal|_];Input = [vergiss,es|_];Input = [quatsch|_];
  Input = [ne|_];Input = [nee|_];Input = [als,ob|_];Input = [ja,achwas|_];Input = [blabla|_];Input = [bla|_];Input = [nix|_];
  Input = [nichts|_];Input = [nö|_];Input = [nöö|_];Input = [nööö|_];Input = [nöööö|_]),
  lastAnswer(X),atomics_to_string(X,' ',L),split_string(L,'?','',QMark),last(QMark,Last), %check if last answer was a question 1/2
  Last = "", %check if last answer was a question 2/2
  retract(lastInput(_)),assert(lastInput(Input)),
  retract(lastAnswer(_)),assert(lastAnswer(['Forget Last Answer.'])),
  Answers = ['Dann halt nicht.','Hmm..','Wie auch immer...'],
  random_permutation(Answers,Random_Answers), Random_Answers = [Random|_],
  write('Dr.Pörksi: '),write(Random),
  nl,nl,
  read_sentence(Input1),!,
  pörksi(Input1).  
  
% regular match
pörksi(Input) :-
  write('Dr.Pörksi: '),
  match(Input,Output), % match user input (define match in pörksi.pl),
  retract(lastInput(_)),assert(lastInput(Input)),
  retract(lastAnswer(_)),assert(lastAnswer(Output)),
  sleep(0.5),
  reply(Output),
  nl,
  read_sentence(Input1),!,
  pörksi(Input1).

% Output after User-Input
reply([Head|Tail]) :- write(user_output,Head), write(user_output,' '),
	               reply(Tail).
reply([]) :- nl.