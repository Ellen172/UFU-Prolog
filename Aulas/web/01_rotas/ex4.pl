:- use_module(library(http/thread_httpd)).
:- use_module(library(http/http_dispatch)).

servidor(Porta) :-
    http_server(http_dispatch, [port(Porta)]).

:- http_handler(root(Lingua), bem_vindo(Lingua) , []).

% usando uma função para definir varias raizes com diferentes respotas
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
% quando não há a lingua pedida
cumprimento(Lingua,    Desconhecida):-
    format(atom(Desconhecida),
           '~w: é uma lingua desconhecida!', [Lingua]).
