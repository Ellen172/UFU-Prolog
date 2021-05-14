% Ex 7

romano(0, []).
romano(N, ['I'|X]) :-
    N > 0,
    N < 4,
    NovoN is N-1,
    romano(NovoN, X).
romano(4, ['I','V']). 
romano(N, ['V'|X]) :-
    N > 4,
    N < 9,
    NovoN is N-5,
    romano(NovoN, X).
romano(9, ['I','X']). 
romano(N, ['X'|X]) :-
    N > 9,
    N < 40,
    NovoN is N -10,
    romano(NovoN, X).
romano(N, ['X','L'|X]) :-
    N > 39,
    N < 50,
    NovoN is N-40,
    romano(NovoN, X).
romano(N, ['L'|X]) :-
    N > 49,
    N < 90,
    NovoN is N-50,
    romano(NovoN, X).
romano(N, ['X','C'|X]) :-
    N > 89,
    N < 100,
    NovoN is N-90,
    romano(NovoN, X).
romano(N, ['C'|X]) :-
    N > 99,
    N < 400,
    NovoN is N-100,
    romano(NovoN, X).
romano(N, ['C','D'|X]) :-
    N > 399,
    N < 500,
    NovoN is N-400,
    romano(NovoN, X).
romano(N, ['D'|X]) :-
    N > 499,
    N < 900,
    NovoN is N -500,
    romano(NovoN, X).
romano(N, ['C','M'|X]) :-
    N > 899,
    N < 1000,
    NovoN is N-900,
    romano(NovoN, X).
romano(N, ['M'|X]) :-
    N > 999,
    N < 4000,
    NovoN is N-1000,
    romano(NovoN, X).