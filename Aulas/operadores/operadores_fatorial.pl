:- op(990, xfx, fat).

0 fat 1.
N fat F :-
    N>0,
    N1 is N - 1,
    N1 fat F1,
    F is N*F1.