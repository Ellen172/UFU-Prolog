:- use_module(library(http/thread_httpd)).
:- use_module(library(http/http_dispatch)).
:- use_module(library(http/html_write)).

servidor(Porta) :-
    http_server(http_dispatch, [port(Porta)]).

:- http_handler(root(.), home , []).


home(_Pedido) :-
    reply_html_page(
        [ title('Exemplos')],
        [ \pagina ]).

pagina -->
    html([ h1('Demonstracao do Mailman'),
           div(\menu_de_navegacao),
           p('O corpo vai aqui')
         ]).

% localizando links para criar menu de navegação
menu_de_navegacao -->
    {
        findall(Nome, item(Nome, _), NomesBotoes),
	    maplist(item_topo, NomesBotões, BotoesTopo)
    },
    html(BotoesTopo).

item('Inicio', '/home').
item('Sobre',  '/sobre').
item('Vendas', '/vendas').

item_topo(Nome, a([href=Link, class=topo], Nome)) :-
	item(Nome, Link).
