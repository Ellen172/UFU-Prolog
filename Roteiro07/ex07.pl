% a primeira lista é subconjunto da segunda

subconjunto([], []):- !.

subconjunto([H|Lista1], [H|Lista2]):-
  subconjunto(Lista1, Lista2).

subconjunto(Lista1, [_|Lista2]):-
  subconjunto(Lista1, Lista2).