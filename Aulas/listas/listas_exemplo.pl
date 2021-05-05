
concatena([],L,L).
concatena([H|L1],L2,[H|L3]) :- 
	concatena(L1,L2,L3).
	
prefixo(P,L):- 
	concatena(P,_,L).

sufixo(S,L) :- 
	concatena(_,S,L).

duplicado(L) :- 
	concatena(L1,L1,L).
	
ultimo(X,L) :- 
	concatena(_,[X],L).

palindromo([_]).
palindromo([H|L]):-
	concatena(Pre,[H],L), 
	palindromo(Pre).  
	
inverte([],[]).
inverte([H|T],Inv) :-
	inverte(T,TInv),
	concatena(TInv,[H],Inv).
	
inverteAcum([],Ac,Ac).
inverteAcum([H|T], Ac, Linv) :-
	inverteAcum(T,[H|Ac],Linv).