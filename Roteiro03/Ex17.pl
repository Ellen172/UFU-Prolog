% Ex 17

insere(X,L,[X|L]).
insere(X,[H|T],[H|L]) :-
	insere(X,T,L).