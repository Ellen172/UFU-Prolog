% Ex 09

ocorrencias(X, L, N) :-
    ocorrenciasAcum(X, L, 0, N).

ocorrenciasAcum(_, [], Ac, Ac).
ocorrenciasAcum(X, [X|T], Ac, R) :-
    NovoAc is Ac + 1,
    ocorrenciasAcum(X, T, NovoAc, R).
ocorrenciasAcum(X, [H|T], Ac, R) :-
    X \= H,
    ocorrenciasAcum(X, T, Ac, R).
