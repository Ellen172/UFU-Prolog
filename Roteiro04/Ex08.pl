% Ex 08

% (a)
disjunto([A], [B]) :-
    A =\= B.
disjunto([A|As],[B|Bs]) :-
    A =\= B,
    disjunto(As,Bs).

%(b)
uniao(_,_,[]).
uniao(A,B,[M|Ms]) :-
    (member(M, A); member(M, B)),
    uniao(A,B,Ms).

%(c)
intersecao(_,_,[]).
intersecao(A,B,[M|Ms]) :-
    member(M, A), member(M, B),
    uniao(A,B,Ms).

%(d)
diferenca(X,[],X).
diferenca([H|As],[H|Bs], D) :-
    diferenca(As,Bs,D).
diferenca([A|As],[B|Bs],[A|Ds]) :-
    A =\= B, 
    diferenca(As, Bs, Ds).