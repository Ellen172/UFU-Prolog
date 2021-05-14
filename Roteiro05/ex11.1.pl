s --> sn(sujeito), sv.
sn(_) --> det, n.                  
sn(X) --> pro(X).
sv --> v, sn(objeto).
sv --> v.

det --> [o].              
det --> [a].

n --> [mulher].       
n --> [homem]. 
v --> [bate].

pro(sujeito) --> [ele].
pro(sujeito) --> [ela].
pro(objeto) --> [nele].
pro(objeto) --> [nela].

% ?- s([ela, bate, nele],[]).
% true ;

% ?- s([ela, bate, ele],[]).
% false

% ?- s([a, mulher, bate, ele],[]).
% false.

% ?- s([a, mulher, bate, nele],[]).
% true .