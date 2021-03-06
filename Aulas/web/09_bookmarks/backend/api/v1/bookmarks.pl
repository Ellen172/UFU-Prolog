/* http_parameters   */
:- use_module(library(http/http_parameters)).
/* http_reply        */
:- use_module(library(http/http_header)).
/* reply_json_dict   */
:- use_module(library(http/http_json)).


:- use_module(bd(bookmark)).

bookmarks(get, '', _Pedido):- !,
    envia_tabela.

bookmarks(get, AtomId, _Pedido):-
    atom_number(AtomId, Id),
    !,
    envia_tupla(Id).

bookmarks(post, _, Pedido):-
    http_read_json_dict(Pedido, Dados),
    !,
    insere_tupla(Dados, Id),
    envia_tupla(Id).

bookmarks(put, _, Pedido):- !,
    http_read_json_dict(Pedido, Dados),
    atualiza_tupla(Dados, Id),
    envia_tupla(Id).

bookmarks(delete, AtomId, _Pedido):-
    atom_number(AtomId, Id),
    !,
    bookmark:remove(Id),
    throw(http_reply(no_content)).

/* Se algo ocorrou de errado */
bookmarks(Metodo, Id, _Pedido) :-
    throw(http_reply(method_not_allowed(Metodo, Id))).


insere_tupla( _{ titulo:Titulo, url:URL}, Id):-
    bookmark:insere(Id, Titulo, URL).

atualiza_tupla( _{id:AtomId, titulo:Titulo, url:URL}, Id):-
    atom_number(AtomId, Id),
    bookmark:atualiza(Id, Titulo, URL).

envia_tupla(Id):-
    (  bookmark:bookmark(Id, Titulo, URL)
    -> reply_json_dict( _{id:Id, titulo:Titulo, url:URL} )
    ;  throw(http_reply(not_found(Id)))
    ).


envia_tabela :-
    findall( _{id:Id, titulo:Titulo, url:URL},
             bookmark:bookmark(Id,Titulo,URL),
             Tuplas ),
    reply_json_dict(Tuplas).
