% Ex 21

fatorial(1, Ac, Ac).
fatorial(M, Ac, N) :- 
    M > 1,
    NovoAc is M * Ac,
    NovoM is M - 1,
    fatorial(NovoM, NovoAc, N).


ncombinacoes(0,_,0).
ncombinacoes(M,P,N) :-
    M1 is M - P,
    fatorial(M,1,MFat),
    fatorial(M1,1,M1Fat),
    fatorial(P,1,PFat),
    N is MFat / (M1Fat*PFat).
