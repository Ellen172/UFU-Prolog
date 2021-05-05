aprecia(vicente,X) :- bigKahunaBurger(X), !, fail.
aprecia(vicente,X) :- hamburguer(X).
%vicente gosta de qualquer hamburguer menos bigKahunaBurger.

hamburguer(X):- bigMac(X).
hamburguer(X):- bigKahunaBurger(X).
hamburguer(X):- whopper(X).

bigMac(a).
bigKahunaBurger(b).
whopper(c).

%testes
/*
?- aprecia(vicente,a).
true
false para o primeiro predicado e true para o segundo

?- aprecia(vicente,b).
false
aprecia(vicente,b) :- bigKahunaBurger(b), !(stop), fail. >> não é executado outro predicado

?- aprecia(vicente,c).
true
false para o primeiro predicado e true para o segundo

?- aprecia(vicente,Qual).
false
true para bigKahunaBurger, false para o primeiro predicado.
*/