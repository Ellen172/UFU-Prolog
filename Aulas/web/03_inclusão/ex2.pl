:- use_module(library(http/thread_httpd)).
:- use_module(library(http/http_dispatch)).
:- use_module(library(http/html_write)).

servidor(Porta) :-
    http_server(http_dispatch, [port(Porta)]).

:- http_handler(root(.), home , []).

% Inclusão de estilo 
home(_Pedido) :-
    reply_html_page(
        estilo_topo,   % estilo
        [ title('Exemplos')], % head
        [ \pagina ]). % body

pagina -->
    html([ h2('Cabeçalho específico da pagina'),
           p('com estilização')]).

:- multifile
       user:body//2.

% Corpo onde estilo_topo será incluído
user:body(estilo_topo, Corpo) -->
        html(body([ div(id(topo), h1('O Site da Pagina Web Simples')),
                    div(id(conteudo), Corpo)
                  ])).
