
s(C):- sn(A), sv(B), append(A,B,C).
sn(C):- det(A), n(B), append(A,B,C).
sv(C):- v(A), sn(B), append(A,B,C).
sv(C):- v(C).

det([o]).            
det([a]). 
n([homem]).     
n([mulher]).      
n([bola]). 
v([chuta]).

/*
[trace]  ?- s(X).
   Call: (10) s(_66776) ? creep
   Call: (11) sn(_67200) ? creep
   Call: (12) det(_67244) ? creep
   Exit: (12) det([o]) ? creep
   Call: (12) n(_67338) ? creep
   Exit: (12) n([homem]) ? creep
   Call: (12) lists:append([o], [homem], _67436) ? creep
   Exit: (12) lists:append([o], [homem], [o, homem]) ? creep
   Exit: (11) sn([o, homem]) ? creep
   Call: (11) sv(_67570) ? creep
   Call: (12) v(_67614) ? creep
   Exit: (12) v([chuta]) ? creep
   Call: (12) sn(_67708) ? creep
   Call: (13) det(_67752) ? creep
   Exit: (13) det([o]) ? creep
   Call: (13) n(_67846) ? creep
   Exit: (13) n([homem]) ? creep
   Call: (13) lists:append([o], [homem], _67944) ? creep
   Exit: (13) lists:append([o], [homem], [o, homem]) ? creep
   Exit: (12) sn([o, homem]) ? creep
   Call: (12) lists:append([chuta], [o, homem], _68082) ? creep
   Exit: (12) lists:append([chuta], [o, homem], [chuta, o, homem]) ? creep
   Exit: (11) sv([chuta, o, homem]) ? creep
   Call: (11) lists:append([o, homem], [chuta, o, homem], _66776) ? creep
   Exit: (11) lists:append([o, homem], [chuta, o, homem], [o, homem, chuta, o, homem]) ? creep
   Exit: (10) s([o, homem, chuta, o, homem]) ? creep
X = [o, homem, chuta, o, homem] ;
...

[trace]  ?- s([a, mulher, chuta, o, homem]).
   Call: (10) s([a, mulher, chuta, o, homem]) ? creep
   Call: (11) sn(_798) ? creep
   Call: (12) det(_842) ? creep
   Exit: (12) det([o]) ? creep
   Call: (12) n(_936) ? creep
   Exit: (12) n([homem]) ? creep
   Call: (12) lists:append([o], [homem], _1034) ? creep
   Exit: (12) lists:append([o], [homem], [o, homem]) ? creep
   Exit: (11) sn([o, homem]) ? creep
   Call: (11) sv(_1168) ? creep
   Call: (12) v(_1212) ? creep
   Exit: (12) v([chuta]) ? creep
   Call: (12) sn(_1306) ? creep
   Call: (13) det(_1350) ? creep
   Exit: (13) det([o]) ? creep
   Call: (13) n(_1444) ? creep
   Exit: (13) n([homem]) ? creep
   Call: (13) lists:append([o], [homem], _1542) ? creep
   Exit: (13) lists:append([o], [homem], [o, homem]) ? creep
   Exit: (12) sn([o, homem]) ? creep
   Call: (12) lists:append([chuta], [o, homem], _1680) ? creep
   Exit: (12) lists:append([chuta], [o, homem], [chuta, o, homem]) ? creep
   Exit: (11) sv([chuta, o, homem]) ? creep
   Call: (11) lists:append([o, homem], [chuta, o, homem], [a, mulher, chuta, o, homem]) ? creep
   Fail: (11) lists:append([o, homem], [chuta, o, homem], [a, mulher, chuta, o, homem]) ? creep
   Redo: (13) n(_1902) ? creep
   Exit: (13) n([mulher]) ? creep
   Call: (13) lists:append([o], [mulher], _2000) ? creep
   Exit: (13) lists:append([o], [mulher], [o, mulher]) ? creep
   Exit: (12) sn([o, mulher]) ? creep
   Call: (12) lists:append([chuta], [o, mulher], _2138) ? creep
   Exit: (12) lists:append([chuta], [o, mulher], [chuta, o, mulher]) ? creep
   Exit: (11) sv([chuta, o, mulher]) ? creep
   Call: (11) lists:append([o, homem], [chuta, o, mulher], [a, mulher, chuta, o, homem]) ? creep
   Fail: (11) lists:append([o, homem], [chuta, o, mulher], [a, mulher, chuta, o, homem]) ? creep
   Redo: (13) n(_2360) ? creep
   Exit: (13) n([bola]) ? creep
   Call: (13) lists:append([o], [bola], _2458) ? creep
   Exit: (13) lists:append([o], [bola], [o, bola]) ? creep
   Exit: (12) sn([o, bola]) ? creep
   Call: (12) lists:append([chuta], [o, bola], _2596) ? creep
   Exit: (12) lists:append([chuta], [o, bola], [chuta, o, bola]) ? creep
   Exit: (11) sv([chuta, o, bola]) ? creep
   Call: (11) lists:append([o, homem], [chuta, o, bola], [a, mulher, chuta, o, homem]) ? creep
   Fail: (11) lists:append([o, homem], [chuta, o, bola], [a, mulher, chuta, o, homem]) ? creep
   Redo: (13) det(_2818) ? creep
   Exit: (13) det([a]) ? creep
   Call: (13) n(_2912) ? creep
   Exit: (13) n([homem]) ? creep
   Call: (13) lists:append([a], [homem], _3010) ? creep
   Exit: (13) lists:append([a], [homem], [a, homem]) ? creep
   Exit: (12) sn([a, homem]) ? creep
   Call: (12) lists:append([chuta], [a, homem], _3148) ? creep
   Exit: (12) lists:append([chuta], [a, homem], [chuta, a, homem]) ? creep
   Exit: (11) sv([chuta, a, homem]) ? creep
   Call: (11) lists:append([o, homem], [chuta, a, homem], [a, mulher, chuta, o, homem]) ? creep
   Fail: (11) lists:append([o, homem], [chuta, a, homem], [a, mulher, chuta, o, homem]) ? creep
   Redo: (13) n(_3370) ? creep
   Exit: (13) n([mulher]) ? creep
   Call: (13) lists:append([a], [mulher], _3468) ? creep
   Exit: (13) lists:append([a], [mulher], [a, mulher]) ? creep
   Exit: (12) sn([a, mulher]) ? creep
   Call: (12) lists:append([chuta], [a, mulher], _3606) ? creep
   Exit: (12) lists:append([chuta], [a, mulher], [chuta, a, mulher]) ? creep
   Exit: (11) sv([chuta, a, mulher]) ? creep
   Call: (11) lists:append([o, homem], [chuta, a, mulher], [a, mulher, chuta, o, homem]) ? creep
   Fail: (11) lists:append([o, homem], [chuta, a, mulher], [a, mulher, chuta, o, homem]) ? creep
   Redo: (13) n(_3828) ? creep
   Exit: (13) n([bola]) ? creep
   Call: (13) lists:append([a], [bola], _3926) ? creep
   Exit: (13) lists:append([a], [bola], [a, bola]) ? creep
   Exit: (12) sn([a, bola]) ? creep
   Call: (12) lists:append([chuta], [a, bola], _4064) ? creep
   Exit: (12) lists:append([chuta], [a, bola], [chuta, a, bola]) ? creep
   Exit: (11) sv([chuta, a, bola]) ? creep
   Call: (11) lists:append([o, homem], [chuta, a, bola], [a, mulher, chuta, o, homem]) ? creep
   Fail: (11) lists:append([o, homem], [chuta, a, bola], [a, mulher, chuta, o, homem]) ? creep
   Redo: (11) sv(_4286) ? creep
   Call: (12) v(_4330) ? creep
   Exit: (12) v([chuta]) ? creep
   Exit: (11) sv([chuta]) ? creep
   Call: (11) lists:append([o, homem], [chuta], [a, mulher, chuta, o, homem]) ? creep
   Fail: (11) lists:append([o, homem], [chuta], [a, mulher, chuta, o, homem]) ? creep
   Redo: (12) n(_4556) ? creep
   Exit: (12) n([mulher]) ? creep
   Call: (12) lists:append([o], [mulher], _4654) ? creep
   Exit: (12) lists:append([o], [mulher], [o, mulher]) ? creep
   Exit: (11) sn([o, mulher]) ? creep
   Call: (11) sv(_4788) ? creep
   Call: (12) v(_4832) ? creep
   Exit: (12) v([chuta]) ? creep
   Call: (12) sn(_4926) ? creep
   Call: (13) det(_4970) ? creep   
   Exit: (13) det([o]) ? creep
   Call: (13) n(_5064) ? creep
   Exit: (13) n([homem]) ? creep
   Call: (13) lists:append([o], [homem], _5162) ? creep
   Exit: (13) lists:append([o], [homem], [o, homem]) ? creep
   Exit: (12) sn([o, homem]) ? creep
   Call: (12) lists:append([chuta], [o, homem], _5300) ? creep
   Exit: (12) lists:append([chuta], [o, homem], [chuta, o, homem]) ? creep
   Exit: (11) sv([chuta, o, homem]) ? creep
   Call: (11) lists:append([o, mulher], [chuta, o, homem], [a, mulher, chuta, o, homem]) ? creep
   Fail: (11) lists:append([o, mulher], [chuta, o, homem], [a, mulher, chuta, o, homem]) ? creep
   Redo: (13) n(_5522) ? creep
   Exit: (13) n([mulher]) ? creep
   Call: (13) lists:append([o], [mulher], _5620) ? creep
   Exit: (13) lists:append([o], [mulher], [o, mulher]) ? creep
   Exit: (12) sn([o, mulher]) ? creep
   Call: (12) lists:append([chuta], [o, mulher], _5758) ? creep
   Exit: (12) lists:append([chuta], [o, mulher], [chuta, o, mulher]) ? creep
   Exit: (11) sv([chuta, o, mulher]) ? creep
   Call: (11) lists:append([o, mulher], [chuta, o, mulher], [a, mulher, chuta, o, homem]) ? creep
   Fail: (11) lists:append([o, mulher], [chuta, o, mulher], [a, mulher, chuta, o, homem]) ? creep
   Redo: (13) n(_5980) ? creep
   Exit: (13) n([bola]) ? creep
   Call: (13) lists:append([o], [bola], _6078) ? creep
   Exit: (13) lists:append([o], [bola], [o, bola]) ? creep
   Exit: (12) sn([o, bola]) ? creep
   Call: (12) lists:append([chuta], [o, bola], _6216) ? creep
   Exit: (12) lists:append([chuta], [o, bola], [chuta, o, bola]) ? creep
   Exit: (11) sv([chuta, o, bola]) ? creep
   Call: (11) lists:append([o, mulher], [chuta, o, bola], [a, mulher, chuta, o, homem]) ? creep
   Fail: (11) lists:append([o, mulher], [chuta, o, bola], [a, mulher, chuta, o, homem]) ? creep
   Redo: (13) det(_6438) ? creep
   Exit: (13) det([a]) ? creep
   Call: (13) n(_6532) ? creep
   Exit: (13) n([homem]) ? creep
   Call: (13) lists:append([a], [homem], _6630) ? creep
   Exit: (13) lists:append([a], [homem], [a, homem]) ? creep
   Exit: (12) sn([a, homem]) ? creep
   Call: (12) lists:append([chuta], [a, homem], _6768) ? creep
   Exit: (12) lists:append([chuta], [a, homem], [chuta, a, homem]) ? creep
   Exit: (11) sv([chuta, a, homem]) ? creep
   Call: (11) lists:append([o, mulher], [chuta, a, homem], [a, mulher, chuta, o, homem]) ? creep
   Fail: (11) lists:append([o, mulher], [chuta, a, homem], [a, mulher, chuta, o, homem]) ? creep
   Redo: (13) n(_6990) ? creep
   Exit: (13) n([mulher]) ? creep
   Call: (13) lists:append([a], [mulher], _7088) ? creep
   Exit: (13) lists:append([a], [mulher], [a, mulher]) ? creep
   Exit: (12) sn([a, mulher]) ? creep
   Call: (12) lists:append([chuta], [a, mulher], _7226) ? creep
   Exit: (12) lists:append([chuta], [a, mulher], [chuta, a, mulher]) ? creep
   Exit: (11) sv([chuta, a, mulher]) ? creep
   Call: (11) lists:append([o, mulher], [chuta, a, mulher], [a, mulher, chuta, o, homem]) ? creep
   Fail: (11) lists:append([o, mulher], [chuta, a, mulher], [a, mulher, chuta, o, homem]) ? creep
   Redo: (13) n(_7448) ? creep
   Exit: (13) n([bola]) ? creep
   Call: (13) lists:append([a], [bola], _7546) ? creep
   Exit: (13) lists:append([a], [bola], [a, bola]) ? creep
   Exit: (12) sn([a, bola]) ? creep
   Call: (12) lists:append([chuta], [a, bola], _7684) ? creep
   Exit: (12) lists:append([chuta], [a, bola], [chuta, a, bola]) ? creep
   Exit: (11) sv([chuta, a, bola]) ? creep
   Call: (11) lists:append([o, mulher], [chuta, a, bola], [a, mulher, chuta, o, homem]) ? creep
   Fail: (11) lists:append([o, mulher], [chuta, a, bola], [a, mulher, chuta, o, homem]) ? creep
   Redo: (11) sv(_7906) ? creep
   Call: (12) v(_7950) ? creep
   Exit: (12) v([chuta]) ? creep
   Exit: (11) sv([chuta]) ? creep
   Call: (11) lists:append([o, mulher], [chuta], [a, mulher, chuta, o, homem]) ? creep
   Fail: (11) lists:append([o, mulher], [chuta], [a, mulher, chuta, o, homem]) ? creep
   Redo: (12) n(_8176) ? creep
   Exit: (12) n([bola]) ? creep
   Call: (12) lists:append([o], [bola], _8274) ? creep
   Exit: (12) lists:append([o], [bola], [o, bola]) ? creep
   Exit: (11) sn([o, bola]) ? creep
   Call: (11) sv(_8408) ? creep
   Call: (12) v(_8452) ? creep
   Exit: (12) v([chuta]) ? creep
   Call: (12) sn(_8546) ? creep
   Call: (13) det(_8590) ? creep
   Exit: (13) det([o]) ? creep
   Call: (13) n(_8684) ? creep
   Exit: (13) n([homem]) ? creep
   Call: (13) lists:append([o], [homem], _8782) ? creep
   Exit: (13) lists:append([o], [homem], [o, homem]) ? creep
   Exit: (12) sn([o, homem]) ? creep
   Call: (12) lists:append([chuta], [o, homem], _8920) ? creep
   Exit: (12) lists:append([chuta], [o, homem], [chuta, o, homem]) ? creep
   Exit: (11) sv([chuta, o, homem]) ? creep
   Call: (11) lists:append([o, bola], [chuta, o, homem], [a, mulher, chuta, o, homem]) ? creep
   Fail: (11) lists:append([o, bola], [chuta, o, homem], [a, mulher, chuta, o, homem]) ? creep
   Redo: (13) n(_9142) ? creep
   Exit: (13) n([mulher]) ? creep
   Call: (13) lists:append([o], [mulher], _9240) ? creep
   Exit: (13) lists:append([o], [mulher], [o, mulher]) ? creep
   Exit: (12) sn([o, mulher]) ? creep
   Call: (12) lists:append([chuta], [o, mulher], _9378) ? creep
   Exit: (12) lists:append([chuta], [o, mulher], [chuta, o, mulher]) ? creep
   Exit: (11) sv([chuta, o, mulher]) ? creep
   Call: (11) lists:append([o, bola], [chuta, o, mulher], [a, mulher, chuta, o, homem]) ? creep
   Fail: (11) lists:append([o, bola], [chuta, o, mulher], [a, mulher, chuta, o, homem]) ? creep
   Redo: (13) n(_9600) ? creep
   Exit: (13) n([bola]) ? creep
   Call: (13) lists:append([o], [bola], _9698) ? creep
   Exit: (13) lists:append([o], [bola], [o, bola]) ? creep
   Exit: (12) sn([o, bola]) ? creep
   Call: (12) lists:append([chuta], [o, bola], _9836) ? creep
   Exit: (12) lists:append([chuta], [o, bola], [chuta, o, bola]) ? creep
   Exit: (11) sv([chuta, o, bola]) ? creep
   Call: (11) lists:append([o, bola], [chuta, o, bola], [a, mulher, chuta, o, homem]) ? creep
   Fail: (11) lists:append([o, bola], [chuta, o, bola], [a, mulher, chuta, o, homem]) ? creep
   Redo: (13) det(_10058) ? creep
   Exit: (13) det([a]) ? creep
   Call: (13) n(_10152) ? creep
   Exit: (13) n([homem]) ? creep
   Call: (13) lists:append([a], [homem], _10250) ? creep
   Exit: (13) lists:append([a], [homem], [a, homem]) ? creep
   Exit: (12) sn([a, homem]) ? creep
   Call: (12) lists:append([chuta], [a, homem], _10388) ? creep
   Exit: (12) lists:append([chuta], [a, homem], [chuta, a, homem]) ? creep
   Exit: (11) sv([chuta, a, homem]) ? creep
   Call: (11) lists:append([o, bola], [chuta, a, homem], [a, mulher, chuta, o, homem]) ? creep
   Fail: (11) lists:append([o, bola], [chuta, a, homem], [a, mulher, chuta, o, homem]) ? creep
   Redo: (13) n(_10610) ? creep
   Exit: (13) n([mulher]) ? creep
   Call: (13) lists:append([a], [mulher], _10708) ? creep
    Exit: (13) lists:append([a], [mulher], [a, mulher]) ? creep
   Exit: (12) sn([a, mulher]) ? creep
   Call: (12) lists:append([chuta], [a, mulher], _14560) ? creep
   Exit: (12) lists:append([chuta], [a, mulher], [chuta, a, mulher]) ? creep
   Exit: (11) sv([chuta, a, mulher]) ? creep
   Call: (11) lists:append([a, homem], [chuta, a, mulher], [a, mulher, chuta, o, homem]) ? creep
   Fail: (11) lists:append([a, homem], [chuta, a, mulher], [a, mulher, chuta, o, homem]) ? creep
   Redo: (13) n(_14782) ? creep
   Exit: (13) n([bola]) ? creep
   Call: (13) lists:append([a], [bola], _14880) ? creep
   Exit: (13) lists:append([a], [bola], [a, bola]) ? creep
   Exit: (12) sn([a, bola]) ? creep
   Call: (12) lists:append([chuta], [a, bola], _15018) ? creep
    Exit: (12) lists:append([chuta], [a, bola], [chuta, a, bola]) ? creep
   Exit: (11) sv([chuta, a, bola]) ? creep
   Call: (11) lists:append([a, homem], [chuta, a, bola], [a, mulher, chuta, o, homem]) ? creep
   Fail: (11) lists:append([a, homem], [chuta, a, bola], [a, mulher, chuta, o, homem]) ? creep
   Redo: (11) sv(_15240) ? creep
   Call: (12) v(_15284) ? creep
   Exit: (12) v([chuta]) ? creep
   Exit: (11) sv([chuta]) ? creep
   Call: (11) lists:append([a, homem], [chuta], [a, mulher, chuta, o, homem]) ? creep
   Fail: (11) lists:append([a, homem], [chuta], [a, mulher, chuta, o, homem]) ? creep
   Redo: (12) n(_15510) ? creep
   Exit: (12) n([mulher]) ? creep
   Call: (12) lists:append([a], [mulher], _15608) ? creep
   Exit: (12) lists:append([a], [mulher], [a, mulher]) ? creep
   Exit: (11) sn([a, mulher]) ? creep
   Call: (11) sv(_15742) ? creep
   Call: (12) v(_15786) ? creep
   Exit: (12) v([chuta]) ? creep
   Call: (12) sn(_15880) ? creep
   Call: (13) det(_15924) ? creep
   Exit: (13) det([o]) ? creep
   Call: (13) n(_16018) ? creep
   Exit: (13) n([homem]) ? creep
   Call: (13) lists:append([o], [homem], _16116) ? creep
   Exit: (13) lists:append([o], [homem], [o, homem]) ? creep
   Exit: (12) sn([o, homem]) ? creep
   Call: (12) lists:append([chuta], [o, homem], _16254) ? creep
   Exit: (12) lists:append([chuta], [o, homem], [chuta, o, homem]) ? creep
   Exit: (11) sv([chuta, o, homem]) ? creep
   Call: (11) lists:append([a, mulher], [chuta, o, homem], [a, mulher, chuta, o, homem]) ? creep
   Exit: (11) lists:append([a, mulher], [chuta, o, homem], [a, mulher, chuta, o, homem]) ? creep
   Exit: (10) s([a, mulher, chuta, o, homem]) ? creep
true ;
...
*/