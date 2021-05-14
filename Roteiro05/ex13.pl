s --> sn(X), sv(X).

sn(X) --> det(X, Y), n(X, Y).
sv(X) --> v(X), sn(_).
sv(X) --> v(X).

det(singular, masculino) --> [o].
det(plural, masculino) --> [os].
det(singular, feminino) --> [a].
det(plural, feminino) --> [as].

n(singular, feminino) --> [mulher].
n(plural, feminino) --> [mulheres].
n(singular, masculino) --> [homem].
n(plural, masculino) --> [homens].

v(singular) --> [bate].
v(plural) --> [batem].

/*
?- s([o, homem, batem],[]).
false.

?- s([os, homens, bate],[]).
false.

?- s([os, homens, batem],[]).
true.

?- s([o, homem, bate],[]).
true.

?- s(X, []).
X = [o, homem, bate, o, homem] ;
X = [o, homem, bate, os, homens] ;
X = [o, homem, bate, a, mulher] ;
X = [o, homem, bate, as, mulheres] ;
X = [o, homem, bate] ;
X = [os, homens, batem, o, homem] ;
X = [os, homens, batem, os, homens] ;
X = [os, homens, batem, a, mulher] ;
X = [os, homens, batem, as, mulheres] ;
X = [os, homens, batem] ;
X = [a, mulher, bate, o, homem] ;
X = [a, mulher, bate, os, homens] ;
X = [a, mulher, bate, a, mulher] ;
X = [a, mulher, bate, as, mulheres] ;
X = [a, mulher, bate] ;
X = [as, mulheres, batem, o, homem] ;
X = [as, mulheres, batem, os, homens] ;
X = [as, mulheres, batem, a, mulher] ;
X = [as, mulheres, batem, as, mulheres] ;
X = [as, mulheres, batem] ;
false.
*/