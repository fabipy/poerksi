

:-include('frameworkpoerksi.pl').

%-------------------------------------------------
%    EasterEgg --- m�chtst du ein Spiel spielen
%-------------------------------------------------

weapon(stein).
weapon(papier).
weapon(schere).
weapon(echse).
weapon(spock).

%Ausf�hrungen win/2
win(schere, papier).         % schere cuts papier
win(schere, echse).        % schere decapitates echse
win(stein, echse).            % stein crushes echse
win(stein, schere).          % stein crushes scissor
win(papier, stein).	       % papier covers stein
win(papier, spock).	       % papier disproves Spock
win(echse, papier).           % echse eats papier
win(echse, spock).           % echse poisons Spock
win(spock, stein).	       % Spock vaporizes stein
win(spock, schere).          % Spock smashes schere


%computer_choice/1
computer_choice(R):-
    random_member(R, [schere, papier, stein, echse, spock]),
    ('Dr.P�rksis Wahl: '),
    writeln(R).

%result/2
result(X,X):- write('Gleichstand. Gl�ck gehabt.  Versuchen Sie es noch einmal.').
result(X,R):- win(X,R),
	write('Sie haben gewonnen!  Mal sehen, ob das f�r Sie so weiter geht!').
result(X,R):- win(R,X),
	write('Sie haben leider verloren!  Das leider ist hier ausschlie�lich eine h�flich Floskel meinerseits!').


%2c+d
%evaluate/1
%und play/0 mit read/1
evaluate(X):-
    not(weapon(X)),
    write('Dieses Objekt k�nnen Sie leider nicht nehmen.'),nl,
    spielen.

evaluate(X):-
    computer_choice(R),
    result(R, X).


match([spielen],['Ok, in alter Nerd-Manier m�chte ich eine Runde Schere, Stein, Papier,Echse, Spock mit dir spielen. Um dieses Spiel zu beginnen w�hlen Sie bitte eins der folgenden Objekte: Stein, Papier, Schere, Echse, Spock.']).
match([X],[result(_,_)]):- read(X), evaluate(X).
