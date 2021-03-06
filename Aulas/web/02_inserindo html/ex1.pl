:- use_module(library(http/thread_httpd)).
:- use_module(library(http/http_dispatch)).

servidor(Porta) :-
    http_server(http_dispatch, [port(Porta)]).

:- http_handler(root(.), bem_vindo , []).

% inserindo html otimizado
bem_vindo(_Pedido) :-
    format('Content-type: text/html~n~n'),
    print_html('<html><head><title>Bem-vindo</title></head><body><h2>Uma página web
    simples</h2><p>com algum texto.</p></body></html>~n').
