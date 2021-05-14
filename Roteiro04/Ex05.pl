% Ex 05

segmento([],[_|_]).
segmento(L1, [_|L]) :-
    segmento(L1,L).
segmento([H|T1], [H|T2]) :-
    segmento(T1,T2).
