pais(alemanha, europa, 83, [franca, belgica, holanda, suica]).
pais(australia, oceania, 25, []).
pais(belgica, europa, 11, [franca, holanda, alemanha]).
pais(espanha, europa, 47, [portugal, franca]).
pais(franca, europa, 67, [espanha, suica, belgica, alemanha, italia]).
pais(holanda, europa, 17, [belgica, alemanha]).
pais(indonesia, oceania, 268, []).
pais(italia, europa, 60, [franca, suica]).
pais(madagascar, africa, 26, []).
pais(portugal, europa, 10, [espanha]).
pais(suica, europa, 8, [franca, alemanha, italia]).

lista_pop(Continente, X-Y) :-
    bagof(Populacao-Nome, Fronteira^pais(Nome, Continente, Populacao, Fronteira), Lista),
    member(X-Y, Lista),
    X > 15.

pop_elevada(Continente, Lista) :-
    setof(L, lista_pop(Continente, L), Lista).