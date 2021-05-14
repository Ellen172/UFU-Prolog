:- use_module(library(http/thread_httpd)).
:- use_module(library(http/http_dispatch)).

servidor(Porta) :-
    http_server(http_dispatch, [port(Porta)]).

:- multifile http:location/3.
:- dynamic http:location/3.

http:location(arquivos, '/arquivos', []).

:- http_handler(arquivos(texto), arquivo_estatico, []). % add uma outra pagina em '/arquivos/texto'

arquivo_estatico(_Pedido) :-
    format('Content-type: text/plain~n~n'),
    format('Algum dia eu enviarei o arquivo~n').

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
