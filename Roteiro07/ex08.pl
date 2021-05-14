subconjunto([], []):- !.
subconjunto([H|Lista1], [H|Lista2]):-
  subconjunto(Lista1, Lista2).
subconjunto(Lista1, [_|Lista2]):-
  subconjunto(Lista1, Lista2).

conj_potencia(Lista, Subs) :-
    findall(S, subconjunto(S, Lista), Subs).