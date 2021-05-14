:- dynamic res_somatorio/2.

res_somatorio(0, 0).

somatorio(N, X) :-
    res_somatorio(N, X), !.

somatorio(N, X) :-
    \+res_somatorio(N, X), 
    Aux is N -1, 
    somatorio(Aux, AntX),
    X is AntX + N,
    assert(res_somatorio(N, X)), !.