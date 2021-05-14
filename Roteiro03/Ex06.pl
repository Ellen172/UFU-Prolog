% Ex 6

esta_em([X|_L2],[X]). 
esta_em([_H|L2],[X]) :-
	esta_em(L2,[X]).

superconjunto(L,[]).
superconjunto(L2, [H|L1]) :- 
	esta_em(L2,[H]),
	superconjunto(L2,L1).