% Ex 13

minAcum([],A,A).
minAcum([H|T],A,Min) :-
	H < A,
	minAcum(T,H,Min).
minAcum([H|T],A,Min) :-
	H >= A,
	minAcum(T,A,Min).
min([H|T],Min) :-
	minAcum(T,H,Min).