s --> sn, sv.
sn --> det, n.                  
sv --> v, sn.
sv --> v.

det --> [Palavra], {lex(Palavra,det)}.
n --> [Palavra], {lex(Palavra,n)}.
v --> [Palavra], {lex(Palavra,v)}.

lex(o, det). 
lex(a, det).
lex(mulher, n). 
lex(homem, n).
lex(chuta, v).

% ?- s([a, mulher, chuta], []).
% true ;
% false.

% ?- s([a, mulher, chuta, o, homem], []).
% true ;
% false.

% ?- s([a, mulher, chuta, chuta, o, homem], []).
% false.