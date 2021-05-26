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
  % É preciso tratar a exceção, pois http_parameters gera uma exceção caso um parâmetro seja inválido 
    catch(
      http_parameters(Pedido,
                      [ % id dever ser um inteiro
                        id(Id,          [integer]),
                        nome(Nome,      [string]),
                        prof(Profissao, [string]),
                        % Se o parâmetro idade estiver ausente, Idade não ficará ligada
                        idade(Idade,    [optional(true),integer]),
                        % Se o parâmetro nacionalidade estiver ausente, assuma o valor default.
                        nacionalidade(Nac, [default(brasileira)])
                      ]),
            _E, % armazena a exceção , o que não estiver indicado nas [] anteriores.
            fail ), !,
        % Verifica se a idade foi informada
        (var(Idade) -> Idade = 'desconhecida' ; true)
    },
    html([ h1('Resposta do servidor para o GET'),
           p('Os parametros recebidos foram:'),
           p('Id e ~w' - Id),
           p('Nome e ~w' - Nome),
           p('Profissao e ~w'- Profissao),
           p('Idade e ~w' - Idade),
           p('Nacionalidade e ~w'- Nac)
         ]).

/* Essa pagina será exibida em caso de erro de validação
   de algum parâmetro */
pagina(_Pedido) -->
    html([ h1('Erro'),
           p('Algum parametro nao e valido')
         ]).
