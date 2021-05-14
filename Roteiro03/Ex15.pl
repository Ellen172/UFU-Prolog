% Ex 15

multi([],[],[]).
multi([H1|L1],[H2|L2],[X|L3]) :-
	X is H1*H2,
	multi(L1,L2,L3).

somaAcum([],A,A).
somaAcum([H|T],Acum,A):-
	NovoAcum is H + Acum,
	somaAcum(T,NovoAcum,A).
	
soma(L,X) :- somaAcum(L,0,X).
	
prodEsc(L1,L2,Acum) :-
	multi(L1,L2,L3),
	soma(L3,Acum).
