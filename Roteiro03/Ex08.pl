% Ex 8

concatena([],L,L).
concatena([H|L1],L2,[H|L3]) :-
	concatena(L1, L2, L3).

palindromo([_]).
palindromo([H|L]) :- 
	concatena(L1,[H],L3),
	palindromo(L1).
	

% ?- palindromo([S,o,c,o,r,r,a,m,m,e,s,u,b,i,n,o,o,n,i,b,u,s,e,m,M,a,r,r,o,c,o,s]).
% true .
% ?- palindromo([A,n,o,t,a,r,a,m,a,d,a,t,a,d,a,m,a,r,a,t,o,n,a]).
% true .
% ?- palindromo([A,d,r,o,g,a,d,a,g,o,r,d,a]).
% true .
% ?- palindromo([A,m,a,l,a,n,a,d,a,n,a,l,a,m,a]).
% true .
% ?- palindromo([A,t,o,r,r,e,d,a,d,e,r,r,o,t,a]).
% true .
