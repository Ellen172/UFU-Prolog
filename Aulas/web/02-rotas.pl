:- use_module(library(http/thread_httpd)).
:- use_module(library(http/http_dispatch)).

servidor(Porta) :-
    http_server(http_dispatch, [port(Porta)]).

:- http_handler(root(.), ola, []). % rota raiz
:- http_handler(root(deutsche), hallo, []). % rota '/deutsche'
:- http_handler(root(espanol), hola, []). % rota '/espanol'
:- http_handler(root(english), hello, []). % rota '/english'
:- http_handler(root(francais), bonjour, []). % rota '/francais'
:- http_handler(root(latim), salve, []). % rota '/latim'

ola(_Pedido) :-
    format('Content-type: text/pain~n~n'), % define que o que virá depois é texto
    format('Ola Mundo!~n').

hallo(_Pedido) :-
    format('Content-type: text/pain~n~n'), % define que o que virá depois é texto
    format('Hallo Welt!~n').

hola(_Pedido) :-
    format('Content-type: text/pain~n~n'), % define que o que virá depois é texto
    format('Hola Mundo!~n').

hello(_Pedido) :-
    format('Content-type: text/pain~n~n'), % define que o que virá depois é texto
    format('Hello World!~n').

bonjour(_Pedido) :-
    format('Content-type: text/pain~n~n'), % define que o que virá depois é texto
    format('Bonjour le monde!~n').

salve(_Pedido) :-
    format('Content-type: text/pain~n~n'), % define que o que virá depois é texto
    format('Salve Orbis Terrarum!~n').