:- use_module(library(http/thread_httpd)).
:- use_module(library(http/http_dispatch)).
:- use_module(library(http/html_write)).

servidor(Porta) :-
    http_server(http_dispatch, [port(Porta)]).

:- http_handler(root(.), home, []).

% ESTILIZAÇÃO
:- multifile 
        user: body//2.

user: body(estilo_topo, Corpo) -->
    html( body( [ div( id(topo), h1('O Site da Pagina Web Simples')), 
                div( id(conteudo), Corpo) 
            ])
        ).

% CODIGO
home(_Pedido) :-
    % reply_html_page com aridade /3 (Estilo, Cabeça, Corpo)
    reply_html_page(
        estilo_topo, 
        [ title('Exemplos') ], 
        [ \pagina ]).

pagina --> 
    html( [ h2('Cabecalho especifico da pagina'), 
            p('com estilizacao')]).
    