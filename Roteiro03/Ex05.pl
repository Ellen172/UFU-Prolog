% Ex 5

esta_em([X],[X|_L2]). 
esta_em([X],[_H|L2]) :-
	esta_em([X],L2).

subconjunto([],L).
subconjunto([H|L1],L2) :- 
	esta_em([H],L2),
	subconjunto(L1,L2).