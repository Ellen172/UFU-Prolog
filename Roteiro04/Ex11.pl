% Ex 11

fatores_primosAcum(1, [], X).
fatores_primosAcum(N, [X|F], X) :-
    N > 1,
    A is mod(N, X), A =:= 0,
    NovoN is N/X,
    fatores_primosAcum(NovoN, F, X).
fatores_primosAcum(N, F, X) :-
    N > 1,
    A is mod(N, X), A =\= 0,
    NovoX is X + 1,
    fatores_primosAcum(N, F, NovoX).

fatores_primos(N, F) :-
    fatores_primosAcum(N, F, 2).