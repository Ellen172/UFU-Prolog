% sem corte
/*
divide([], [], []).
divide([H|T], [H|P], N) :-
    H >= 0, 
    divide(T, P, N).
divide([H|T], P, [H|N]) :-
    H < 0, 
    divide(T, P, N).
*/

% com corte
divide([], [], []).
divide([H|T], [H|P], N) :-
    H >= 0, !, 
    divide(T, P, N).
divide([H|T], P, [H|N]) :-
    H < 0, 
    divide(T, P, N).