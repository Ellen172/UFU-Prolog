:- use_module(library(http/thread_httpd)).
:- use_module(library(http/http_dispatch)).
:- use_module(library(http/html_write)).

servidor(Porta) :-
    http_server(http_dispatch, [port(Porta)]).

:- http_handler(root(.), bem_vindo , []).

bem_vindo(_Pedido) :-
    phrase( pagina,
            HtmlTokenizado,
            []),
    format('Content-type: text/html~n~n'),
    print_html(HtmlTokenizado).

% definindo o html separadamente 
% obs: trata-se de uma DCG
pagina -->
    html([html([ head(title('Bem-vindo')),
                 body([ h1('Uma pagina web simples'),
                        p('com algum texto.') ])
               ])]).
