
s --> sn, sv.
sn --> det, n.
sv --> v, sn.
sv --> v.

det --> [o].             
det --> [a].
n--> [homem].       
n--> [mulher].      
n --> [bola].
v--> [chuta].

/*
sv(A, B) :-
    v(A, C),
    sn(C, B).
sv(A, B) :-
    v(A, B).

n([homem|P]-P).
n([mulher|P]-P).
n([bola|P]-P).

sn(A, B) :-
    det(A, C),
    n(C, B).

det([o|P]-P).
det([a|P]-P).

n([homem|A], A).
n([mulher|A], A).
n([bola|A], A).

det([o|A], A).
det([a|A], A).

s(A-C) :-
    sn(A-B),
    sv(B-C).

v([chuta|A], A).

*/