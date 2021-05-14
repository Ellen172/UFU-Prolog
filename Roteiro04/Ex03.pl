% Ex 03

converte(0,[]).
converte(N,[X|B]) :-
    N > 0,
    X is mod(N,2),
    NovoN is (N-X) / 2,
    converte(NovoN,B).

inverte([],[]).
inverte([H|T],Inv) :-
    inverte(T,TInv),
    append(TInv, [H], Inv).

dec_para_bin(N,L) :-
    converte(N,L1),
    inverte(L1,L).