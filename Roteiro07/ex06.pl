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

n_membros([], Total, Total).
n_membros([_|Cau], N, Total) :-
    NovoN is N +1,
    n_membros(Cau, NovoN, Total).

dois_ou_mais_membros(Lista) :-
    n_membros(Lista, 0, X),
    X > 1.

dois_ou_menos_membros(Lista) :-
    n_membros(Lista, 0, X),
    X < 3.

fronteira_pais(Pais, F) :-
    setof(Fronteira, Populacao^pais(Pais, _Continente, Populacao, Fronteira), ListaFronteira),
    member(F, ListaFronteira).

isolados_grandes_elemento(Continente) :-
    pop_elevada(Continente, Lista_pop_elevada),
    dois_ou_mais_membros(Lista_pop_elevada),
    member(_Populacao-Pais, Lista_pop_elevada),
    fronteira_pais(Pais, Lista_fronteira_pais),
    dois_ou_menos_membros(Lista_fronteira_pais).

isolados_grandes(Lista) :-
    setof(Continente, isolados_grandes_elemento(Continente), Lista).