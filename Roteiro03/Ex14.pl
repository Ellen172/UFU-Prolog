%Ex 14

multiEsc(X,[],[]).
multiEsc(X,[H|L],[Hx|_L]) :-
	Hx is X*H,
	multiEsc(X,L,_L).