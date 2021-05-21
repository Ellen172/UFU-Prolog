:- use_module(library(http/thread_httpd)).
:- use_module(library(http/http_dispatch)).

servidor(Porta) :-
    http_server(http_dispatch, [port(Porta)]).
% acessando a pagina através de uma porta previamente definida
% o servidor será inicializado na sua maquina em http://localhost:Porta/ dada a Porta.

:- http_handler(/, oi, []).
% (Rota, Tratador, Opções)

% resposta a ser dada no inicio do programa
oi(_Pedido) :-
    format('Content-type: text/plain~n~n'),
    format('Oi Mundo!~n').
