% Ex 16

remove(X,[X|T],T).
remove(X,[H|T],[H|L]) :-
	remove(X,T,L).
