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
           p('O corpo vai aqui'),
           div(\html_receive(nav_base))
         ]).

% localizando links para menu utilizando mailman
menu_de_navegacao -->
    {
        findall(Nome, item(Nome, _), NomesBotoes),
	    maplist(item_topo, NomesBotoes, BotoesTopo),
        maplist(item_base, NomesBotoes, BotoesBase)
    },
    html([\html_post(nav_base, BotoesBase) | BotoesTopo]).

item('Inicio', '/home').
item('Sobre',  '/sobre').
item('Vendas', '/vendas').

item_topo(Nome, a([href=Link, class=topo], Nome)) :-
	item(Nome, Link).

item_base(Nome, a([href=Link, class=base], Nome)) :-
	item(Nome, Link).
