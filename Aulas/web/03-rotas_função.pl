:- use_module(library(http/thread_httpd)).
:- use_module(library(http/http_dispatch)).

servidor(Porta) :-
    http_server(http_dispatch, [port(Porta)]).
% acessando a pagina através de uma porta previamente definida

:- http_handler(root(Lingua), bem_vindo(Lingua), []). % rota para cada lingua

bem_vindo(Lingua, _Pedido) :-
    format('Content-type: text/pain~n~n'),
    cumprimento(Lingua, Cumprimento),
    format('~w~n', Cumprimento).

cumprimento('', 'Oi Mundo!') :- !.
cumprimento('deutsche', 'Hallo Welt!') :- !.
cumprimento('espanol', 'Hola Mundo!') :- !.
cumprimento('english', 'Hello World!') :- !.
cumprimento('francais', 'Bonjour le monde!') :- !.
cumprimento('latim', 'Salve Orbis Terrarum!') :- !.
cumprimento(Lingua, Desconhecida) :- 
    format(atom(Desconhecida), 
    '~w: eh uma lingua desconhecida', [Lingua]).
