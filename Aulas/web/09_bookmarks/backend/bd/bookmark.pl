:- module(
       bookmark,
       [ bookmark/3, insere/3, remove/1, atualiza/3 ]).

:- use_module(library(persistency)).

:- use_module(bd(chave)).

:- persistent
   bookmark( id:nonneg,
             titulo:string,
             url:string ).

:- initialization( ( db_attach('./backend/bd/tbl_bookmark.pl', []),
                     at_halt(db_sync(gc(always))) )).


insere(Id, Titulo, URL):-
    chave:pk(bookmark, Id),
    with_mutex(bookmark,
               assert_bookmark(Id, Titulo, URL)).

remove(Id):-
    with_mutex(bookmark,
               retractall_bookmark(Id, _Titulo, _URL)).

atualiza(Id, Titulo, URL):-
    with_mutex(bookmark,
               ( retractall_bookmark(Id, _Titulo, _URL),
                 assert_bookmark(Id, Titulo, URL)) ).
