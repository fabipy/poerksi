% PROLOG

:- include('read.pl'). % uses file read.pl


% start / exit the game
poerksi :- prompt(_,'User:       '), read_sentence(Input), poerksi(Input),!. %mit Prompt |: durch > ersetzt bei der Eingabeaufforderung
poerksi(['tsch�ss']) :- writeln('Ich hoffe ich konnte dir helfen. Viel Spa� beim studieren! Und du wei�t ja, falls du Fragen hast, wo man mich findet.').


% User-Input (after program is started)
poerksi(Input) :-
  write('Dr.Poerksi: '),
  match(Input,Output), % match user input (define match in poerksi.pl)
  reply(Output),
  read_sentence(Input1),!,
  poerksi(Input1).

% Output after User-Input
reply([Head|Tail]) :- write(user_output,Head), write(user_output,' '),
	               reply(Tail).
reply([]) :- nl.

