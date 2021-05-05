neg(Objetivo):- Objetivo, !, fail. 
neg(_Objetivo).

hamburguer(X):-  bigMac(X).
hamburguer(X):-  bigKahunaBurger(X).
hamburguer(X):-  whopper(X).

bigMac(a). 
bigKahunaBurger(b).
whopper(c).

aprecia(vicente,X):- 
    hamburguer(X), 
    neg(bigKahunaBurger(X)). % \+bigKahunaBurger(X). 

% ?- aprecia(vicente,Qual).
% Qual = a
% Qual = c
/*
aprecia(vicente,X):- 
    \+bigKahunaBurger(X),
    hamburguer(X).
*/
% alterando a ordem o programa dá um resultado incorreto

% ?- aprecia(vicente,Qual).
% false 