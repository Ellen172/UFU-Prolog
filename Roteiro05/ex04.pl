
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
[trace]  ?- s([a, mulher, chuta, a, bola]-[]).
   Call: (10) s([a, mulher, chuta, a, bola]-[]) ? creep
   Call: (11) sn([a, mulher, chuta, a, bola]-_12510) ? creep
   Call: (12) det([a, mulher, chuta, a, bola]-_12560) ? creep
   Exit: (12) det([a, mulher, chuta, a, bola]-[mulher, chuta, a, bola]) ? creep
   Call: (12) n([mulher, chuta, a, bola]-_12510) ? creep
   Exit: (12) n([mulher, chuta, a, bola]-[chuta, a, bola]) ? creep
   Exit: (11) sn([a, mulher, chuta, a, bola]-[chuta, a, bola]) ? creep
   Call: (11) sv([chuta, a, bola]-[]) ? creep
   Call: (12) v([chuta, a, bola]-_12842) ? creep
   Exit: (12) v([chuta, a, bola]-[a, bola]) ? creep
   Call: (12) sn([a, bola]-[]) ? creep
   Call: (13) det([a, bola]-_12986) ? creep
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