% Ex 02

soma_ate(N, S) :-
    soma(N, S, 0).

soma(0,Ac,Ac).
soma(N, S, Ac) :-
    N > 0,
    NovoAc is N + Ac,
    NovoN is N - 1,
    soma(NovoN, S, NovoAc).
