:- use_module(library(http/thread_httpd)).
:- use_module(library(http/http_dispatch)).

servidor(Porta) :-
    http_server(http_dispatch, [port(Porta)]).

% Programa 1 (subprograma da raiz)
:- multifile http:location/3.
:- dynamic   http:location/3.

http:location(arquivos, '/arquivos', []).

:- http_handler(arquivos(texto), arquivo_estatico , []). % encontrado em localhost.../arquivos/texto

arquivo_estatico(_Pedido):-
    format('Content-type: text/plain~n~n'),
    format('Alguma dia eu enviarei o arquivo~n').

% Programa 2
:- http_handler(root(Lingua), bem_vindo(Lingua) , []).

bem_vindo(Lingua, _Pedido) :-
    format('Content-type: text/plain~n~n'),
    cumprimento(Lingua, Cumprimento),
    format('~w~n', Cumprimento).

cumprimento('',      'Oi Mundo!'):- !.
cumprimento(deutsche, 'Hallo Welt!'):- !.
cumprimento(espanol,  '¡Hola Mundo!'):- !.
cumprimento(english,  'Hello, world!'):- !.
cumprimento(francais, 'Bonjour le monde!'):- !.
cumprimento(latim,    'Salve orbis terrarum.'):- !.
cumprimento(Lingua,    Desconhecida):-
    format(atom(Desconhecida),
           '~w: é uma língua desconhecida!', [Lingua]).
