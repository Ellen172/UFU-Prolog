s(s(SN,SV)) --> sn(sujeito, X, _,SN), sv(X,SV).
sn(sujeito, X, Y, sn(Det,N)) --> det(X,Y,Det), n(X,Y,N).                  
sn(W, X, Y, sn(Pro)) --> pro(W, X, Y, Pro).
sv(X, sv(V, SN)) --> v(X,V), sn(objeto, _, Y,SN).
sv(X,sv(V)) --> v(X, V).

det(X,Y,Det) --> [Palavra], {lex(Palavra, det, X, Y, Det)}.
n(X,Y,N) --> [Palavra], {lex(Palavra, n, X, Y, N)}.
v(X,V) --> [Palavra], {lex(Palavra, v, X, V)}.
pro(W,X,Y,Pro) --> [Palavra], {lex(Palavra, pro, W, X, Y, Pro)}.
 
lex(o, det, singular, masculino, det(o)). 
lex(os, det, plural, masculino, det(os)). 
lex(a, det, singular, feminino, det(a)). 
lex(as, det, plural, feminino, det(as)). 

lex(mulher, n, singular, feminino, n(mulher)).
lex(mulheres, n, plural, feminino, n(mulheres)).
lex(homem, n, singular, masculino, n(homem)).
lex(homens, n, plural, mmasculino, n(homens)).

lex(bate, v, singular, v(bate)).
lex(batem, v, plural, v(batem)).

lex(ele, pro, sujeito, singular, masculino, pro(ele)).
lex(eles, pro, sujeito, plural, masculino, pro(eles)).
lex(ela, pro, sujeito, singular, feminino, pro(ela)).
lex(elas, pro, sujeito, plural, feminino, pro(elas)).

lex(nele, pro, objeto, singular, masculino, pro(nele)).
lex(neles, pro, objeto, plural, masculino, pro(neles)).
lex(nela, pro, objeto, singular, feminino, pro(nela)).
lex(nelas, pro, objeto, plural, feminino, pro(nelas)).
