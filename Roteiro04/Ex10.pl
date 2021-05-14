% Ex 10
% Obs: a contagem de posições comecará em 0.

ocorre(L, N, X) :-
    ocorreAcum(L, 0, N, X).

ocorreAcum([X|_], Ac, Ac, X).
ocorreAcum([H|T], Ac, N, X) :-
    X \= H,
    NovoAc is Ac + 1,
    ocorreAcum(T, NovoAc, N, X).
