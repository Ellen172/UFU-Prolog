:- use_module(library(http/thread_httpd)).
:- use_module(library(http/http_dispatch)).
:- use_module(library(http/html_write)).

servidor(Porta) :-
    http_server(http_dispatch, [port(Porta)]).

:- http_handler(root(.), bem_vindo, []).

bem_vindo(_Pedido) :-
    reply_html_page(
        [title('Bem vindo!')], % parte do cabeçalho (head)
        [h1('Uma pagina Web'), p(b('Com um texto.'))]). % parte do corpo (body)