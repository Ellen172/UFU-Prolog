% Ex 12

somaUm([],[]).
somaUm([H|L],[Hx|_L]) :-
	Hx is H+1,
	somaUm(L, _L).