% Ex 20

combinacao(0,_,[]).
combinacao(N,[X|Xs],[X|Ys]):- 
    N>0,
    N1 is N - 1,
    combinacao(N1,Xs,Ys).
combinacao(N,[_|Xs], Ys):- 
    N>0,
    combinacao(N,Xs,Ys).

/*
(a)
?- combinacao(5,[a1,a2,a3,a4,a5,a6,a7,a8,a9,a10],C).
C = [a1, a2, a3, a4, a5] ;
C = [a1, a2, a3, a4, a6] ;
C = [a1, a2, a3, a4, a7] ;
C = [a1, a2, a3, a4, a8] ;
C = [a1, a2, a3, a4, a9] ;
C = [a1, a2, a3, a4, a10] ;
C = [a1, a2, a3, a5, a6] ;
C = [a1, a2, a3, a5, a7] ;
C = [a1, a2, a3, a5, a8] ;
C = [a1, a2, a3, a5, a9] ;
C = [a1, a2, a3, a5, a10] ;
C = [a1, a2, a3, a6, a7] ;
C = [a1, a2, a3, a6, a8] ;
C = [a1, a2, a3, a6, a9] ;
C = [a1, a2, a3, a6, a10] ;
C = [a1, a2, a3, a7, a8] ;
C = [a1, a2, a3, a7, a9] ;
C = [a1, a2, a3, a7, a10] ;
C = [a1, a2, a3, a8, a9] ;
C = [a1, a2, a3, a8, a10] ;
C = [a1, a2, a3, a9, a10] ;
C = [a1, a2, a4, a5, a6] ;
C = [a1, a2, a4, a5, a7] ;
C = [a1, a2, a4, a5, a8] ;
C = [a1, a2, a4, a5, a9] ;
C = [a1, a2, a4, a5, a10] ;
C = [a1, a2, a4, a6, a7] ;
C = [a1, a2, a4, a6, a8] ;
C = [a1, a2, a4, a6, a9] ;
C = [a1, a2, a4, a6, a10] ;
C = [a1, a2, a4, a7, a8] ;
C = [a1, a2, a4, a7, a9] ;
C = [a1, a2, a4, a7, a10] ;
C = [a1, a2, a4, a8, a9] ;
C = [a1, a2, a4, a8, a10] ;
C = [a1, a2, a4, a9, a10] ;
C = [a1, a2, a5, a6, a7] ;
C = [a1, a2, a5, a6, a8] ;
C = [a1, a2, a5, a6, a9] ;
C = [a1, a2, a5, a6, a10] ;
C = [a1, a2, a5, a7, a8] ;
C = [a1, a2, a5, a7, a9] ;
C = [a1, a2, a5, a7, a10] ;
C = [a1, a2, a5, a8, a9] ;
C = [a1, a2, a5, a8, a10] ;
C = [a1, a2, a5, a9, a10] ;
C = [a1, a2, a6, a7, a8] ;
C = [a1, a2, a6, a7, a9] ;
C = [a1, a2, a6, a7, a10] ;
C = [a1, a2, a6, a8, a9] ;
C = [a1, a2, a6, a8, a10] ;
C = [a1, a2, a6, a9, a10] ;
C = [a1, a2, a7, a8, a9] ;
C = [a1, a2, a7, a8, a10] ;
C = [a1, a2, a7, a9, a10] ;
C = [a1, a2, a8, a9, a10] ;
C = [a1, a3, a4, a5, a6] ;
C = [a1, a3, a4, a5, a7] ;
C = [a1, a3, a4, a5, a8] ;
C = [a1, a3, a4, a5, a9] ;
C = [a1, a3, a4, a5, a10] ;
C = [a1, a3, a4, a6, a7] ;
C = [a1, a3, a4, a6, a8] ;
C = [a1, a3, a4, a6, a9] ;
C = [a1, a3, a4, a6, a10] ;
C = [a1, a3, a4, a7, a8] ;
C = [a1, a3, a4, a7, a9] ;
C = [a1, a3, a4, a7, a10] ;
C = [a1, a3, a4, a8, a9] ;
C = [a1, a3, a4, a8, a10] ;
C = [a1, a3, a4, a9, a10] ;
C = [a1, a3, a5, a6, a7] ;
C = [a1, a3, a5, a6, a8] ;
C = [a1, a3, a5, a6, a9] ;
C = [a1, a3, a5, a6, a10] ;
C = [a1, a3, a5, a7, a8] ;
C = [a1, a3, a5, a7, a9] ;
C = [a1, a3, a5, a7, a10] ;
C = [a1, a3, a5, a8, a9] ;
C = [a1, a3, a5, a8, a10] ;
C = [a1, a3, a5, a9, a10] ;
C = [a1, a3, a6, a7, a8] ;
C = [a1, a3, a6, a7, a9] ;
C = [a1, a3, a6, a7, a10] ;
C = [a1, a3, a6, a8, a9] ;
C = [a1, a3, a6, a8, a10] ;
C = [a1, a3, a6, a9, a10] ;
C = [a1, a3, a7, a8, a9] ;
C = [a1, a3, a7, a8, a10] ;
C = [a1, a3, a7, a9, a10] ;
C = [a1, a3, a8, a9, a10] ;
C = [a1, a4, a5, a6, a7] ;
C = [a1, a4, a5, a6, a8] ;
C = [a1, a4, a5, a6, a9] ;
C = [a1, a4, a5, a6, a10] ;
C = [a1, a4, a5, a7, a8] ;
C = [a1, a4, a5, a7, a9] ;
C = [a1, a4, a5, a7, a10] ;
C = [a1, a4, a5, a8, a9] ;
C = [a1, a4, a5, a8, a10] ;
C = [a1, a4, a5, a9, a10] ;
C = [a1, a4, a6, a7, a8] ;
C = [a1, a4, a6, a7, a9] ;
C = [a1, a4, a6, a7, a10] ;
C = [a1, a4, a6, a8, a9] ;
C = [a1, a4, a6, a8, a10] ;
C = [a1, a4, a6, a9, a10] ;
C = [a1, a4, a7, a8, a9] ;
C = [a1, a4, a7, a8, a10] ;
C = [a1, a4, a7, a9, a10] ;
C = [a1, a4, a8, a9, a10] ;
C = [a1, a5, a6, a7, a8] ;
C = [a1, a5, a6, a7, a9] ;
C = [a1, a5, a6, a7, a10] ;
C = [a1, a5, a6, a8, a9] ;
C = [a1, a5, a6, a8, a10] ;
C = [a1, a5, a6, a9, a10] ;
C = [a1, a5, a7, a8, a9] ;
C = [a1, a5, a7, a8, a10] ;
C = [a1, a5, a7, a9, a10] ;
C = [a1, a5, a8, a9, a10] ;
C = [a1, a6, a7, a8, a9] ;
C = [a1, a6, a7, a8, a10] ;
C = [a1, a6, a7, a9, a10] ;
C = [a1, a6, a8, a9, a10] ;
C = [a1, a7, a8, a9, a10] ;
C = [a2, a3, a4, a5, a6] ;
C = [a2, a3, a4, a5, a7] ;
C = [a2, a3, a4, a5, a8] ;
C = [a2, a3, a4, a5, a9] ;
C = [a2, a3, a4, a5, a10] ;
C = [a2, a3, a4, a6, a7] ;
C = [a2, a3, a4, a6, a8] ;
C = [a2, a3, a4, a6, a9] ;
C = [a2, a3, a4, a6, a10] ;
C = [a2, a3, a4, a7, a8] ;
C = [a2, a3, a4, a7, a9] ;
C = [a2, a3, a4, a7, a10] ;
C = [a2, a3, a4, a8, a9] ;
C = [a2, a3, a4, a8, a10] ;
C = [a2, a3, a4, a9, a10] ;
C = [a2, a3, a5, a6, a7] ;
C = [a2, a3, a5, a6, a8] ;
C = [a2, a3, a5, a6, a9] ;
C = [a2, a3, a5, a6, a10] ;
C = [a2, a3, a5, a7, a8] ;
C = [a2, a3, a5, a7, a9] ;
C = [a2, a3, a5, a7, a10] ;
C = [a2, a3, a5, a8, a9] ;
C = [a2, a3, a5, a8, a10] ;
C = [a2, a3, a5, a9, a10] ;
C = [a2, a3, a6, a7, a8] ;
C = [a2, a3, a6, a7, a9] ;
C = [a2, a3, a6, a7, a10] ;
C = [a2, a3, a6, a8, a9] ;
C = [a2, a3, a6, a8, a10] ;
C = [a2, a3, a6, a9, a10] ;
C = [a2, a3, a7, a8, a9] ;
C = [a2, a3, a7, a8, a10] ;
C = [a2, a3, a7, a9, a10] ;
C = [a2, a3, a8, a9, a10] ;
C = [a2, a4, a5, a6, a7] ;
C = [a2, a4, a5, a6, a8] ;
C = [a2, a4, a5, a6, a9] ;
C = [a2, a4, a5, a6, a10] ;
C = [a2, a4, a5, a7, a8] ;
C = [a2, a4, a5, a7, a9] ;
C = [a2, a4, a5, a7, a10] ;
C = [a2, a4, a5, a8, a9] ;
C = [a2, a4, a5, a8, a10] ;
C = [a2, a4, a5, a9, a10] ;
C = [a2, a4, a6, a7, a8] ;
C = [a2, a4, a6, a7, a9] ;
C = [a2, a4, a6, a7, a10] ;
C = [a2, a4, a6, a8, a9] ;
C = [a2, a4, a6, a8, a10] ;
C = [a2, a4, a6, a9, a10] ;
C = [a2, a4, a7, a8, a9] ;
C = [a2, a4, a7, a8, a10] ;
C = [a2, a4, a7, a9, a10] ;
C = [a2, a4, a8, a9, a10] ;
C = [a2, a5, a6, a7, a8] ;
C = [a2, a5, a6, a7, a9] ;
C = [a2, a5, a6, a7, a10] ;
C = [a2, a5, a6, a8, a9] ;
C = [a2, a5, a6, a8, a10] ;
C = [a2, a5, a6, a9, a10] ;
C = [a2, a5, a7, a8, a9] ;
C = [a2, a5, a7, a8, a10] ;
C = [a2, a5, a7, a9, a10] ;
C = [a2, a5, a8, a9, a10] ;
C = [a2, a6, a7, a8, a9] ;
C = [a2, a6, a7, a8, a10] ;
C = [a2, a6, a7, a9, a10] ;
C = [a2, a6, a8, a9, a10] ;
C = [a2, a7, a8, a9, a10] ;
C = [a3, a4, a5, a6, a7] ;
C = [a3, a4, a5, a6, a8] ;
C = [a3, a4, a5, a6, a9] ;
C = [a3, a4, a5, a6, a10] ;
C = [a3, a4, a5, a7, a8] ;
C = [a3, a4, a5, a7, a9] ;
C = [a3, a4, a5, a7, a10] ;
C = [a3, a4, a5, a8, a9] ;
C = [a3, a4, a5, a8, a10] ;
C = [a3, a4, a5, a9, a10] ;
C = [a3, a4, a6, a7, a8] ;
C = [a3, a4, a6, a7, a9] ;
C = [a3, a4, a6, a7, a10] ;
C = [a3, a4, a6, a8, a9] ;
C = [a3, a4, a6, a8, a10] ;
C = [a3, a4, a6, a9, a10] ;
C = [a3, a4, a7, a8, a9] ;
C = [a3, a4, a7, a8, a10] ;
C = [a3, a4, a7, a9, a10] ;
C = [a3, a4, a8, a9, a10] ;
C = [a3, a5, a6, a7, a8] ;
C = [a3, a5, a6, a7, a9] ;
C = [a3, a5, a6, a7, a10] ;
C = [a3, a5, a6, a8, a9] ;
C = [a3, a5, a6, a8, a10] ;
C = [a3, a5, a6, a9, a10] ;
C = [a3, a5, a7, a8, a9] ;
C = [a3, a5, a7, a8, a10] ;
C = [a3, a5, a7, a9, a10] ;
C = [a3, a5, a8, a9, a10] ;
C = [a3, a6, a7, a8, a9] ;
C = [a3, a6, a7, a8, a10] ;
C = [a3, a6, a7, a9, a10] ;
C = [a3, a6, a8, a9, a10] ;
C = [a3, a7, a8, a9, a10] ;
C = [a4, a5, a6, a7, a8] ;
C = [a4, a5, a6, a7, a9] ;
C = [a4, a5, a6, a7, a10] ;
C = [a4, a5, a6, a8, a9] ;
C = [a4, a5, a6, a8, a10] ;
C = [a4, a5, a6, a9, a10] ;
C = [a4, a5, a7, a8, a9] ;
C = [a4, a5, a7, a8, a10] ;
C = [a4, a5, a7, a9, a10] ;
C = [a4, a5, a8, a9, a10] ;
C = [a4, a6, a7, a8, a9] ;
C = [a4, a6, a7, a8, a10] ;
C = [a4, a6, a7, a9, a10] ;
C = [a4, a6, a8, a9, a10] ;
C = [a4, a7, a8, a9, a10] ;
C = [a5, a6, a7, a8, a9] ;
C = [a5, a6, a7, a8, a10] ;
C = [a5, a6, a7, a9, a10] ;
C = [a5, a6, a8, a9, a10] ;
C = [a5, a7, a8, a9, a10] ;
C = [a6, a7, a8, a9, a10] ;
false.
*/

% (b)
combinacao_de2(N1, L1, N2, L2, Lista) :- 
    combinacao(N1, L1, X), 
    combinacao(N2, L2, Y),
    append(X, Y, Lista).

% ? - combinacao_de2(3, [m1,m2,m3,m4,m5,m6,m7,m8,m9], 4, [c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11],Y).
% Haverá mais de mil resultados.