% PROLOG
:- include('read.pl'). % uses file read.pl
:- encoding(iso_latin_1).

%Dynamische Variablen

:- dynamic lastAnswer/1.
lastAnswer('No Last Answer Yet').

% start / exit the game
pörksi :- ansi_format([bold,bg(cyan)], 'Hi ich bin Pörksi. Habe dieses Textfeature zufällig gefunden kommt aber mega fett --> ~w', [needsToBeChanged]),nl,prompt(_,'User:       '), read_sentence(Input), pörksi(Input),!. %mit Prompt |: durch > ersetzt bei der Eingabeaufforderung
pörksi([tschüss]) :- writeln('Dr.Pörksi: Ich hoffe ich konnte dir helfen. Viel Spaß beim studieren! Und du weißt ja, falls du Fragen hast, wo man mich findet.').

   
% User-Input (after program is started)
pörksi(Input) :-
  lastAnswer(Input),
  write('Dr.Pörksi: Jetzt fangen Sie aber an sich zu wiederholen. Vielleicht gibt es ja noch etwas dass Sie wissen möchten?'),
  nl,nl,read_sentence(Input1),!,pörksi(Input1).

pörksi(Input) :-
  retract(lastAnswer(_)),assert(lastAnswer(Input)),
  write('Dr.Pörksi: '),
  match(Input,Output), % match user input (define match in pörksi.pl)
  reply(Output),
  nl,
  read_sentence(Input1),!,
  pörksi(Input1).

% Output after User-Input
reply([Head|Tail]) :- write(user_output,Head), write(user_output,' '),
	               reply(Tail).
reply([]) :- nl.