unificavel([], _, []).
unificavel([H|T], Termo, Lista2) :-
    \+(Termo = H),
    unificavel(T, Termo, Lista2), !.
unificavel([H|T], Termo, [H|Lista2]) :-
    unificavel(T, Termo, Lista2).

unificavel2([], _, []).
unificavel2([H|T], Termo, [H|Lista2]) :-
    \+(\+(Termo = H)),
    unificavel(T, Termo, Lista2), !.
unificavel2([_|T], Termo, Lista2) :-
    unificavel(T, Termo, Lista2).