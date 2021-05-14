:- use_module(library(http/thread_httpd)).
:- use_module(library(http/http_dispatch)).
:- use_module(library(http/html_write)).

servidor(Porta) :-
    http_server(http_dispatch, [port(Porta)]).

:- http_handler(root(.), bem_vindo, []).

bem_vindo(_Pedido) :-
    format('Content-type: text/html~n~n'),
    % com print_html os elementos são inseridos em lista
    print_html(['<html>',
            '<head>',
                '<title>','Bem vindo!','</title>',
            '</head>',
            '<body>',
                '<h2>','Uma pagina web simples','</h2>',
                '<p>','Com algum texto.','</p>',
            '</body>',
        '</html>']).
