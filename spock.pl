:- encoding(iso_latin_1).

%-------------------------------------------------
%    EasterEgg --- möchtst du ein Spiel spielen
%-------------------------------------------------

%weapon/1
weapon(stein).
weapon(papier).
weapon(schere).
weapon(echse).
weapon(spock).

%Ausführungen win/2
win(schere, papier).         % Scissors cuts paper
win(schere, echse).        % scissors decapitates lizard

win(stein, echse).            % rock crushes lizard
win(stein, scissors).          % rock crushes scissor

win(papier, stein).	       % paper covers rock
win(paper, spock).	       % paper disproves Spock

win(echse, papier).           % lizzard eats paper
win(esche, spock).           % lizard poisons Spock

win(spock, stein).	       % Spock vaporizes rock
win(spock, schere).          % Spock smashes scissors


%computer_choice/1
computer_choice(R):-
	findall(X,weapon(X),L),
    random_permutation(L,Random),
    Random=[R|_],
    write('Dr.Pörksis Wahl: '),
    writeln(R).

%result/2
result(X,X):- ansi_format([bg(yellow)], 'Gleichstand. Glück gehabt. Versuchen Sie es noch einmal.', []).
result(X,R):- win(X,R),
	ansi_format([bg(green)], 'Sie haben gewonnen! Mal sehen, ob das für Sie so weiter geht!', []).
result(X,R):- win(R,X),
	ansi_format([bg(red)],'Sie haben leider verloren! Das leider ist hier ausschließlich eine höflich Floskel meinerseits!', []).


%evaluate/1
%und play/0 mit read/1
evaluate(X):-
    not(weapon(X)),
    write('Dieses Objekt können Sie leider nicht nehmen. Wählen Sie nochmal.'),nl,
    spielen.

evaluate(X):-
    computer_choice(R),
    result(R, X).

spielen :- read_sentence([X]), evaluate(X).


