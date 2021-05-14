% Ex 22

remove(X,[X|T],T).
remove(X,[H|T],[H|L]) :-
	remove(X,T,L).

arranjo(0, _, []).
arranjo(N, L1, [A|As]) :-
    N > 0,
    NovoN is N -1,
	remove(A, L1, L2),
	arranjo(NovoN, L2, As).
