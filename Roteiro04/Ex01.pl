% Ex 01

soma_acum(L,K) :-
    soma(L, K, 0).

soma([],[],_Ac).
soma([H|T],[X|K],Ac) :-
    X is Ac + H,
    soma(T, K, X).