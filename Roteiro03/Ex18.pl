% Ex 18

remove(X,[X|T],T).
remove(X,[H|T],[H|L]) :-
	remove(X,T,L).

permutacao([], []).
permutacao(Xs, [Y|Zs]) :-
	remove(Y,Xs,Ys),
	permutacao(Ys,Zs).

/*
(a)
?- permutacao([a,m,o,r],P).
P = [a, m, o, r] ;
P = [a, m, r, o] ;
P = [a, o, m, r] ;
P = [a, o, r, m] ;
P = [a, r, m, o] ;
P = [a, r, o, m] ;
P = [m, a, o, r] ;
P = [m, a, r, o] ;
P = [m, o, a, r] ;
P = [m, o, r, a] ;
P = [m, r, a, o] ;
P = [m, r, o, a] ;
P = [o, a, m, r] ;
P = [o, a, r, m] ;
P = [o, m, a, r] ;
P = [o, m, r, a] ;
P = [o, r, a, m] ;
P = [o, r, m, a] ;
P = [r, a, m, o] ;
P = [r, a, o, m] ;
P = [r, m, a, o] ;
P = [r, m, o, a] ;
P = [r, o, a, m] ;
P = [r, o, m, a] ;

(b)
?- permutacao([carlos,rose,sergio,adriano,fabiola],Ordem).
Ordem = [carlos, rose, sergio, adriano, fabiola] ;
Ordem = [carlos, rose, sergio, fabiola, adriano] ;
Ordem = [carlos, rose, adriano, sergio, fabiola] ;
Ordem = [carlos, rose, adriano, fabiola, sergio] ;
Ordem = [carlos, rose, fabiola, sergio, adriano] ;
Ordem = [carlos, rose, fabiola, adriano, sergio] ;
Ordem = [carlos, sergio, rose, adriano, fabiola] ;
Ordem = [carlos, sergio, rose, fabiola, adriano] ;
Ordem = [carlos, sergio, adriano, rose, fabiola] ;
Ordem = [carlos, sergio, adriano, fabiola, rose] ;
Ordem = [carlos, sergio, fabiola, rose, adriano] ;
Ordem = [carlos, sergio, fabiola, adriano, rose] ;
Ordem = [carlos, adriano, rose, sergio, fabiola] ;
Ordem = [carlos, adriano, rose, fabiola, sergio] ;
Ordem = [carlos, adriano, sergio, rose, fabiola] ;
Ordem = [carlos, adriano, sergio, fabiola, rose] ;
Ordem = [carlos, adriano, fabiola, rose, sergio] ;
Ordem = [carlos, adriano, fabiola, sergio, rose] ;
Ordem = [carlos, fabiola, rose, sergio, adriano] ;
Ordem = [carlos, fabiola, rose, adriano, sergio] ;
Ordem = [carlos, fabiola, sergio, rose, adriano] ;
Ordem = [carlos, fabiola, sergio, adriano, rose] ;
Ordem = [carlos, fabiola, adriano, rose, sergio] ;
Ordem = [carlos, fabiola, adriano, sergio, rose] ;
Ordem = [rose, carlos, sergio, adriano, fabiola] ;
Ordem = [rose, carlos, sergio, fabiola, adriano] ;
Ordem = [rose, carlos, adriano, sergio, fabiola] ;
Ordem = [rose, carlos, adriano, fabiola, sergio] ;
Ordem = [rose, carlos, fabiola, sergio, adriano] ;
Ordem = [rose, carlos, fabiola, adriano, sergio] ;
Ordem = [rose, sergio, carlos, adriano, fabiola] ;
Ordem = [rose, sergio, carlos, fabiola, adriano] ;
Ordem = [rose, sergio, adriano, carlos, fabiola] ;
Ordem = [rose, sergio, adriano, fabiola, carlos] ;
Ordem = [rose, sergio, fabiola, carlos, adriano] ;
Ordem = [rose, sergio, fabiola, adriano, carlos] ;
Ordem = [rose, adriano, carlos, sergio, fabiola] ;
Ordem = [rose, adriano, carlos, fabiola, sergio] ;
Ordem = [rose, adriano, sergio, carlos, fabiola] ;
Ordem = [rose, adriano, sergio, fabiola, carlos] ;
Ordem = [rose, adriano, fabiola, carlos, sergio] ;
Ordem = [rose, adriano, fabiola, sergio, carlos] ;
Ordem = [rose, fabiola, carlos, sergio, adriano] ;
Ordem = [rose, fabiola, carlos, adriano, sergio] ;
Ordem = [rose, fabiola, sergio, carlos, adriano] ;
Ordem = [rose, fabiola, sergio, adriano, carlos] ;
Ordem = [rose, fabiola, adriano, carlos, sergio] ;
Ordem = [rose, fabiola, adriano, sergio, carlos] ;
Ordem = [sergio, carlos, rose, adriano, fabiola] ;
Ordem = [sergio, carlos, rose, fabiola, adriano] ;
Ordem = [sergio, carlos, adriano, rose, fabiola] ;
Ordem = [sergio, carlos, adriano, fabiola, rose] ;
Ordem = [sergio, carlos, fabiola, rose, adriano] ;
Ordem = [sergio, carlos, fabiola, adriano, rose] ;
Ordem = [sergio, rose, carlos, adriano, fabiola] ;
Ordem = [sergio, rose, carlos, fabiola, adriano] ;
Ordem = [sergio, rose, adriano, carlos, fabiola] ;
Ordem = [sergio, rose, adriano, fabiola, carlos] ;
Ordem = [sergio, rose, fabiola, carlos, adriano] ;
Ordem = [sergio, rose, fabiola, adriano, carlos] ;
Ordem = [sergio, adriano, carlos, rose, fabiola] ;
Ordem = [sergio, adriano, carlos, fabiola, rose] ;
Ordem = [sergio, adriano, rose, carlos, fabiola] ;
Ordem = [sergio, adriano, rose, fabiola, carlos] ;
Ordem = [sergio, adriano, fabiola, carlos, rose] ;
Ordem = [sergio, adriano, fabiola, rose, carlos] ;
Ordem = [sergio, fabiola, carlos, rose, adriano] ;
Ordem = [sergio, fabiola, carlos, adriano, rose] ;
Ordem = [sergio, fabiola, rose, carlos, adriano] ;
Ordem = [sergio, fabiola, rose, adriano, carlos] ;
Ordem = [sergio, fabiola, adriano, carlos, rose] ;
Ordem = [sergio, fabiola, adriano, rose, carlos] ;
Ordem = [adriano, carlos, rose, sergio, fabiola] ;
Ordem = [adriano, carlos, rose, fabiola, sergio] ;
Ordem = [adriano, carlos, sergio, rose, fabiola] ;
Ordem = [adriano, carlos, sergio, fabiola, rose] ;
Ordem = [adriano, carlos, fabiola, rose, sergio] ;
Ordem = [adriano, carlos, fabiola, sergio, rose] ;
Ordem = [adriano, rose, carlos, sergio, fabiola] ;
Ordem = [adriano, rose, carlos, fabiola, sergio] ;
Ordem = [adriano, rose, sergio, carlos, fabiola] ;
Ordem = [adriano, rose, sergio, fabiola, carlos] ;
Ordem = [adriano, rose, fabiola, carlos, sergio] ;
Ordem = [adriano, rose, fabiola, sergio, carlos] ;
Ordem = [adriano, sergio, carlos, rose, fabiola] ;
Ordem = [adriano, sergio, carlos, fabiola, rose] ;
Ordem = [adriano, sergio, rose, carlos, fabiola] ;
Ordem = [adriano, sergio, rose, fabiola, carlos] ;
Ordem = [adriano, sergio, fabiola, carlos, rose] ;
Ordem = [adriano, sergio, fabiola, rose, carlos] ;
Ordem = [adriano, fabiola, carlos, rose, sergio] ;
Ordem = [adriano, fabiola, carlos, sergio, rose] ;
Ordem = [adriano, fabiola, rose, carlos, sergio] ;
Ordem = [adriano, fabiola, rose, sergio, carlos] ;
Ordem = [adriano, fabiola, sergio, carlos, rose] ;
Ordem = [adriano, fabiola, sergio, rose, carlos] ;
Ordem = [fabiola, carlos, rose, sergio, adriano] ;
Ordem = [fabiola, carlos, rose, adriano, sergio] ;
Ordem = [fabiola, carlos, sergio, rose, adriano] ;
Ordem = [fabiola, carlos, sergio, adriano, rose] ;
Ordem = [fabiola, carlos, adriano, rose, sergio] ;
Ordem = [fabiola, carlos, adriano, sergio, rose] ;
Ordem = [fabiola, rose, carlos, sergio, adriano] ;
Ordem = [fabiola, rose, carlos, adriano, sergio] ;
Ordem = [fabiola, rose, sergio, carlos, adriano] ;
Ordem = [fabiola, rose, sergio, adriano, carlos] ;
Ordem = [fabiola, rose, adriano, carlos, sergio] ;
Ordem = [fabiola, rose, adriano, sergio, carlos] ;
Ordem = [fabiola, sergio, carlos, rose, adriano] ;
Ordem = [fabiola, sergio, carlos, adriano, rose] ;
Ordem = [fabiola, sergio, rose, carlos, adriano] ;
Ordem = [fabiola, sergio, rose, adriano, carlos] ;
Ordem = [fabiola, sergio, adriano, carlos, rose] ;
Ordem = [fabiola, sergio, adriano, rose, carlos] ;
Ordem = [fabiola, adriano, carlos, rose, sergio] ;
Ordem = [fabiola, adriano, carlos, sergio, rose] ;
Ordem = [fabiola, adriano, rose, carlos, sergio] ;
Ordem = [fabiola, adriano, rose, sergio, carlos] ;
Ordem = [fabiola, adriano, sergio, carlos, rose] ;
Ordem = [fabiola, adriano, sergio, rose, carlos] ;
false
*/