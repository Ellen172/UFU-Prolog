:- use_module(library(http/thread_httpd)).
:- use_module(library(http/http_dispatch)).

servidor(Porta) :-
    http_server(http_dispatch, [port(Porta)]).
% acessando a pagina através de uma porta previamente definida
% o servidor será inicializado na sua maquina em http://localhost:Porta/ dada a Porta.

:- http_handler(/, test, []).
% (Rota, Tratador, Opções)

% resposta a ser dada no inicio do programa
test(_Pedido) :-
    format('Content-type: text/pain~n~n'), % define que o que virá depois é texto
    format('Oi Mundo!~n').