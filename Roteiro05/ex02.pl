
s(A-C):- sn(A-B), sv(B-C).
sn(A-C):- det(A-B), n(B-C). 
sv(A-C):- v(A-B), sn(B-C). 
sv(A-C):- v(A-C).

det([o|P]-P).           
det([a|P]-P). 

n([homem|P]-P).    
n([mulher|P]-P).      
n([bola|P]-P).

v([chuta|P]-P).

/*
[trace]  ?- s([a, mulher, chuta, a, bola]-[]).
   Call: (10) s([a, mulher, chuta, a, bola]-[]) ? creep
   Call: (11) sn([a, mulher, chuta, a, bola]-_70742) ? creep
   Call: (12) det([a, mulher, chuta, a, bola]-_70792) ? creep
   Exit: (12) det([a, mulher, chuta, a, bola]-[mulher, chuta, a, bola]) ? creep
   Call: (12) n([mulher, chuta, a, bola]-_70742) ? creep
   Exit: (12) n([mulher, chuta, a, bola]-[chuta, a, bola]) ? creep
   Exit: (11) sn([a, mulher, chuta, a, bola]-[chuta, a, bola]) ? creep
   Call: (11) sv([chuta, a, bola]-[]) ? creep
   Call: (12) v([chuta, a, bola]-_71074) ? creep
   Exit: (12) v([chuta, a, bola]-[a, bola]) ? creep
   Call: (12) sn([a, bola]-[]) ? creep
   Call: (13) det([a, bola]-_71218) ? creep
   Exit: (13) det([a, bola]-[bola]) ? creep
   Call: (13) n([bola]-[]) ? creep
   Exit: (13) n([bola]-[]) ? creep
   Exit: (12) sn([a, bola]-[]) ? creep
   Exit: (11) sv([chuta, a, bola]-[]) ? creep
   Exit: (10) s([a, mulher, chuta, a, bola]-[]) ? creep
true ;
   Redo: (11) sv([chuta, a, bola]-[]) ? creep
   Call: (12) v([chuta, a, bola]-[]) ? creep
   Fail: (12) v([chuta, a, bola]-[]) ? creep
   Fail: (11) sv([chuta, a, bola]-[]) ? creep
   Fail: (10) s([a, mulher, chuta, a, bola]-[]) ? creep
false.
*/