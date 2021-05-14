% Ex 24

% narranjos(M,P,N)

fatorial(1, Ac, Ac).
fatorial(M, Ac, N) :- 
    M > 1,
    NovoAc is M * Ac,
    NovoM is M - 1,
    fatorial(NovoM, NovoAc, N).


narranjos(0,_,0).
narranjos(M,P,N) :-
    M1 is M - P,
    fatorial(M,1,MFat),
    fatorial(M1,1,M1Fat),
    N is MFat / M1Fat.