% Este é o arquivo:  imprimeFilmes.pl
:-module(mprimeFilmes,[imprimeFilmes/1]).

imprimeFilmes(Diretor):-
    setof(Filme,direção(Diretor,Filme),Lista),
    exibeLista(Lista).

exibeLista([]):- nl.
exibeLista([X|L]):-
    write(X), 
    tab(1), 
    exibeLista(L).