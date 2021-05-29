:- use_module(library(http/thread_httpd)).
:- use_module(library(http/http_dispatch)).
:- use_module(library(http/html_write)).

/* http_parameters está aqui */
:- use_module(library(http/http_parameters)).

servidor(Porta) :-
    http_server(http_dispatch, [port(Porta)]).



% Liga a rota ao tratador
:- http_handler(root(.), home , []).

/*
  No navegador use:
   localhost:8000/?id=12&nome=Gal+Costa&prof=cantora
   localhost:8000/?id=12&nome=Gal+Costa&prof=cantora&idade=74
*/

home(Pedido) :-
	reply_html_page( title('Demonstracao de GET'),
		           [ \pagina(Pedido) ]).

pagina(Pedido) -->
    {
        /* É preciso tratar a exceção, pois http_parameters gera uma
           uma exceção caso um parâmetro seja inválido */
        catch(
            http_parameters(Pedido, [], [ form_data(Dados) ]),
            _E,
            fail ),
        !,
        resposta(Dados, HTML)
    },
    html([h1('Resposta do servidor') | HTML]).


/* Essa pagina será exibida em caso de erro de validação
   de algum parâmetro */
pagina(_Pedido) -->
    html([ h1('Erro'),
           p('Algum parametro nao e valido')
         ]).


resposta([Nome=Valor | Atribs], [Par|Pares]) :-
    Par = p('~w = ~w'-[Nome,Valor]),
    !,
    resposta(Atribs, Pares).
resposta([],[]).
